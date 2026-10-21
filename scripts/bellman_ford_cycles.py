#!/usr/bin/env python3
"""
Full-graph Bellman-Ford negative-cycle finder across every Uniswap-V3-style pool
literal found in autonomous_asm_broadcaster.py (Uni/Pancake/Sushi V3 share slot0()).

Edge weight = -ln(rate * (1 - fee)). A negative cycle == a multi-hop arbitrage loop
(profitable BEFORE gas and slippage). Read-only: sends no transactions.
Output: reports/bellman_ford_cycles.json
"""
import json, math, re, sys, time, urllib.request
from pathlib import Path

BASE = Path(__file__).resolve().parent.parent
SRC = (BASE / "scripts" / "autonomous_asm_broadcaster.py").read_text()
RPCS = ["https://arb1.arbitrum.io/rpc", "https://arbitrum-one-rpc.publicnode.com", "https://1rpc.io/arb"]


def rpc(batch):
    for u in RPCS:
        try:
            r = urllib.request.Request(u, data=json.dumps(batch).encode(),
                                       headers={"Content-Type": "application/json", "User-Agent": "Mozilla/5.0"})
            return {x["id"]: x.get("result") for x in json.loads(urllib.request.urlopen(r, timeout=10).read())}
        except Exception:
            continue
    return {}


def call_all(addrs, data):
    out = {}
    for i in range(0, len(addrs), 40):
        chunk = addrs[i:i + 40]
        res = rpc([{"jsonrpc": "2.0", "id": j, "method": "eth_call",
                    "params": [{"to": a, "data": data}, "latest"]} for j, a in enumerate(chunk)])
        for j, a in enumerate(chunk):
            out[a] = res.get(j)
    return out


def word(h, n):
    return h[2 + 64 * n: 2 + 64 * (n + 1)]


def main():
    cand = sorted(set(a.lower() for a in re.findall(r"0x[0-9a-fA-F]{40}", SRC)))
    t0, t1, s0, fee = (call_all(cand, d) for d in ("0x0dfe1681", "0xd21220a7", "0x3850c7bd", "0xddca3f43"))
    pools = [a for a in cand if all(isinstance(x.get(a), str) and len(x[a]) >= 66 for x in (t0, t1, s0, fee))]
    toks = sorted({"0x" + word(t0[a], 0)[-40:] for a in pools} | {"0x" + word(t1[a], 0)[-40:] for a in pools})
    dec = {t: int(v, 16) if isinstance(v, str) and len(v) > 2 else 18 for t, v in call_all(toks, "0x313ce567").items()}
    idx = {t: i for i, t in enumerate(toks)}
    edges = []  # (u, v, weight, pool, fee_bps)
    for a in pools:
        x, y = "0x" + word(t0[a], 0)[-40:], "0x" + word(t1[a], 0)[-40:]
        sq = int(word(s0[a], 0), 16)
        f = int(word(fee[a], 0), 16) / 1e6
        if sq == 0:
            continue
        p = (sq / 2 ** 96) ** 2 * 10 ** (dec[x] - dec[y])  # y per x
        if p <= 0:
            continue
        edges.append((idx[x], idx[y], -math.log(p * (1 - f)), a, f * 1e4))
        edges.append((idx[y], idx[x], -math.log((1 / p) * (1 - f)), a, f * 1e4))
    n = len(toks)
    cycles, seen = [], set()
    for src in range(n):
        dist = [0.0] * n  # virtual zero-source trick finds any negative cycle
        pred = [None] * n
        last = None
        for _ in range(n):
            last = None
            for u, v, w, a, _f in edges:
                if dist[u] + w < dist[v] - 1e-12:
                    dist[v], pred[v], last = dist[u] + w, (u, a), v
            if last is None:
                break
        if last is not None:
            x = last
            for _ in range(n):
                x = pred[x][0]
            cyc, c = [], x
            while True:
                cyc.append((c, pred[c][1]))
                c = pred[c][0]
                if c == x:
                    break
            key = frozenset(a for _, a in cyc)
            if key not in seen:
                seen.add(key)
                cycles.append(cyc[::-1])
        break  # zero-init covers all sources in one pass
    sym = {t: t[-6:] for t in toks}
    result = {
        "ts": time.time(), "pools_in_graph": len(pools), "tokens": n, "directed_edges": len(edges),
        "negative_cycles_found": len(cycles),
        "cycles": [[{"token": sym[toks[u]], "pool": a} for u, a in c] for c in cycles],
        "note": "Pre-gas, pre-slippage, mid-price. Real profit needs eth_call verification + size optimisation.",
    }
    (BASE / "reports" / "bellman_ford_cycles.json").write_text(json.dumps(result, indent=2))
    print(json.dumps({k: v for k, v in result.items() if k != "cycles"}, indent=2))
    for c in result["cycles"][:5]:
        print(" -> ".join(h["token"] for h in c))


if __name__ == "__main__":
    sys.exit(main())

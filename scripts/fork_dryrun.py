#!/usr/bin/env python3
"""
Forked dry run of the FULL Python bot send path against a simulated ETH price dip.
Everything happens on a LOCAL anvil fork (chain 42161 state copy). No mainnet transaction is ever sent:
  * the bot runs from a throw-away sandbox copy (own reports/ ledgers),
  * ARB_RPC_OVERRIDE forces every RPC call to the local anvil (fails closed if anvil is down).
Steps: fork -> replace the Aave WETH price source with a mock 5% lower -> confirm watched borrowers go HF<1
       -> run scripts/autonomous_asm_broadcaster.py unchanged -> read receipts + wallet deltas from the fork.
"""
import json, os, shutil, subprocess, sys, tempfile, time, urllib.request
from pathlib import Path

BASE = Path(__file__).resolve().parent.parent
PORT = 8546
LOCAL = f"http://127.0.0.1:{PORT}"
UPSTREAM = os.environ.get("FORK_UPSTREAM", "https://arbitrum-one.public.blastapi.io")  # archive-capable public node (publicnode prunes state)
PROVIDER = "0xa97684ead0e402dC232d5A977953DF7ECBaB3CDb"   # Aave V3 PoolAddressesProvider (Arbitrum)
POOL = "0x794a61358D6845594F94dc1DB02A252b5b4814aD"
WETH = "0x82aF49447D8a07e3bd95BD0d56f35241523fBab1"
USDC = "0xaf88d065e77c8cC2239327C5EDb3A432268e5831"
RELAYER = "0x9dD041dbd964DE086Da8f907518f6E25c45aea70"
MUDREX = "0xd2529585059e3e5c09c912f0f9570000c2a53f05"
OWNER = "0xFF3c34DAF159741C931F7c421350f8289A9d89BE"
DROP = float(os.environ.get("DIP", "0.93"))


def rpc(m, p, url=LOCAL):
    last = None
    for attempt in range(6):  # the public upstream node is flaky: retry transient fork-fetch errors
        try:
            r = urllib.request.Request(url, data=json.dumps({"jsonrpc": "2.0", "id": 1, "method": m, "params": p}).encode(),
                                       headers={"Content-Type": "application/json"})
            d = json.loads(urllib.request.urlopen(r, timeout=120).read())
            if "error" in d:
                last = RuntimeError(f"{m}: {d['error']}")
                time.sleep(2 + attempt)
                continue
            return d["result"]
        except Exception as e:
            last = e
            time.sleep(2 + attempt)
    raise last


def call(to, data):
    return rpc("eth_call", [{"to": to, "data": data}, "latest"])


def addr_of(h):
    return "0x" + h[-40:]


def pad(a):
    return a.lower().replace("0x", "").rjust(64, "0")


def hf(u):
    h = call(POOL, "0xbf92857c" + pad(u))
    return int(h[2 + 64 * 5: 2 + 64 * 6], 16) / 1e18


def bal(token, who):
    return int(call(token, "0x70a08231" + pad(who)), 16)


def main():
    subprocess.call(["pkill", "-9", "anvil"], stderr=subprocess.DEVNULL)
    time.sleep(0.3)
    anvil = subprocess.Popen(["anvil", "--fork-url", UPSTREAM, "--port", str(PORT), "--silent", "--no-rate-limit",
                              "--gas-price", "10000000", "--base-fee", "10000000",
                              "--retries", "8", "--timeout", "60000"], stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)
    try:
        for _ in range(60):
            try:
                if int(rpc("eth_chainId", []), 16) == 42161:
                    break
            except Exception:
                time.sleep(1)
        else:
            sys.exit("anvil fork did not start")
        print("[1] anvil fork up, block", int(rpc("eth_blockNumber", []), 16))

        oracle = addr_of(call(PROVIDER, "0xfca513a8"))
        src = addr_of(call(oracle, "0x92bf2be0" + pad(WETH)))
        price = int(call(oracle, "0xb3596f07" + pad(WETH)), 16)  # getAssetPrice (8 decimals)
        mock = int(price * DROP)
        code = "0x7f" + hex(mock)[2:].rjust(64, "0") + "60005260206000f3"
        rpc("anvil_setCode", [src, code])
        print(f"[2] WETH price source {src}: {price/1e8:.2f} -> {mock/1e8:.2f} USD (mock {int((1-DROP)*100)}% dip)")

        watch = json.loads((BASE / "reports" / "last_autonomous_broadcast.json").read_text()).get("aave_borrower_hfs", {})
        liq = {u: hf(u) for u in watch}
        under = {u: h for u, h in liq.items() if 0 < h < 1.0}
        print(f"[3] watched borrowers: {len(liq)} | now HF<1.0 on the fork: {len(under)}")
        for u, h in sorted(under.items(), key=lambda x: x[1])[:5]:
            print(f"      {u} HF={h:.4f}")
        if not under:
            sys.exit("no borrower became liquidatable - increase the dip (DIP=0.90)")

        # Pre-warm Anvil storage cache for the liquidatable borrowers so upstream rate-limits don't drop storage reads
        rpc("anvil_setNextBlockBaseFeePerGas", ["0x989680"])
        contract = "0xeFA5Ff871fD48e23CcC3A9DCD2444f3727007Bd3"
        for b_u, amt_u in [("0x50dd9ba784f9e3658f7bade66c2a9e19ad3dde36", 5000*10**6), ("0x541980dd1db4123185d6b632e9d6a09f77c1e4fa", 1985*10**6)]:
            warm_cd = "0x1034ef63" + "".join([pad("0x3"), pad(USDC), pad(WETH), pad("0x0"), hex(amt_u)[2:].rjust(64,"0"),
                                              pad("0x1"), hex(100)[2:].rjust(64,"0"), pad("0x0"), pad("0x1"), pad(b_u), hex(3350)[2:].rjust(64,"0")])
            try:
                rpc("eth_call", [{"from": RELAYER, "to": contract, "data": warm_cd}, "latest"])
            except Exception:
                pass

        before = {"relayer_eth": int(rpc("eth_getBalance", [RELAYER, "latest"]), 16),
                  "mudrex_usdc": bal(USDC, MUDREX), "owner_usdc": bal(USDC, OWNER), "relayer_usdc": bal(USDC, RELAYER)}

        sandbox = Path(tempfile.mkdtemp(prefix="arb_dryrun_")) / "arb-flash-engine"
        (sandbox / "bin").mkdir(parents=True)
        shutil.copytree(BASE / "scripts", sandbox / "scripts", ignore=shutil.ignore_patterns("__pycache__"))
        shutil.copytree(BASE / "reports", sandbox / "reports", ignore=shutil.ignore_patterns("*.log", "*.jsonl"))
        env = dict(os.environ, ARB_RPC_OVERRIDE=LOCAL, ARB_LOCK_FILE=str(sandbox / "dry.lock"))
        env.pop("ARB_DISABLE_BROADCAST", None)
        env["PYTHONUNBUFFERED"] = "1"
        print("[4] running the real broadcaster in sandbox", sandbox)
        t0 = time.time()
        proc = subprocess.run([sys.executable, "scripts/autonomous_asm_broadcaster.py", "--loop-seconds", "15"],
                              cwd=sandbox, env=env, capture_output=True, text=True, timeout=600)
        print(f"    finished in {time.time()-t0:.1f}s, exit {proc.returncode}")

        rep = json.loads((sandbox / "reports" / "last_autonomous_broadcast.json").read_text())
        txh = rep.get("tx_hash")
        print("[5] broadcaster result: mode=%s tx=%s" % (rep.get("mode") or rep.get("status"), txh))
        after = {"relayer_eth": int(rpc("eth_getBalance", [RELAYER, "latest"]), 16),
                 "mudrex_usdc": bal(USDC, MUDREX), "owner_usdc": bal(USDC, OWNER), "relayer_usdc": bal(USDC, RELAYER)}
        ok = False
        if txh:
            rc = rpc("eth_getTransactionReceipt", [txh])
            ok = rc and int(rc["status"], 16) == 1
            print(f"    receipt status={'SUCCESS' if ok else 'FAILED'} gasUsed={int(rc['gasUsed'],16):,}")
        print("[6] wallet deltas on the fork (USDC in micro-units, ETH in wei):")
        for k in before:
            print(f"    {k:12s} {before[k]:>22,} -> {after[k]:>22,}  (Δ {after[k]-before[k]:+,})")
        gain = (after["mudrex_usdc"] - before["mudrex_usdc"]) + (after["owner_usdc"] - before["owner_usdc"]) + (after["relayer_usdc"] - before["relayer_usdc"])
        print(f"RESULT: {'PASS' if ok and gain > 0 else 'FAIL'} | USDC profit delivered across wallets: {gain/1e6:.6f} USDC")
        if proc.returncode != 0 or not ok:
            print(proc.stderr[-600:])
        return 0 if ok and gain > 0 else 1
    finally:
        anvil.terminate()


if __name__ == "__main__":
    sys.exit(main())

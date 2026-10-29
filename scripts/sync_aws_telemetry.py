#!/usr/bin/env python3
"""
Idea #4: Live AWS-to-Local Dashboard Telemetry Sync (us-east-1 -> Local macOS)
Synchronizes live execution telemetry from the primary AWS us-east-1 sniper node
(ubuntu@32.199.191.8) into local `reports/` with atomic file replacement so the
local dashboard always reflects 100% real-time AWS us-east-1 state.
"""
import json
import os
import subprocess
import sys
import time
from pathlib import Path

BASE_DIR = Path(__file__).resolve().parent.parent
REPORTS_DIR = BASE_DIR / "reports"
AWS_HOST = os.environ.get("ARB_AWS_HOST", "ubuntu@32.199.191.8")
SSH_KEY = os.environ.get("ARB_AWS_KEY", str(Path.home() / ".ssh" / "arb-sniper-key.pem"))

SYNC_FILES = [
    "last_autonomous_broadcast.json",
    "asm_sniper_telemetry.json",
    "live_dstar_probes.json",
    "presigned_tx_cache.json",
    "mudrex_bank_payout_status.json",
]


def sync_once() -> dict:
    REPORTS_DIR.mkdir(parents=True, exist_ok=True)
    py_code = (
        "import json, pathlib\n"
        "base = pathlib.Path('/home/ubuntu/arb-flash-engine/reports')\n"
        "shm = pathlib.Path('/dev/shm/presigned_tx_cache.json')\n"
        f"files = {repr(SYNC_FILES)}\n"
        "out = {}\n"
        "for f in files:\n"
        "    p = shm if (f == 'presigned_tx_cache.json' and shm.exists()) else (base / f)\n"
        "    if p.exists():\n"
        "        try:\n"
        "            out[f] = json.loads(p.read_text(encoding='utf-8'))\n"
        "        except Exception:\n"
        "            pass\n"
        "print(json.dumps(out))\n"
    )
    t0 = time.perf_counter()
    ssh_cmd = ["ssh"]
    if Path(SSH_KEY).exists():
        ssh_cmd.extend(["-i", SSH_KEY])
    ssh_cmd.extend([
        "-C",
        "-o", "StrictHostKeyChecking=no",
        "-o", "ConnectTimeout=10",
        AWS_HOST,
        "python3 -",
    ])
    raw = subprocess.check_output(
        ssh_cmd,
        input=py_code.encode("utf-8"),
        timeout=25,
    ).decode("utf-8")
    rtt_ms = round((time.perf_counter() - t0) * 1000.0, 2)
    payload = json.loads(raw)
    synced = []
    docs_rep = BASE_DIR / "docs" / "reports"
    for fname, doc in payload.items():
        if isinstance(doc, dict):
            txt = json.dumps(doc, indent=2)
            dest = REPORTS_DIR / fname
            tmp = REPORTS_DIR / f"{fname}.aws_sync.tmp"
            tmp.write_text(txt, encoding="utf-8")
            tmp.replace(dest)
            if docs_rep.exists():
                try:
                    d_dest = docs_rep / fname
                    d_tmp = docs_rep / f"{fname}.aws_sync.tmp"
                    d_tmp.write_text(txt, encoding="utf-8")
                    d_tmp.replace(d_dest)
                except Exception:
                    pass
            synced.append(fname)
    bcast = payload.get("last_autonomous_broadcast.json") or {}
    asm_t = payload.get("asm_sniper_telemetry.json") or {}
    ps_t = payload.get("presigned_tx_cache.json") or {}
    dstar_t = payload.get("live_dstar_probes.json") or {}
    snapshot = {
        "ok": True,
        "aws_host": AWS_HOST,
        "sync_rtt_ms": rtt_ms,
        "files_synced": synced,
        "relayer_eth_wei": bcast.get("relayer_eth_wei"),
        "relayer_eth": bcast.get("relayer_eth"),
        "presigned_total_variants": ps_t.get("presigned_total_variants"),
        "pre_oracle_10ms_hyperpoll_active": bcast.get("pre_oracle_10ms_hyperpoll_active", asm_t.get("pre_oracle_10ms_hyperpoll_active")),
        "targeted_hot_pair_hint": asm_t.get("targeted_hot_pair_hint"),
        "dstar_top_probes_count": len(dstar_t.get("top_probes") or []),
        "dstar_multi_sizing_tiers": dstar_t.get("multi_sizing_tiers"),
        "aave_lowest_hf": bcast.get("aave_lowest_health_factor"),
        "live_block_number": asm_t.get("live_block_number"),
        "ts": time.time(),
    }
    snap_path = REPORTS_DIR / "aws_live_telemetry_snapshot.json"
    snap_tmp = REPORTS_DIR / "aws_live_telemetry_snapshot.json.tmp"
    snap_tmp.write_text(json.dumps(snapshot, indent=2), encoding="utf-8")
    snap_tmp.replace(snap_path)
    return snapshot


def main() -> int:
    watch = "--watch" in sys.argv
    interval = 5.0
    for idx, arg in enumerate(sys.argv[1:]):
        if arg == "--interval" and idx + 2 < len(sys.argv):
            try:
                interval = max(1.0, float(sys.argv[idx + 2]))
            except Exception:
                interval = 5.0
    if not watch:
        snap = sync_once()
        print(json.dumps(snap, indent=2))
        return 0
    while True:
        try:
            snap = sync_once()
            print(json.dumps(snap))
        except Exception as e:
            print(json.dumps({"ok": False, "error": str(e), "ts": time.time()}))
        time.sleep(interval)


if __name__ == "__main__":
    sys.exit(main())

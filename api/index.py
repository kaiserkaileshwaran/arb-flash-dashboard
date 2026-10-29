#!/usr/bin/env python3
"""
Vercel Serverless API Handler for Arbitrum Flash-Loan Telemetry & On-Chain Verification.
Uses only Python Standard Library so Vercel deploys with zero external build dependencies.
"""

import json
import sys
import time
from http.server import BaseHTTPRequestHandler
from pathlib import Path
from typing import Any, Dict
from urllib.parse import parse_qs, urlparse

BASE_DIR = Path(__file__).resolve().parent.parent
REPORTS_DIR = BASE_DIR / "reports"
DOCS_REPORTS_DIR = BASE_DIR / "docs" / "reports"

if str(BASE_DIR) not in sys.path:
    sys.path.insert(0, str(BASE_DIR))


def _read_json_report(filename: str) -> Dict[str, Any]:
    for folder in (REPORTS_DIR, DOCS_REPORTS_DIR):
        candidate = folder / filename
        if candidate.exists():
            try:
                return json.loads(candidate.read_text(encoding="utf-8"))
            except Exception:
                pass
    return {}


class handler(BaseHTTPRequestHandler):
    def _send_json(self, payload: Dict[str, Any], status: int = 200) -> None:
        raw = json.dumps(payload).encode("utf-8")
        self.send_response(status)
        self.send_header("Access-Control-Allow-Origin", "*")
        self.send_header("Access-Control-Allow-Methods", "GET, POST, OPTIONS")
        self.send_header("Access-Control-Allow-Headers", "Content-Type")
        self.send_header("Cache-Control", "no-store, no-cache, must-revalidate, max-age=0")
        self.send_header("Content-Type", "application/json; charset=utf-8")
        self.send_header("Content-Length", str(len(raw)))
        self.end_headers()
        self.wfile.write(raw)

    def do_OPTIONS(self) -> None:
        self._send_json({"ok": True})

    def do_GET(self) -> None:
        parsed_url = urlparse(self.path)
        req_path = parsed_url.path
        qs = parse_qs(parsed_url.query)

        if req_path.startswith("/api/health"):
            self._send_json({
                "ok": True,
                "runtime": "vercel-python",
                "timestamp": time.time(),
                "reports_available": (REPORTS_DIR / "two_hour_test_summary.json").exists(),
            })
            return

        if req_path.startswith("/api/proofs"):
            proofs = _read_json_report("verified_onchain_proofs.json")
            self._send_json(proofs if proofs else {"ok": False, "error": "verified_onchain_proofs.json not found"})
            return

        if req_path.startswith("/api/telemetry"):
            self._send_json({
                "ok": True,
                "two_hour_summary": _read_json_report("two_hour_test_summary.json"),
                "verified_onchain_proofs": _read_json_report("verified_onchain_proofs.json"),
                "live_aave_watchlist": _read_json_report("live_aave_watchlist.json"),
                "checkpoint": _read_json_report("checkpoint_state.json"),
            })
            return

        if req_path.startswith("/api/mudrex-limit"):
            cfg = {"destination": "MUDREX", "mudrex_level": "LEVEL_0", "mudrex_limit_inr": 12500.0}
            saved = _read_json_report("checkout_destination.json")
            if saved:
                cfg.update(saved)
            self._send_json({"ok": True, **cfg})
            return

        # Delegate live RPC calls to scripts/serve_metamask_portal.py helpers when available
        try:
            from scripts import serve_metamask_portal as portal

            if req_path.startswith("/api/wallet_balances"):
                w = qs.get("wallet", ["0xFF3c34DAF159741C931F7c421350f8289A9d89BE"])[0]
                b = qs.get("binance", ["0xb411f0Bf1E010FCc81585eDD2b65C5a49d3d0099"])[0]
                self._send_json(portal.get_live_wallet_balances_payload(w, b))
                return

            if req_path.startswith("/api/verify_tx_receipt"):
                tx = qs.get("tx", [""])[0]
                b = qs.get("binance", ["0xb411f0Bf1E010FCc81585eDD2b65C5a49d3d0099"])[0]
                self._send_json(portal.verify_arbitrum_tx_receipt(tx, b))
                return

            if req_path.startswith("/api/contract_artifact"):
                self._send_json(portal.get_contract_artifact_payload())
                return

            if req_path.startswith("/api/state"):
                payload = portal.get_realtime_payload()
                payload["ok"] = True
                self._send_json(payload)
                return
        except Exception:
            pass

        # Static report fallback for /api/state
        self._send_json({
            "ok": True,
            "summary": _read_json_report("two_hour_test_summary.json"),
            "asm_sniper_telemetry": _read_json_report("asm_sniper_telemetry.json"),
            "autonomous_broadcast": _read_json_report("last_autonomous_broadcast.json"),
            "wallet_balances": {},
        })

    def do_POST(self) -> None:
        self.do_GET()

    def log_message(self, format: str, *args: Any) -> None:
        return

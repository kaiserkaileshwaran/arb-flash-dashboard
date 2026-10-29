#!/usr/bin/env python3
"""
Vercel Serverless Web & API Handler for Arbitrum Flash-Loan Visual Dashboard & On-Chain Verification.
Serves HTML dashboards (/, /dashboard, /docs), JSON telemetry (/reports/*), and API endpoints (/api/*).
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
    clean_name = Path(filename).name
    for folder in (REPORTS_DIR, DOCS_REPORTS_DIR):
        candidate = folder / clean_name
        if candidate.exists():
            try:
                return json.loads(candidate.read_text(encoding="utf-8"))
            except Exception:
                pass
    return {}


class handler(BaseHTTPRequestHandler):
    def _send_html(self, html_bytes: bytes, status: int = 200) -> None:
        self.send_response(status)
        self.send_header("Access-Control-Allow-Origin", "*")
        self.send_header("Cache-Control", "no-store, no-cache, must-revalidate, max-age=0")
        self.send_header("Content-Type", "text/html; charset=utf-8")
        self.send_header("Content-Length", str(len(html_bytes)))
        self.end_headers()
        self.wfile.write(html_bytes)

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
        qs = parse_qs(parsed_url.query)

        # Resolve original request path across Vercel rewrite query param, headers, or direct URL path
        forwarded_path = qs.get("__path", [None])[0]
        if not forwarded_path:
            raw_path = parsed_url.path or "/"
            if raw_path in ("/api/index.py", "/api/index"):
                forwarded_path = "/"
            else:
                forwarded_path = raw_path
        req_path = "/" + forwarded_path.lstrip("/")

        # 1. Serve Visual HTML Dashboards at /, /index.html, /dashboard, /docs
        if req_path in ("/", "/index.html"):
            for candidate in (BASE_DIR / "index.html", BASE_DIR / "docs" / "index.html"):
                if candidate.exists():
                    self._send_html(candidate.read_bytes())
                    return

        if req_path in ("/dashboard", "/dashboard/", "/dashboard/index.html"):
            dash_file = BASE_DIR / "dashboard" / "index.html"
            if dash_file.exists():
                self._send_html(dash_file.read_bytes())
                return

        if req_path in ("/docs", "/docs/", "/docs/index.html"):
            docs_file = BASE_DIR / "docs" / "index.html"
            if docs_file.exists():
                self._send_html(docs_file.read_bytes())
                return

        # 2. Serve Static JSON Reports (/reports/*.json and /docs/reports/*.json)
        if req_path.startswith("/reports/") or req_path.startswith("/docs/reports/"):
            rep_name = Path(req_path).name
            data = _read_json_report(rep_name)
            if data:
                self._send_json(data)
                return
            self._send_json({"ok": False, "error": f"Report {rep_name} not found"}, status=404)
            return

        # 3. Serve API Endpoints (/api/*)
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

        if req_path.startswith("/api/"):
            self._send_json({
                "ok": True,
                "summary": _read_json_report("two_hour_test_summary.json"),
                "asm_sniper_telemetry": _read_json_report("asm_sniper_telemetry.json"),
                "autonomous_broadcast": _read_json_report("last_autonomous_broadcast.json"),
                "wallet_balances": {},
            })
            return

        # 4. Default Fallback: Serve index.html for any non-API browser route
        if (BASE_DIR / "index.html").exists():
            self._send_html((BASE_DIR / "index.html").read_bytes())
            return

        self._send_json({"ok": False, "error": "Not found"}, status=404)

    def do_POST(self) -> None:
        self.do_GET()

    def log_message(self, format: str, *args: Any) -> None:
        return

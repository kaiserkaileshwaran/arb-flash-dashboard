#!/usr/bin/env bash
set -e
cd /workspaces/arb-flash-engine

# Stop any prior python3 scanner process safely by PID
for pid in $(pgrep -f "engine/live_rpc_scanner.py" || true); do
    if [ "$pid" != "$$" ] && [ "$pid" != "$PPID" ]; then
        kill -9 "$pid" 2>/dev/null || true
    fi
done

# Delete all old assembly and shared object binaries per strict rule
rm -f engine/*.s engine/*.so engine/*.dylib engine/fast_sniper_native

# Compile fresh v17.0 x86_64 AVX2 + FMA hardware assembly and shared library
gcc -O3 -mavx2 -mfma -ffast-math -S engine/fast_sniper_native.c -o engine/fast_sniper_aws_x86_64.s
gcc -O3 -mavx2 -mfma -ffast-math -shared -fPIC engine/fast_sniper_native.c -o engine/libfast_sniper.so -lm
gcc -O3 -mavx2 -mfma -ffast-math engine/fast_sniper_native.c -o engine/fast_sniper_native -lm

# Benchmark v17.0 hardware assembly kernel
./engine/fast_sniper_native

# Launch 24/7 v17.0 live daemon
nohup python3 -u engine/live_rpc_scanner.py --cycles 1000000 --interval 0.25 > reports/us_east_v16.log 2>&1 < /dev/null &
sleep 4
tail -n 10 reports/us_east_v16.log

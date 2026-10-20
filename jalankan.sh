#!/bin/sh
# Jalankan situs Christy secara lokal.
# Pakai: sh jalankan.sh          -> port 8080
#        sh jalankan.sh 3000     -> port lain
PORT="${1:-8080}"
DIR="$(cd "$(dirname "$0")" && pwd)"
cd "$DIR" || exit 1

echo "Folder : $DIR"
echo "Buka   : http://localhost:$PORT"
echo "HP lain: http://$(hostname -i 2>/dev/null | awk '{print $1}'):$PORT"
echo "Stop   : Ctrl+C"
echo

if command -v python3 >/dev/null 2>&1; then
    exec python3 -m http.server "$PORT" --bind 0.0.0.0
elif command -v python >/dev/null 2>&1; then
    exec python -m SimpleHTTPServer "$PORT"
elif command -v busybox >/dev/null 2>&1; then
    exec busybox httpd -f -p "$PORT" -h "$DIR"
else
    echo "Tidak ada python/busybox."
    echo "Alpine : apk add --no-cache python3"
    exit 1
fi

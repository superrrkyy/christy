#!/bin/sh
# Deploy situs ke GitHub Pages: https://superrrkyy.github.io/christy
# Prasyarat: repo "christy" sudah dibuat di github.com (Public, TANPA README).
# Pakai: sh deploy-github.sh
set -e
GHUSER="superrrkyy"
REPO="christy"
DIR="$(cd "$(dirname "$0")" && pwd)"
cd "$DIR"

echo "== 1/6 cek git =="
command -v git >/dev/null 2>&1 || { echo "git belum ada -> apk add --no-cache git"; exit 1; }

echo "== 2/6 siapkan repo lokal =="
[ -d .git ] || git init -q
git branch -M main 2>/dev/null || true

echo "== 3/6 identitas commit =="
if [ -z "$(git config --get user.email || true)" ]; then
    git config user.email "$GHUSER@users.noreply.github.com"
    git config user.name "$GHUSER"
fi

echo "== 4/6 arahkan ke GitHub =="
if git remote | grep -q '^origin$'; then
    git remote set-url origin "https://github.com/$GHUSER/$REPO.git"
else
    git remote add origin "https://github.com/$GHUSER/$REPO.git"
fi

echo "== 5/6 commit + push =="
git add -A
git commit -q -m "Situs Christy — JKT48 New Era" || echo "   (tidak ada perubahan baru)"
echo "   Username : $GHUSER"
echo "   Password : tempel Personal Access Token (ghp_...), bukan password akun"
git push -u origin main

echo "== 6/6 selesai =="
echo "Aktifkan Pages sekali saja:"
echo "  github.com/$GHUSER/$REPO/settings/pages"
echo "  Source: Deploy from a branch -> Branch: main -> /(root) -> Save"
echo "Alamat situs: https://$GHUSER.github.io/$REPO/"

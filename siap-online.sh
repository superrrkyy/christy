#!/bin/sh
# Ubah og:image & twitter:image menjadi URL absolut supaya pratinjau
# WhatsApp/X/Facebook muncul saat tautan dibagikan.
#
# Pakai: sh siap-online.sh https://superrrkyy.github.io/christy
#        sh siap-online.sh https://situsmu.netlify.app
set -e
BASE="${1%/}"
if [ -z "$BASE" ]; then
  echo "Contoh: sh siap-online.sh https://superrrkyy.github.io/christy"
  exit 1
fi
FILE="$(dirname "$0")/index.html"

# 1. canonical
sed -i "s|<link rel=\"canonical\" href=\"[^\"]*\">|<link rel=\"canonical\" href=\"$BASE/index.html\">|" "$FILE"
# 2. og:image & twitter:image -> absolut
sed -i "s|<meta property=\"og:image\" content=\"[^\"]*\">|<meta property=\"og:image\" content=\"$BASE/assets/og-cover.jpg\">|" "$FILE"
sed -i "s|<meta name=\"twitter:image\" content=\"[^\"]*\">|<meta name=\"twitter:image\" content=\"$BASE/assets/og-cover.jpg\">|" "$FILE"
# 3. gambar hero di data terstruktur
sed -i "s|\"image\": \"assets/og-cover.jpg\"|\"image\": \"$BASE/assets/og-cover.jpg\"|" "$FILE"

echo "Selesai. Nilai sekarang:"
grep -o 'content="[^"]*og-cover.jpg"' "$FILE" | sed 's/^/  /'
grep -o '<link rel="canonical" href="[^"]*"' "$FILE" | sed 's/^/  /'

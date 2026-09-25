#!/usr/bin/env bash
set -euo pipefail

PROJECT_DIR="$(cd "${BASH_SOURCE[0]%/*}/.." && pwd)"
TARGET_DIR="$PROJECT_DIR/config/includes.chroot/usr/share/carbuntu/fastfetch"

mkdir -p "$TARGET_DIR"

cp "$PROJECT_DIR/config/fastfetch/carbon.txt" "$TARGET_DIR/carbon.txt"
cp "$PROJECT_DIR/config/fastfetch/carbon.jsonc" "$TARGET_DIR/config.jsonc"

chmod 0644 "$TARGET_DIR/carbon.txt" "$TARGET_DIR/config.jsonc"

echo "Carbuntu Fastfetch default configured."

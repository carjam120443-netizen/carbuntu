#!/usr/bin/env bash
set -euo pipefail

PROJECT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$PROJECT_DIR"

mkdir -p build

lb clean --purge

lb config \
  --distribution resolute \
  --architectures amd64 \
  --archive-areas "main restricted universe multiverse" \
  --mirror-bootstrap "http://archive.ubuntu.com/ubuntu/" \
  --mirror-chroot "http://archive.ubuntu.com/ubuntu/" \
  --mirror-binary "http://archive.ubuntu.com/ubuntu/" \
  --mirror-binary-security "http://security.ubuntu.com/ubuntu/" \
  --binary-images iso-hybrid \
  --debian-installer false \
  --bootappend-live "boot=live components"

lb build

mkdir -p build
mv -f live-image-amd64.hybrid.iso build/carbuntu-26.04-amd64.iso

echo "Carbuntu ISO created:"
echo "  $PROJECT_DIR/build/carbuntu-26.04-amd64.iso"
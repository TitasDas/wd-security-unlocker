#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$ROOT_DIR"

if ! command -v pyinstaller >/dev/null 2>&1; then
  echo "pyinstaller is not installed."
  echo "Install it first (example): pip3 install pyinstaller"
  exit 1
fi

PYTHON_BIN="${PYTHON_BIN:-python3}"
if ! command -v "$PYTHON_BIN" >/dev/null 2>&1; then
  echo "python3 not found. Install python3 or set PYTHON_BIN explicitly."
  exit 1
fi

rm -rf build dist

"$PYTHON_BIN" -m PyInstaller \
  --noconfirm \
  --clean \
  --onefile \
  --name wd-security \
  wd-security.py

echo "Build complete: $ROOT_DIR/dist/wd-security"

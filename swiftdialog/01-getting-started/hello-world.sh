#!/bin/bash
# ─────────────────────────────────────────────────
# Hello World
# The simplest swiftDialog invocation — title, message, and OK button
#
# Full guide: https://fullmetalmac.com/guides/swiftdialog/#quick-start
# Repo: https://github.com/patent-ed/fullmetalmac-guides
# ─────────────────────────────────────────────────

/usr/local/bin/dialog \
  --title "Hello" \
  --message "Welcome to your new Mac!"

echo "Dialog closed with exit code: $?"

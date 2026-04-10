#!/bin/bash
# ─────────────────────────────────────────────────
# Basic Progress Bar
# Static progress bar with numbered steps
#
# Full guide: https://fullmetalmac.com/guides/swiftdialog/#progress-bars-and-timers
# Repo: https://github.com/patent-ed/fullmetalmac-guides
# ─────────────────────────────────────────────────

/usr/local/bin/dialog \
  --title "Installing Software" \
  --message "Please wait while we install your applications..." \
  --icon "SF=square.and.arrow.down.fill,colour=#007AFF" \
  --progress 5 \
  --progresstext "Starting..." \
  --button1text "Please Wait" \
  --button1disabled

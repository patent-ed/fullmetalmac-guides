#!/bin/bash
# ─────────────────────────────────────────────────
# No-Banner Branded Dialog
# Branded dialog without a banner — icon, fonts, and background watermark
#
# Full guide: https://fullmetalmac.com/guides/swiftdialog/#banner-images-and-branding
# Repo: https://github.com/patent-ed/fullmetalmac-guides
# ─────────────────────────────────────────────────

# NOTE: Replace /Library/CompanyAssets/ paths with your own icon and
# watermark image locations.

# You don't need a banner to create a branded dialog. Combine:
#   --titlefont / --messagefont  for brand colours and typography
#   --icon / --iconsize          for a company logo
#   --background                 for a subtle watermark behind the message
#   --bgalpha                    controls watermark opacity (0.0–1.0)
#   --bgposition                 places the watermark (bottomright, center, etc.)
#   --appearance light           forces light mode regardless of system setting

/usr/local/bin/dialog \
  --title "Acme Corp — Policy Reminder" \
  --titlefont "colour=#1E3A5F,weight=heavy,size=20" \
  --message "Your Mac must be restarted to complete the latest security update.\n\nPlease save your work and restart at your earliest convenience." \
  --messagefont "size=14,colour=#374151" \
  --icon "/Library/CompanyAssets/acme-logo.png" \
  --iconsize 120 \
  --background "/Library/CompanyAssets/acme-watermark.png" \
  --bgalpha 0.06 \
  --bgposition bottomright \
  --button1text "Restart Now" \
  --button2text "Defer (4 hours)" \
  --width 620 \
  --appearance light

#!/bin/bash
# ─────────────────────────────────────────────────
# Solid-Colour Banner
# Branded dialog using a hex colour banner — no image files needed
#
# Full guide: https://fullmetalmac.com/guides/swiftdialog/#banner-images-and-branding
# Repo: https://github.com/patent-ed/fullmetalmac-guides
# ─────────────────────────────────────────────────

# --bannerimage "colour=#HEX" renders a flat colour banner instead of an image.
# --bannertitle places bold text centred inside the banner area.
# --titlefont styles that banner title — shadow=1 adds a subtle drop-shadow
#   for readability on bright or dark backgrounds.
# --timer 300 auto-dismisses the dialog after 300 seconds (5 minutes).
# --hidetimerbar hides the countdown bar so the UI stays clean.

/usr/local/bin/dialog \
  --bannerimage "colour=#1D4ED8" \
  --bannertitle "Contoso IT — Software Update" \
  --titlefont "shadow=1,colour=#FFFFFF,weight=bold,size=22" \
  --message "A required security update is available for your Mac.\n\nThis update patches **CVE-2026-1234** and must be installed within 72 hours." \
  --messagefont "size=14" \
  --button1text "Update Now" \
  --button2text "Remind Me Later" \
  --timer 300 \
  --hidetimerbar \
  --width 650

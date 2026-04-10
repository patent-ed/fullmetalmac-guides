#!/bin/bash
# ─────────────────────────────────────────────────
# Palette and Overlay
# Multi-color palettes, backgrounds, overlay icons, weights
#
# Full guide: https://fullmetalmac.com/guides/swiftdialog/#sf-symbols-reference-for-mac-admins
# Repo: https://github.com/patent-ed/fullmetalmac-guides
# ─────────────────────────────────────────────────

# Monochrome (single color)
/usr/local/bin/dialog \
  --title "Monochrome Icon" \
  --message "Monochrome (single color)" \
  --icon "SF=lock.fill,colour=#007AFF" \
  --timer 5

# Palette (multi-color layers)
/usr/local/bin/dialog \
  --title "Palette Icon" \
  --message "Palette (multi-color layers)" \
  --icon "SF=person.badge.shield.checkmark.fill,palette=white,blue,green" \
  --timer 5

# Custom Background
/usr/local/bin/dialog \
  --title "Custom Background" \
  --message "Custom Background" \
  --icon "SF=lock.fill,colour=blue,bgcolor=#E5E7EB" \
  --timer 5

# No Background Circle
/usr/local/bin/dialog \
  --title "No Background Circle" \
  --message "No Background Circle" \
  --icon "SF=lock.fill,colour=blue,bgcolor=none" \
  --timer 5

# Overlay Icon Badge
/usr/local/bin/dialog \
  --title "Overlay Icon Badge" \
  --message "Overlay Icon Badge" \
  --icon "/Applications/Safari.app" \
  --overlayicon "SF=checkmark.circle.fill,colour=green" \
  --timer 5

# Heavy Weight
/usr/local/bin/dialog \
  --title "Heavy Weight Icon" \
  --message "Heavy Weight" \
  --icon "SF=shield.checkered,colour=#FF3B30,weight=heavy" \
  --timer 5

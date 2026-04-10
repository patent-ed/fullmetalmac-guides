#!/bin/bash
# ─────────────────────────────────────────────────
# Update Icons
# Update and software SF Symbols — downloads, syncing, checkmarks
#
# Full guide: https://fullmetalmac.com/guides/swiftdialog/#sf-symbols-reference-for-mac-admins
# Repo: https://github.com/patent-ed/fullmetalmac-guides
# ─────────────────────────────────────────────────

# macOS Update Available
/usr/local/bin/dialog \
  --title "macOS Update Available" \
  --message "A new macOS update is ready to install. Please save your work." \
  --icon "SF=arrow.down.circle.fill,colour=#007AFF,weight=medium" \
  --timer 5

# Restart Required
/usr/local/bin/dialog \
  --title "Restart Required" \
  --message "A restart is needed to finish installing updates. Please restart soon." \
  --icon "SF=arrow.clockwise.circle.fill,colour=orange,animation=bounce" \
  --timer 5

# Installation Complete
/usr/local/bin/dialog \
  --title "Installation Complete" \
  --message "All updates have been installed successfully." \
  --icon "SF=checkmark.circle.fill,colour=#34C759" \
  --timer 5

# Installation Failed
/usr/local/bin/dialog \
  --title "Installation Failed" \
  --message "The update could not be installed. Please try again or contact IT." \
  --icon "SF=xmark.circle.fill,colour=#FF3B30" \
  --timer 5

# System Setup
/usr/local/bin/dialog \
  --title "System Setup" \
  --message "Configuring system preferences and installing required software." \
  --icon "SF=gearshape.2.fill,colour=#007AFF" \
  --timer 5

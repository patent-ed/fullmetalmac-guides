#!/bin/bash
# ─────────────────────────────────────────────────
# macOS Update Notification
# macOS update nudge with timer, deferral, and link to Software Update
#
# Full guide: https://fullmetalmac.com/guides/swiftdialog/#common-use-cases
# Repo: https://github.com/patent-ed/fullmetalmac-guides
# ─────────────────────────────────────────────────

# Nudge the user to install a pending macOS security update.
# --timer 600 shows a visible countdown bar (10 minutes).
# --button1action opens System Settings > Software Update when clicked.
# --helpmessage adds a help button with IT contact info.

/usr/local/bin/dialog \
  --title "macOS Update Available" \
  --message "A critical security update is available for your Mac.\n\nThis update addresses **CVE-2026-3192** and other vulnerabilities that could allow unauthorized access to your system.\n\nPlease install this update as soon as possible. If you defer, you will be reminded again in 4 hours." \
  --icon "SF=arrow.down.circle.fill,colour=#007AFF,animation=bounce" \
  --button1text "Update Now" \
  --button1action "x-apple.systempreferences:com.apple.Software-Update-Settings.extension" \
  --button2text "Defer (4 hours)" \
  --timer 600 \
  --helpmessage "Contact IT at help@company.com if you need assistance." \
  --width 650

exitcode=$?

case $exitcode in
  0)
    echo "User chose to update — Software Update pane opened."
    ;;
  2)
    echo "User deferred the update for 4 hours."
    # Schedule a re-prompt in 4 hours, e.g. via launchd or Jamf policy.
    ;;
  4)
    echo "Dialog timed out after 10 minutes — treating as deferral."
    ;;
  *)
    echo "Dialog exited with code: $exitcode"
    ;;
esac

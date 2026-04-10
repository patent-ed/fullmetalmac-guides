#!/bin/bash
# ─────────────────────────────────────────────────
# Buttons and Exit Codes
# Two-button dialog with an info button — demonstrates exit code handling
#
# Exit codes:
#   0  — Button 1 (primary) clicked
#   2  — Button 2 (secondary) clicked
#   3  — Info button clicked
#   4  — Timer expired
#  10  — Dialog quit via Cmd-Q or timeout
#
# Full guide: https://fullmetalmac.com/guides/swiftdialog/#quick-start
# Repo: https://github.com/patent-ed/fullmetalmac-guides
# ─────────────────────────────────────────────────

/usr/local/bin/dialog \
  --title "Restart Required" \
  --message "macOS updates have been installed. Please restart your Mac to complete the process." \
  --icon "SF=arrow.clockwise.circle.fill" \
  --button1text "Restart" \
  --button2text "Later" \
  --infobuttontext "What was updated?" \
  --infobuttonaction "https://support.apple.com/en-us/HT201222"

exitcode=$?

case $exitcode in
  0)
    echo "User clicked Restart (Button 1)"
    # Add restart logic here, e.g.:
    # sudo shutdown -r now
    ;;
  2)
    echo "User clicked Later (Button 2)"
    ;;
  3)
    echo "User clicked the info button"
    ;;
  4)
    echo "Timer expired"
    ;;
  10)
    echo "Dialog was quit via Cmd-Q or process signal"
    ;;
  *)
    echo "Unexpected exit code: $exitcode"
    ;;
esac

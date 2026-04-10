#!/bin/bash
# ─────────────────────────────────────────────────
# Timer Examples
# Countdown timer with and without visible timer bar
#
# Full guide: https://fullmetalmac.com/guides/swiftdialog/#progress-bars-and-timers
# Repo: https://github.com/patent-ed/fullmetalmac-guides
# ─────────────────────────────────────────────────

# ── Example 1: Visible timer bar ──────────────────
echo "Example 1: Visible timer bar (10 seconds)"

/usr/local/bin/dialog \
  --title "Restart Required" \
  --message "Your Mac will restart automatically when the timer expires." \
  --icon "SF=arrow.clockwise.circle.fill,colour=orange" \
  --timer 10 \
  --button1text "Restart Now" \
  --button2text "Cancel"

echo "Exit code: $? (4 = timer expired)"

# ── Example 2: Hidden timer bar ──────────────────
echo "Example 2: Hidden timer bar (10 seconds)"

/usr/local/bin/dialog \
  --title "Information" \
  --message "This notice will close automatically." \
  --icon "SF=info.circle.fill,colour=#007AFF" \
  --timer 10 \
  --hidetimerbar \
  --button1text "OK"

echo "Exit code: $? (4 = timer expired)"

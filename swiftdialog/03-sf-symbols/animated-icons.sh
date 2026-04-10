#!/bin/bash
# ─────────────────────────────────────────────────
# Animated Icons
# Animation types demo — pulse, bounce, appear, variable
#
# Full guide: https://fullmetalmac.com/guides/swiftdialog/#sf-symbols-reference-for-mac-admins
# Repo: https://github.com/patent-ed/fullmetalmac-guides
# ─────────────────────────────────────────────────

# Pulse animation
/usr/local/bin/dialog \
  --title "Pulse Animation" \
  --message "Pulse: fades in and out" \
  --icon "SF=shield.checkered,colour=#007AFF,animation=pulse" \
  --timer 8

# Bounce animation
/usr/local/bin/dialog \
  --title "Bounce Animation" \
  --message "Bounce: draws attention" \
  --icon "SF=shield.checkered,colour=#007AFF,animation=bounce" \
  --timer 8

# Appear animation
/usr/local/bin/dialog \
  --title "Appear Animation" \
  --message "Appear: fades in on display" \
  --icon "SF=shield.checkered,colour=#007AFF,animation=appear" \
  --timer 8

# Variable animation
/usr/local/bin/dialog \
  --title "Variable Animation" \
  --message "Variable: animates variable-rate layers" \
  --icon "SF=shield.checkered,colour=#007AFF,animation=variable" \
  --timer 8

# Variable Reversing animation
/usr/local/bin/dialog \
  --title "Variable Reversing Animation" \
  --message "Variable Reversing" \
  --icon "SF=shield.checkered,colour=#007AFF,animation=variable.reversing" \
  --timer 8

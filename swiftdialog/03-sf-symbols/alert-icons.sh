#!/bin/bash
# ─────────────────────────────────────────────────
# Alert Icons
# Alert and status SF Symbols — warnings, errors, info
#
# Full guide: https://fullmetalmac.com/guides/swiftdialog/#sf-symbols-reference-for-mac-admins
# Repo: https://github.com/patent-ed/fullmetalmac-guides
# ─────────────────────────────────────────────────

# Warning
/usr/local/bin/dialog \
  --title "Warning" \
  --message "Your password will expire in 3 days. Please update it soon." \
  --icon "SF=exclamationmark.triangle.fill,colour=#FF9500" \
  --timer 5

# Critical Error
/usr/local/bin/dialog \
  --title "Critical Error" \
  --message "A critical system error occurred. Please contact IT support immediately." \
  --icon "SF=xmark.octagon.fill,colour=#FF3B30,animation=bounce" \
  --timer 5

# Information
/usr/local/bin/dialog \
  --title "Information" \
  --message "Scheduled maintenance is planned for this weekend. No action needed." \
  --icon "SF=info.circle.fill,colour=#007AFF" \
  --timer 5

# Processing
/usr/local/bin/dialog \
  --title "Processing" \
  --message "Please wait while the operation completes..." \
  --icon "SF=hourglass,colour=gray,animation=pulse" \
  --timer 5

# Notification Reminder
/usr/local/bin/dialog \
  --title "Notification Reminder" \
  --message "You have pending IT tasks that require your attention." \
  --icon "SF=bell.fill,colour=#5856D6" \
  --timer 5

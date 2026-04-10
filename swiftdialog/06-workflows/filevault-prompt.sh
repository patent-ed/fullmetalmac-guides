#!/bin/bash
# ─────────────────────────────────────────────────
# FileVault Enablement Prompt
# FileVault enablement dialog with security icon and deferral option
#
# Full guide: https://fullmetalmac.com/guides/swiftdialog/#common-use-cases
# Repo: https://github.com/patent-ed/fullmetalmac-guides
# ─────────────────────────────────────────────────

# Prompt the user to enable FileVault disk encryption.
# --timer 300 auto-dismisses after 5 minutes if the user doesn't respond.
# --hidetimerbar keeps the UI clean (no visible countdown).

/usr/local/bin/dialog \
  --title "Enable FileVault Encryption" \
  --message "FileVault protects the data on your Mac by encrypting the entire disk at rest.\n\nThis is **required by company policy** to ensure sensitive data remains secure if your device is lost or stolen.\n\nPlease click **Enable FileVault** to begin. You can defer once, but encryption must be enabled within 24 hours." \
  --icon "SF=lock.fill,colour=#007AFF,weight=medium" \
  --button1text "Enable FileVault" \
  --button2text "Remind Me Tomorrow" \
  --timer 300 \
  --hidetimerbar \
  --width 600

exitcode=$?

case $exitcode in
  0)
    echo "User chose to enable FileVault."
    # Insert your FileVault enablement command here, e.g.:
    # fdesetup enable -user "$USER"
    ;;
  2)
    echo "User deferred FileVault enablement."
    # Log deferral, schedule a reminder for tomorrow, etc.
    ;;
  4)
    echo "Dialog timed out after 5 minutes — treating as deferral."
    ;;
  *)
    echo "Dialog exited with unexpected code: $exitcode"
    ;;
esac

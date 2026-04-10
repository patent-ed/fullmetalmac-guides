#!/bin/bash
# ─────────────────────────────────────────────────
# Security Icons
# Security and compliance SF Symbols — locks, shields, keys
#
# Full guide: https://fullmetalmac.com/guides/swiftdialog/#sf-symbols-reference-for-mac-admins
# Repo: https://github.com/patent-ed/fullmetalmac-guides
# ─────────────────────────────────────────────────

# FileVault Encryption
/usr/local/bin/dialog \
  --title "FileVault Encryption" \
  --message "FileVault disk encryption is enabled and protecting this Mac." \
  --icon "SF=lock.fill,colour=#007AFF,weight=medium" \
  --timer 5

# Security Scanning
/usr/local/bin/dialog \
  --title "Security Scanning" \
  --message "Running a full security scan of the system. Please wait..." \
  --icon "SF=shield.checkered,colour=#007AFF" \
  --timer 5

# Security Violation
/usr/local/bin/dialog \
  --title "Security Violation Detected" \
  --message "A security policy violation was found. Contact your IT administrator." \
  --icon "SF=exclamationmark.shield.fill,colour=#FF3B30,animation=pulse" \
  --timer 5

# Compliance Verified
/usr/local/bin/dialog \
  --title "Compliance Verified" \
  --message "This device meets all organizational security requirements." \
  --icon "SF=checkmark.shield.fill,colour=#34C759" \
  --timer 5

# Recovery Key
/usr/local/bin/dialog \
  --title "Recovery Key" \
  --message "Your FileVault recovery key has been escrowed to the MDM server." \
  --icon "SF=key.fill,colour=#FF9500" \
  --timer 5

# Security Policy
/usr/local/bin/dialog \
  --title "Security Policy Applied" \
  --message "The latest security configuration profile has been installed." \
  --icon "SF=lock.shield.fill,colour=#5856D6" \
  --timer 5

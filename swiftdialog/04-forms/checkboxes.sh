#!/bin/bash
# ─────────────────────────────────────────────────
# Checkbox Examples
# Demonstrates checkbox options with required acceptance
#
# Full guide: https://fullmetalmac.com/guides/swiftdialog/#user-input--forms
# Repo: https://github.com/patent-ed/fullmetalmac-guides
# ─────────────────────────────────────────────────

# Adding "required" to a checkbox prevents the user from proceeding
# until that checkbox is checked. Useful for policy acceptance prompts.

/usr/local/bin/dialog \
  --title "Terms and Preferences" \
  --message "Please review the following options." \
  --icon "SF=checklist,colour=#007AFF" \
  --checkbox "I agree to the acceptable use policy",required \
  --checkbox "Enable FileVault encryption" \
  --checkbox "Install Xcode Command Line Tools" \
  --checkbox "Enroll in automatic updates" \
  --button1text "Continue" \
  --button2text "Cancel"

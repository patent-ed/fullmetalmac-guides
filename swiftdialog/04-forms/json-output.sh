#!/bin/bash
# ─────────────────────────────────────────────────
# JSON Output Form
# Complete form that captures structured JSON output for scripting
#
# Full guide: https://fullmetalmac.com/guides/swiftdialog/#user-input--forms
# Repo: https://github.com/patent-ed/fullmetalmac-guides
# ─────────────────────────────────────────────────

# Capture form data as JSON for use in Jamf/MDM scripts

DIALOG_OUTPUT=$(/usr/local/bin/dialog \
  --title "New Employee Onboarding" \
  --message "Please complete the following information." \
  --icon "SF=person.badge.plus,colour=#007AFF" \
  --textfield "Full Name",required,prompt="First Last" \
  --textfield "Email",required,regex="^[^@]+@[^@]+\.[^@]+$",regexerror="Enter a valid email" \
  --textfield "Employee ID",required,prompt="e.g. EMP-1234" \
  --selecttitle "Department" \
  --selectvalues "Engineering,Design,Marketing,Sales,Finance,HR,Operations" \
  --selectdefault "Engineering" \
  --selecttitle "Office Location" \
  --selectvalues "New York,London,Tokyo,Sydney" \
  --checkbox "I accept the terms of use" \
  --button1text "Submit" \
  --button2text "Cancel" \
  --json)

exitcode=$?

if [ "$exitcode" -eq 0 ]; then
  echo "Form submitted successfully:"
  echo "$DIALOG_OUTPUT"

  # Example: extract individual fields (requires jq)
  # name=$(echo "$DIALOG_OUTPUT" | /usr/bin/plutil -extract "Full Name" raw -o - -)
  # echo "Name: $name"
else
  echo "Form cancelled (exit code: $exitcode)"
fi

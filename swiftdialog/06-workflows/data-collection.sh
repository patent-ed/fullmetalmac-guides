#!/bin/bash
# ─────────────────────────────────────────────────
# User Onboarding Form
# User onboarding form capturing structured JSON for Jamf/MDM integration
#
# Full guide: https://fullmetalmac.com/guides/swiftdialog/#common-use-cases
# Repo: https://github.com/patent-ed/fullmetalmac-guides
# ─────────────────────────────────────────────────

# Collect new employee details via a branded form.
# --json outputs all field values as structured JSON for easy parsing.

DIALOG_OUTPUT=$(/usr/local/bin/dialog \
  --bannerimage "colour=#1E3A5F" \
  --bannertitle "New Employee Onboarding" \
  --titlefont "shadow=1,colour=#FFFFFF,weight=bold,size=22" \
  --message "Please complete the following information to set up your account." \
  --messagefont "size=14" \
  --textfield "Full Name",required,prompt="First Last" \
  --textfield "Email",required,regex="^[^@]+@[^@]+\.[^@]+$",regexerror="Enter a valid email address" \
  --textfield "Employee ID",required,prompt="e.g. EMP-1234" \
  --selecttitle "Department" \
  --selectvalues "Engineering,Design,Marketing,Sales,Finance,HR" \
  --selectdefault "Engineering" \
  --selecttitle "Office Location" \
  --selectvalues "New York,London,Tokyo,Sydney" \
  --selectdefault "New York" \
  --checkbox "I accept the terms of use",required \
  --button1text "Submit" \
  --button2text "Cancel" \
  --width 650 \
  --json)

exitcode=$?

if [ "$exitcode" -ne 0 ]; then
  echo "Form cancelled (exit code: $exitcode)"
  exit 1
fi

echo "Form submitted successfully:"
echo "$DIALOG_OUTPUT"

# ── Extracting fields for Jamf extension attributes ──
#
# macOS ships with plutil, which can read JSON from stdin:
#   fullname=$(echo "$DIALOG_OUTPUT" | /usr/bin/plutil -extract "Full Name" raw -o - -)
#   email=$(echo "$DIALOG_OUTPUT" | /usr/bin/plutil -extract "Email" raw -o - -)
#   empid=$(echo "$DIALOG_OUTPUT" | /usr/bin/plutil -extract "Employee ID" raw -o - -)
#   dept=$(echo "$DIALOG_OUTPUT" | /usr/bin/plutil -extract "Department" raw -o - -)
#
# Alternatively, if jq is available:
#   fullname=$(echo "$DIALOG_OUTPUT" | jq -r '."Full Name"')
#
# For Jamf Pro extension attributes, write extracted values with:
#   defaults write /Library/Managed\ Preferences/com.company.onboarding FullName "$fullname"
#
# Or use python3 (ships with macOS) for more complex JSON parsing:
#   fullname=$(echo "$DIALOG_OUTPUT" | python3 -c "import sys,json; print(json.load(sys.stdin)['Full Name'])")

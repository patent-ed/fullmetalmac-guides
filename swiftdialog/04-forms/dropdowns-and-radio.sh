#!/bin/bash
# ─────────────────────────────────────────────────
# Dropdown and Radio Button Examples
# Demonstrates dropdown menus and radio button selections
#
# Full guide: https://fullmetalmac.com/guides/swiftdialog/#user-input--forms
# Repo: https://github.com/patent-ed/fullmetalmac-guides
# ─────────────────────────────────────────────────

# ─── Example 1: Dropdown menu ───────────────────
# --selecttitle sets the label, --selectvalues provides a comma-separated list,
# and --selectdefault pre-selects one option.

/usr/local/bin/dialog \
  --title "Department Selection" \
  --message "Select your department from the dropdown." \
  --icon "SF=building.2.fill,colour=#5856D6" \
  --selecttitle "Select your department" \
  --selectvalues "Engineering,Marketing,Sales,Finance,HR,Operations" \
  --selectdefault "Engineering" \
  --button1text "Continue"

# ─── Example 2: Radio buttons ───────────────────
# Adding the "radio" modifier to --selecttitle displays the options
# as radio buttons instead of a dropdown menu.

/usr/local/bin/dialog \
  --title "Priority Level" \
  --message "Select the priority for this request." \
  --icon "SF=flag.fill,colour=#FF9500" \
  --selecttitle "Priority",radio \
  --selectvalues "Low,Medium,High,Critical" \
  --selectdefault "Medium" \
  --button1text "Submit"

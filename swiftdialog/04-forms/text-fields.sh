#!/bin/bash
# ─────────────────────────────────────────────────
# Text Field Examples
# Demonstrates text input with validation, placeholders, and secure fields
#
# Full guide: https://fullmetalmac.com/guides/swiftdialog/#user-input--forms
# Repo: https://github.com/patent-ed/fullmetalmac-guides
# ─────────────────────────────────────────────────

/usr/local/bin/dialog \
  --title "User Setup" \
  --message "Please enter your information." \
  --icon "SF=person.fill,colour=#007AFF" \
  --textfield "Full Name",required,prompt="Enter your name" \
  --textfield "Email",required,regex="^[^@]+@[^@]+\.[^@]+$",regexerror="Enter a valid email address" \
  --textfield "Asset Tag",prompt="e.g. MAC-1234" \
  --textfield "Password",required,secure \
  --button1text "Submit" \
  --button2text "Cancel"

# ─── Textfield properties explained ─────────────
#
# required        — The user must fill in this field before the dialog can be submitted.
# prompt="..."    — Placeholder text shown inside the field when it is empty.
# regex="..."     — A regular expression the input must match for the field to validate.
# regexerror="..."— Custom error message shown when the regex validation fails.
# secure          — Masks the input like a password field (dots instead of characters).

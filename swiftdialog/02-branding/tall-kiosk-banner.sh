#!/bin/bash
# ─────────────────────────────────────────────────
# Tall Kiosk Banner
# 250pt enrollment-style banner with form fields
#
# Full guide: https://fullmetalmac.com/guides/swiftdialog/#banner-images-and-branding
# Repo: https://github.com/patent-ed/fullmetalmac-guides
# ─────────────────────────────────────────────────

# NOTE: Replace /Library/CompanyAssets/enrollment-hero.png with your own
# banner image. Recommended size: 1500x500 px for a 250pt banner on Retina.

# --bannerheight 250  creates a tall, hero-style banner for enrollment flows.
# --textfield         adds a text input; "required" prevents empty submissions.
# --selecttitle /
# --selectvalues      create a dropdown picker for structured choices.
# --json              outputs all form values as JSON to stdout when the user
#                     clicks Submit — pipe to jq or read in your workflow.
# --ontop             keeps the dialog above all other windows.

/usr/local/bin/dialog \
  --bannerimage "/Library/CompanyAssets/enrollment-hero.png" \
  --bannerheight 250 \
  --bannertitle "Device Enrollment" \
  --titlefont "shadow=1,colour=#FFFFFF,weight=bold,size=32,alignment=left" \
  --message "Please complete the following information to register your device." \
  --messagefont "size=15" \
  --textfield "Full Name",required \
  --textfield "Employee ID",required \
  --selecttitle "Department" \
  --selectvalues "Engineering,Design,Marketing,Sales,Finance,HR,Operations" \
  --button1text "Submit" \
  --button2text "Cancel" \
  --width 750 \
  --height 600 \
  --ontop \
  --json

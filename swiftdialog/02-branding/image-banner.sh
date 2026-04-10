#!/bin/bash
# ─────────────────────────────────────────────────
# Image Banner
# Photo/graphic banner with white overlay text and shadow
#
# Full guide: https://fullmetalmac.com/guides/swiftdialog/#banner-images-and-branding
# Repo: https://github.com/patent-ed/fullmetalmac-guides
# ─────────────────────────────────────────────────

# NOTE: Replace /Library/CompanyAssets/ paths below with your own image
# and icon locations. These are placeholder paths for demonstration.

# Banner image tips:
#   - Use 1400x300 px images (2x for Retina displays at the default 150pt height).
#   - Dark or blurred images work best — white overlay text stays readable.
#   - PNG or JPEG both work; PNG supports transparency if needed.

# --bannerimage  points to a local image file on disk.
# --bannertitle  overlays text on the banner image.
# --bannertext   adds a secondary subtitle below the banner title.
# --titlefont    shadow=1 ensures white text is legible on photo backgrounds.
# --bannerheight sets the banner height in points (default is 150).
# --icon         displays a logo or icon in the message body area.

/usr/local/bin/dialog \
  --bannerimage "/Library/CompanyAssets/welcome-banner.png" \
  --bannertitle "Welcome to Acme Corp" \
  --bannertext "Your Mac is being configured" \
  --titlefont "shadow=1,colour=#FFFFFF,weight=heavy,size=28" \
  --bannerheight 180 \
  --message "We're installing your applications and applying security settings.\n\nThis process takes about 10 minutes." \
  --messagefont "size=14,weight=regular" \
  --icon "/Library/CompanyAssets/acme-logo.png" \
  --button1text "Continue" \
  --width 700

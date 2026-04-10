#!/bin/bash
# ─────────────────────────────────────────────────
# Mini Notification
# Compact alert using --small with colour banner
#
# Full guide: https://fullmetalmac.com/guides/swiftdialog/#banner-images-and-branding
# Repo: https://github.com/patent-ed/fullmetalmac-guides
# ─────────────────────────────────────────────────

# --small        renders a compact, notification-sized dialog.
# --ontop        keeps the notification above all other windows.
# --position     places the dialog in a screen corner (topright, topleft,
#                bottomright, bottomleft, or center).
# --button1action opens a URL or runs a command when the user clicks the button.
# A colour banner works well at small sizes where a full image would be cropped.

/usr/local/bin/dialog \
  --bannerimage "colour=#DC2626" \
  --bannertitle "Security Alert" \
  --titlefont "colour=#FFFFFF,weight=bold,size=16" \
  --message "Your FileVault recovery key has not been escrowed.\n\nPlease contact IT immediately." \
  --messagefont "size=13" \
  --button1text "Contact IT" \
  --button1action "https://company.service-now.com/it" \
  --small \
  --ontop \
  --position topright

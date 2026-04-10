#!/bin/bash
# ─────────────────────────────────────────────────
# App Installation Tracker
# App installation tracker with per-app status indicators and failure handling
#
# Full guide: https://fullmetalmac.com/guides/swiftdialog/#common-use-cases
# Repo: https://github.com/patent-ed/fullmetalmac-guides
# ─────────────────────────────────────────────────

# Command file for dynamic updates.
COMMAND_FILE=$(mktemp /tmp/dialog_cmd.XXXXXX)

FAILED_APPS=()

# Launch the dialog in the background with four app list items.
/usr/local/bin/dialog \
  --title "Installing Applications" \
  --message "Please wait while we install your required applications." \
  --messagefont "size=14" \
  --listitem "Google Chrome,status=pending" \
  --listitem "Slack,status=pending" \
  --listitem "Zoom,status=pending" \
  --listitem "Microsoft Office,status=pending" \
  --progress 4 \
  --button1text "Please Wait" \
  --button1disabled \
  --commandfile "$COMMAND_FILE" \
  --width 600 \
  --height 450 &

sleep 1

# ── App 1: Google Chrome ──
echo "listitem: title: Google Chrome, status: progress" >> "$COMMAND_FILE"
echo "progresstext: Installing Google Chrome…" >> "$COMMAND_FILE"
echo "progress: 1" >> "$COMMAND_FILE"
sleep 2

echo "listitem: title: Google Chrome, status: success" >> "$COMMAND_FILE"

# ── App 2: Slack ──
echo "listitem: title: Slack, status: progress" >> "$COMMAND_FILE"
echo "progresstext: Installing Slack…" >> "$COMMAND_FILE"
echo "progress: 2" >> "$COMMAND_FILE"
sleep 2

echo "listitem: title: Slack, status: success" >> "$COMMAND_FILE"

# ── App 3: Zoom ──
echo "listitem: title: Zoom, status: progress" >> "$COMMAND_FILE"
echo "progresstext: Installing Zoom…" >> "$COMMAND_FILE"
echo "progress: 3" >> "$COMMAND_FILE"
sleep 2

echo "listitem: title: Zoom, status: success" >> "$COMMAND_FILE"

# ── App 4: Microsoft Office (simulated failure) ──
echo "listitem: title: Microsoft Office, status: progress" >> "$COMMAND_FILE"
echo "progresstext: Installing Microsoft Office…" >> "$COMMAND_FILE"
echo "progress: 4" >> "$COMMAND_FILE"
sleep 2

# Simulate a failure — mark the item with status=fail and a status text.
echo "listitem: title: Microsoft Office, status: fail, statustext: Download error" >> "$COMMAND_FILE"
FAILED_APPS+=("Microsoft Office")

# ── Finish ──
if [ ${#FAILED_APPS[@]} -gt 0 ]; then
  echo "progresstext: Completed with errors — ${#FAILED_APPS[@]} app(s) failed to install." >> "$COMMAND_FILE"
else
  echo "progresstext: All applications installed successfully." >> "$COMMAND_FILE"
fi

echo "button1text: Close" >> "$COMMAND_FILE"
echo "button1: enable" >> "$COMMAND_FILE"

# Wait for the user to dismiss the dialog.
wait

# Clean up.
rm -f "$COMMAND_FILE"

# Report results.
if [ ${#FAILED_APPS[@]} -gt 0 ]; then
  echo "Installation completed with failures:"
  for app in "${FAILED_APPS[@]}"; do
    echo "  - $app"
  done
  exit 1
else
  echo "All applications installed successfully."
  exit 0
fi

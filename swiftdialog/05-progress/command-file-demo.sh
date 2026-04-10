#!/bin/bash
# ─────────────────────────────────────────────────
# Command File Demo
# Dynamic updates via /var/tmp/dialog.log command file
#
# Full guide: https://fullmetalmac.com/guides/swiftdialog/#progress-bars-and-timers
# Repo: https://github.com/patent-ed/fullmetalmac-guides
# ─────────────────────────────────────────────────

# The command file is how you send live updates to a running dialog
DIALOG_CMD_FILE="/var/tmp/dialog.log"

# Remove any existing command file
rm -f "$DIALOG_CMD_FILE"

# Launch dialog in the background with progress bar and list items
/usr/local/bin/dialog \
  --title "Device Setup" \
  --message "Configuring your Mac..." \
  --icon "SF=gearshape.2.fill,colour=#007AFF" \
  --progress 4 \
  --progresstext "Preparing..." \
  --button1text "Please Wait" \
  --button1disabled \
  --listitem "Install Applications" \
  --listitem "Configure VPN" \
  --listitem "Apply Security Settings" \
  --listitem "Register Device" \
  --commandfile "$DIALOG_CMD_FILE" &

# Brief pause to let the dialog window appear
sleep 0.5

# --- Step 1: Install Applications ---
echo "listitem: title: Install Applications, status: progress" >> "$DIALOG_CMD_FILE"
echo "progresstext: Installing applications..." >> "$DIALOG_CMD_FILE"
sleep 2
echo "listitem: title: Install Applications, status: success" >> "$DIALOG_CMD_FILE"
echo "progress: 1" >> "$DIALOG_CMD_FILE"

# --- Step 2: Configure VPN ---
echo "listitem: title: Configure VPN, status: progress" >> "$DIALOG_CMD_FILE"
echo "progresstext: Configuring VPN..." >> "$DIALOG_CMD_FILE"
sleep 2
echo "listitem: title: Configure VPN, status: success" >> "$DIALOG_CMD_FILE"
echo "progress: 2" >> "$DIALOG_CMD_FILE"

# --- Step 3: Apply Security Settings ---
echo "listitem: title: Apply Security Settings, status: progress" >> "$DIALOG_CMD_FILE"
echo "progresstext: Applying security settings..." >> "$DIALOG_CMD_FILE"
sleep 2
echo "listitem: title: Apply Security Settings, status: success" >> "$DIALOG_CMD_FILE"
echo "progress: 3" >> "$DIALOG_CMD_FILE"

# --- Step 4: Register Device ---
echo "listitem: title: Register Device, status: progress" >> "$DIALOG_CMD_FILE"
echo "progresstext: Registering device..." >> "$DIALOG_CMD_FILE"
sleep 2
echo "listitem: title: Register Device, status: success" >> "$DIALOG_CMD_FILE"
echo "progress: 4" >> "$DIALOG_CMD_FILE"

# All steps complete
echo "progresstext: All tasks complete!" >> "$DIALOG_CMD_FILE"
sleep 1
echo "quit:" >> "$DIALOG_CMD_FILE"

# Wait for the background dialog process to exit
wait

# Clean up the command file
rm -f "$DIALOG_CMD_FILE"

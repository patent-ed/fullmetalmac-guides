#!/bin/bash
# ─────────────────────────────────────────────────
# Multi-Step Checklist
# List items with live status indicators (wait, progress, success, fail)
#
# Full guide: https://fullmetalmac.com/guides/swiftdialog/#progress-bars-and-timers
# Repo: https://github.com/patent-ed/fullmetalmac-guides
# ─────────────────────────────────────────────────

# Status indicators available for list items:
#   wait     — grey clock icon (task queued, not yet started)
#   pending  — grey circle (task acknowledged but waiting)
#   progress — spinning blue indicator (task in progress)
#   success  — green checkmark (task completed successfully)
#   fail     — red X (task failed)
#   error    — yellow warning triangle (task encountered an error)

DIALOG_CMD_FILE="/var/tmp/dialog.log"
rm -f "$DIALOG_CMD_FILE"

# Launch dialog with 6 list items to demonstrate each status type
/usr/local/bin/dialog \
  --title "System Health Check" \
  --message "Running diagnostics on your Mac..." \
  --icon "SF=stethoscope.circle.fill,colour=#34C759" \
  --progress 6 \
  --progresstext "Starting checks..." \
  --button1text "Please Wait" \
  --button1disabled \
  --listitem "Check Disk Space" \
  --listitem "Verify Network Connection" \
  --listitem "Test DNS Resolution" \
  --listitem "Validate Certificates" \
  --listitem "Check FileVault Status" \
  --listitem "Scan for Malware" \
  --commandfile "$DIALOG_CMD_FILE" &

sleep 0.5

# Step 1: wait -> progress -> success
echo "listitem: title: Check Disk Space, status: wait" >> "$DIALOG_CMD_FILE"
sleep 1
echo "listitem: title: Check Disk Space, status: progress" >> "$DIALOG_CMD_FILE"
echo "progresstext: Checking disk space..." >> "$DIALOG_CMD_FILE"
sleep 2
echo "listitem: title: Check Disk Space, status: success" >> "$DIALOG_CMD_FILE"
echo "progress: 1" >> "$DIALOG_CMD_FILE"

# Step 2: pending -> progress -> success
echo "listitem: title: Verify Network Connection, status: pending" >> "$DIALOG_CMD_FILE"
sleep 1
echo "listitem: title: Verify Network Connection, status: progress" >> "$DIALOG_CMD_FILE"
echo "progresstext: Verifying network connection..." >> "$DIALOG_CMD_FILE"
sleep 2
echo "listitem: title: Verify Network Connection, status: success" >> "$DIALOG_CMD_FILE"
echo "progress: 2" >> "$DIALOG_CMD_FILE"

# Step 3: progress -> success
echo "listitem: title: Test DNS Resolution, status: progress" >> "$DIALOG_CMD_FILE"
echo "progresstext: Testing DNS resolution..." >> "$DIALOG_CMD_FILE"
sleep 2
echo "listitem: title: Test DNS Resolution, status: success" >> "$DIALOG_CMD_FILE"
echo "progress: 3" >> "$DIALOG_CMD_FILE"

# Step 4: progress -> fail (demonstrates a failed check)
echo "listitem: title: Validate Certificates, status: progress" >> "$DIALOG_CMD_FILE"
echo "progresstext: Validating certificates..." >> "$DIALOG_CMD_FILE"
sleep 2
echo "listitem: title: Validate Certificates, status: fail" >> "$DIALOG_CMD_FILE"
echo "progress: 4" >> "$DIALOG_CMD_FILE"

# Step 5: progress -> success
echo "listitem: title: Check FileVault Status, status: progress" >> "$DIALOG_CMD_FILE"
echo "progresstext: Checking FileVault status..." >> "$DIALOG_CMD_FILE"
sleep 2
echo "listitem: title: Check FileVault Status, status: success" >> "$DIALOG_CMD_FILE"
echo "progress: 5" >> "$DIALOG_CMD_FILE"

# Step 6: progress -> error (demonstrates an error/warning)
echo "listitem: title: Scan for Malware, status: progress" >> "$DIALOG_CMD_FILE"
echo "progresstext: Scanning for malware..." >> "$DIALOG_CMD_FILE"
sleep 2
echo "listitem: title: Scan for Malware, status: error" >> "$DIALOG_CMD_FILE"
echo "progress: 6" >> "$DIALOG_CMD_FILE"

# Summary
echo "progresstext: Diagnostics complete — 4 passed, 1 failed, 1 warning" >> "$DIALOG_CMD_FILE"
sleep 2
echo "quit:" >> "$DIALOG_CMD_FILE"

wait
rm -f "$DIALOG_CMD_FILE"

#!/bin/bash
# ─────────────────────────────────────────────────
# Zero-Touch Enrollment
# Complete enrollment workflow with branded banner, progress steps, and dynamic updates
#
# Full guide: https://fullmetalmac.com/guides/swiftdialog/#common-use-cases
# Repo: https://github.com/patent-ed/fullmetalmac-guides
# ─────────────────────────────────────────────────

# Command file for dynamic updates — swiftDialog reads this file for live changes.
COMMAND_FILE=$(mktemp /tmp/dialog_cmd.XXXXXX)

# Define the five enrollment steps as list items.
# "status=pending" renders each item with a pending indicator.
/usr/local/bin/dialog \
  --bannerimage "colour=#1D4ED8" \
  --bannertitle "Company IT — Device Setup" \
  --titlefont "shadow=1,colour=#FFFFFF,weight=bold,size=22" \
  --message "Setting up your Mac. This may take a few minutes." \
  --messagefont "size=14" \
  --listitem "Install Core Apps,status=pending" \
  --listitem "Configure VPN,status=pending" \
  --listitem "Set Up Email,status=pending" \
  --listitem "Enable FileVault,status=pending" \
  --listitem "Apply Security Policies,status=pending" \
  --progress 5 \
  --button1text "Please Wait" \
  --button1disabled \
  --commandfile "$COMMAND_FILE" \
  --width 650 \
  --height 500 &

# Give the dialog a moment to launch before sending commands.
sleep 1

# ── Step 1: Install Core Apps ──
echo "listitem: title: Install Core Apps, status: progress" >> "$COMMAND_FILE"
echo "progresstext: Installing core applications…" >> "$COMMAND_FILE"
echo "progress: 1" >> "$COMMAND_FILE"
sleep 3

echo "listitem: title: Install Core Apps, status: success" >> "$COMMAND_FILE"

# ── Step 2: Configure VPN ──
echo "listitem: title: Configure VPN, status: progress" >> "$COMMAND_FILE"
echo "progresstext: Configuring VPN profiles…" >> "$COMMAND_FILE"
echo "progress: 2" >> "$COMMAND_FILE"
sleep 2

echo "listitem: title: Configure VPN, status: success" >> "$COMMAND_FILE"

# ── Step 3: Set Up Email ──
echo "listitem: title: Set Up Email, status: progress" >> "$COMMAND_FILE"
echo "progresstext: Setting up email accounts…" >> "$COMMAND_FILE"
echo "progress: 3" >> "$COMMAND_FILE"
sleep 2

echo "listitem: title: Set Up Email, status: success" >> "$COMMAND_FILE"

# ── Step 4: Enable FileVault ──
echo "listitem: title: Enable FileVault, status: progress" >> "$COMMAND_FILE"
echo "progresstext: Enabling FileVault encryption…" >> "$COMMAND_FILE"
echo "progress: 4" >> "$COMMAND_FILE"
sleep 3

echo "listitem: title: Enable FileVault, status: success" >> "$COMMAND_FILE"

# ── Step 5: Apply Security Policies ──
echo "listitem: title: Apply Security Policies, status: progress" >> "$COMMAND_FILE"
echo "progresstext: Applying security policies…" >> "$COMMAND_FILE"
echo "progress: 5" >> "$COMMAND_FILE"
sleep 2

echo "listitem: title: Apply Security Policies, status: success" >> "$COMMAND_FILE"

# ── Finish ──
echo "progresstext: Setup complete! Your Mac is ready." >> "$COMMAND_FILE"
echo "button1text: Done" >> "$COMMAND_FILE"
echo "button1: enable" >> "$COMMAND_FILE"

# Wait for the user to dismiss the dialog.
wait

# Clean up the command file.
rm -f "$COMMAND_FILE"

echo "Enrollment workflow finished."

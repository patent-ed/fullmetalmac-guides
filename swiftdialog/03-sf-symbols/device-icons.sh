#!/bin/bash
# ─────────────────────────────────────────────────
# Device Icons
# Device and hardware SF Symbols — laptops, drives, network
#
# Full guide: https://fullmetalmac.com/guides/swiftdialog/#sf-symbols-reference-for-mac-admins
# Repo: https://github.com/patent-ed/fullmetalmac-guides
# ─────────────────────────────────────────────────

# Device Enrollment
/usr/local/bin/dialog \
  --title "Device Enrollment" \
  --message "This Mac is being enrolled into your organization's management system." \
  --icon "SF=laptopcomputer,colour=#007AFF" \
  --timer 5

# Disk Space Low
/usr/local/bin/dialog \
  --title "Disk Space Low" \
  --message "Your startup disk is almost full. Free up space to keep your Mac running smoothly." \
  --icon "SF=internaldrive.fill,colour=orange,animation=pulse" \
  --timer 5

# Network Configuration
/usr/local/bin/dialog \
  --title "Network Configuration" \
  --message "Connecting to the corporate Wi-Fi network. Please wait..." \
  --icon "SF=wifi,colour=green,animation=variable" \
  --timer 5

# Printer Setup
/usr/local/bin/dialog \
  --title "Printer Setup" \
  --message "Installing the office printer driver and adding the default queue." \
  --icon "SF=printer.fill,colour=#5856D6" \
  --timer 5

# Time Machine Backup
/usr/local/bin/dialog \
  --title "Time Machine Backup" \
  --message "Time Machine is configured and your next backup will start automatically." \
  --icon "SF=externaldrive.badge.timemachine,colour=green" \
  --timer 5

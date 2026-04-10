#!/bin/bash
# ─────────────────────────────────────────────────
# Basic Icon Types
# Demonstrates all four swiftDialog icon input types
# Each dialog auto-dismisses after 5 seconds for easy demo
#
# Full guide: https://fullmetalmac.com/guides/swiftdialog/#quick-start
# Repo: https://github.com/patent-ed/fullmetalmac-guides
# ─────────────────────────────────────────────────

# 1. File path — point directly to an .icns file on disk
/usr/local/bin/dialog \
  --title "File Path Icon" \
  --message "This icon is loaded from a file path to an .icns resource." \
  --icon "/System/Library/CoreServices/CoreTypes.bundle/Contents/Resources/ToolbarInfo.icns" \
  --timer 5

# 2. App bundle — swiftDialog extracts the icon from the .app
/usr/local/bin/dialog \
  --title "App Bundle Icon" \
  --message "This icon is pulled from the Safari application bundle." \
  --icon "/Applications/Safari.app" \
  --timer 5

# 3. SF Symbol — reference any SF Symbol by name with the SF= prefix
/usr/local/bin/dialog \
  --title "SF Symbol Icon" \
  --message "This icon uses the SF Symbol 'gear'." \
  --icon "SF=gear" \
  --timer 5

# 4. Built-in keyword — swiftDialog ships with a handful of keywords
/usr/local/bin/dialog \
  --title "Built-in Keyword Icon" \
  --message "This icon uses the built-in 'caution' keyword." \
  --icon "caution" \
  --timer 5

echo "All icon demos complete."

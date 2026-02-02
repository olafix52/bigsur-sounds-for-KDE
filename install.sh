#!/bin/bash
# BigSur Sound Theme - Installation Script for KDE Plasma
# Installs the sound theme to ~/.local/share/sounds/

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
THEME_DIR="$SCRIPT_DIR/BigSur"
INSTALL_DIR="$HOME/.local/share/sounds/BigSur"

# Check if theme directory exists
if [ ! -d "$THEME_DIR" ]; then
    echo "Error: Theme directory not found: $THEME_DIR"
    echo "Please run ./convert.sh first to build the theme."
    exit 1
fi

# Check if stereo directory has files
if [ ! "$(ls -A "$THEME_DIR/stereo" 2>/dev/null)" ]; then
    echo "Error: No sound files found in $THEME_DIR/stereo"
    echo "Please run ./convert.sh first to convert the sounds."
    exit 1
fi

echo "=================================================="
echo "BigSur Sound Theme Installer for KDE Plasma"
echo "=================================================="
echo ""

# Create installation directory
echo "Creating installation directory..."
mkdir -p "$INSTALL_DIR"

# Copy theme files
echo "Copying theme files..."
cp -r "$THEME_DIR"/* "$INSTALL_DIR/"

# Count installed files
SOUND_COUNT=$(ls -1 "$INSTALL_DIR/stereo"/*.oga 2>/dev/null | wc -l)

echo ""
echo "=================================================="
echo "Installation complete!"
echo "=================================================="
echo ""
echo "Installed $SOUND_COUNT sounds to: $INSTALL_DIR"
echo ""
echo "How to activate the theme:"
echo "1. Open System Settings"
echo "2. Go to 'Sounds' (or 'Notifications' -> 'Configure...')"
echo "3. Select 'BigSur' as your sound theme"
echo ""
echo "Alternatively, run this command:"
echo "  kwriteconfig5 --file kdeglobals --group Sounds --key Theme BigSur"
echo ""

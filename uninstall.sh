#!/bin/bash
# StreamSpeak TTS - Uninstaller
# Author: ramo-dev (https://github.com/ramo-dev)

set -e

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m'

echo -e "${YELLOW}This script will remove StreamSpeak and all its related files."
echo -e "This includes:"
echo "  - The ~/.streamspeak directory"
echo "  - The ~/.local/bin/streamspeak command"
echo "  - The ~/.local/share/piper/voices directory (optional)"
echo "  - Temporary daemon files"
echo ""
read -p "Are you sure you want to continue? (y/N): " -r
if [[ ! $REPLY =~ ^[Yy]$ ]]; then
    echo "Uninstallation cancelled."
    exit 0
fi

echo ""
echo "Stopping any running daemons..."
streamspeak --stop 2>/dev/null || true

echo "Removing command..."
rm -f "$HOME/.local/bin/streamspeak"

echo "Removing configuration directory..."
rm -rf "$HOME/.streamspeak"

echo "Removing temporary files..."
rm -f /tmp/streamspeak_daemon.pid /tmp/streamspeak_daemon.fifo /tmp/streamspeak_daemon.voice /tmp/streamspeak_last_voice

read -p "Do you want to remove the downloaded voice models in ~/.local/share/piper/voices? (y/N): " -r
if [[ $REPLY =~ ^[Yy]$ ]]; then
    echo "Removing voice models..."
    rm -rf "$HOME/.local/share/piper/voices"
fi

echo ""
echo -e "${GREEN}StreamSpeak has been successfully uninstalled.${NC}"
echo "You may want to remove the 'export PATH' line from your ~/.bashrc or ~/.zshrc file."

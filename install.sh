#!/bin/bash
# StreamSpeak TTS - Installation Script
# Author: ramo-dev (https://github.com/ramo-dev)

set -e

# --- CONFIGURATION ---
GIT_REPO_URL="https://github.com/ramo-dev/streamspeak.git"
INSTALL_DIR="$HOME/.streamspeak"
BIN_DIR="$HOME/.local/bin"
VOICE_DIR="$HOME/.local/share/piper/voices"

# --- COLORS ---
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m'

echo -e "${GREEN}Installing StreamSpeak TTS...${NC}"

# 1. Check for Git
if ! command -v git &> /dev/null; then
    echo -e "${YELLOW}Git is not installed. Please install it first.${NC}"
    exit 1
fi

# 2. Clone the repository
if [ -d "$INSTALL_DIR" ]; then
    echo "Updating existing installation..."
    cd "$INSTALL_DIR"
    git pull
else
    echo "Cloning repository..."
    git clone "$GIT_REPO_URL" "$INSTALL_DIR"
fi

# 3. Create necessary directories
mkdir -p "$BIN_DIR"
mkdir -p "$VOICE_DIR"

# 4. Create a symlink to the streamspeak script
ln -sf "$INSTALL_DIR/streamspeak" "$BIN_DIR/streamspeak"
chmod +x "$INSTALL_DIR/streamspeak"

# 5. Download default voices (if they don't exist)
cd "$VOICE_DIR"
if [ ! -f "en_US-lessac-medium.onnx" ]; then
    echo "Downloading Lessac voice model..."
    wget -q "https://huggingface.co/rhasspy/piper-voices/resolve/v1.0.0/en/en_US/lessac/medium/en_US-lessac-medium.onnx"
    wget -q "https://huggingface.co/rhasspy/piper-voices/resolve/v1.0.0/en/en_US/lessac/medium/en_US-lessac-medium.onnx.json"
fi
if [ ! -f "en_US-ryan-medium.onnx" ]; then
    echo "Downloading Ryan voice model..."
    wget -q "https://huggingface.co/rhasspy/piper-voices/resolve/v1.0.0/en/en_US/ryan/medium/en_US-ryan-medium.onnx"
    wget -q "https://huggingface.co/rhasspy/piper-voices/resolve/v1.0.0/en/en_US/ryan/medium/en_US-ryan-medium.onnx.json"
fi

# 6. Add to PATH if not already there
if ! grep -q "$BIN_DIR" "$HOME/.bashrc" 2>/dev/null; then
    echo "" >> "$HOME/.bashrc"
    echo "# Add StreamSpeak to PATH" >> "$HOME/.bashrc"
    echo "export PATH=\"
    echo "${GREEN}Installation complete!${NC}"
echo "Run 'streamspeak --help' to get started."

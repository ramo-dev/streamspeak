# 🚀 Lexy TTS - Installation Guide for Lazy Devs

**Neural Text-to-Speech in one command!**

Author: [ramo-dev](https://github.com/ramo-dev)

---

## ⚡ One-Line Installation

### Method 1: Direct Download & Run
```bash
curl -fsSL https://raw.githubusercontent.com/ramo-dev/lexy-tts/main/install.sh | bash
```

### Method 2: Download First, Inspect, Then Run
```bash
wget https://raw.githubusercontent.com/ramo-dev/lexy-tts/main/install.sh
chmod +x install.sh
./install.sh
```

### Method 3: Local Installation (if you have the script)
```bash
cd ~/.lexy
./install.sh
```

---

## 🎯 What Gets Installed

- **Piper TTS**: Neural speech synthesis engine
- **Voice Models**: Amy (female) & Ryan (male) - ~120MB total
- **Commands**: `speak` & `tts-tool` 
- **Auto-Configuration**: PATH setup, aliases, configs
- **Documentation**: Complete guides and examples

---

## 🖥️ System Requirements

- **OS**: Linux (any distribution)
- **Python**: 3.11+ (compatible with 3.13)
- **RAM**: 512MB+ available
- **Storage**: ~500MB free space
- **Internet**: For downloading voice models

---

## 🎪 Supported Distros

The installer automatically detects and supports:

- ✅ **Arch Linux** (pacman)
- ✅ **Ubuntu/Debian** (apt)
- ✅ **Fedora** (dnf)
- ✅ **RHEL/CentOS** (yum)
- ✅ **Others** (manual pip installation)

---

## 🎮 Quick Start After Installation

```bash
# Basic usage
speak "Hello world!"

# Different voices
speak -v amy "I'm Amy, the female voice"
speak -v ryan "I'm Ryan, the male voice"

# Speed control
speak -s 0.8 "Slow and clear"
speak -s 1.5 "Fast speech"

# Help
speak --help
```

---

## 🔧 Installation Features

### ✨ **Smart Detection**
- Auto-detects your Linux distribution
- Checks Python version compatibility
- Verifies available disk space and RAM

### 🎨 **Beautiful Output**
- Colorful progress indicators
- Clear error messages
- Step-by-step feedback

### 🛡️ **Safe Installation**
- Uses isolated Python environments (pipx)
- No system Python modification
- Easy to uninstall

### 🧪 **Post-Install Testing**
- Verifies all components work
- Tests speech synthesis
- Confirms voice models loaded

---

## 🎭 Installation Process

1. **Requirements Check** - Verifies Python 3.11+, disk space, RAM
2. **Package Manager Detection** - Identifies your Linux distro
3. **Dependencies** - Installs pipx and audio support
4. **Piper TTS** - Installs neural TTS engine
5. **Directories** - Creates ~/.lexy and voice storage
6. **Voice Models** - Downloads Amy & Ryan (~120MB)
7. **Scripts** - Creates speak & tts-tool commands
8. **Configuration** - Sets up configs and PATH
9. **Testing** - Verifies everything works
10. **Completion** - Shows usage examples

---

## 📁 What Gets Created

```
~/.lexy/
├── README.md         # Complete documentation
├── config.conf       # Configuration settings
├── VERSION           # Installation info
└── install.sh        # This installer

~/.local/
├── bin/
│   ├── speak         # Simple TTS command
│   ├── tts-tool      # Advanced TTS features
│   └── piper         # Core TTS engine
└── share/piper/voices/
    ├── en_US-amy-medium.onnx      # Female voice
    ├── en_US-amy-medium.onnx.json
    ├── en_US-ryan-medium.onnx     # Male voice
    └── en_US-ryan-medium.onnx.json
```

---

## 🔄 Uninstallation (if needed)

```bash
# Remove Lexy completely
rm -rf ~/.lexy
rm -rf ~/.local/share/piper
pipx uninstall piper-tts
rm -f ~/.local/bin/speak ~/.local/bin/tts-tool

# Remove PATH entry from ~/.bashrc (manual)
# Edit ~/.bashrc and remove the "Lexy TTS" section
```

---

## 🆘 Troubleshooting

### Installation Fails
```bash
# Check Python version
python3 --version  # Should be 3.11+

# Check disk space
df -h ~  # Should have 500MB+ available

# Manual pipx installation
python3 -m pip install --user pipx
export PATH="$HOME/.local/bin:$PATH"
```

### Audio Not Playing
```bash
# Install audio support
sudo pacman -S alsa-utils          # Arch
sudo apt install alsa-utils        # Debian/Ubuntu
sudo dnf install alsa-utils        # Fedora
```

### Command Not Found
```bash
# Add to PATH temporarily
export PATH="$HOME/.local/bin:$PATH"

# Add permanently
echo 'export PATH="$HOME/.local/bin:$PATH"' >> ~/.bashrc
source ~/.bashrc
```

---

## 🎊 Success Message

After successful installation, you'll see:

```
╔══════════════════════════════════════════════════════════════╗
║                    🚀 INSTALLATION COMPLETE! 🤖                ║
╚══════════════════════════════════════════════════════════════╝

Quick Start:
  speak "Hello, I'm Lexy!"
  speak -v ryan "I'm Ryan, the male voice"
  speak --help
```

---

## 🤝 Support

- **Author**: [ramo-dev](https://github.com/ramo-dev)
- **Issues**: Open on GitHub
- **Documentation**: `~/.lexy/README.md`

**Enjoy your new neural TTS assistant! 🎙️✨**

# 🚀 StreamSpeak TTS - Installation Guide

This document provides a detailed overview of the installation process for StreamSpeak.

**Author**: [ramo-dev](https://github.com/ramo-dev)

---

## ⚡ One-Line Installation

The recommended way to install StreamSpeak is with the following command, which clones the official repository and runs the installation script.

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/ramo-dev/streamspeak/main/install.sh)"
```

---

## 🎯 What Gets Installed

- **Git Repository**: The entire project is cloned into `~/.streamspeak`.
- **Piper TTS**: The underlying neural speech synthesis engine.
- **Voice Models**: Default voices (`lessac` and `ryan`) are downloaded into `~/.local/share/piper/voices`.
- **`streamspeak` Command**: A symbolic link to the script is created in `~/.local/bin/streamspeak`.
- **Auto-Configuration**: Your shell's PATH is updated to include `~/.local/bin`.

---

## 🖥️ System Requirements

- **OS**: Linux (any distribution)
- **Git**: Required to clone the repository.
- **Audio**: `paplay` (PulseAudio) or `aplay` (ALSA) for audio playback.

---

## 🎮 Quick Start After Installation

Once the installation is complete, you can start using StreamSpeak immediately.

```bash
# Basic usage with the default voice
streamspeak "Hello world!"

# Use a different voice alias from your config
streamspeak -v ryan "I'm Ryan, the male voice"

# Adjust the speech speed
streamspeak -s 0.8 "Speaking slowly and clearly"

# See all options
streamspeak --help
```

---

## 📁 File Structure

The installer will create the following file structure:

```
~/.streamspeak/
├── README.md
├── config.conf
├── install.sh
├── uninstall.sh
├── LICENSE
├── CONTRIBUTING.md
└── streamspeak         # The main executable script

~/.local/
├── bin/
│   └── streamspeak     # Symlink to ~/.streamspeak/streamspeak
└── share/piper/voices/
    ├── en_US-lessac-medium.onnx
    ├── en_US-lessac-medium.onnx.json
    ├── en_US-ryan-medium.onnx
    └── en_US-ryan-medium.onnx.json
```

---

## 🔄 Uninstallation

To remove StreamSpeak from your system, simply run the uninstaller script:

```bash
~/.streamspeak/uninstall.sh
```

This will remove the command, the configuration directory, and will ask if you want to remove the downloaded voice models.

---

## 🤝 Support

- **Author**: [ramo-dev](https://github.com/ramo-dev)
- **Issues**: Please open an issue on the [GitHub repository](https://github.com/ramo-dev/streamspeak/issues).
- **Documentation**: See the `README.md` file in your `~/.streamspeak` directory.

**Enjoy your new instant TTS assistant! 🎙️✨**
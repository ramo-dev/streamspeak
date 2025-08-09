# 🎙️ StreamSpeak - Instant Neural Text-to-Speech

**StreamSpeak** is a powerful, lightweight neural text-to-speech assistant that runs locally on your system. It uses a background daemon to provide high-quality, natural-sounding speech synthesis with near-zero latency.

**Author**: [Annuar (ramo-dev)](https://www.github.com/ramo-dev)

---

## 🚀 Features

- ⚡ **Instant Response**: Near-zero latency (~0.03s) via background daemon.
- ⚙️ **Highly Configurable**: Customize default voice, speed, and add custom voices via a simple config file.
- 🧠 **High-Quality Voices**: Natural and expressive neural speech.
- 🔧 **Customizable**: Adjustable speed and easy voice switching.
- 🌐 **Universal**: Works from any directory via the `streamspeak` command.
- 🚀 **Auto-Starting**: The daemon starts automatically on first use.

---

## 🛠️ Installation

You can install StreamSpeak with a single command:

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/ramo-dev/streamspeak/main/install.sh)"
```

This will clone the repository, download the necessary voice models, and set up the `streamspeak` command.

To uninstall, run the `uninstall.sh` script in the `~/.streamspeak` directory.

---

## 🎯 Usage

### Basic Usage

```bash
# Speak text with the default voice (configured in ~/.streamspeak/config.conf)
streamspeak "Hello, I am StreamSpeak!"

# Pipe text to StreamSpeak
echo "Processing your request..." | streamspeak
```

### Advanced Usage

```bash
# List available voice aliases from your config file
streamspeak --list-voices

# Use a different voice alias
streamspeak -v ryan "I'm using Ryan's voice"

# Adjust speech speed
streamspeak -s 0.8 "I'm speaking slowly and clearly"
```

### Daemon Control

```bash
# Check the daemon's status
streamspeak --status

# Start the daemon with a specific voice
streamspeak --start ryan

# Stop the daemon
streamspeak --stop
```

---

## 🎨 Configuration

The heart of StreamSpeak's customization is the `~/.streamspeak/config.conf` file.

### Changing Defaults

Edit the `config.conf` file to change the default voice and speed:

```ini
# ~/.streamspeak/config.conf

DEFAULT_VOICE="ryan"
DEFAULT_SPEED="1.2"
```

### Adding Custom Voices

You can add your own voice models by defining them in the `VOICES` array within `config.conf`.

1.  **Add the alias and path to the config file:**

    ```bash
    # ~/.streamspeak/config.conf

    declare -A VOICES=(
        ["lessac"]="en_US-lessac-medium"
        ["ryan"]="en_US-ryan-medium"
        # Add your custom voice here
        ["my-voice"]="/path/to/your/custom/voice.onnx"
    )
    ```

2.  **Use your custom voice:**

    ```bash
    streamspeak -v my-voice "This is my custom voice."
    ```

---

## 🤝 Contributing

Contributions are welcome! Please see the [CONTRIBUTING.md](CONTRIBUTING.md) file for details.

---

## 📜 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

# Termux AI Chat

A lightweight Termux command-line client for the [Pollinations AI](https://pollinations.ai) text API.  
Send chat messages directly from your terminal using a simple `chat` command — responses are automatically logged in JSON, plaintext by default, with optional context.

---

## Easy install
```bash
curl -s https://raw.githubusercontent.com/vxncius-dev/termux-ai-chat/main/install.sh | bash
```
---

## Features

- **Simple syntax:** `chat [options] <message>`  
- **Automatic history:** logs every interaction in `~/.termux-ai-chat/history.json`  
- **Plaintext output:** responses are always returned without Markdown/code formatting  
- **Optional context:** include previous messages with `--context N`  
- **Customizable:** set your name (`--name`) and language (`--lang`) in the prompt  
- **Clear history:** use `--clear` to reset conversation logs  
- **Offline-friendly:** only depends on `curl`, `jq`, and `python`  
- **Zero setup:** no API key required

---

## Installation

```bash
pkg install git curl jq python -y
git clone https://github.com/<your-username>/termux-ai-chat
cd termux-ai-chat
bash install.sh
```

After installation, the chat command will be globally available.


---

## Usage

```bash
chat "Hello, how are you?"
chat --context 3 --name Vini "How do I install Rust on Termux?"
chat --clear   # Clears history
chat --help    # Shows help with flags
```

---

## Available Options
| Flag | Description |
|------|-------------|
| `--context N` | Include last N messages in the prompt (optional) |
| `--name NAME` | Set your name to include in the prompt (optional) |
| `--lang LANG` | Set language, e.g., `pt_br`, `en` (optional) |
| `--clear` | Clear saved conversation history |
| `--help` / `-h` | Show usage information |

---

## License

This project is licensed under the MIT License.
See the LICENSE file for details.

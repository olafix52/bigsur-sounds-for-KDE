# 🔊 BigSur Sound Theme for KDE Plasma

A complete sound theme for KDE Plasma based on macOS Big Sur sounds, fully compatible with the freedesktop.org Sound Theme Specification.

![KDE Plasma](https://img.shields.io/badge/KDE_Plasma-6.0+-blue?logo=kde)
![License](https://img.shields.io/badge/License-Educational-green)
![Sounds](https://img.shields.io/badge/Sounds-107-orange)

## ✨ Features

- **107 high-quality sounds** converted from macOS Big Sur
- Fully compatible with **KDE Plasma 5/6** and other freedesktop.org compliant desktops
- All sounds converted to **OGG Vorbis** format
- Covers all major system events: notifications, dialogs, devices, trash, and more

## 📦 Quick Installation

```bash
# Clone the repository
git clone https://github.com/olafix52/bigsur-sounds-for-KDE
cd bigsur-sounds-for-KDE

# Convert sounds (requires ffmpeg)
./convert.sh

# Install to your user directory
./install.sh
```

Then go to **System Settings** → **Sounds** and select **"BigSur"** as your sound theme.

## 🔧 Requirements

- **ffmpeg** - for audio conversion
- **KDE Plasma** 5.x or 6.x (or any freedesktop.org compatible desktop)

```bash
# Install ffmpeg
sudo apt install ffmpeg      # Debian/Ubuntu
sudo dnf install ffmpeg      # Fedora
sudo pacman -S ffmpeg        # Arch Linux
```

## 📂 Included Sounds

### Dialogs & Alerts
| Sound | Event |
|-------|-------|
| Glass | `dialog-error` |
| Funk | `dialog-warning` |
| Hero | `dialog-information` |
| Bamboo | `dialog-ok` |
| Ping | `bell` |

### Notifications
| Sound | Event |
|-------|-------|
| New Mail | `message-new-email` |
| Received Message | `message-new-instant` |
| Mail Sent | `message-sent-email` |
| Bloom | `notification` |

### System
| Sound | Event |
|-------|-------|
| Volume Mount | `device-added` |
| Volume Unmount | `device-removed` |
| Aurora | `desktop-login` |
| Screen Capture | `screen-capture` |
| Pop | `audio-volume-change` |

### Actions
| Sound | Event |
|-------|-------|
| Empty Trash | `trash-empty` |
| Move to Trash | `file-trash` |
| Complete | `complete` |
| Fanfare | `complete-download` |

### And many more...
- Phone & communication sounds
- Battery & power alerts
- Input feedback (buttons, keys)
- Accessibility sounds
- Alternative notification tones

## 🗂️ Directory Structure

```
BigSur/
├── index.theme          # Theme configuration
└── stereo/              # 107 OGG sound files
    ├── dialog-error.oga
    ├── dialog-warning.oga
    ├── message-new-email.oga
    └── ...
```

## 🔄 Manual Installation

If you prefer manual installation:

```bash
# Create local sounds directory
mkdir -p ~/.local/share/sounds

# Copy the theme
cp -r BigSur ~/.local/share/sounds/
```

## ⚙️ Activating via Command Line

```bash
# For KDE Plasma 5
kwriteconfig5 --file kdeglobals --group Sounds --key Theme BigSur

# For KDE Plasma 6
kwriteconfig6 --file kdeglobals --group Sounds --key Theme BigSur
```

## 📝 Credits

- Original sounds extracted from **macOS 11 Big Sur** by Apple Inc.
- Original sound extraction project: [BigSurSounds](https://bigsur-sounds.itsnoahevans.co.uk/) by Noah Evans
- KDE Plasma conversion and packaging by the community

## ⚠️ Disclaimer

These sounds are property of Apple Inc. and are provided here for educational and personal use only. This project is not affiliated with or endorsed by Apple Inc. or KDE e.V.

## 📄 License

This project is provided for educational purposes. The original sounds are copyrighted by Apple Inc. Please respect their intellectual property rights.

---

**Enjoy the macOS sound experience on your Linux desktop! 🎵**

# JARVIS Launcher

You can now run JARVIS without opening VS Code!

## Quick Start

### Option 1: Launcher Menu (Recommended)
Double-click **`JARVIS Launcher.bat`**

This opens a menu where you can:
- **Start JARVIS** (Console or Background)
- **Open Web Interface** (localhost:8000)
- **Check Status** / **Stop JARVIS**

---

### Option 2: Direct Start
Double-click **`start_jarvis.bat`**

This directly starts JARVIS in a console window.

---

### Option 3: Create Desktop Shortcut
1. Right-click on `start_jarvis.bat`
2. Select "Create shortcut"
3. Move the shortcut to your Desktop
4. Double-click to run anytime!

---

## Features

| File | Purpose |
|------|---------|
| `JARVIS Launcher.bat` | Interactive menu with options |
| `start_jarvis.bat` | Quick direct launch |
| `launcher.py` | Python launcher (for exe conversion) |

---

## Web Interface

Once JARVIS is running, open your browser to:
**http://localhost:8000**

---

## Troubleshooting

- **Port 8000 in use**: Stop any existing JARVIS process or change port in `run.py`
- **Module not found**: Make sure `.venv` exists and run from the JARVIS folder
- **Permission error**: Run as Administrator if needed
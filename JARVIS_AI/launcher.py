# JARVIS Standalone Launcher
# Compile this to .exe using: pyinstaller --onefile --noconsole launcher.py

import subprocess
import sys
import os
from pathlib import Path

def get_venv_python():
    """Get the Python executable from virtual environment"""
    venv_path = Path(__file__).parent / ".venv" / "Scripts" / "python.exe"
    if venv_path.exists():
        return str(venv_path)
    return sys.executable

def main():
    # Change to script directory
    os.chdir(Path(__file__).parent)
    
    # Get venv Python
    python_exe = get_venv_python()
    
    # Run the main JARVIS server
    try:
        subprocess.run([python_exe, "run.py"], check=True)
    except KeyboardInterrupt:
        print("\nJARVIS shutdown complete.")
    except Exception as e:
        input(f"Error: {e}\nPress Enter to exit...")

if __name__ == "__main__":
    main()
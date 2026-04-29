@echo off
title JARVIS
cd /d "%~dp0"

REM Activate virtual environment
call .venv\Scripts\activate.bat

REM Start JARVIS server
python run.py

pause
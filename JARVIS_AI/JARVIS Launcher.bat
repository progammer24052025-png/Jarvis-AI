@echo off
setlocal enabledelayedexpansion

title JARVIS Launcher
color 0a

:main_menu
cls
echo ========================================
echo        JARVIS - Voice Assistant
echo ========================================
echo.
echo  [1] Start JARVIS (Console Window)
echo  [2] Start JARVIS (Background App)
echo  [3] Open JARVIS Web Interface
echo  [4] Check if JARVIS is Running
echo  [5] Stop JARVIS
echo  [6] Exit
echo.
echo ========================================
set /p choice="Select option (1-6): "

if "%choice%"=="1" goto start_console
if "%choice%"=="2" goto start_background
if "%choice%"=="3" goto open_web
if "%choice%"=="4" goto check_status
if "%choice%"=="5" goto stop_jarvis
if "%choice%"=="6" goto exit
goto main_menu

:start_console
cd /d "%~dp0"
call .venv\Scripts\activate.bat >nul 2>&1
python run.py
echo.
echo JARVIS stopped. Press any key to return to menu...
pause >nul
goto main_menu

:start_background
cd /d "%~dp0"
call .venv\Scripts\activate.bat >nul 2>&1
start "JARVIS - Running" python run.py
echo JARVIS started in background!
echo Press any key to return to menu...
timeout /t 2 >nul
goto main_menu

:open_web
start http://localhost:8000
goto main_menu

:check_status
netstat -ano | findstr ":8000" >nul
if %errorlevel%==0 (
    echo [OK] JARVIS is running on port 8000
) else (
    echo [OFF] JARVIS is not running
)
echo.
echo Press any key to return to menu...
pause >nul
goto main_menu

:stop_jarvis
for /f "tokens=5" %%a in ('netstat -ano ^| findstr ":8000" ^| findstr "LISTENING"') do (
    taskkill /F /PID %%a >nul 2>&1
)
echo JARVIS stopped!
timeout /t 2 >nul
goto main_menu

:exit
exit
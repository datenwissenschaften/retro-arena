@echo off
setlocal

cd /d "%~dp0"

where poetry >nul 2>nul
if %errorlevel% equ 0 (
    poetry install
    poetry run python app.py
    exit /b %errorlevel%
)

if defined VIRTUAL_ENV (
    where py >nul 2>nul
    if %errorlevel% equ 0 (
        py -3 app.py
        exit /b %errorlevel%
    )
    python app.py
    exit /b %errorlevel%
)

echo Poetry is required to set up the environment.
echo Please install it: https://python-poetry.org/docs/#installation
exit /b 1

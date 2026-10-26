@echo off
cd /d "%~dp0"
title HCM Lite Local Website
where py >nul 2>nul
if %errorlevel%==0 (
  start "HCM Lite" http://127.0.0.1:8000/index.html
  py -m http.server 8000
) else (
  where python >nul 2>nul
  if %errorlevel%==0 (
    start "HCM Lite" http://127.0.0.1:8000/index.html
    python -m http.server 8000
  ) else (
    echo Python was not found. Install Python or use VS Code Live Server.
    pause
  )
)

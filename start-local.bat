@echo off
title PJF Holdings Local Development Server
echo =======================================================
echo   Starting PJF Holdings Local Preview Server
echo =======================================================
echo.
echo Website directory: preview\
echo Local URL:        http://localhost:3000
echo.
echo Opening browser...
start http://localhost:3000
echo Server is running. Press Ctrl+C to stop.
echo.
python -m http.server 3000 --directory preview
pause

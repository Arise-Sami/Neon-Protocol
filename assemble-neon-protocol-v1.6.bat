@echo off
setlocal
cd /d "%~dp0"
copy /b "neon-protocol-pc-v1.6.part1"+"neon-protocol-pc-v1.6.part2" "neon-protocol-pc-v1.6.zip"
echo.
echo Done. Extract neon-protocol-pc-v1.6.zip and run Neon-Protocol-Breach-1.6.0.exe.
pause

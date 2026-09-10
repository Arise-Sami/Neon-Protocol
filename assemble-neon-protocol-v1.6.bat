@echo off
setlocal EnableExtensions
cd /d "%~dp0"
set "missing="
for %%F in (01 02 03 04 05 06 07 08) do if not exist "neon-protocol-pc-v1.6.part%%F" (
  echo Missing: neon-protocol-pc-v1.6.part%%F
  set "missing=1"
)
if defined missing (
  echo.
  echo Download all eight part files from the GitHub repository before running this file.
  pause
  exit /b 1
)
copy /b "neon-protocol-pc-v1.6.part01"+"neon-protocol-pc-v1.6.part02"+"neon-protocol-pc-v1.6.part03"+"neon-protocol-pc-v1.6.part04"+"neon-protocol-pc-v1.6.part05"+"neon-protocol-pc-v1.6.part06"+"neon-protocol-pc-v1.6.part07"+"neon-protocol-pc-v1.6.part08" "neon-protocol-pc-v1.6.zip"
if errorlevel 1 (
  echo.
  echo Could not rebuild the ZIP file.
  pause
  exit /b 1
)
echo.
echo Done. Extract neon-protocol-pc-v1.6.zip and run Neon-Protocol-Breach-1.6.0.exe.
pause

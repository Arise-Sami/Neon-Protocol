@echo off
setlocal EnableExtensions
cd /d "%~dp0"
set "BASE=https://raw.githubusercontent.com/Arise-Sami/Neon-Protocol/main"
for %%F in (01 02 03 04 05 06 07 08) do (
  if not exist "neon-protocol-pc-v1.6.part%%F" (
    echo Downloading part %%F of 08...
    powershell -NoProfile -ExecutionPolicy Bypass -Command "$ProgressPreference='SilentlyContinue'; Invoke-WebRequest -UseBasicParsing -Uri '%BASE%/neon-protocol-pc-v1.6.part%%F' -OutFile 'neon-protocol-pc-v1.6.part%%F'"
    if errorlevel 1 (
      echo.
      echo Download failed for part %%F.
      pause
      exit /b 1
    )
  )
)
call "%~dp0assemble-neon-protocol-v1.6.bat"

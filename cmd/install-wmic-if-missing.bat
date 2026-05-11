@echo off
setlocal

where wmic >nul 2>&1
if %errorlevel%==0 (
    echo WMIC is already available.
    exit /b 0
)

echo WMIC is missing. Trying to install Windows capability: WMIC~~~~0.0.1.0

net session >nul 2>&1
if not %errorlevel%==0 (
    echo Requesting administrator permission...
    powershell -NoProfile -ExecutionPolicy Bypass -Command "Start-Process -FilePath '%~f0' -Verb RunAs"
    exit /b 0
)

dism /Online /Add-Capability /CapabilityName:WMIC~~~~0.0.1.0 /NoRestart
if not %errorlevel%==0 (
    echo Failed to install WMIC capability.
    exit /b 1
)

where wmic >nul 2>&1
if %errorlevel%==0 (
    echo WMIC was installed successfully.
    exit /b 0
)

echo WMIC installation command finished, but wmic is still not found.
exit /b 1

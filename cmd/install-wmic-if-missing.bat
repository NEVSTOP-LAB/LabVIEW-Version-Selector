@echo off
setlocal
set "UAC_CANCELLED=1223"
set "ELEVATE_ARGS=/c ""%~f0"""

where wmic >nul 2>&1
if not errorlevel 1 (
    echo WMIC is already available.
    exit /b 0
)

echo WMIC is missing. Attempting to install Windows capability: WMIC~~~~0.0.1.0

net session >nul 2>&1
if errorlevel 1 (
    echo Requesting administrator permission...
    powershell -NoProfile -Command "try { $p = Start-Process -FilePath 'cmd.exe' -ArgumentList '%ELEVATE_ARGS%' -Verb RunAs -Wait -PassThru -ErrorAction Stop; exit $p.ExitCode } catch { exit %UAC_CANCELLED% }"
    exit /b %errorlevel%
)

dism /Online /Add-Capability /CapabilityName:WMIC~~~~0.0.1.0 /NoRestart
if errorlevel 1 (
    echo Failed to install WMIC capability.
    exit /b 1
)

where wmic >nul 2>&1
if not errorlevel 1 (
    echo WMIC was installed successfully.
    exit /b 0
)

echo WMIC installation command finished, but wmic is still not found.
exit /b 1

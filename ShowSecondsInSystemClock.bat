@echo off

reg add HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced /v ShowSecondsInSystemClock /t REG_DWORD /d 1 /f

taskkill /F /IM explorer.exe && start explorer.exe

pause

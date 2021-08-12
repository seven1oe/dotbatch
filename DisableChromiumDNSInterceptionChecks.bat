@echo off

REM reg add HKEY_CURRENT_USER\Software\Policies\Chromium /v DNSInterceptionChecksEnabled /t REG_DWORD /d 0 /f
reg add HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Chromium /v DNSInterceptionChecksEnabled /t REG_DWORD /d 0 /f

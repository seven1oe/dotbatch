@echo off

reg add HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Mozilla\Firefox /v DisableAppUpdate /d 1 /t REG_DWORD /f

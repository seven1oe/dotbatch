@echo off

reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v MaxUndoItems /d 0 /t REG_DWORD /f

@echo off

powershell -Command "Rename-Item -Path \"HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\PropertySystem\PropertyHandlers\.eml\" -NewName \".eml_bak\""

pause

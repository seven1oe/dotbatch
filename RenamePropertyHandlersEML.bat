@echo off

set "PropertyHandlersPATH=HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\PropertySystem\PropertyHandlers"

reg copy "%PropertyHandlersPATH%\.eml" "%PropertyHandlersPATH%\.eml_bak_" /s /f
reg delete "%PropertyHandlersPATH%\.eml" /f

pause

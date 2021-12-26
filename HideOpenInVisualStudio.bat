@echo off

reg add HKEY_CLASSES_ROOT\Directory\shell\AnyCode /v HideBasedOnVelocityId /d 6723750 /t REG_DWORD /f

reg add HKEY_CLASSES_ROOT\Directory\Background\shell\AnyCode /v HideBasedOnVelocityId /d 6723750 /t REG_DWORD /f

pause

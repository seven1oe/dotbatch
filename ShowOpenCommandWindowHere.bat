@echo off

REM reg add "HKEY_CLASSES_ROOT\Directory\Background\shell\Powershell\command" /d "cmd.exe /s /k pushd \"%%V\"" /t REG_SZ /f

reg query HKEY_CLASSES_ROOT\Directory\Background\shell\cmd /v HideBasedOnVelocityId
reg query HKEY_CLASSES_ROOT\Directory\Background\shell\Powershell /v ShowBasedOnVelocityId

reg delete HKEY_CLASSES_ROOT\Directory\Background\shell\cmd /v HideBasedOnVelocityId /f
reg add HKEY_CLASSES_ROOT\Directory\Background\shell\cmd /v ShowBasedOnVelocityId /d 6527944 /t REG_DWORD /f

reg delete HKEY_CLASSES_ROOT\Directory\Background\shell\Powershell /v ShowBasedOnVelocityId /f
reg add HKEY_CLASSES_ROOT\Directory\Background\shell\Powershell /v HideBasedOnVelocityId /d 6527944 /t REG_DWORD /f

@echo off

set CMD=
set POWERSHELL=

for /F "skip=2 tokens=3" %%a in ('reg query HKEY_CLASSES_ROOT\Directory\Background\shell\cmd /v HideBasedOnVelocityId') do (
    set CMD=%%a
)

for /F "skip=2 tokens=3" %%a in ('reg query HKEY_CLASSES_ROOT\Directory\Background\shell\Powershell /v ShowBasedOnVelocityId') do (
    set POWERSHELL=%%a
)

reg delete HKEY_CLASSES_ROOT\Directory\Background\shell\cmd /v HideBasedOnVelocityId /f
reg add HKEY_CLASSES_ROOT\Directory\Background\shell\cmd /v ShowBasedOnVelocityId /d %CMD% /t REG_DWORD /f

reg delete HKEY_CLASSES_ROOT\Directory\Background\shell\Powershell /v ShowBasedOnVelocityId /f
reg add HKEY_CLASSES_ROOT\Directory\Background\shell\Powershell /v HideBasedOnVelocityId /d %POWERSHELL% /t REG_DWORD /f

pause
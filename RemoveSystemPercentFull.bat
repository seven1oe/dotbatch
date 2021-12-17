@echo off

set TileInfo=

REM TileInfo
REM PreviewDetails
REM ContentViewModeForBrowse
for /F "skip=2 tokens=3" %%a in ('reg query HKEY_LOCAL_MACHINE\SOFTWARE\Classes\Drive /v TileInfo') do (
    set TileInfo=%%a
)

if "%TileInfo%" NEQ "prop:*System.PercentFull;System.Computer.DecoratedFreeSpace;System.Volume.FileSystem" (
    echo %TileInfo%
    goto EXIT
)

set TileInfo=%TileInfo:System.PercentFull;=%
set TileInfo=%TileInfo:System.PercentFull=%

reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Classes\Drive /v TileInfo /f
reg add HKEY_LOCAL_MACHINE\SOFTWARE\Classes\Drive /v TileInfo /d %TileInfo% /t REG_SZ /f

:EXIT
pause
@echo off
setlocal enabledelayedexpansion
cd /d "%~dp0"

:: Self-elevation for administrative rights
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"
if '%errorlevel%' NEQ '0' (
    echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
    echo UAC.ShellExecute "%~s0", "", "", "runas", 1 >> "%temp%\getadmin.vbs"
    "%temp%\getadmin.vbs"
    del "%temp%\getadmin.vbs"
    exit /B
)

:: Display ASCII art header
chcp 65001 >nul
cls
echo.
echo                ██████╗  ██████╗ ██████╗ ███████╗
echo               ██╔═══██╗██╔═══██╗██╔══██╗╚════██║
echo               ██║   ██║██║   ██║██████╔╝    ██╔╝
echo               ██║   ██║██║   ██║██╔═══╝    ██╔╝
echo               ╚██████╔╝╚██████╔╝██║        ██║
echo                ╚═════╝  ╚═════╝ ╚═╝        ╚═╝

echo.
<nul set /p "=[92m" & echo ------------[Welcome To Activator for Windows 7]-------------------[0m
echo [1] Windows Loader       ^| Non-UEFI/GPT systems.
echo [2] Online KMS           ^| Windows 7 Pro and Enterprise.
echo [3] EzWindSLIC           ^| UEFI-GPT systems.
echo [4] Windows 7 Activator  ^| Ultimate, Professional, Home Premium.
echo.

:: User input
set /p choice=Enter your choice (1, 2, 3, or 4):

:: Define paths to each tool
set "loader_path=.\src\Windows_Loader_v2.2.2\Windows Loader.exe"
set "kms_path=.\src\KMS\Online_KMS_Activation.cmd"
set "ezwind_path=.\src\EzWindSLIC_3.62f_traditional\EzWindSLIC_3.62f.cmd"
set "activator_path=.\src\Windows_7_Activator\Windows_7_Activator.bat"

:: Function to execute a tool
set "tool_path="
if "%choice%"=="1" set "tool_path=%loader_path%"
if "%choice%"=="2" set "tool_path=%kms_path%"
if "%choice%"=="3" set "tool_path=%ezwind_path%"
if "%choice%"=="4" set "tool_path=%activator_path%"

if defined tool_path (
    if exist "!tool_path!" (
        echo Starting tool: "!tool_path!"
        start "" "!tool_path!"
    ) else (
        echo [91mError: File not found: "!tool_path!"[0m
    )
) else (
    echo [93mInvalid choice! Please enter 1, 2, 3, or 4.[0m
)

pause
exit /B

@echo off
TITLE Windows 7 Activator
:: Informazioni generali
echo ---------------------------
echo - Created by DEAM0
echo - Windows 7 Activator
echo - More: https://github.com/DEAM0
echo - (C) Copyright 2019-2024 All Rights Reserved
echo - Please run this program as Administrator!
echo ---------------------------
echo - Supported Operating Systems:
echo - [1] Windows 7 Ultimate
echo - [2] Windows 7 Professional
echo - [3] Windows 7 Home Premium
echo ----------------------------

:: Richiesta dell'input dell'utente
SET /P M=Type the corresponding number (1, 2, or 3):

:: Gestione delle scelte
IF "%M%"=="1" GOTO WIN7U
IF "%M%"=="2" GOTO WIN7P
IF "%M%"=="3" GOTO WIN7H

:: Gestione input non valido
echo Invalid choice! Please enter 1, 2, or 3.
pause
goto END

:: Funzioni per ogni versione di Windows
:WIN7U
cls
call :Activate "Windows 7 Ultimate" "H4Q8J-YXPPP-6X6GC-CRKM8-H9VPB" "FG9VC-TY47G-BKVWC-R4T8P-Y86J9" "QYM8MJ-JKTGM-8GFQ6-X499R-FT7V7"
goto END

:WIN7P
cls
call :Activate "Windows 7 Professional" "H3P6D-CH2FV-H48D3-W6KBQ-39Q4J"
goto END

:WIN7H
cls
call :Activate "Windows 7 Home Premium" "7X6JT-3FVCK-CBG9K-VQY8W-H64Y8"
goto END

:: Funzione di attivazione
:Activate
echo #######################
echo # Activating Windows
echo # Please Wait...
echo #######################
echo Activating %1...
shift
:ACTIVATE_KEYS
if "%1"=="" goto ACTIVATION_COMPLETE
cscript //nologo c:\windows\system32\slmgr.vbs /ipk %1 >nul
shift
goto ACTIVATE_KEYS

:ACTIVATION_COMPLETE
echo Activation complete for %1!
echo Thank you for using Windows 7 Activator. More at https://github.com/DEAM0
echo Completed! Please restart your computer.
pause
goto :EOF

:END
@echo on

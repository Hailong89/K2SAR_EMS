@echo off

REM tricore-version-info.bat
REM Version 1.1
REM Copyright (c) Hightec EDV-Systeme GmbH 2005

if /I "%1" equ "-v" (
goto VERSION
)

if /I "%1" equ "--version" (
goto VERSION
)

if /I "%1" equ "-h" (

goto HELP
)

if /I "%1" equ "--help" (
goto HELP
)

if /I "%1" equ "" (
echo Missing input file.
echo.
goto USAGE

)

for  %%v in (%*) do (  tricore-objcopy -O binary --set-section-flags .version_info=load,readonly,alloc --only-section=.version_info %%v %TMP%\%%~nxv.info && type %TMP%\%%~nxv.info && del %TMP%\%%~nxv.info ) 

:VERSION
echo tricore-version-info version 1.1

goto END

:HELP
echo Displays the content of the section .version_info
echo of the passed object
echo.

goto USAGE

:USAGE
echo Usage:
echo tricore-version-info option
echo or 
echo tricore-version-info object
echo.
echo Known options:
echo -v
echo --version : Print version number
echo -h
echo --help    : Print this help screen
echo.

goto END

:END

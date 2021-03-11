@echo off
title timer
color 7a
mode 30,10
set hour=0
set min=0
set sec=0
:Loop
cls
echo.
echo. %hour%:%min%:%sec%
set /a sec+=1

if %sec% gtr 59 (
set sec=0
set /a min+=1
if %min% gtr 59 (
set min=0
set /a hour+=1
)
)
ping localhost -n 2 >nul
goto loop
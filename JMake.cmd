@echo off
title CMD-JvavScriptCompiler
echo =================================׼������===========================================
xcopy ..\..\*.jvavscript .\ /y /f
ren .\*.jvavscript main.cpp
echo =================================������===========================================
.\bin\mingw32-make.exe -f ".\Makefile.win" all
echo =================================��β����===========================================
ren main.exe output.exe 
xcopy .\output.exe ..\..\ /y /f
del /s /f /q .\main.cpp
del /s /f /q .\output.exe
del /s /f /q .\main.o
echo =================================����ʼ����=======================================
..\..\output.exe
pause
exit

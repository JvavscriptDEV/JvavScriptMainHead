@echo off
title CMD-JvavScriptCompiler
date /t
echo =================================׼������===========================================
xcopy ..\..\*.jvavscript .\ /y /f
ren .\*.jvavscript main.cpp
echo =================================������===========================================
echo ����:���뵥���ļ�
time /t
.\bin\mingw32-make.exe -f ".\Makefile.win" all
time /t
echo =================================��β����===========================================
ren main.exe output.exe 
xcopy .\output.exe ..\..\ /y /f
del /s /f /q .\main.cpp
del /s /f /q .\output.exe
del /s /f /q .\main.o
echo =================================����ʼ����=======================================
..\..\output.exe
echo =====================Program exited with return value 0(0x0)========================
pause
exit

@echo off
title CMD-JvavScriptCompiler
echo =================================准备工作===========================================
xcopy ..\..\*.jvavscript .\ /y /f
ren .\*.jvavscript main.cpp
echo =================================编译结果===========================================
.\bin\mingw32-make.exe -f ".\Makefile.win" all
echo =================================收尾工作===========================================
ren main.exe output.exe 
xcopy .\output.exe ..\..\ /y /f
del /s /f /q .\main.cpp
del /s /f /q .\output.exe
del /s /f /q .\main.o
echo =================================程序开始运行=======================================
..\..\output.exe
pause
exit

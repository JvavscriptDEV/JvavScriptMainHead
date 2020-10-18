@echo off
title CMD-JvavScriptCompiler
date /t
echo =================================准备工作===========================================
xcopy ..\..\*.jvavscript .\ /y /f
ren .\*.jvavscript main.cpp
echo =================================编译结果===========================================
echo 任务:编译单个文件
time /t
.\bin\mingw32-make.exe -f ".\Makefile.win" all
time /t
echo =================================收尾工作===========================================
ren main.exe output.exe 
xcopy .\output.exe ..\..\ /y /f
del /s /f /q .\main.cpp
del /s /f /q .\output.exe
del /s /f /q .\main.o
echo =================================程序开始运行=======================================
..\..\output.exe
echo =====================Program exited with return value 0(0x0)========================
pause
exit

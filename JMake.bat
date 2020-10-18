@echo off
cd .\MongWg86\bin\
start .\gjj.exe ".\*.jvavscript" -include"\\.\ic\*" -I".\include\*" -I".\staticlib\*" -plugins".\plug-ins\*" -l".\lib\*" -lexec".\libexec" -op"..\..\" -fn"output.exe" -static-libt -all

@echo off
SET THEFILE=test1
echo Assembling %THEFILE%
G:\Lazarus\fpc\3.2.0\bin\x86_64-win64\as.exe --64 -o .\out\tmp\test1.o   .\out\tmp\test1.s
if errorlevel 1 goto asmend
Del .\out\tmp\test1.s
SET THEFILE=.\out\tmp\test1.s
echo Linking %THEFILE%
G:\Lazarus\fpc\3.2.0\bin\x86_64-win64\ld.exe -b pei-x86-64  --gc-sections    --entry=_mainCRTStartup    -o .\out\tmp\test1.s .\out\tmp\link.res
if errorlevel 1 goto linkend
goto end
:asmend
echo An error occurred while assembling %THEFILE%
goto end
:linkend
echo An error occurred while linking %THEFILE%
:end

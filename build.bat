@echo off
set FPC_PATH=G:\Lazarus\fpc\3.2.0\bin\x86_64-win64
set FPC_CALL=%FPC_PATH%\fpc -al -Aas -n -s -Ur -Xe -WN -Og -Op3 -O2 -Rintel -Mdelphi -Fu.\src\pas

echo compile files, this can take some time ...

if not exist %cd%\out\         md %cd%\out
if not exist %cd%\out\tmp\     md %cd%\out\tmp
if not exist %cd%\out\debug\   md %cd%\out\debug
if not exist %cd%\out\release\ md %cd%\out\release

%FPC_CALL% -o.\out\tmp\kernel32.s src\pas\kernel32.pas
%FPC_CALL% -o.\out\tmp\test1.s    tst\test1.pas

:: SysInit.S > SysInit.o
sed -e '/^.section .fpc.n_version/,+3d'                              < .\out\tmp\SysInit.s  > .\out\tmp\SysInitX.s
sed -e '/^\# Begin asmlist al_dwarf_frame/,$d'                       < .\out\tmp\SysInitX.s > .\out\tmp\SysInit.s
sed -e '/\.section \.data\.n___fpc_valgrind\,\"d\"/,+4d'             < .\out\tmp\SysInit.s  > .\out\tmp\SysInitX.s
sed -e '/.*\tcall\tPASCALMAIN,\"d\"/d'                               < .\out\tmp\SysInitX.s > .\out\tmp\SysInit.s
%FPC_PATH%\as.exe --64 -o .\out\tmp\SysInit.o   .\out\tmp\SysInit.s

:: System.S > System.o
sed -e '/^.section .fpc.n_version/,+3d'                              < .\out\tmp\System.s  > .\out\tmp\SystemX.s
sed -e '/^\# Begin asmlist al_dwarf_frame/,$d'                       < .\out\tmp\SystemX.s > .\out\tmp\System.s
sed -e '/\.section \.data\.n___fpc_valgrind\,\"d\"/,+4d'             < .\out\tmp\System.s  > .\out\tmp\SystemX.s
%FPC_PATH%\as.exe --64 -o .\out\tmp\System.o   .\out\tmp\SystemX.s

:: Windows.S > Windows.o
sed -e '/^.section .fpc.n_version/,+3d'                              < .\out\tmp\Windows.s  > .\out\tmp\WindowsX.s
sed -e '/^\# Begin asmlist al_dwarf_frame/,$d'                       < .\out\tmp\WindowsX.s > .\out\tmp\Windows.s
sed -e '/\.section \.data\.n___fpc_valgrind\,\"d\"/,+4d'             < .\out\tmp\Windows.s  > .\out\tmp\WindowsX.s
%FPC_PATH%\as.exe --64 -o .\out\tmp\Windows.o .\out\tmp\WindowsX.s

:: test1.S > test1.exe
sed -e '/^\.section \.fpc\.n_version/,+3d'                           < .\out\tmp\test1.s  > .\out\tmp\test1X.s
sed -e '/^\.section \.data\.n_FPC_THREADVARTABLES\,\"d\"/,+4d'       < .\out\tmp\test1X.s > .\out\tmp\test1.s
sed -e '/^\# Begin asmlist al_dwarf_frame.*\n/,$d'                   < .\out\tmp\test1.s  > .\out\tmp\test1X.s
sed -e '/^\.section \.data\.n___fpc_valgrind\,\"d\"/,+4d'            < .\out\tmp\test1X.s > .\out\tmp\test1.s
sed -e '/^\.section \.rodata\.n_FPC_RESOURCESTRINGTABLES\,\"d\"/,+4d < .\out\tmp\test1.s  > .\out\tmp\test1X.s
sed -e '/^\.section \.data\.n_FPC_RESSTRINITTABLES\,\"d\"/,+4d'      < .\out\tmp\test1X.s > .\out\tmp\test1.s
sed -e '/^\.section \.data\.n_INITFINAL\,\"d\"/,+4d'                 < .\out\tmp\test1.s  > .\out\tmp\test1X.s
sed -e '/^\.section \.data\.n_FPC_WIDEINITTABLES\,\"d\"/,+4d'        < .\out\tmp\test1X.s > .\out\tmp\test1.s
sed -e '/^\.section \.data\.n___heapsize\,\"d\"/,+4d'                < .\out\tmp\test1.s  > .\out\tmp\test1X.s
sed -e '/^\.globl\tPASCALMAIN/,+4d'                                  < .\out\tmp\test1X.s > .\out\tmp\test1.s
sed -e '/^\.section \.text\.n_main\,\"x\"/,+2d'                      < .\out\tmp\test1.s  > .\out\tmp\test1X.s
sed -e '/^\.section \.debug_frame/,$d'                               < .\out\tmp\test1X.s > .\out\tmp\test1.s
sed -e '/^\.seh_stackalloc/d'                                        < .\out\tmp\test1.s  > .\out\tmp\test1X.s
sed -e '/^\.seh_endprologue/d'                                       < .\out\tmp\test1X.s > .\out\tmp\test1.s
sed -e '/^\.seh_endproc/d'                                           < .\out\tmp\test1.s  > .\out\tmp\test1X.s
%FPC_PATH%\as.exe --64 -o .\out\tmp\test1.o .\out\tmp\test1X.s

%FPC_PATH%\ld.exe -b pei-x86-64  --gc-sections    --entry=_mainCRTStartup -o .\tst\test1.exe ^
	.\out\tmp\test1.o .\out\tmp\link.res
%FPC_PATH%\strip.exe .\tst\test1.exe

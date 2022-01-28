	.file "test1.pas"
# Begin asmlist al_procedures

# [test1.pas]
# [7] begin
	leaq	-40(%rsp),%rsp
.Lc3:
	call	fpc_initializeunits
# [8] ExitProcess(0);
	xorl	%ecx,%ecx
	call	_$dll$kernel32$ExitProcess
# [9] end.
	call	fpc_do_exit
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc2:
# End asmlist al_procedures
# Begin asmlist al_globals








# End asmlist al_globals
# Begin asmlist al_dwarf_frame


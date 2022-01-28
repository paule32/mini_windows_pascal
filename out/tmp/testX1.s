	.file "test1.pas"
# Begin asmlist al_procedures

.section .text.n_main,"x"
	.balign 16,0x90
.globl	PASCALMAIN
PASCALMAIN:
.globl	main
main:
.Lc1:
.seh_proc main
# [test1.pas]
# [7] begin
	leaq	-40(%rsp),%rsp
.Lc3:
.seh_stackalloc 40
.seh_endprologue
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

.section .data.n_INITFINAL,"d"
	.balign 8
.globl	INITFINAL
INITFINAL:
	.quad	0,0

.section .data.n_FPC_THREADVARTABLES,"d"
	.balign 8
.globl	FPC_THREADVARTABLES
FPC_THREADVARTABLES:
	.long	0

.section .rodata.n_FPC_RESOURCESTRINGTABLES,"d"
	.balign 8
.globl	FPC_RESOURCESTRINGTABLES
FPC_RESOURCESTRINGTABLES:
	.quad	0

.section .data.n_FPC_WIDEINITTABLES,"d"
	.balign 8
.globl	FPC_WIDEINITTABLES
FPC_WIDEINITTABLES:
	.quad	0

.section .data.n_FPC_RESSTRINITTABLES,"d"
	.balign 8
.globl	FPC_RESSTRINITTABLES
FPC_RESSTRINITTABLES:
	.quad	0


.section .data.n___heapsize,"d"
	.balign 8
.globl	__heapsize
__heapsize:
	.quad	0

# End asmlist al_globals

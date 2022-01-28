	.file "SysInit.pas"
# Begin asmlist al_procedures

.section .text.n_sysinit_$$_entry,"x"
	.balign 16,0x90
.globl	SYSINIT_$$_ENTRY
SYSINIT_$$_ENTRY:
.globl	_mainCRTStartup
_mainCRTStartup:
.Lc1:
.seh_proc SYSINIT_$$_ENTRY
	leaq	-40(%rsp),%rsp
.Lc3:
.seh_stackalloc 40
.seh_endprologue
	call	PASCALMAIN
	xorl	%ecx,%ecx
	call	_$dll$kernel32$ExitProcess
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc2:
# End asmlist al_procedures

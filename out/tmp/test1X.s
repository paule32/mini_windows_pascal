	.file "test1.pas"
# Begin asmlist al_procedures

.section .text.n_main,"x"
	.balign 16,0x90
.globl	PASCALMAIN
PASCALMAIN:
.globl	main
main:
.Lc1:
	leaq	-40(%rsp),%rsp
.Lc3:
	call	fpc_initializeunits
	xorl	%eax,%eax
	leaq	_$TEST1$_Ld1(%rip),%r8
	leaq	_$TEST1$_Ld2(%rip),%rdx
	xorl	%ecx,%ecx
	movl	%eax,%r9d
	call	_$dll$user32$MessageBoxA
	call	fpc_do_exit
	nop
	leaq	40(%rsp),%rsp
	ret
.Lc2:
# End asmlist al_procedures
# Begin asmlist al_globals








# End asmlist al_globals
# Begin asmlist al_typedconsts

.section .rodata.n__$TEST1$_Ld1,"d"
	.balign 8
.globl	_$TEST1$_Ld1
_$TEST1$_Ld1:
	.ascii	"a  li tt le text\000"

.section .rodata.n__$TEST1$_Ld2,"d"
	.balign 8
.globl	_$TEST1$_Ld2
_$TEST1$_Ld2:
	.ascii	"mops\000"
# End asmlist al_typedconsts
# Begin asmlist al_dwarf_frame


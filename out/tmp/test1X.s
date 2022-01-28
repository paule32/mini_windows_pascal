	.file "test1.pas"
# Begin asmlist al_procedures

.section .text.n_main,"x"
	.balign 16,0x90
.globl	PASCALMAIN
PASCALMAIN:
.globl	main
main:
.Lc1:
# [test1.pas]
# [7] begin
	leaq	-40(%rsp),%rsp
.Lc3:
	call	fpc_initializeunits
# [9] end.
	call	fpc_do_exit
	nop
	leaq	40(%rsp),%rsp
	ret
.Lc2:
# End asmlist al_procedures
# Begin asmlist al_globals








# End asmlist al_globals
# Begin asmlist al_dwarf_frame


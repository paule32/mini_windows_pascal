	.file "Types.pas"
# Begin asmlist al_rtti

.section .rodata.n_RTTI_$TYPES_$$_UINT8,"d"
	.balign 8
.globl	RTTI_$TYPES_$$_UINT8
RTTI_$TYPES_$$_UINT8:
	.byte	1,5
# [Types.pas]
# [73] 
	.ascii	"UInt8"
	.byte	1
	.long	0,255

.section .rodata.n_RTTI_$TYPES_$$_BYTE,"d"
	.balign 8
.globl	RTTI_$TYPES_$$_BYTE
RTTI_$TYPES_$$_BYTE:
	.byte	1,4
	.ascii	"Byte"
	.byte	1
	.long	0,255

.section .rodata.n_RTTI_$TYPES_$$_UINT16,"d"
	.balign 8
.globl	RTTI_$TYPES_$$_UINT16
RTTI_$TYPES_$$_UINT16:
	.byte	1,6
	.ascii	"UInt16"
	.byte	3
	.long	0,65535

.section .rodata.n_RTTI_$TYPES_$$_WORD,"d"
	.balign 8
.globl	RTTI_$TYPES_$$_WORD
RTTI_$TYPES_$$_WORD:
	.byte	1,4
	.ascii	"Word"
	.byte	3
	.long	0,65535

.section .rodata.n_RTTI_$TYPES_$$_SMALLINT,"d"
	.balign 8
.globl	RTTI_$TYPES_$$_SMALLINT
RTTI_$TYPES_$$_SMALLINT:
	.byte	1,8
	.ascii	"Smallint"
	.byte	2
	.long	-32768,32767

.section .rodata.n_RTTI_$TYPES_$$_LONGWORD,"d"
	.balign 8
.globl	RTTI_$TYPES_$$_LONGWORD
RTTI_$TYPES_$$_LONGWORD:
	.byte	1,8
	.ascii	"Longword"
	.byte	5
	.long	0,-1

.section .rodata.n_RTTI_$TYPES_$$_UINT64,"d"
	.balign 8
.globl	RTTI_$TYPES_$$_UINT64
RTTI_$TYPES_$$_UINT64:
	.byte	20,6
	.ascii	"UInt64"
	.byte	7
	.quad	0,-1

.section .rodata.n_RTTI_$TYPES_$$_QWORD,"d"
	.balign 8
.globl	RTTI_$TYPES_$$_QWORD
RTTI_$TYPES_$$_QWORD:
	.byte	20,5
	.ascii	"QWord"
	.byte	7
	.quad	0,-1

.section .rodata.n_RTTI_$TYPES_$$_THANDLE,"d"
	.balign 8
.globl	RTTI_$TYPES_$$_THANDLE
RTTI_$TYPES_$$_THANDLE:
	.byte	1,7
	.ascii	"THandle"
	.byte	5
	.long	0,-1

.section .rodata.n_RTTI_$TYPES_$$_HWND,"d"
	.balign 8
.globl	RTTI_$TYPES_$$_HWND
RTTI_$TYPES_$$_HWND:
	.byte	1,4
	.ascii	"HWND"
	.byte	5
	.long	0,-1

.section .rodata.n_RTTI_$TYPES_$$_HANDLE,"d"
	.balign 8
.globl	RTTI_$TYPES_$$_HANDLE
RTTI_$TYPES_$$_HANDLE:
	.byte	1,6
	.ascii	"HANDLE"
	.byte	5
	.long	0,-1

.section .rodata.n_RTTI_$TYPES_$$_PBYTE,"d"
	.balign 8
.globl	RTTI_$TYPES_$$_PBYTE
RTTI_$TYPES_$$_PBYTE:
	.byte	29,5
	.ascii	"PByte"
	.quad	RTTI_$TYPES_$$_BYTE$indirect

.section .rodata.n_RTTI_$TYPES_$$_PCHAR,"d"
	.balign 8
.globl	RTTI_$TYPES_$$_PCHAR
RTTI_$TYPES_$$_PCHAR:
	.byte	29,5
	.ascii	"PChar"
	.quad	RTTI_$SYSTEM_$$_CHAR$indirect

.section .rodata.n_RTTI_$TYPES_$$_LP,"d"
	.balign 8
.globl	RTTI_$TYPES_$$_LP
RTTI_$TYPES_$$_LP:
	.byte	29,2
	.ascii	"LP"
	.quad	RTTI_$TYPES_$$_WORD$indirect

.section .rodata.n_RTTI_$TYPES_$$_LPBOOL,"d"
	.balign 8
.globl	RTTI_$TYPES_$$_LPBOOL
RTTI_$TYPES_$$_LPBOOL:
	.byte	29,6
	.ascii	"LPBOOL"
	.quad	RTTI_$SYSTEM_$$_LONGBOOL$indirect
# End asmlist al_rtti
# Begin asmlist al_indirectglobals

.section .rodata.n_RTTI_$TYPES_$$_UINT8,"d"
	.balign 8
.globl	RTTI_$TYPES_$$_UINT8$indirect
RTTI_$TYPES_$$_UINT8$indirect:
	.quad	RTTI_$TYPES_$$_UINT8

.section .rodata.n_RTTI_$TYPES_$$_BYTE,"d"
	.balign 8
.globl	RTTI_$TYPES_$$_BYTE$indirect
RTTI_$TYPES_$$_BYTE$indirect:
	.quad	RTTI_$TYPES_$$_BYTE

.section .rodata.n_RTTI_$TYPES_$$_UINT16,"d"
	.balign 8
.globl	RTTI_$TYPES_$$_UINT16$indirect
RTTI_$TYPES_$$_UINT16$indirect:
	.quad	RTTI_$TYPES_$$_UINT16

.section .rodata.n_RTTI_$TYPES_$$_WORD,"d"
	.balign 8
.globl	RTTI_$TYPES_$$_WORD$indirect
RTTI_$TYPES_$$_WORD$indirect:
	.quad	RTTI_$TYPES_$$_WORD

.section .rodata.n_RTTI_$TYPES_$$_SMALLINT,"d"
	.balign 8
.globl	RTTI_$TYPES_$$_SMALLINT$indirect
RTTI_$TYPES_$$_SMALLINT$indirect:
	.quad	RTTI_$TYPES_$$_SMALLINT

.section .rodata.n_RTTI_$TYPES_$$_LONGWORD,"d"
	.balign 8
.globl	RTTI_$TYPES_$$_LONGWORD$indirect
RTTI_$TYPES_$$_LONGWORD$indirect:
	.quad	RTTI_$TYPES_$$_LONGWORD

.section .rodata.n_RTTI_$TYPES_$$_UINT64,"d"
	.balign 8
.globl	RTTI_$TYPES_$$_UINT64$indirect
RTTI_$TYPES_$$_UINT64$indirect:
	.quad	RTTI_$TYPES_$$_UINT64

.section .rodata.n_RTTI_$TYPES_$$_QWORD,"d"
	.balign 8
.globl	RTTI_$TYPES_$$_QWORD$indirect
RTTI_$TYPES_$$_QWORD$indirect:
	.quad	RTTI_$TYPES_$$_QWORD

.section .rodata.n_RTTI_$TYPES_$$_THANDLE,"d"
	.balign 8
.globl	RTTI_$TYPES_$$_THANDLE$indirect
RTTI_$TYPES_$$_THANDLE$indirect:
	.quad	RTTI_$TYPES_$$_THANDLE

.section .rodata.n_RTTI_$TYPES_$$_HWND,"d"
	.balign 8
.globl	RTTI_$TYPES_$$_HWND$indirect
RTTI_$TYPES_$$_HWND$indirect:
	.quad	RTTI_$TYPES_$$_HWND

.section .rodata.n_RTTI_$TYPES_$$_HANDLE,"d"
	.balign 8
.globl	RTTI_$TYPES_$$_HANDLE$indirect
RTTI_$TYPES_$$_HANDLE$indirect:
	.quad	RTTI_$TYPES_$$_HANDLE

.section .rodata.n_RTTI_$TYPES_$$_PBYTE,"d"
	.balign 8
.globl	RTTI_$TYPES_$$_PBYTE$indirect
RTTI_$TYPES_$$_PBYTE$indirect:
	.quad	RTTI_$TYPES_$$_PBYTE

.section .rodata.n_RTTI_$TYPES_$$_PCHAR,"d"
	.balign 8
.globl	RTTI_$TYPES_$$_PCHAR$indirect
RTTI_$TYPES_$$_PCHAR$indirect:
	.quad	RTTI_$TYPES_$$_PCHAR

.section .rodata.n_RTTI_$TYPES_$$_LP,"d"
	.balign 8
.globl	RTTI_$TYPES_$$_LP$indirect
RTTI_$TYPES_$$_LP$indirect:
	.quad	RTTI_$TYPES_$$_LP

.section .rodata.n_RTTI_$TYPES_$$_LPBOOL,"d"
	.balign 8
.globl	RTTI_$TYPES_$$_LPBOOL$indirect
RTTI_$TYPES_$$_LPBOOL$indirect:
	.quad	RTTI_$TYPES_$$_LPBOOL
# End asmlist al_indirectglobals
# Begin asmlist al_dwarf_frame

.section .debug_frame
	.long	.Lc3-.Lc2
.Lc2:
	.long	-1
	.byte	1
	.byte	0
	.uleb128	1
	.sleb128	-4
	.byte	16
	.byte	12
	.uleb128	7
	.uleb128	8
	.byte	5
	.uleb128	16
	.uleb128	2
	.balign 4,0
.Lc3:
# End asmlist al_dwarf_frame


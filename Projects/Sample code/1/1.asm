#include "option.inc"
#define DSP_SRAM_SIZE		3072
#define DSP_VECT_SUPPORT		6

#include "K:\Tritan IDE\FDSP-IDE\tools\CC\crt0\crt0.inc"
#include "K:\Tritan IDE\FDSP-IDE\tools\CC\crt0\crt0.asm"
#include "deps\1_CC49BD7D.s.code.asm"
#include "K:\Tritan IDE\FDSP-IDE\tools\CC\lib\libio\outp.asm"
#include "K:\Tritan IDE\FDSP-IDE\tools\CC\lib\libio\tick.asm"
#include "deps\D0F37027_ginit.s.code.asm"
#include "K:\Tritan IDE\FDSP-IDE\tools\CC\crt0\runtime.asm"
#include "K:\Tritan IDE\FDSP-IDE\tools\CC\crt0\fp32rt.asm"
#include "K:\Tritan IDE\FDSP-IDE\tools\CC\crt0\fp16rt.asm"


// .code segment

WAKEUP_PROC:
	PCH=	_WakeupProc94A410F9
	ljmp	_WakeupProc94A410F9

IntVectTable:
	DW #EMPTY_INTENTRY
	DW #EMPTY_INTENTRY
	DW #EMPTY_INTENTRY
	DW #EMPTY_INTENTRY
	DW #EMPTY_INTENTRY
	DW #_PWM99B23D7D

// .code ends

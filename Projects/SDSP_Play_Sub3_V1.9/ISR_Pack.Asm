;;******************************************************************************
;;******************************************************************************
.CODE
;;******************************************************************************
L_INTVB15_ENTRY:
		Clr			Io[INTREQ].B15
		Reti
;;******************************************************************************
L_INTVB14_ENTRY:
		Clr			Io[INTREQ].B14
		Reti
;;******************************************************************************
L_INTVB13_ENTRY:
		Clr			Io[INTREQ].B13
		Reti
;;******************************************************************************
L_INTVB12_ENTRY:
		Clr			Io[INTREQ].B12
		Reti
;;******************************************************************************
L_INTVB11_ENTRY:
		Clr			Io[INTREQ].B11
		Reti
;;******************************************************************************
L_INTVB10_ENTRY:
		Clr			Io[INTREQ].B10
		Reti
;;******************************************************************************
L_INTVB9_ENTRY:
		Clr			Io[INTREQ].B9
		Reti
;;******************************************************************************
L_INTVB8_ENTRY:
		Clr			Io[INTREQ].B8
		Reti
;;******************************************************************************
L_INTVB7_ENTRY:
		Clr			Io[INTREQ].B7
		Reti
;;******************************************************************************
L_INTVB6_ENTRY:
		Clr			Io[INTREQ].B6
		Reti
;;******************************************************************************
L_INTVB5_ENTRY:
		Clr			Io[INTREQ].B5
		Reti
;;******************************************************************************
L_INTVB4_ENTRY:
		Clr			Io[INTREQ].B4
		Reti
;;******************************************************************************
L_INTVB3_ENTRY:
		Clr			Io[INTREQ].B3
		Reti
;;******************************************************************************
L_INTVB2_ENTRY:
		Clr			Io[INTREQ].B2
		Ar			= Rm[Time_Ms]
		Ar++
		Clr			Ar.B15
		Rm[Time_Ms]		= Ar

		Ar			= Rm[DebounceTime]
		Ar++
		Clr			Ar.B15
		Rm[DebounceTime]	= Ar
		Reti
;;******************************************************************************
L_INTVB1_ENTRY:
		Clr			Io[INTREQ].B1
		Reti
;;******************************************************************************
;;�ж�0��RamBankִ��
L_INTVB0_ENTRY:
		Clr			Io[INTREQ].B0

#ifdef 		_Pwm_To_Dac_
		Ar			= Rm[Dac_Flag]
		Jzr			Voice_Pwm_Out
		Pcb			= 0
		Pch			= Dac_Ramp_Isr
		Lcall			Dac_Ramp_Isr
		Jmp			L_Intvb0_Entry_Exit
Voice_Pwm_Out:
#endif

		Call			Play_Sub3_Isr
L_Intvb0_Entry_Exit:

		Reti
;;*******************************************************************************
;;*******************************************************************************
;*******************************************************************************
Play_Sub3_Isr:
		Ar			= Rm[Play_Sub3_Flag]
		Jzr			Play_Sub3_Isr_Exit
		Push			I0
		Push			Cbl
		Push			Cx
		I0			= Rm[Pcmyou_Ptr]
		Cbl			= 9
		Cx			= 3
Sub3_Filter_Loop:
		Jfa			Sub3_Filter_Out
		Flti			= Rm[I0]
		Ar			= 0
		Rm[I0++]		= Ar
Sub3_Filter_Out:
		Ar			= FLTO
#ifdef	_Pwm_To_Dac_
		Push			Ax
		Sra			Ar
		Ax			= 0X4000
		Ar			= Ar + Ax
		Pop			Ax
#else
		Nop
		Nop
#endif
		Io[Dacl]		= Ar
		Loop			Sub3_Filter_Loop
		Rm[Pcmyou_Ptr]		= I0
		Pop			Cx
		Pop			Cbl
		Pop			I0
Play_Sub3_Isr_Exit:
		Rets
;;-----------------------------------------------------------------------------------------;;
PWM_END_ADR:
;;-----------------------------------------------------------------------------------------;;
;;*******************************************************************************
; //#include "crt0.h"
; //
; //// CODE segment					
; 3D044B19_ginit.s.c Code Start!!;
VarRM[0:4095]={
  
};

; //
; //
; //
; //
; //
; //
.code
; //
; //
; //naked void ginit_code(void)			
ginit_code:
; //{
; //	ginit_code_touch_AB036625_s();		
	pch	= ginit_code_touch_AB036625_s
	lcall	ginit_code_touch_AB036625_s
; //	return;					
	rets
; //}
; //
; //
; //




#ifndef _PROJECT_CONFIG_FILE_

// only once in project
#pragma comment(CONST, "_PROJECT_CONFIG_FILE_")

#include "option.inc"


// -------- compiler configure ------

#pragma comment(OPTION, "no-fplib")		// tell compiler not include float point to save PROM space


// -------- project configure (libmd2) ------

// enable this if select PWM 64K at chip option
// #pragma comment(CONST, "_PWM_64K_")


#if _OPT_PRAMBank_ != 0


// setup PRAM range for C program

	#ifdef _MFDSP_
		#pragma comment(OPTION, "pram=0x20300-0x20400")
	#endif

	#ifdef _MSPEECHDSP_
		#pragma comment(OPTION, "pram=0x70300-0x70400")
	#endif

	#ifdef _MSPEECHDSP2_
		#pragma comment(OPTION, "pram=0xF0300-0xF0400")
	#endif

	#ifdef _MFDSP2_
		#pragma comment(OPTION, "pram=0xF0400-0xF0800")
	#endif

	// put some melody system at program ram to speed up system
	#pragma comment(CONST, "__RAMFUNC_ENABLE__")
	#pragma comment(CONST, "RAMBANK = _OPT_PRAMBank_")
	#pragma comment(CONST, "MD2_PRAM_START_BASE = 0x0000")

#endif


#if _OPT_AudioSamplingRate_ == 32
	#pragma comment(CONST, "_PWM_32K_")
#endif

#if _OPT_AudioSamplingRate_ == 64
	#pragma comment(CONST, "_PWM_64K_")
#endif

#if _OPT_AudioSamplingRate_ == 128
	#pragma comment(CONST, "_PWM_128K_")
#endif

// -------------------------------------

// -------- library configure (libmd2) ------

#pragma inclib("libmd2")



#endif







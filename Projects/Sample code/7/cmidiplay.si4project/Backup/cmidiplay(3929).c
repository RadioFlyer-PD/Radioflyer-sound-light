
// -----------------------------------
// Tritan Technology Inc.
// Demo code : How do I play MD2 file
// -----------------------------------

#include "config.h"

#pragma __attribute__("rjmp")

#include <io.h>
#include <stdbool.h>
#include <lptr.h>

#include "md2.h"
#include "global.h"
#include "keypad.h"
#include "led.h"

// interrupt.asm

import void PWM_ENTRY(void) interrupt(0);

// data.c
import const int melody[];


void main(void)
{
	Initial();
	InitKey();

	CONFIG_LED0();
	CONFIG_LED1();
	LED0_OFF();
	LED1_OFF();

	md2Initialize();

	if(!md2FindMidiEntry((lptr_t)melody))
	{
		// wait watchdog reset system
		while(1);
	}

	md2InitParameters();
	md2StartBGServe();

	songidx = -1;
	mp_vol = 63;
	mp_tempo = 0x4000;	// 1.0
	timepass = 0;

	while(md2DoRoutine())
	{
		ClrWatchDog();

		PollingKey();

		if(md2ChkSongEnd())
		{
			if(!STOP)
			{
				songidx++;
				CheckSongLimit();
				md2PlaySong(songidx);
			}
		}
	}
}





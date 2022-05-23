

#include <io.h>
#include <pwm.h>
#include <dtx.h>
#include "global.h"

#pragma __attribute__("rjmp")


int flags;

int songidx;


static void InitSound(void) near
{
	// clear PWM buffer

	R_DACL = 0;
	R_DACL = 0;
	R_DACL = 0;
	R_DACL = 0;

	// clear filter buffer

	R_FLTI = 0;
	R_FLTI = 0;
	R_FLTI = 0;
	R_FLTI = 0;
	R_FLTI = 0;
	R_FLTI = 0;
	R_FLTI = 0;
	R_FLTI = 0;

	R_FLTG = 0x3F;

	// reset FIFO state machine

	R_FLTO;

	EnableAudioPWM();
	EnableWideBandFilter();
	DACMuteOff();
}


static void SetupIO(void) near
{
	// PortA 0, 1, 2, 3 as output

	R_IOC_PA = BIT(3) | BIT(2) | BIT(1) | BIT(0);
	R_IOC_PB = (int)0xFFFF;
	R_PORTA = 0;
	R_PORTB = (int)0xFFFF;
}


void Initial(void)
{
 	songidx = 0;

	InitSound();
	SetupIO();

	flags = 0;
}


void CheckSongLimit(void)
{
	if(songidx < 0)
	{
		songidx = dtxsongcnt - 1;
	}
	else
	{
		if(songidx >= dtxsongcnt)
		{
			songidx = 0;
		}
	}
}






















#ifndef _GLOBAL_FUNCTIONS_
#define _GLOBAL_FUNCTIONS_

#include <stdint.h>

#define MAX_PCM_BUF		128

import int inbuf, outbuf;
import int PCMY[MAX_PCM_BUF];

extern void Initial(void);
extern void DoADPCM(void);


#endif




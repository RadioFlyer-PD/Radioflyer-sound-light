
#include "crt0.h"
















// CODE segment					=>>VarRM[0:4095]={
  
};

.code


rjmp void _InitialDA4A7CC4();




.code
rjmp void L0E8FA404_24()			=>>L0E8FA404_24:
{
_A0432E234_66:;					=>>_A0432E234_66:;
	
_A0432E234_67:;					=>>_A0432E234_67:;
	io[0x16]	= 0x0000;		=>>AR	= 0x00;io[0x16]	= AR
_A0432E234_68:;					=>>_A0432E234_68:;
	io[0x16]	= 0x0000;		=>>AR	= 0x00;io[0x16]	= AR
_A0432E234_69:;					=>>_A0432E234_69:;
	io[0x16]	= 0x0000;		=>>AR	= 0x00;io[0x16]	= AR
_A0432E234_70:;					=>>_A0432E234_70:;
	io[0x16]	= 0x0000;		=>>AR	= 0x00;io[0x16]	= AR
_A0432E234_71:;					=>>_A0432E234_71:;
	io[0x36]	= 0x0000;		=>>AR	= 0x00;io[0x36]	= AR
_A0432E234_72:;					=>>_A0432E234_72:;
	io[0x36]	= 0x0000;		=>>AR	= 0x00;io[0x36]	= AR
_A0432E234_73:;					=>>_A0432E234_73:;
	io[0x36]	= 0x0000;		=>>AR	= 0x00;io[0x36]	= AR
_A0432E234_74:;					=>>_A0432E234_74:;
	io[0x36]	= 0x0000;		=>>AR	= 0x00;io[0x36]	= AR
_A0432E234_75:;					=>>_A0432E234_75:;
	io[0x36]	= 0x0000;		=>>AR	= 0x00;io[0x36]	= AR
_A0432E234_76:;					=>>_A0432E234_76:;
	io[0x36]	= 0x0000;		=>>AR	= 0x00;io[0x36]	= AR
_A0432E234_77:;					=>>_A0432E234_77:;
	io[0x36]	= 0x0000;		=>>AR	= 0x00;io[0x36]	= AR
_A0432E234_78:;					=>>_A0432E234_78:;
	io[0x36]	= 0x0000;		=>>AR	= 0x00;io[0x36]	= AR
_A0432E234_79:;					=>>_A0432E234_79:;
	io[0x3E]	= 0x2000;		=>>AR	= 0x2000;io[0x3E]	= AR
_A0432E234_80:;					=>>_A0432E234_80:;
	io[0x3C]	= 0x003F;		=>>AR	= 0x3F;io[0x3C]	= AR
_A0432E234_81:;					=>>_A0432E234_81:;
	sAX	= io[0x3C];			=>>AR	= io[0x3C];AX	= AR
_A0432E234_82:;					=>>_A0432E234_82:;
	asm	set io[MISC].b9			=>>set io[MISC].b9
_A0432E234_83:;					=>>_A0432E234_83:;
	asm	set io[MISC].b8			=>>set io[MISC].b8
_A0432E234_84:;					=>>_A0432E234_84:;
	asm	set io[MISC].b4			=>>set io[MISC].b4
L0E8FA404_26:;					=>>L0E8FA404_26:;
_A0432E234_85:;					=>>_A0432E234_85:;
	return;					=>>rets
L0E8FA404_24_end:;				=>>L0E8FA404_24_end:;
_A0432E234_86:;					=>>_A0432E234_86:;
}

rjmp void L0E8FA404_27()			=>>L0E8FA404_27:
{
_A0432E234_87:;					=>>_A0432E234_87:;
	
_A0432E234_88:;					=>>_A0432E234_88:;
	io[0x04]	= 0x000F;		=>>AR	= 0x0F;io[0x04]	= AR
_A0432E234_89:;					=>>_A0432E234_89:;
	io[0x05]	= 0xFFFF;		=>>AR	= 0xFFFF;io[0x05]	= AR
_A0432E234_90:;					=>>_A0432E234_90:;
	io[0x07]	= 0x0000;		=>>AR	= 0x00;io[0x07]	= AR
_A0432E234_91:;					=>>_A0432E234_91:;
	io[0x08]	= 0xFFFF;		=>>AR	= 0xFFFF;io[0x08]	= AR
L0E8FA404_29:;					=>>L0E8FA404_29:;
_A0432E234_92:;					=>>_A0432E234_92:;
	return;					=>>rets
L0E8FA404_27_end:;				=>>L0E8FA404_27_end:;
_A0432E234_93:;					=>>_A0432E234_93:;
}

rjmp void _InitialDA4A7CC4()			=>>_InitialDA4A7CC4:
{
_A0432E234_94:;					=>>_A0432E234_94:;
	
_A0432E234_95:;					=>>_A0432E234_95:;
	sAX	= 0xFFFF;			=>>AX	= 0xFFFF
	asm I1 = _iADPCCACC469+0;		=>>I1 = _iADPCCACC469+0//
	*(__int16*)sSI	= sAX			=>>rm[I1]	= AX
_A0432E234_96:;					=>>_A0432E234_96:;
_A0432E234_97:;					=>>_A0432E234_97:;
	NEARCALL(L0E8FA404_24);			=>>call	L0E8FA404_24
_A0432E234_98:;					=>>_A0432E234_98:;
_A0432E234_99:;					=>>_A0432E234_99:;
	NEARCALL(L0E8FA404_27);			=>>call	L0E8FA404_27
L0E8FA404_30:;					=>>L0E8FA404_30:;
_A0432E234_100:;				=>>_A0432E234_100:;
	return;					=>>rets
_InitialDA4A7CC4_end:;				=>>_InitialDA4A7CC4_end:;
_A0432E234_101:;				=>>_A0432E234_101:;
}








.code



.code







.data





.code






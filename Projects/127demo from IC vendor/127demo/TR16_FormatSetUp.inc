#Define		_TR16_PlaySbb3_			1	; ��sbb3���Ÿ�ʽ
#Define		_TR16_PlayPCM_			0	; ��PCM���Ÿ�ʽ






#If		_TR16_PlaySbb3_			!= 0	;;
;;******************************************************************************
;{
;;����ļ��ǹ��ڲ���sbb3��ȫ������
VarRM[0:127]={
ReAllocate#74
Sbb3_UseBuf[8]
}
VarRM[128:511]={
}
VarRM[512:4095]={
ReAllocate#512
BaseOn512#Sbb3Buf[512]
ReAllocate#1024
BaseOn256#Sbb3FlashBuf[256]
}
ShareVar={
}
;-----------------------------------------------------------
;;��ϸ���� SDSP_PB_Adpcm �ڵ�¼���Ĵ�����
#Define	Sbb3YOU_PTR			Sbb3_UseBuf+0	;;
#Define	PCMYOU_PTR			Sbb3_UseBuf+0	;;
#Define	PCMYIN_PTR			Sbb3_UseBuf+1	;;
#Define	Sbb3YIN_PTR			Sbb3_UseBuf+1	;;
#Define	Sbb3_AddrL			Sbb3_UseBuf+2	;;
#Define	Sbb3_AddrH			Sbb3_UseBuf+3	;;
#Define	SampleCh0Rate			Sbb3_UseBuf+4	;;
#Define	Sbb3Filter_Gain			Sbb3_UseBuf+5	;;
#Define	Sbb3FlashOU_PTR			Sbb3_UseBuf+6	;;
#Define	Sbb3FlashIN_PTR			Sbb3_UseBuf+7	;;
;-----------------------------------------------------------
#ifdef _MSPEECHDSP_

;//����obj��VarRM[0:127]�Ŀ�ʼ��ַ
#OBJReAllocate	SDSP_Sbb3_Ch0decV06, 82		;;�Ĵ�46��	�������λ��
;//obj��VarRM[128:511]�Ŀ�ʼ��ַ
#OBJReAllocate	SDSP_Sbb3_Ch0decV06, 128		;;�Ĵ�75��	�������λ��
;//obj��VarRM[512:4095]�Ŀ�ʼ��ַ
#OBJReAllocate	SDSP_Sbb3_Ch0decV06, 1312		;;�Ĵ�1696��	�������λ��

#else

;//����obj��VarRM[0:127]�Ŀ�ʼ��ַ
#OBJReAllocate	Sbb3_Ch0decV06, 	82		;;�Ĵ�46��	�������λ��
;//obj��VarRM[128:511]�Ŀ�ʼ��ַ
#OBJReAllocate	Sbb3_Ch0decV06, 	128		;;�Ĵ�75��	�������λ��
;//obj��VarRM[512:4095]�Ŀ�ʼ��ַ
#OBJReAllocate	Sbb3_Ch0decV06, 	1312		;;�Ĵ�1696��	�������λ��

#endif


	Macro		M_Sbb3Play_Task
		pch=		Sbb3Play_Task
		lcall		Sbb3Play_Task
	Endm

	Macro		M_Sbb3Play_Start
		pch=		Sbb3Play_Start
		lcall		Sbb3Play_Start
	Endm

	Macro		M_Sbb3Play_Startlp
		pch=		Sbb3Play_Startlp
		lcall		Sbb3Play_Startlp
	Endm
	Macro		M_Sbb3Play_Stop
		pch=		Sbb3Play_Stop
		lcall		Sbb3Play_Stop
	Endm
	Macro		M_Sbb3Play_PWM
		pch=		Sbb3Play_PWM
		lcall		Sbb3Play_PWM
	Endm


;}
#else
;{
	Macro		M_Sbb3Play_Task
	Endm

	Macro		M_Sbb3Play_Start
	Endm

	Macro		M_Sbb3Play_Startlp
	Endm
	Macro		M_Sbb3Play_Stop
	Endm
	Macro		M_Sbb3Play_PWM
	Endm

;}
#Endif




#If		_TR16_PlayPCM_			!= 0	;;
;{
;;******************************************************************************
;;����ļ��ǹ��ڲ���PCM��ȫ������
VarRM[0:127]={
ReAllocate#68
PCM_UseBuf[6]
}
VarRM[128:511]={
ReAllocate#256
BaseOn256#PCMBuf[256]
}
VarRM[512:4095]={

}
ShareVar={
}

;;
;;��ϸ���� SDSP_PB_Adpcm �ڵ�¼���Ĵ�����
#Define	PCMOU_PTR			PCM_UseBuf+0	;;
#Define	PCMIN_PTR			PCM_UseBuf+1	;;
#Define	PCM_AddrL			PCM_UseBuf+2	;;
#Define	PCM_AddrH			PCM_UseBuf+3	;;
#Define	PCMSampleRate			PCM_UseBuf+4	;;
#Define	PCMFilter_Gain			PCM_UseBuf+5	;;
;----------------------------------------------------------

	Macro		M_PCMPlay_Task
		pch=		PCMPlay_Task
		lcall		PCMPlay_Task
	Endm

	Macro		M_PCMPlay_Start
		pch=		PCMPlay_Start
		lcall		PCMPlay_Start
	Endm

	Macro		M_PCMPlay_Startlp
		pch=		PCMPlay_Startlp
		lcall		PCMPlay_Startlp
	Endm
	Macro		M_PCMPlay_Stop
		pch=		PCMPlay_Stop
		lcall		PCMPlay_Stop
	Endm

	Macro		M_PCMPlay_PWM
		pch=		PCMPlay_PWM
		lcall		PCMPlay_PWM
	Endm

;}
#else
;{
	Macro		M_PCMPlay_Task
	Endm

	Macro		M_PCMPlay_Start
	Endm

	Macro		M_PCMPlay_Startlp
	Endm
	Macro		M_PCMPlay_Stop
	Endm

	Macro		M_PCMPlay_PWM
	Endm
;}
#Endif
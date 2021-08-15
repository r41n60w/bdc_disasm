; vi: syntax=asm68k

; { 1/proc86 }

;:0000			1/proc1()
;Load sound driver -> sound on
;	no args

load_sndirq:
	;A1/(struct sndirq_t *) irq data block
	movea.l	ApplScratch.w,	a1
	;A0/(struct VBLTask *)  irq task ptr
	lea     _IRQ(a1),	a0
	moveq	     #1,	d0
	move.w	     d0,  qType(a0)
	lea     1/snd_irq,	a1
	move.l	     a1,  qProc(a0)
	;interrupt every vblank [60 Hz]
	move.w	     d0, qCount(a0)
	;pascal  _D0 OSErr	_VInstall
	;	(_A0 QElemPtr	VBLTaskPtr);
	;load into VBL queue
	_VInstall
	rts     

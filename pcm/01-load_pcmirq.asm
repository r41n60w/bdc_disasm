; vi: syntax=asm68k

; { 1/enable_irqs() }

;:0000			1/proc1()
;Load sound driver -> sound on
;	no args
;static void 1/load_pcmirq(void):0000;
;_D0 OSErr _VInstall(_A0 QElemPtr vblTaskPtr):a033;

ApplScratch	equ	($0a78)

load_pcmirq:
	movea.l	ApplScratch.w,	a1
	lea   _IRQ(a1),		a0
	;A0/(struct VBLTask *) irq task ptr
	;A1/(struct PCMInfo *) irq data block
	moveq	   #1,		d0
	move.w	   d0,    qType(a0)
	;call (VBLProcPtr) ISR every Vs.
	lea     1/PCMIRQ(),	a1	;049e
	move.l	   a1,  vblAddr(a0)
	move.w	   d0, vblCount(a0)
	;load into VBL queue
	_VInstall
	rts     

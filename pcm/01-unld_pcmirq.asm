; vi: syntax=asm68k

;{ 1/proc80() }

;:00ae			1/proc8()
;(RealSound) Unload driver
;	no args

;static void 01/unld_pcmirq(void);
;pascal _D0 OSErr _VRemove(_A0 QElemPtr vblTaskPtr);

ApplScratch	equ	($0a78)
_IRQ		equ	(+18)

unld_pcmirq:
	movea.l	ApplScratch.w,	a1
	lea	   _IRQ(a1),	a0
	_VRemove			;a034
	rts

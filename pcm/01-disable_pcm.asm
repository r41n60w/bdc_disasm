; vi: syntax=asm68k

;{ 1/proc7 } 

;:0098			1/proc6()
;Turn off sound generator
;(VIA Data Register B, bit 7)
;	no args

;static void 1/disable_pcm(void):0098;

VIA	equ	($01d4)
vSndEnb	equ	(7)	;hi bit, 0=enabled

disable_pcm:
	movea.l	   (VIA).w,	a0
	;sound on?
vSndEnb	btst.b	  #vSndEnb,    (a0)
	bne.s	  .sndoff
	;turn off/set to 1
turnoff	bset.b	  #vSndEnb,    (a0)
sndoff	rts	

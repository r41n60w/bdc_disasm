; vi: syntax=asm68k

;{ 1/proc7 } 

;:0098			1/proc6()
;Enable sound (VIA bit 7)
;	no args

enable_snd:
	movea.l	       VIA,	a0
	btst		#7,    (a0)
	bne.s	  .enabled
	bset		#7,    (a0)
enabled	rts	

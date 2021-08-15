; vi: syntax=asm68k


;:0028		1/proc3()
;Pause all sound
;	no args

pause_pcm:
	;preserve A0
	move.l		a0,   -(sp)
	movea.l	ApplScratch.w,	a0
	move.w		sr,   -(sp)
	ori.w	    #$0300,	sr
	move.l	_MAP(a0), _MAP0(a0)
	clr.l	_MAP(a0)
	move.w	    (sp)+,	sr
	move.l	    (sp)+,	a0
	rts	

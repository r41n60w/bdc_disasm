; vi: syntax=asm68k


;:0028		1/proc3()
;Pause all sound
;	no args
;	all regs preserved

;void 1/pause_pcm(void):0028;

pause_pcm:
	;preserve A0
	move.l		a0,   -(sp)
	movea.l	ApplScratch.w,	a0
	;temporarily disable interrupts
sei	move.w		sr,   -(sp)
	ori.w	    #$0300,	sr
	;backup and clear PCM bitmap
	move.l	_MAP(a0), _MAP0(a0)
	clr.l	_MAP(a0)
	;re-enable interrupts
cli	move.w	    (sp)+,	sr
	move.l	    (sp)+,	a0
	rts	

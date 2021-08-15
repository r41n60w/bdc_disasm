; vi: syntax=asm68k

;:0040		1/proc4()
;Unpause all sound
;	no args

resume_pcm:
	;preserve A0
	move.l		a0,   -(sp)
	movea.l	ApplScratch.w,	a0
	move.l	_MAP0(a0), _MAP(a0)
	move.l	     (sp)+,	a0
	rts	

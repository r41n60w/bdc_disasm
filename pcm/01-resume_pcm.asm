; vi: syntax=asm68k

;:0040			1/proc4()
;Unpause all sound
;	no args
;	all regs preserved

;void 1/resume_pcm(void):0040;

ApplScratch	equ	($0a78)

resume_pcm:
	;preserve A0
	move.l	      a0,     -(sp)
	movea.l	ApplScratch.w,	a0
	;restore PCM bitmap
	move.l	_MAP0(a0), _MAP(a0)
resumed	move.l	     (sp)+,	a0
	rts	

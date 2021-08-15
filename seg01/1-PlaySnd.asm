; vi: syntax=asm68k

;{ 5/proc244    5/proc259 } 


;:001e			1/proc2()
;Pascal wrapper -> 1/play_snd()
;	arg snd(id_t)

PlaySnd:
	move.l	       (sp)+,	a0
	move.w	       (sp)+,	d0
	move.l		a0,   -(sp)
	jmp	     1/play_snd(pc)

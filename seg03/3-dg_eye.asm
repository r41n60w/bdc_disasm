; vi: syntax=asm68k

;:193c		3/data126[]
;Eye collisiom function

dg_eye:
	move.w		d0,  28(a6)
	move.w		d1,  30(a6)
	addi.w	       #16,  28(a6)
	addi.w	       #11,  30(a6)
	lea	 qkugel(a5),	a0
	jsr	   3/collide_kg(pc)
	beq.s	0x1996
	clr.l		      8(a0)
	lea	     28(a6),	a0
	move.l	#$04000000,	d7
	jsr	    3/del_aepos(pc)

	move.w		#4,  32(a6)
	move.w		d0,   -(sp)
	move.w	#SND_HITEYE,	d0
	jsr	     1/play_snd(a5)
	move.w	       (sp)+,	d0

	move.w	       #12,	d0
	jsr	0x409c(pc)
	lea	3/empty_ani,	a0
	move.l		a0,   4(a6)
	clr.w		      8(a6)
	clr.w		     10(a6)
;:1996
	rts

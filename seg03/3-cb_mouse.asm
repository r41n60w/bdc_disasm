; vi: syntax=asm68k

;:1a48			3/data127[]

cb_mouse:
	move.w	      0(a6),	d0
	move.w	      2(a6),	d1
	movea.l	 currpg(a5),	a0

	move.w	     26(a6),	d7
	asl.w		#2,	d7
	jmp		mousejt(d7.w)

mousejt:		;:1a5c
	jmp	0x1b74(pc)	;#0
	jmp	0x1b20(pc)	;#1
	jmp	0x1adc(pc)	;#2
	jmp	0x1aae(pc)	;#3
	jmp	0x1a70(pc)	;#4


;:1a70	[#4] falling off pole, out of bounds
	move.w		#3,	d2
	addi.w	       #15,	d1
	cmpi.w	      #300,	d1
	blt.s	0x1a96
	
	lea	     40(a6),	a0
	jsr	0x3e96(pc)
	clr.l		 -8+_CB(a6)
	movea.l	     22(a6),	a0
	addq.w		#1,  22(a0)
	bra	0x1c54

;:1a96
	tst.w	      8(a6)
	bgt.s	  .rrat4
lrat4	movea.l	     10(a6),	a1
	bra.s	0x1aa6
rrat4	movea.l	     14(a6),	a1
;:1aa6
	jsr	     3/blit_spr(pc)
	bra	0x1bf8


;:1aae	[#3] falling off pole, within bounds
	move.w		#3,	d2
	addi.w	       #15,	d1
	cmp.w	     30(a6),	d1
	blt.s	0x1ac4
	clr.w	     26(a6)
	move.w	     30(a6),	d1
;:1ac4
	tst.w	      8(a6)
	bgt.s	  .rrat3
lrat3	movea.l	     10(a6),	a1
	bra.s	0x1ad4
rrat3	movea.l	     14(a6),	a1
;:1ad4
	jsr	     3/blit_spr(pc)
	bra	0x1bf8


;:1adc	[#2] 	riding pole (down)
	move.w		#2,	d2
	addi.w	       #10,	d1
	cmp.w	     28(a6),	d1
	blt.s	0x1b08

	cmp.w	      4(a6),	d0
	blt.s	0x1afe
	cmp.w	      6(a6),	d0
	bgt.s	0x1afe
	move.w		#3,  26(a6)
	bra.s	0x1b04
;:1afe
	move.w		#4,  26(a6)
;:1b04
	move.w	     28(a6),	d1
;:1b08
	tst.w	      8(a6)
	bgt.s	  .rrat2
lrat2	movea.l	     10(a6),	a1
	bra.s	0x1b18
rrat2	movea.l	     14(a6),	a1
;:1b18
	jsr	     3/blit_spr(pc)
	bra	0x1bf8





;:1b20	[#1]
	move.w	20(a6), d2
	add.w	8(a6), d0

	tst.w	8(a6)
	bgt.s	0x1b4c

	cmp.w	0x20(a6), d0
	bgt.s	0x1b3e
	move.w	0x2, 0x1a(a6)
	move.w	0x20(a6), d0
;:1b3e
	movea.l	0xa(a6), a1
	subq.w	0x1, d2
	bge.b	0x1b68
	move.w	0x1, d2
	bra.b	0x1b68

;:1b4c
r	cmp.w	0x20(a6), d0
	blt.b	0x1b5c
	move.w	0x2, 0x1a(a6)
	move.w	0x20(a6), d0
;:1b5c
	movea.l	0xe(a6), a1
	subq.w	0x1, d2
	bge.b	0x1b68
	move.w	0x1, d2

;:1b68
	move.w	d2, 0x14(a6)
	jsr	0x0(pc)
	bra.w	0x1bf8



;:1b74	[#0]
	subq.w	#1, 18(a6)
	bgt.s	0x1b92
	neg.w	0x8(a6)
	jsr	3/random(pc)
	move.w	d0, d7
	move.w	_RATX(a6), d0
	andi.w	#%00111111, d7
	addi.w	#10, d7
	move.w	d7, 18(a6)
;:1b92
	move.w	20(a6), d2

	add.w	8(a6), d0
	cmp.w	4(a6), d0
	bgt.s	0x1bb4

	move.w	       #+2,   8(a6)
	move.w		d0,   -(sp)
	move.w	#SND_RAT,	d0
	jsr	     1/play_snd(a5)
	move.w	       (sp)+,	d0
	bra.b	0x1bcc

;:1bb4
	cmp.w	      6(a6),	d0
	blt.s	0x1bcc
	move.w	       #-2,   8(a6)
	move.w		d0,   -(sp)
	move.w	#SND_RAT,	d0
	jsr	     1/play_snd(a5)
	move.w	       (sp)+,	d0
;:1bcc
	tst.w	8(a6)
	bgt.s	0x1be0

l	movea.l	0xa(a6), a1
	subq.w	0x1, d2
	bge.s	0x1bec
	move.w	0x1, d2
	bra.s	0x1bec

;:1be0
r	movea.l	0xe(a6), a1
	subq.w	0x1, d2
	bge.s	0x1bec
	move.w	0x1, d2

;:1bec
	move.w	d2, 0x14(a6)
	jsr	0x0(pc)
	bra.w	0x1bf8



;:1bf8
	move.w	d0, _RATX(a6)
	move.w	d1, _RATY(a6)
	move.w	d0, 40(a6)
	move.w	d1, 42(a6)
	addq.w	#8, 40(a6)
	addq.w	#6, 42(a6)
	lea	qkugel(a5), a0
	jsr	3/collide_kg(pc)
	beq.s	0x1c46
	clr.l	_KX(a0)
;:1c1c
	;rat dying sound
killrat	move.w		d0,   -(sp)
	move.w	#SND_RAT2,	d0
	jsr	     1/play_snd(a5)
	move.w	       (sp)+,	d0

	lea	     40(a6),	a0
	jsr	0x3e96(pc)

	clr.l		 -8+_CB(a6)
	movea.l	     22(a6),	a0
	addq.w		#1,  22(a0)
	clr.w			d0
	jsr	0x409c(pc)
	bra	0x1c54

;:1c46
	lea	  qbomb(a5),	a0
	jsr	   3/collide_un(pc)
	cmpa.w	     #NULL,	a0
	bne.s	  .killrat

;:1c54
	tst.w		     44(a6)
	beq.s	0x1ca6
	;
	movea.l	 currpg(a5),	a0
	move.w	  _WINX(a0),	d2
	move.w	  _RATX(a6),	d0
	cmp.w		d0,	d2
	bgt.s	0x1c8c
	addi.w	      #512,	d2
	cmp.w		d0,	d2
	blt.s	0x1c8c
	move.w	  _RATY(a6),	d1
	move.w	  _WINY(a0),	d3
	cmp.w		d1,	d3
	bgt.s	0x1c8c
	addi.w	      #300,	d3
	cmp.w		d1,	d3
	blt.s	0x1c8c
	;onscreen
	move.w	       #60,  44(a6)
	bra.s	0x1ca6
;:1c8c
	;offscreen, (--offc)	
	subq.w		#1,  44(a6)
	bgt.s	0x1ca6
	lea	     40(a6),	a0
	jsr	0x3e96(pc)
	clr.l		 -8+_CB(a6)
	movea.l	     22(a6),	a0
	addq.w		#1,  22(a0)
;:1ca6
	rts

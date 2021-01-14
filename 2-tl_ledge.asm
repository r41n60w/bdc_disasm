; vi: syntax=asm68k

; { 2/com_15, 7/proc315 }

;:0ef0			2/proc120()
;Move left to adjacent tile
;	arg A6: (dc_t *)
;	    A2: (map_t *)
;	    D4: tile (off_t)
;	    D0: dc.X (coord_t)
;	    D1:  ".Y (coord_t)

tl_ledge:
	move.w		d4,	d5
	subi.w	       #18,	d5
	move.w	 _RX(a2,d5.w),	d6
	addq.w		#1,	d6
	cmp.w	 _LX(a2,d4.w),	d6
	beq	leu_1
	jmp	      2/proc131(pc)

leu_1	cmpi.w	#6,    _TL(a2,d5.w)
	bne.s	leu_3
	move.w	 _LX(a2,d4.w),	d0

leu_2	move.w		d0,  _X(a6)
	clr.w	          _JOYX(a6)
	rts	

leu_3	cmpi.w	#27, _TL(a2,d5.w)
	bne.s	leu_4

	lea	data66, a3   ;[20]
	move.w	     #12,   _ST(a6)
	move.l	      a3, _VANI(a6)
	subi.w #(15<<8), health(a5)
	move.w	 _LX(a2,d4.w),	d0
	subq.w		#3,	d0
	cmpi.w	  #41, _TL(a2,d4.w)
	bne	leu_2
	pea	      7/proc312(a5)
	bra	leu_2
	
leu_4	bra	  2/tl_dispatch(pc)

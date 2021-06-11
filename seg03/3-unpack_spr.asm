; vi: syntax=asm68k

param4    VEQU  8
param3    VEQU  10
param2    VEQU  12
param1    VEQU  16
         VEND    

;void unpack_spr(const char *packed,
;		 char	    *bitmap,
;		 short	    packlen,
;		 short	     bitlen)

;:3c9c			3/proc197
unpack_spr:
	link		a6,	#0
	movem.l	  d2-d5/a2,   -(sp)
	move.w	 bitlen(a6),	d5
	move.w	packlen(a6),	d0
	movea.l	 bitmap(a6),	a1
	movea.l	 packed(a6),	a0
	
	;zero out bitmap data
	asr		#1,	d5
	movea.l		a1,	a2
initlp	clr.w	       (a2)+
	dbra		d5, .initlp

	move.w		#7,	d1
	;get a (packed) byte
getpack	move.b	       (a0)+,	d2
	bpl.s	  .opblit

	andi.w	#%01111111,	d2
	bne.s	  .getpak2
	;$80 -> OP_EOF/end of file
opeof	bra	  .endunpk

getpak2	btst		#6,	d2
	beq.s	  .opwhite
	
	;11xxxxxx -> OP_BLACK
	;set (7+x) bits 
opblack	andi.w	#%00111111,	d2
	addq		#7,	d2
	sub.w		d1,	d2
	subq		#1,	d2
	;set remaining bits	
	;$ff >> (7-X) // ..00000001
	moveq		#$ff,	d3
	moveq		#7,	d4
	sub.w		d1,	d4
	lsr.b		d4,	d3
	or.b		d3,    (a1)+
	;set D2 black px: xxx000
	move		d2,	d3
	asr		#3,	d3
	bra.s	  .blaklp2
blacklp	move.b	      #$ff,    (a1)+
blaklp2	dbra		d3, .blacklp
	;set unaligned px 11111110
	move.w		#7,	d1
	andi.w	#%00000111,	d2
	move.w	    #$ff00,	d3
	asr		d2,	d3
	or.b		d3,    (a1)
	;compute new X (7-000xxx)
	sub.w		d2,	d1
	bra	  .getpack

	;10xxxxxx -> OP_WHITE
	;clear (7+x) bits 
opwhite	andi.w	#%00111111,	d2
	;D2 = (D2 + 7 - Xpx - 1)
	addq		#7,	d2
	sub.w		d1,	d2
	subq		#1,	d2
	;skip remaining bits
	addq		#1,	a1
	;skip D2 white px xxx000
	move.w		d2,	d3
	asr		#3,	d3
	adda.w		d3,	a1
	;compute new X px (7-000xxx)
	move.w		#7,	d1
	andi.w	#%00000111,	d2
	sub.w		d2,	d1
	bra	  .getpack

	;0xxxxxxx -> OP_BLIT
	;blit 7px at curr pos
opblit	andi.w	#%01111111,	d2
	move.w		d1,	d3
	addq		#2,	d3
	;[76543210 76543210]
	lsl.w		d3,	d2
	or.b		d2,   1(a1)
	lsr.w		#8,	d2
	or.b		d2,   0(a1)
	;(++Xpx mod 8)
	subq		#7,	d1
	bge.s	  .wrapx
	addq		#8,	d1
	addq		#1,	a1
wrapx	bra	  .getpack

endunpk	movem.l	   (sp)+, d2-d5/a2
	unlk			a6
	pop.l			a0
	adda.w	       #12,	sp
	jmp	       (a0)

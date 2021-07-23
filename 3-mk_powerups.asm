; vi: syntax=asm68k

;0(A6).L  (map_t *)	.map
;4(A6).w  (int16_t)	.npow
;6(A6)[]  (tloff_t)	.powt[len];

;	(struct powgen_t)
;0(A2).w  (uint16_t)	.len
;2(A2)[]  (struct powg_t) .powg[len];

struct	{
	tloff_t		pow;
	chance_t	pr;
	
}			pgtb[len];

;maptile_t.F0  (ypos_t).tpwy  powerup.Y
;maptile_t.F1 (jtoff_t).ttyp  powerup type


;:36c2		3/proc192()
;Create powerups (at random)
;  arg A0(map_t *):	map
;  arg A1(powg_t *):  powerup info
mk_powerups:
	movea.l		a0,	a4
	movea.l		a1,	a2
	move.w	   _LEN(a2),	d5
	move.w		#4,	d0
	mulu.w		d5,	d0
	addi.l	       #14,	d0
	;D0/(A1->len*4+14) obj size
	_NewPtr		  ,  CLEAR
	lea	3/cb_powerups,	a1
	move.l	     a1,    _CB(a0)
mkpow2	move.l	     a4, 8+_MAP(a0)
	subq.w	     #1,	d5
	clr.w		8+_NPOW(a0)
	lea	8+_POWV(a0),	a3
	addq.w		#2,	a2

	;generate all powerups
genpwlp	move.w	       (a2)+,	d3
	move.w	       (a2)+,	d6
	;D3/(tloff_t)  D6/(chance_t) %
	jsr	       3/random(pc)	
	andi.w	    #$7fff,	d0
	cmp.w		d0,	d6
	blt.s	  .nopow
	;(generate pwrup) D3/(tloff_t)
genpow	move.w	    d3,        (a3)+
	move.w	#O_POW,  _TL(a4,d3.w)
	addq.w	    #1, 8+_NPOW(a0)
	bra.s	  .nxgenpw
	;(no powerup) -> floor tile
nopow	move.w	    #F_, _TL(a4,d3.w)
nxgenpw	dbra	     d5, .genpwlp

mkpow3	move.l	qobj(a5), _NEXT(a0)
	move.l	     a0,   qobj(a5)
	rts	


;:3720			3/data152[]
;Powerup object func
;  arg A6(powerup_t *):  obj
cb_powerups:
	;no powerups?
	move.w	  _NPOW(a6),	d7
	beq	  .delpow
pow2	movea.l	   _MAP(a6),	a2
	lea	  _POWV(a6),	a4
	;D6/pwrup counter
	clr.w			d6
	movea.l	 currpg(a5),	a0
	bra	  .nxpow

	;D3/(tloff_t) get pwrup tile
powlp	move.w	       (a4)+,	d3
	cmpi.w	 #O_POW, _TL(a2,d3.w)
	;[F_]    -> pwrup taken
	bne	  .nxpow
	;[O_POW] -> pwrup exists
pwexist	move.w	  _L(a2,d3.w),	d0
	move.w	 _F0(a2,d3.w),	d1
	tst.b		scrollf(a5)
	beq.s	  .dispatc
	;(scroll level) onscreen?
ledge	move.w	  _WINX(a0),	d4
	subi.w	       #40,	d4
	cmp.w		d4,	d0
	blt	  .pwoffsc
redge	addi.w	  #(512+40),	d4
	cmp.w		d4,	d0
	bgt	  .pwoffsc
uedge	move.w	  _WINY(a0),	d5
	subi.w	       #40,	d5
	cmp.w		d5,	d1
	blt	  .pwoffsc
dedge	addi.w	  #(270+40),	d5
	cmp.w		d5,	d1
	bgt	  .pwoffsc
	;dispatch by D4/pwrup type
dispatc	move.w	 _F1(a2,d3.w),	d4
	jmp		  powjt(d4.w)
powjt:			     ;:378a
	jmp	.powrock   ;+0:37b2
	jmp	.powelix   ;+4:37c4
	jmp	.powbomb   ;+8:37d8
	jmp	.powgas   ;+12:37ea
	jmp	.powfrui  ;+16:37fa
	jmp	.powgoan  ;+20:380c
	jmp	.powpois  ;+24:381e
	jmp	.powobj   ;+28:3830
	jmp	.powkey1  ;+32:3842
	jmp	.powkey5  ;+36:3584


	;[rock bag] PWRUP1.0 (+12,+28) 
powrock	clr.w			d2 ;37b2
	movea.l	160*4+spr(a5),	a1
	addi.w	       #12,	d0
	addi.w	       #28,	d1
	bra	  .bltpow
	;[elixir]   PWRUP1.1 
powelix	move.w		#1,	d2 ;37c4
	movea.l	160*4+spr(a5),	a1
	addi.w	       #12,	d0
	addi.w	       #28,	d1
	bra	  .bltpow
	;[bomb]     PWRUP1.2
powbomb	movea.l	160*4+spr(a5),	a1 ;37d8
	move.w		#2,	d2
	addi.w	       #12,	d0
	addi.w	       #28,	d1
	bra.s	  .bltpow

	;[gas can]  PWRUP2.0 (+12,+23) 
powgas	movea.l	191*4+spr(a5),	a1 ;37ea
	clr.w			d2
	addi.w	       #12,	d0
	addi.w	       #23,	d1
	bra.s	  .bltpow
	;[fruit]    PWRUP2.1
powfrui	movea.l	191*4+spr(a5),	a1 ;37fa
	move.w		#1,	d2
	addi.w	       #12,	d0
	addi.w	       #23,	d1
	bra.s	  .bltpow
	;[ante potion] PWRUP2.2
powgoan	movea.l	191*4+spr(a5),	a1 ;380c
	move.w		#2,	d2
	addi.w	       #12,	d0
	addi.w	       #23,	d1
	bra.s	  .bltpow
	;[poison]   PWRUP2.3
powpois	movea.l	191*4+spr(a5),	a1 ;381e
	move.w		#3,	d2
	addi.w	       #12,	d0
	addi.w	       #23,	d1
	bra.s	  .bltpow

	;[misc obj] PWRUP2.4 (+12,-11)
powobj	movea.l	191*4+spr(a5),	a1 ;3830
	move.w		#4,	d2
	addi.w	       #12,	d0
	addi.w	      #-11,	d1
	bra.s	  .bltpow
	;[key]      PWRUP2.6
powkey1	movea.l	191*4+spr(a5),	a1 ;3842
	move.w		#6,	d2
	addi.w	       #12,	d0
	addi.w	      #-11,	d1
	bra.s	  .bltpow
	;[5x keys]  PWRUP2.5
powkey5	movea.l	191*4+spr(a5),	a1 ;3854
	move.w		#5,	d2
	addi.w	       #12,	d0
	addi.w	      #-11,	d1
	nop
	;#260/SPR_PWRUP1<.3> 10x12    px
	;#291/SPR_PWRUP2<.7> 16x14[17]px
	;blit powerup
bltpow	jsr	     3/blit_spr(pc)
	;(++count)  next pwrup
pwoffsc	addq.w		#1,	d6
nxpow	dbra		d7, .powlp 
	
pow3	tst.w			d6
	beq.s	  .delpow
	;1+ powerups
powdone	bra	  .endpow	
	;no powerups -> delete obj
delpow	clr.l		 -8+_CB(a6)
	bra.s	  .powdone
endpow	rts

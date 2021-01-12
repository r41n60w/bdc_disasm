; vi: syntax=asm68k

; { 2/com_17     2/com_18 }  

;:14ec			2/com_18()
;#LADDON (on ladder) state handler
;	arg A6:	  dc_t ptr
;	    A2:   level (map_t *)
;	    D4.w: U_LDD tile (off_t)
;	    D0.w: dc.X (coord_t)
;	    D1.w:  ".Y (coord_t)

st_laddon:
	move	_FR(a6),d2
	;D5/L_LDD tile offset
	move	_VLOW(a6),d5
	;#102/SPR_LADD <.2> 32x48px
	movea.l	_SPRV(a6),a4
	movea.l	2*4(a4),a1
ladd2	tst	_JOYY(a6)
	bne.s	  .manualc
	tst	_VAUT(a6)
	bne.s	  .autoc
	;no [auto]climb -> mute sound
noclimb	push	d0
	move	#SND_LADD,d0
	jsr	1/mute_snd(a5)
	pop	d0
	clr	_VSND(a6)
	bra	  .blitldd

	;auto climb (--snd_ivl)
autoc	subq	#1,_VSND(a6)
	bgt.s	  .auto2
	;timeout -> climbing sound
snd	push	d0
	move	#SND_CLIMB,d0
	jsr	1/play_snd(a5)
	pop	d0
	move	#8,_VSND(a6)
	;(nonzero) auto veloc?
auto2	tst	_VAUT(a6)
	blt.s	  .ascend
	bgt.s	  .descend

	;manual climb/descend
manualc	clr	_VAUT(a6)
	subq	#1,_VSND(a6)
	bgt.s	  .manual2
snd2	push	d0
	move	#SND_LADD,d0
	jsr	1/play_snd(a5)
	pop	d0
	move	#8,_VSND(a6)
manual2	tst	_JOYY(a6)
	blt.s	  .ascend

	;climb DOWN
descend	addi	#10,d1
	move	_F3(a2,d4.w),d3
	cmp.w	_Y(a2,d3.w),d1
	blt.s	  .nextfr
	;reached bottom of ladder
hitbtm	move	_Y(a2,d3.w),d1
	move	d1,_Y(a6)
	cmpi	#L_LDDS, _TL(a2,d5.w)
	beq.s	  .south
	;stand at its base -> #LADD
stladd	move	#LADD, _ST(a6)
	move	d5,_TLP(a6)
	move	d5,d4
	move	d3,_RWP(a6)
	clr	_VAUT(a6)
	bra	2/st_ladd(pc)

	;#L_LDDS: exit at scrn bottom
south	addi	#18,d5
	jmp	2/exit_rm(pc)
	;(++frame)
nextfr	addq	#1,d2
	cmp.w	_NFR(a1),d2
	blt.s	  .blitldd
wrap	clr	d2
	bra.s	  .blitldd

	;climb UP
ascend	subi	#10,d1
	move	_F2(a2,d5.w),d3
	move	_Y(a2,d3.w),d6
	addi	#40,d6
	cmp.w	d6,d1
	bgt.s	  .prevfr
	;reached ladder top -> #LADDTU
hittop	cmpi	#U_LDDN, _TL(a2,d4.w)
	beq.s	  .north
laddtu	move	#LADDTU, _ST(a6)
	clr	_FR(a6)
	addi	#10,d1
	move	d6,d1
	move	d1,_Y(a6)
	move	d4,_TLP(a6)
	move	d3,_RWP(a6)
	clr	_VAUT(a6)
	bra	2/st_laddtu(pc)

	;#U_LDDN: exit at scrn top
north	move	d4,d5
	addi	#18,d5
	jmp	2/exit_rm(pc)

prevfr	subq	#1,d2
	bge.s	  .blitldd
wrap2	move	_NFR(a1),d2
	subq	#1,d2
	nop	
	;blit SPR_LADD <.2>
blitldd	movea.l	currpg(a5),a0
	move	d2,_FR(a6)
	move	d1,_Y(a6)
	jsr	3/blit_spr(a5)
endldon	jmp	2/dg_dispatch(pc)
	;RTS

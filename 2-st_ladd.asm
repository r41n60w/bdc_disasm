; vi: syntax=asm68k

; { 2/com_17     2/com_18     2/com_35 } 

;:1612			2/com_18()

st_ladd:
	cmpi.w  #U_LDDO, _TL(a2,d4.W)
	bne.s	  .ladd2
orb	move	#GETORB, _ST(a6)
	clr	_VLOW(a6)
	jmp	com_35

ladd2	tst.w	_VAUT(a6)
	bne.s	  .climb
	btst	#LOW, _FLG(a6)
	bne.s	  .still
	tst	_JOYY(a6)
	bne.s	  .climb
	;(crouch || !climb)
still   jmp	2/st_default(pc)

climb	bpl.s     .descend
	;[auto]/climb UP (-dY)
ascend	move	#U_LDD, d3
	cmp.w	_TL(a2,d4.w),d3
	bne.s	  .ascend2
	;already at ladder top
attop	jmp	2/st_default(pc)

ascend2	cmpi.w	#L_LDDS, _TL(a2,d4.W)
	beq.s	  .laddon
	clr	_VAUT(a6)
	;at #L_LDD[s] (bottom)
laddon	move.w  #LADDON, _ST(A6)
	move	d4, _VLOW(a6)
	move	_LX(a2,d4.w),d0
	;get (U_LDD->tlp)
	move	_F0(a2,d4.w),d4
	move	d4, _TLP(a6)
	move	d0, _X(a6)
	addq	#1, _X(a6)
	clr	_FR(a6)
	clr	_VSND(a6)
	bra	2/st_laddon(pc)

	;[auto]/climb DOWN (+dY)
descend	move.w  #L_LDD, d3
	cmp.w	_TL(a2,d4.w),d3
	bne.s	  .descen2
	;already @bottom
atbtm	jmp	2/st_default(pc)

descen2	cmpi.w	#U_LDDN, _TL(a2,d4.W)
	beq.s	  .laddtd
	;at #U_LDD (ladder top)
	clr	_VAUT(a6)
laddtd	move.w	#LADDTD, _ST(A6)
	move	d4, _TLP(a6)
	;get (#L_LDD->tlp)
	move	_F1(a2,d4.w), _VLOW(a6)
	move	_LX(a2,d4.w), d0
	move	d0, _X(a6)
	addq	#1, _X(a6)
	move	#3, _FR(a6)
	bra	2/st_laddtd(pc)

; vi: syntax=asm68k

;[SW_HOOK] maptile_t:
;.f0(frame_t):	.tfr	switch frame #
;.f1(uint16_t):	.tbit	wizswf bit #
;.f2(xpos_t):	.tswx	switch.X
;.f3(ypos_t):	.tswy	     ".Y
;.f4(xoff_t):	.tdir	{LEFT|RIGHT}
;(!.f5) 	._UNUSED


;:3880			3/proc193()
;Create pendulum switch (<DUNJ>)
;  arg A0(maptile_t *):  SW_HOOK tile
mk_hooksw:
	movea.l		a0,	a4
	moveq	       #12,	d0
	lea	3/cb_hooksw,	a1
	move.l	      a1,   _CB(a0)
	move.l	      a4, _SWTL(a0)
	;switch initially on -> [.0]
	clr.w		    _F0(a4)
	clr.w		 wizswf(a5)
	move.l	qobj(a5), _NEXT(a0)
	move.l	     a0,   qobj(a5)
	rts	


;38a4			3/data153[]
;Pendulum switch obj func
;  [ triggered from state #HOOKSW ]
;  arg A6(maptile_t **):  obj
cb_hooksw:
	movea.l	  _SWTL(a6),	a4
	;A4/(maptile_t *)  get pos
	move.w	    _F2(a4),	d0
	move.w	    _F3(a4),	d1
	movea.l	 currpg(a5),	a0
hooksw2	tst.w	    _F4(a4)
	bgt.s	  .rhooksw
	;#278/SPR_LHOOKSW<.5> 20x34px
lhooksw	movea.l	178*3+spr(a5),	a1
	bra.s	  .hooksw3
	;#343/SPR_RHOOKSW<.5> 32x34px
rhooksw	movea.l	243*3+spr(a5),	a1
	;D2/(frame_t)
hooksw3	move.w	    _F0(a4),	d2
	bgt.s	  .turnsw
	blt.s	  .bltend
	;[.0]: blit initial pos (up)
bltinit	clr.w			d2
	jsr	     3/blit_spr(pc)
	bra.s	  .endhook
	;-1/END: blit down pos
bltend	move.w		#4,	d2
	jsr	     3/blit_spr(pc)
	bra.s	  .endhook
	;[.1]-[.4]: turn switch
turnsw	addq.w		#1, _F0(a4)
	subq.w		#1,	d2
	bne.s	  .hooksw4
	;[.0]: #29/switch sound
swsnd	move.w		d0,   -(sp)
	move.w	#SND_SWITCH,	d0
	jsr	     1/play_snd(a5)
	move.w	       (sp)+,	d0
hooksw4	cmpi.w		#4,	d2
	ble.s	  .bltsw
	cmpi.w		#9,	d2
	ble.s	  .downfr
	;[.10]+ -> [END] frame
endfr	move.w	      #END, _F0(a4)
	;set #0/hook switch bit
setflag	move.w	    _F1(a4),	d7
	move.w	 wizswf(a5),	d6
	bset.b	     d7,	d6
	move.w	     d6, wizswf(a5)
	;[.5]-[.9]: down pos
downfr	move.w		#4,	d2
	;blit hook switch
bltsw	jsr	     3/blit_spr(pc)
endhook	rts

; vi: syntax=asm68k

; 2/proc116    2/com_15     2/com_16    
; 2/com_18     2/com_19     2/com_23    
; 2/proc133    2/com_30     2/com_32    
; 6/proc305    6/proc306    7/proc311   
; 8/proc315    8/proc318    8/proc321   
; 8/proc322    8/proc323    8/proc324   
; 9/proc335    11/   98     11/proc345   
; 12/proc353   13/proc356   15/proc362   
; 15/proc363   

;:05f6			2/proc117()
;Check for/deal damage, 
;(On death) branch depending on state

dg_dispatch:
	clr.b   	 damaged(a5) ;-$606
	tst.w		  _ELXC(a6)
	ble.s	  .dgfoe
	;elixir in effect (--elxc)
	subq.w	      #1, _ELXC(a6)

dgfoe	lea	  foev(a5), a0 ;-$5f4 
	jsr	3/collide_fo(a5) ;p210:3f2c
	cmpa.w		#0,	a0
	beq	  .dgfly
	;A0 valid ptr
hitfoe	move.w		#1,  22(a0)
	move.w	     14(a0),	d0
	move.w	     16(a0),	d1
	move.w	     12(a0),	d7

foe2	cmpi.w		#5,	d7
	bne.s	  .foe3
	;#5: 
	move.w	     _X(a6),	d2
	cmpi.w	      #312,	d2
	blt	  .death
	cmpi.w	      #375,	d2
	bgt	  .death
	move.w	     _Y(a6),	d2
	cmpi.w	      #240,	d2
	bgt	  .death
	;xy(312-375, 0-240) -> die
	clr.w		     48(a6)
	move.l		a0,  50(a6)
	move.w	       #61, _ST(a6)
	clr.w   	 health(a5)
	bra	  .retdg

foe3	cmpi.w		#6,	d7
	bne.s	  .foe4
	;#6/snake: lose 8% health
	subi.w	  #$800, health(a5)
	move.b	    #-1, damaged(a5)
	bra	  .dgkugel

foe4	cmpi.w		#3,	d7
	bne.s	  .foe5
	;#3: electrocute
	jmp	      2/proc129(pc) ;:0f4a
foe5	cmpi.w		#9,	d7
	bne.s	  .foelse
	;#9: electrocute
	jmp           2/proc129(pc)
	;!#[3569] -> die
foelse	bra	  .death


	;(A0 == NULL)
dgfly	jsr  3/collide_fly(a5) ;p209:3ec6
	beq.s	  .dgkugel
hitfly	cmpa.l	    #$04000000, a0
	bne.s	  .fly2
	;(A0 == $04000000) vulture
vulture	jmp	        2/com_7(pc)
	
fly2	cmpa.l	#$05000000, a0
	bne.s	  .flyelse
	;(A0 == $05000000) bat
bat	tst.w		  _ELXC(a6)
	bgt.s	  .dgkugel
	tst.w	          elixirs(a5)
	ble.s	  .batbite
	;elixirs remain -> use one
batelix	push		d0
	move.w	       #12,	d0
	jsr	     1/play_snd(a5)
	pop			d0
	subq.w	      #1, elixirs(a5)
	move.w	     #20, _ELXC(a6)
	bra	  .dgkugel
	;no elixirs -> lose 8% health
batbite	subi.w	  #$800, health(a5)
	move.b	    #-1, damaged(a5)
	bra	  .dgkugel
	;else -> die
flyelse	bra	  .death


dgkugel	lea	prjcv(a5),	a0 ;-$ec
	jsr	      3/collide_kg(a5) ;p206:3dea
	beq.s	  .dgrat
	;A0 valid ptr
hitkg	clr.l		     _X(a0)
	cmpi.w	 #BKCH, curr_rm(a5)
	bne.s	  .kugel2
	;<BKCH> #358/SPR_BEER<.8> 16x14px
	movea.l	glob59(a5),	a1 ;-$808
	cmpa.l	 _SPR(a0),	a1
	bne.s	  .kugel2
	;hit beer glass, lose 30% health
beer	subi.w	 #$1e00, health(a5)
	bgt.s	  .beer2
	;0% health -> die
	clr.w	         health(a5)
	bra	  .death
	;'ouch!' sound
beer2	push		d0
	move.w	       #23,	d0
	jsr	1/play_snd(a5)
	pop			d0
	bra.s	  .dgrat

	;!<BKCH>/!SPR_BEER
kugel2	cmpi.w	 #CATC, curr_rm(a5)
	bne	  .death
	;<CATC>
catckg	jmp	        2/com_7(pc)


	;rats near dc
dgrat	cmpi.w	    #1, xrats(a5) ;-$126
	blt	  .dgsnd
hitrat	tst.w	          _ELXC(a6)
	bgt	  .dgsnd
	tst.w	          elixirs(a5)
	ble.s	  .ratbite
ratelix	push		d0
	move.w	       #12,	d0
	jsr	     1/play_snd(a5)
	pop			d0
	subq.w	      #1, elixirs(a5)
	move.w	     #20, _ELXC(a6)
	bra	  .retdg
ratbite	subi.w	  #$800, health(a5)
	move.b	    #-1, damaged(a5) ;-$606
	bra	  .dgsnd

dgsnd	tst.b	         damaged(a5)
	beq.s	  .unhurt
hurt	subq.b	     #1, hurtc(a5) ;-$605
	bgt.s	  .enddg
	;(--hurtc): wince, at intervals
hurt2	push		d0
	move.w	       #23,	d0
	jsr	     1/play_snd(a5)
	pop			d0
	move.b	    #10, hurtc(a5)
	bra.s	  .enddg
unhurt	clr.b	         hurtc(a5)

enddg	tst.w	         health(a5)
	bgt	  .retdg
	;health empty, die (D0 zero)
ofwound	clr.w			d0
	bra	  .death


	;death dispatch, by state 
	;'oooh!' sound
death	push		d0
	move.w	       #10,	d0
	jsr	     1/play_snd(a5)
	pop			d0
death2	clr.w	         health(a5)
	move.w	    _ST(a6),	d7
	asl.w		#2,	d7
	jmp	      2/deathjt(d7.w)

deathjt:		;data90[]:07be
;st(#0)
	jmp	  .dydefau
	jmp	  .dyladd
	jmp	  .dydefau
	jmp	  .dydefau
	jmp	  .dyjump

	jmp	  .dyhold
	jmp	  .dydefau
	jmp	  .dystair
	jmp	  .dydefau
	jmp	  .dyhold
;st(#10)
	jmp	  .dyhold
	jmp	  .dyhold
	jmp	  .dydizzy
	jmp	  .dydefau
	jmp	  .dydefau
	jmp	  .dydefau
	jmp	  .dydefau
	jmp	  .dydefau
	jmp	  .dyhold
	jmp	  .dyhold
;st(#20)
	jmp	  .dydefau
	jmp	  .dydefau
	jmp	  .dydefau
	jmp	  .dydefau
	jmp	  .dydefau
	jmp	  .dydefau
	jmp	  .dydefau
	jmp	  .dydefau
	jmp	  .dydefau
	jmp	  .dydefau
;st(#30)
	jmp	  .dydefau
	jmp	  .dydefau
	jmp	  .dydefau
	jmp	  .dydefau
	jmp	  .dydefau
	jmp	  .dydefau
	jmp	  .dydefau
	jmp	  .dydefau
	jmp	  .dydefau
	jmp	  .dydefau
;st(#40)
	jmp	  .dydefau
	jmp	  .dydefau
	jmp	  .dydefau
	jmp	  .dydefau
	jmp	  .dydefau
	jmp	  .dydefau
	jmp	  .dyhold
	jmp	  .dyhold
	jmp	  .dydefau
	jmp	  .dydefau
;st(#50)
	jmp	  .retdg
	jmp	  .dydefau
	jmp	  .dydefau
	jmp	  .dydefau
	jmp	  .dymace
	jmp	  .dydefau
	jmp	  .dyb212
	jmp	  .dydefau
	jmp	  .dydefau
	jmp	  .dydefau
;st(#60)
	jmp	  .dydefau
	jmp	  .retdg
	jmp	  .dyhold
	jmp	  .dydefau
	jmp	  .dyhold
	jmp	  .dyhold
	jmp	  .dydefau
	jmp	  .dydefau
	jmp	  .dydefau
	jmp	  .dyst69
;st(#70)
	jmp	  .dydefau
	jmp	  .retdg

	;#DEFAULT death
dydefau	move.w	 _RWP(a6),	d7
	move.w	_Y(a2,d7.w), _Y(a6)
	;#DIZZY death
dydizzy	move.w	  #DEATH,   _ST(a6)
	move.w	     #-1,    _VC(a6) ;52
	tst.w		  _FACE(a6)
	blt.s	  .lstand
	;facing RIGHT: D0.w/collider.dx
rface	tst.w			d0
	blt.s	  .rstandl
	;+dX RIGHT: fall forward
rforwar	lea	2/rdier_ani, a3 ;:05a6[8]
	bra.s	  .dyani
	;-dX LEFT: fall back
rback	lea	2/rdiel_ani, a3 ;:05be[20]
	bra.s	  .dyani
	;facing LEFT
lface	tst.w		d0
	bgt.s	  .lback
lforwar	lea	2/ldiel_ani, a3 ;:058e[8]
	bra.s	  .dyani
lback	lea	2/ldier_ani, a3 ;:05d2[20]
dyani	move.l		a3, _VANI(a6)
	bra	  .retdg


	;#XCABLE death
dyxcabl	subi.w	       #17,  _Y(a6)
	move.w	    #DEATH, _ST(a6)
	move.w	       #-1, _VC(a6)
	cmpi.w	       #+16,  48(a6)
	bne.s	  .xcable2
	;fn #4
dropdow	addi.w	       #17,  _Y(a6)
	lea	2/fdie2_ani, a3 ;d82:057a
	bra.s	  .ani2

xcable2	tst.w		  _FACE(a6)
	blt.s	  .ldrop
	;facing RIGHT -> trip over
rdrop	lea	2/rtrip_ani, a3 ;d86:05ae
	bra.s	  .ani2
	;facing LEFT
ldrop	lea	2/ltrip_ani, a3 ;d84:0596
ani2	move.l		a3, _VANI(a6)
	bra	  .retdg
	

	;#STAIRON death
dystair	jmp	com_6


	;#MACE death
dymace	cmpi.w	       #20,  52(a6)
	beq	  .dydefau
	cmpi.w		#0,  52(a6)
	beq	  .dydefau
mace2	movem.l	  d0-d2/a1,   -(sp)
	move.w	     _X(a6),	d0
	move.w	     _Y(a6),	d1
	subq.w		#2,	d1
	moveq	       #48,	d5
	jsr	      6/proc305(a5) ;:090c

mace3	tst.w		  _FACE(a6)
	bgt.s	  .rmace
	;facing LEFT: (+30,+25) [.2]
lmace	addi.w	       #30,	d0
	move.w	        #2,	d2
	bra.s	  .mace4
	;facing RIGHT: (-30,+25) [.0]
rmace	subi.w	       #30,	d0
	clr.w			d2
mace4	addi.w	       #25,	d1
	jsr	      6/proc307(a5) ;:0f86
endmace	movem.l	   (sp)+, d0-d2/a1
	bra	  .dydefau


	;#B212 (chopper) death
dyb212	move.w	    #10*4, _VFN(a6)
	clr.w		    _V1(a6)
	bra	  .retdg


	;#LADDON death
dyladd	move.w	   _TLP(a6),	d3
	move.w _F3(a2,d3.w), _RWP(a6)
	bra	  .dyhold
	;#LANDJMP, SWING, [H]POLE..
dyhold	move.w	     _X(a6),	d0
	move.w	     _Y(a6),	d1
	jsr	2/proc140(pc) ;:23d6
	jmp	2/proc137(pc) ;:1cc0


	;#MIDJMP death
dyjump	move.w	     _X(a6),	d0
	move.w	     _Y(a6),	d1
	move.w	   _RWP(a6),	d3
	;while(dc.y > map[rwp++].y);
fallp	cmp.w	  _Y(a2,d3.w),	d1
	ble.s	  .ground
	addq.w		#4,	d3
	bra	  .fallp
	;fallen -> ground (map) row
ground	move.w	       d3, _RWP(a6)
	jmp	2/proc137(pc) ;:1cc0


retdg	rts	

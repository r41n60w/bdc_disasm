; vi: syntax=asm68k

;{ 2/proc109    2/proc113    2/proc134 }

;:20ce		2/proc132()
;Moving platform (PL_STON|_BELT) routine
;	arg A6: (dc_t *)
;	 arg D0.w: (xpos_t) dc.X pos
;	 arg D1.w: (ypos_t) dc.Y 
;	arg A2: (map_t *)
;	 arg D4.w: (tloff_t) curr tile

mov_platf:
	;#PL_STON tile?
	cmpi.w #PL_STON, _TL(a2,d4.w)
	bne.s	  .platf2
tostone	jmp	  .plston
	;#PL_BELT tile?
platf2	cmpi.w #PL_BELT, _TL(a2,d4.w)
	bne.s	  .endplat
tobelt	jmp	  .plbelt
	;neither -> not moving
endplat	rts	

;:20e8		[unnamed]		
;#STONE (stepping stone) state handler
;	arg A6: (dc_t *)
;	 arg D0.w: (xpos_t) dc.X pos
;	 arg D1.w: (ypos_t) dc.Y 
;	arg A2: (map_t *)
;	 arg D4.w: (tloff_t) curr tile

st_stone:
	pea	   2/st_default(pc)
	;from 2/mov_platf(), above
	;move horizontally
plston	add.w	 _F3(a2,d4.w),	d0
	move.w		d0,  _X(a6)
	;-> st_default() OR calling fn
	rts	

	; " 2/mov_platf() "
plbelt	add.w	 _F0(a2,d4.w),	d0
	move.w		d0,  _X(a6)
	;check belt edges
	cmp.w	 _LX(a2,d4.w),	d0
	blt.s	  .offbelt
	cmp.w	 _RX(a2,d4.w),	d0
	bgt.s	  .offbelt
onbelt	rts	
	;off edge of conveyor belt
offbelt	cmpi.w	    #DEATH, _ST(a6)
	bne.s	  .offbel2
offdead	rts	
	;not dead -> pop stack
offbel2	tst.l	               (sp)+
	cmpi.w	   #ANORON, _ST(a6)
	bne.s	  .offbel3
	;#ANORON: stop sound #99
anoron	move.w		d0,   -(sp)
	move.w	 #SND_ANOR,	d0
	jsr	     1/mute_snd(a5)
	move.w	       (sp)+,	d0
	; -> #WHOA (falling)
offbel3	jsr	      2/ch_whoa(pc)
	jmp	      2/st_whoa(pc)
	;[RTS]

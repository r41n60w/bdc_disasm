
; vi: syntax=asm68k

DC_VST4	equ	+52    ;(state4_t).W

DUEL		equ	53

SND_DEAD	equ	10

DLNORM	equ	+0
DLDIZZY	equ	+4

;$602(A5) -> 07/proc311():07c4
;#DUEL state handler
;   arg	A6(Hero *).L:	player obj
;   arg A2(Map *).L:	level data
;   arg D4(tile_t).W:	curr tile
;   arg	D0(px_t).W:	player.X
;   arg	D1(py_t).W:	player.Y
;no ret

st_duel:
	move.w	DC_VST4(a6),	d7
	jmp	 dueljt(d7.W)
			  ;[2]:07cc
dueljt	jmp	  .dlnorm	;+0
	jmp	  .dldizzy	;+4


	;[+0/DLNORM]	      ;:07d4
dlnorm	btst.b	   #LOW, DC_FLG(a6)
	bne.s	  .crouch
	;standing
stand	move.w	      #1, 6(a2,d4.W)
	bra.s	  .dlnorm2
	;crouching
crouch	move.w	      #2, 6(a2,d4.w)

dlnorm2	cmpi.w	      #1, 8(a2,d4.W)
	bne.s	  .todefau
	;hit by henchman
henchx	clr.w		  8(a2,d4.W)
	push.w			d0
	move.w	#SND_DEAD,	d0
	jsr	    01/play_snd(a5)
	pop.w			d0
	;-20% health
	subi.w	#(20<<8),health(a5)
	ble	  .duelko
todefau	jmp	  02/st_default(a5)


;{ 2/proc120	2/proc121
;  2/com_28               }   

;$5fa(A5) -> 07/proc312():0810
;[DUEL] dizzy handler

ch_dizzy:
	move.w	 #DUEL,   DC_ST(a6)
	clr.w		  8(a2,d4.W)
	move.w #DLDIZZY,DC_VST4(a6)
	nop	
	;...
	;[+4/DLDIZZY]	      :0822
dldizzy	move.w	      #1, 6(a2,d4.W)
	cmpi.w	      #1, 8(a2,d4.W)
	bne.s	  .todizzy
	;hit by henchman again
henchx2	clr.w		  8(a2,d4.W)
	push.w	      		d0
	move.w	#SND_DEAD,	d0
	jsr	    01/play_snd(a5)
	pop.w			d0
	subi.w	#(20<<8),health(a5)
	ble	  .duelko
	;state remains DUEL
todizzy	jmp	    02/st_dizzy(a5)

	;0% health, KO	     :084e
duelko	clr.w		 health(a5)
	jsr	   02/an_duelko(a5)
	jmp	  02/dy_plummet(a5)
	;-> [DEATH]
data226	rts		     ;085a


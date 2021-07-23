; vi: syntax=asm68k

;{ 3/proc172 }

;:2c24			3/proc174()
;Create (one-shot) screen init
;	no args

mk_initscrn:
	moveq		#8,	d0
  	_NewPtr 	  ,  CLEAR
	lea	3/cb_initscrn,	a1
	move.l	     a1,    _CB(a0)
	move.l	qobj(a5), _NEXT(a0)
	move.l	     a0,   qobj(a5)
	rts	


;:2c3a		3/data141[]
;Init screen, with HUD
;	no args

cb_initscrn:
	jsr	       1/proc78(a5)
	jsr	     3/init_hud(pc)
	;delete obj
	clr.l	         -8+_CB(a6)
	rts

; vi: syntax=asm68k

;:2fee		3/proc189()
;Plant a bomb
;[ caller: st_default()  ]
;  arg D0(xpos_t),  D1(ypos_t)
;  arg A2(map_t *)
;  arg D2(tloff_t), D3(rwoff_t)

mk_bomb:
	move.w		d0,	d6
	move.w		d1,	d7
	move.l	      #202,	d0
	lea	3/cb_bomb,	a1
	move.l	    a1,     _CB(a0)
	move.l	    a2,  8+_MAP(a0)
	;state -> [BBPLANT]
	clr.w		8+_BBST(a0)
	move.w	    d6,  8+_BBX(a0)
	move.w	    d7,  8+_BBY(a0)
	move.w	    d2, 8+_TILE(a0)
	move.w	    d3,  8+_ROW(a0)
	move.l qobj(a5),  _NEXT(a0)
	move.l	    a0,    qobj(a5)
	st.b		planted(a5)
	rts	


;:3028		3/proc190()
;Create (immediate) bomb blast
;  args as -> 3/mk_bomb() above

mk_blast:
	move.w		d0,	d6
	move.w		d1,	d7
	move.l	      #202,	d0
	lea	3/cb_bomb,	aq
	move.l		a1, _CB(a0)
	move.l	    a2,  8+_MAP(a0)
	move.w	#BBDETON, _BBST(a0)
	move.w	    d6,  8+_BBX(a0)
	move.w	    d7,  8+_BBY(a0)
	move.w	    d2, 8+_TILE(a0)
	move.w	    d3,  8+_ROW(a0)
	move.l qobj(a5),  _NEXT(a0)
	move.l	    a0,    qobj(a5)
	st.b		planted(a5)
	rts	

; vi: syntax=asm68k

; { 2/proc117, 2/com_9, 14/proc357 }

;:23d6			2/proc133()
;Find map row immediately below dc
;	arg A6: (dc_t *)
;	    A2: (map_t *)
;	    D1: dc.Y (coord_t)

dc_rowbelow:
	move.w	   _RWP(a6),	d6
;for(r=dc->rwp;map[r].y > dc->y;r--)
abovelp	cmp.w	  _Y(a2,d6.w),	d1
	bge.s	  .belowlp
above	subq.w		#4,	d6
	bra	  .abovelp
belowlp	cmp.w	  _Y(a2,d6.w),	d1
	ble.s	  .setrw
below	addq.w		#4,	d6
	bra	  .belowlp
	;found row
setrw	move.w	       d6, _RWP(a6)
	rts	

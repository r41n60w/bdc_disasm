; vi: syntax=asm68k

;:023f	struct ani5v_t[4];	2/[unnamed]
lceil_ani:
	dc.b	+30,  -6,  -2,   0, NOHS
	dc.b    +19,  -7,  -2,   1, NOHS
	dc.b	  0,  +5,  -2,   2, NOHS
	dc.b      0,   0,   0,TODIZ,NOHS

;:0253	struct ani5v_t[4];	2/[unnamed]
rceil_ani:
	dc.b    -30,  -6,  -3,   0, NOHS
	dc.b	-19,  -7,  -3,   1, NOHS
	dc.b      0,  +5,  -3,   2, NOHS
	dc.b      0,   0,   0,TODIZ,NOHS
;:0267	
	dc.b	  0

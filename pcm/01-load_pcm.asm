; vi: syntax=asm68k

;{ 1/proc107, 3/proc172, 5/proc250, 5/proc260 } 

;:0120				1/proc11()
;(RealSound) Load all (curr level) sounds 
;	arg list(room_t).W:	SFTR res ID
;	A3,A4,D4-D7 preserved

;pascal void 1/load_pcm(room_t list);

;pascal Handle _GetResource(ResType theType, short ID);
;pascal void _DetachResource(Handle theResource);
;pascal OSErr _ResError(void);

pslot		equ (-962) ;val_1.L (PCMSlot *)
nslot1		equ (-958) ;val_2.W (short)
nslot2		equ (-956) ;val_3.W (short)
errnstr		equ (-954) ;val_4 (Str255)
liststr		equ (-698) ;val_5 (Str255)
catstr		equ (-442) ;val_6 (Str255)
htbl		equ (-186) ;val_7 Handle[32]
block3k		equ (-58) ;val_8.L (Ptr)
pcminfo		equ (-52) ;val_9.L (PCMInfo*)
applscr		equ (-48) ;val_10.L (uint32_t)
ppcm 		equ (-44) ;val_11.L (pcm8_t *)
packed		equ (-40) ;val_12.L (pcm4_t *)
pcm4tbl		equ (-36) ;val_13.L (int8_t *)
packlen		equ (-32) ;val_14.L (Size)
unpklen		equ (-28) ;val_15.L (Size)
idx		equ (-14) ;val_16.W (short)
nslot		equ (-12) ;val_17.W (short)
sndid		equ (-10) ;val_18.W (id_t)
sftrh		equ (-6) ;val_19.L (Handle)
hstate		equ (-1) ;val_20.B (int8_t)012
list		equ (+8) 	  ;(room_t).W

;res [SFTR]:#n
_NSND		equ (+0)  ;int16_t [1..32]
_SNDV		equ (+2)  ;id_t[32]

;(struct PCMInfo)
_LOOP		equ (+8)
_SLOT		equ (+32)
;info->slot[32]
 _PCM		equ (+0)
 _TAIL		equ (+4)
 _LPHD		equ (+8)
 _HEAD		equ (+12)
_ID		equ (+544)
_H		equ (+644)
_LOAD		equ (+1044)

ApplScratch	equ	($0a78)

load_pcm:
	link		 a6, #-962
	movem.l	d4-d7/a3-a4,  -(sp)
	;alloc 3KB, unused?
	clr.l		      -(sp)
	push.l		     #3000
	jsr	       1/NewPtr(pc)
	pop.l		block3k(a6)
	;get (struct PCMInfo *)
getinfo	move.l #ApplScratch.l, applscr(a6)
	movea.l	applscr(a6),	a0
	move.l	(a0),   pcminfo(a6)
	;clear handle table[32]
	clr.w			d7
	bra.s	  .nexhand
clrhand	move.w		d7,	d0
	asl.w		#2,	d0
	lea	  htbl(a6),	a0
	moveq		#0,	d1
	move.l		d1, (a0,d0.w)
	addq		#1,	d7
nexhand	moveq	       #31,	d0
	cmp.w		d7,	d0
	bge	  .clrhand
	;get SFTR:#list resource
sftr1	clr.l		      -(sp)
	push.l	1/SFTR	    ;'SFTR'
	push.w		   list(a6)
	_GetResource 		;a9a0
	pop.l		  sftrh(a6)
	bne.s	  .sftr2
	;resource error
reserr	pea	      1/sftrstr(pc) ;'SFTR:'
	;itoa(&liststr, list);
listnum	pea		liststr(a6)
	push.w		   list(a6)
	jsr	       1/proc89(pc)
slash	pea		1/delim	;'/'
	;itoa(&errnstr, _ResError());
errnum	pea		errnstr(a6)
	clr.w		      -(sp)
	_ResError		;a9af
	jsr	       1/proc89(pc)
;strcat(&sftrstr,&liststr,&delim,&errnstr,
;	&catstr, 4);
strcat	pea		 catstr(a6)
	push.w			#4
	jsr	       1/proc69(pc)
	;perror(&catstr) -> [shutdown]
perror	pea		 catstr(a6)
	jsr	       1/proc85(pc)

sftr2	push.l		  sftrh(a6)
	jsr	     1/HNoPurge(pc)
	;get # of slots [0..32]
getnsnd	movea.l	sftrh(a6),	a0
	movea.l	     (a0),	a0
	move.w	_NSND(a0),nslot(a6)
	tst.w		  nslot(a6)
	ble	  .endload
	;A4/(PCMInfo *)	data block
initslt	movea.l	pcminfo(a6),	a4
	move.w	  nslot(a6),	d0
	subq	     #1,	d0
	move.w	     d0, nslot2(a6)

	;for(idx=0; idx < nslot; ++idx)
	clr.w		    idx(a6)
	bra	  .nxload2
	;D4.W/	      curr slot #
	;D5.B/(!bool) load/alloc error 
load1	moveq		#1,	d5
	move.w	       #31,	d4
	sub.w	    idx(a6),	d4
	;get sound ID from table
	;sndid = (*sftrh)->sndv[idx]
getid	movea.l	  sftrh(a6),	a0
	movea.l	       (a0),	a0
	move.w	    idx(a6),	d0
	add.w		d0,	d0
	move.w _SNDV(a0,d0.w),sndid(a6)
	;A3/(Handle) = info.h[sndid]
handle1	move.w	  sndid(a6),	d0
	asl.w		#2,	d0
	lea	     _H(a4),	a0
	movea.l	    (a0,d0.w),	a3
	move.l		a3,	d0
	bne.s	  .handle2
	;(!handle)	-> state 0
noalloc	clr.b		 hstate(a6)
	bra.s	  .handle3

handle2	tst.l		       (a3)
	bne.s	  .hvalid
	;(!ptr)		-> state 1
dealloc	move.b	     #1, hstate(a6)
	bra.s	  .handle3
	;valid handle	-> state 2
hvalid	move.b	     #2, hstate(a6)

handle3	moveq	     #2,	d0
	cmp.b	hstate(a6),	d0
	bne.s	  .loadpak
	;(state 2) -> use existing snd
hexist	clr.l		      -(sp)
	push.l			a3
	jsr	1/GetHandleSize(pc) ;p33
	pop.l		unpklen(a6)
	push.l			a3
	jsr	     1/HNoPurge(pc)
	bra	  .load6
	;(state 0|1) -> load packed snd/D6
loadpak	clr.l		      -(sp)
	push.l	1/SOUN     	 ;'SOUN'
	push.w		  sndid(a6)
	_GetResource
	pop.l			d6
	bne.s	  .load2
	;resource not found -> error
reserr	clr.b		d5

load2	move.b		d5,	d0
	beq	  .load6
	;when made purgeable, will detach
detach	push.l			d6
	_DetachResource		;a992
	push.l			d6
	jsr	     1/HNoPurge(pc)
	;packlen = GetHandleSize(h) - 22;
lenpack	clr.l		      -(sp)
	push.l			d6
	jsr	1/GetHandleSize(pc)
	pop.l			d0
	moveq	   #22,		d1
	sub.l	    d1,		d0
	move.l	    d0, packlen(a6)
	;unpklen = packlen * 2;
lenunpk	asl.l	    #1,		d0
	move.l	    d0, unpklen(a6)
	;ResrvMem(unpklen);
reserve	push.l		unpklen(a6)
	jsr	     1/ResrvMem(pc)
	tst.b		 hstate(a6)
	bne.s	  .realloc
	;(!handle) alloc A3/new handle
alloch	clr.l		      -(sp)
	push.l		unpklen(a6)
	jsr	    1/NewHandle(pc)
	pop.l			a3
	bra.s	  .load3
	;(handle) re-allocate
realloc	push.l			a3
	push.l		unpklen(a6)
	jsr	1/ReallocHandle(pc)

load3	move.l		a3,	d0
	seq			d0
	push.l			d0
	clr.w		      -(sp)
	move.w	    MemErr,    (sp)
	pop.w			d1
	pop.l			d0
	tst.w			d1
	sne		d1
	or.b		d1,	d0
	beq.s	  .load4
	;if(!handle||MemErr) err=0;
errmem	clr.b			d5
	bra.s	  .load5
	;if(!ptr)
load4	tst.l		       (a3)
	bne.s	  .load5
errptr	clr.b		d5

load5	move.b		d5,	d0
	beq.s	  .freepak
unpack1	push.l			a3
	jsr	     1/HNoPurge(pc)
	;packed = *packh + sizeof(PCMHdr);
unpack2	movea.l	    d6,		a0
	move.l	   (a0),	d0
	moveq	   #22,		d1
	add.l	    d1,		d0
	move.l	    d0,  packed(a6)
	;pcm4tbl = (*packh)->tbl;
unpack3	movea.l	    d6,		a0
	move.l	   (a0),	d0
	addq.l	    #6,		d0
	move.l	    d0, pcm4tbl(a6)
	;unpack sound
unpack4	move.l	packed(a6),   -(sp)
	move.l	      (a3),   -(sp)
	move.l packlen(a6),   -(sp)
	move.l pcm4tbl(a6),   -(sp)
	jsr	   1/unpack_pcm(pc) ;p5
	;free packed sound
freepak	push.l			d6
	jsr	 1/DisposHandle(pc)

load6	move.b		d5,	d0
	beq.s	  .nxload
	;info->h[sndid] = unpkh;
saveh1	move.w	  sndid(a6),	d0
	asl.w		#2,	d0
	lea	     _H(a4),	a0
	move.l		a3, (a0,d0.w)
	;htbl[slot] = unpkh;
saveh2	move.w		d4,	d0
	asl.w		#2,	d0
	lea	   htbl(a6),	a0
	move.l		a3, (a0,d0.w)
	;if(sndid >= 95 && sndid <= 99)
loopid	moveq	       #95,	d0
	cmp.w	 sndid(a6),	d0
	sle			d0
	moveq	       #99,	d1
	cmp.w	 sndid(a6),	d1
	sge			d1
	and.b		d1,	d0
	beq.s	  .notloop
	;set loop map bit
setloop	move.l	_LOOP(a4),	d0
	move.w	      d4,	d1
	bset.b	      d1,	d0
	move.l	      d0, _LOOP(a4)
	;info->id[sndid] = slot;
notloop	move.w	  sndid(a6),	d0
	lea	    _ID(a4),	a0
	move.b		d4, (a0,d0.w)
	;load next slot
nxload	addq.w	        #1, idx(a6)
	bvs.s	  .sftr3
nxload2	move.w	    idx(a6),	d0
	cmp.w	 nslot2(a6),	d0
	ble	  .load1

sftr3	move.w nslot(a6),	d0
	subq.w	     #1,	d0
	move.w	     d0, nslot1(a6)
	;for(slot=31; slot>=0; --slot)
	clr.w			d7
	bra.s	  .nxfill2
	;look up handle/A3 = htbl[slot]
fill1	move.w	       #31,	d4
	sub.w		d7,	d4
	move.w		d4,	d0
	asl.w		#2,	d0
	lea	   htbl(a6),	a0
	movea.l	    (a0,d0.w),	a3
	move.l		a3,	d0
	beq.s	  .nxfill
	;lock handle	
lockh	push.l			a3
	jsr		1/HLock(pc)
	;ppcm  = *handle;
	;pslot = info->&slot[slot];
fill2	move.l	     (a3), ppcm(a6)
	movea.l	pcminfo(a6),	a0
	move.w	      d4,	d0
	asl.w	      #4,	d0
	lea	_SLOT(a0,d0.w),	a0
	move.l	      a0, pslot(a6)
	;pslot->lphd = pslot->head = ppcm;
pcmhead	move.l	 ppcm(a6),_LPHD(a0)
	movea.l	pslot(a6),	a0
	move.l	 ppcm(a6),_HEAD(a0)
	movea.l	pslot(a6),	a0
	;pslot->tail = ppcm+GetHandleSize()-4;
pcmtail	push.l			a0
	clr.l		      -(sp)
	push.l			a3
	jsr	1/GetHandleSize(pc)
	pop.l			d0
	pop.l			a0
	add.l	 ppcm(a6),	d0
	subq.l	      #4,	d0
	move.l	      d0, _TAIL(a0)
	;fill next slot
nxfill	addq.w		#1,	d7
	bvs.s	  .endload
nxfill2	cmp.w	  nslot1(a6),	d7
	ble	  .fill1

	;free sound list + 3KB
endload	push.l		  sftrh(a6)
	jsr	       1/HPurge(pc)
	push.l		block3k(a6)
	jsr	    1/DisposPtr(pc)
	;delay according to disk??
	jsr	       1/proc15(pc)
	;sounds loaded & ready
loaded	movea.l	pcminfo(a6),	a0
	move.w	      #1, _LOAD(a0)
	movem.l	(sp)+, d4-d7/a3-a4
	unlk			a6
	pop.l			a0
	addq		#2,	sp
retload	jmp		       (a0)
	; -> RTS


;{ 1/load_pcm() } x4

SOUN	dc.b	'SOUN'	;1/data1:03f0	(ResType).L
delim	dc.b  1,'/'	;1/data2:03f4	(Str255).[2]
sftrstr	dc.b  5,'SFTR:'	;1/data3:03f6	(Str255).[6]
SFTR	dc.b	'SFTR'	;1/data4:03fc	(ResType).L

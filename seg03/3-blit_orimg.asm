; vi: syntax=asm68k

;:059e		3/data116[]

blit_orimg:
0x0000059e   4                 48e7ff7a  movem.l d0-d7/a1-a4/a6, -(a7)
0x000005a2   2                     3600  move.w d0, d3
0x000005a4   4                 0240000f  andi.w 0xf, d0
0x000005a8   2                     e643  asr.w 0x3, d3
0x000005aa   4                 0243fffe  andi.w 0xfffe, d3
0x000005ae   4                 38290004  move.w 0x4(a1), d4
0x000005b2   2                     5344  subq.w 0x1, d4
0x000005b4   2                     48c4  ext.l d4
0x000005b6   4                 3a290006  move.w 0x6(a1), d5
0x000005ba   2                     5345  subq.w 0x1, d5
0x000005bc   2                     48c5  ext.l d5
0x000005be   4                 c4e90008  mulu.w 0x8(a1), d2
0x000005c2   2                     2649  movea.l a1, a3
0x000005c4   4                 d6fc000e  adda.w 0xe, a3
0x000005c8   2                     d7c2  adda.l d2, a3
0x000005ca   2                     4a41  tst.w d1
0x000005cc   2                     6c14  bge.b 0x5e2
0x000005ce   2                     4441  neg.w d1
0x000005d0   2                     9a41  sub.w d1, d5
0x000005d2   4                 6f000068  ble.w 0x63c
0x000005d6   2                     5284  addq.l 0x1, d4
0x000005d8   2                     c2c4  mulu.w d4, d1
0x000005da   2                     5384  subq.l 0x1, d4
0x000005dc   2                     e381  asl.l 0x1, d1
0x000005de   2                     d7c1  adda.l d1, a3
0x000005e0   2                     7200  moveq 0x0, d1
0x000005e2   4                 2c68000a  movea.l 0xa(a0), a6
0x000005e6   2                     3c84  move.w d4, (a6)
0x000005e8   2                     525e  addq.w 0x1, (a6)+
0x000005ea   2                     3cc5  move.w d5, (a6)+
0x000005ec   2                     3c10  move.w (a0), d6
0x000005ee   2                     48c6  ext.l d6
0x000005f0   4                 22680002  movea.l 0x2(a0), a1
0x000005f4   2                     c2c6  mulu.w d6, d1
0x000005f6   2                     48c3  ext.l d3
0x000005f8   2                     d283  add.l d3, d1
0x000005fa   2                     2cc1  move.l d1, (a6)+
0x000005fc   2                     d3c1  adda.l d1, a1
0x000005fe   2                     e384  asl.l 0x1, d4
0x00000600   2                     9c84  sub.l d4, d6
0x00000602   2                     e284  asr.l 0x1, d4
0x00000604   2                     5986  subq.l 0x4, d6
0x00000606   2                     2cc6  move.l d6, (a6)+
0x00000608   2                     2e04  move.l d4, d7
0x0000060a   2                     3219  move.w (a1)+, d1
0x0000060c   2                     3cc1  move.w d1, (a6)+
0x0000060e   2                     4841  swap d1
0x00000610   2                     3219  move.w (a1)+, d1
0x00000612   2                     3cc1  move.w d1, (a6)+
0x00000614   2                     361b  move.w (a3)+, d3
0x00000616   2                     4843  swap d3
0x00000618   2                     4243  clr.w d3
0x0000061a   2                     e0bb  ror.l d0, d3
0x0000061c   2                     8283  or.l d3, d1
0x0000061e   2                     4841  swap d1
0x00000620   4                 3341fffc  move.w d1, -0x4(a1)
0x00000624   4                 51cfffea  dbra d7, 0x610
0x00000628   2                     4841  swap d1
0x0000062a   4                 3341fffe  move.w d1, -0x2(a1)
0x0000062e   2                     d3c6  adda.l d6, a1
0x00000630   4                 51cdffd6  dbra d5, 0x608
0x00000634   4                 2ce8000a  move.l 0xa(a0), (a6)+
0x00000638   4                 214e000a  move.l a6, 0xa(a0)
0x0000063c   4                 4cdf5eff  movem.l (a7)+, d0-d7/a1-a4/a6
0x00000640   2                     4e75  rts

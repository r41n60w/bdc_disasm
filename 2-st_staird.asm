; vi: syntax=asm68k

0x000002aa   4                 266e0030  movea.l 0x30(a6), a3
0x000002ae   2                     161b  move.b (a3)+, d3
0x000002b0   2                     4883  ext.w d3
0x000002b2   2                     d043  add.w d3, d0
0x000002b4   2                     161b  move.b (a3)+, d3
0x000002b6   2                     4883  ext.w d3
0x000002b8   2                     d243  add.w d3, d1
0x000002ba   2                     161b  move.b (a3)+, d3
0x000002bc   2                     4883  ext.w d3
0x000002be   4                 286e0016  movea.l 0x16(a6), a4
0x000002c2   4                 2274305c  movea.l 0x5c(a4, d3.w), a1
0x000002c6   2                     141b  move.b (a3)+, d2
0x000002c8   2                     4882  ext.w d2
0x000002ca   2                     6c16  bge.b 0x2e2
0x000002cc   4                 4a6e0034  tst.w 0x34(a6)
0x000002d0   2                     6e06  bgt.b 0x2d8
0x000002d2   4                 47fa00b6  lea.l 0x38a(pc), a3
0x000002d6   2                     6004  bra.b 0x2dc
0x000002d8   4                 47fa00c4  lea.l 0x39e(pc), a3
0x000002dc   4                 2d4b0030  move.l a3, 0x30(a6)
0x000002e0   2                     60c8  bra.b 0x2aa
0x000002e2   4                 3d40000c  move.w d0, 0xc(a6)
0x000002e6   4                 3d41000e  move.w d1, 0xe(a6)
0x000002ea   4                 362e0006  move.w 0x6(a6), d3
0x000002ee   4                 3c323000  move.w (a2, d3.w), d6
0x000002f2   4                 06460009  addi.w 0x9, d6
0x000002f6   2                     b246  cmp.w d6, d1
0x000002f8   2                     6d52  blt.b 0x34c
0x000002fa   2                     3206  move.w d6, d1
0x000002fc   4                 04410009  subi.w 0x9, d1
0x00000300   4                 3d41000e  move.w d1, 0xe(a6)
0x00000304   4                 4a6e001e  tst.w 0x1e(a6)
0x00000308   2                     6d18  blt.b 0x322
0x0000030a   4                 4a6e0034  tst.w 0x34(a6)
0x0000030e   2                     6d08  blt.b 0x318
0x00000310   4                 47fa00ac  lea.l 0x3be(pc), a3
0x00000314   2                     5840  addq.w 0x4, d0
0x00000316   2                     6020  bra.b 0x338
0x00000318   4                 47fa00b0  lea.l 0x3ca(pc), a3
0x0000031c   4                 04400018  subi.w 0x18, d0
0x00000320   2                     6016  bra.b 0x338
0x00000322   4                 4a6e0034  tst.w 0x34(a6)
0x00000326   2                     6d08  blt.b 0x330
0x00000328   4                 47fa00ac  lea.l 0x3d6(pc), a3
0x0000032c   2                     5840  addq.w 0x4, d0
0x0000032e   2                     6008  bra.b 0x338
0x00000330   4                 47fa0080  lea.l 0x3b2(pc), a3
0x00000334   4                 04400018  subi.w 0x18, d0
0x00000338   2                     3f00  move.w d0, -(a7)
0x0000033a   4                 303c004e  move.w 0x4e, d0
0x0000033e   4                 4ead0042  jsr 0x42(a5)
0x00000342   2                     301f  move.w (a7)+, d0
0x00000344   4                 3d40000c  move.w d0, 0xc(a6)
0x00000348   4                 4efa0098  jmp 0x3e2(pc)
0x0000034c   4                 206dffa0  movea.l -0x60(a5), a0
0x00000350   4                 2d4b0030  move.l a3, 0x30(a6)
0x00000354   4                 4ead02d2  jsr 0x2d2(a5)
0x00000358   2                     4e75  rts

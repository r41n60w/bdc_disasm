; vi: syntax=asm68k

0x00000000   4                 4eba20cc  jsr 0x20ce(pc)
0x00000004   4                 266e0030  movea.l 0x30(a6), a3
0x00000008   2                     161b  move.b (a3)+, d3
0x0000000a   2                     4883  ext.w d3
0x0000000c   2                     d043  add.w d3, d0
0x0000000e   2                     161b  move.b (a3)+, d3
0x00000010   2                     4883  ext.w d3
0x00000012   2                     d243  add.w d3, d1
0x00000014   2                     161b  move.b (a3)+, d3
0x00000016   2                     4883  ext.w d3
0x00000018   2                     6c08  bge.b 0x22
0x0000001a   2                     4443  neg.w d3
0x0000001c   4                 4eba0502  jsr 0x520(pc)
0x00000020   2                     6008  bra.b 0x2a
0x00000022   4                 286e0016  movea.l 0x16(a6), a4
0x00000026   4                 2274305c  movea.l 0x5c(a4, d3.w), a1
0x0000002a   2                     141b  move.b (a3)+, d2
0x0000002c   2                     4882  ext.w d2
0x0000002e   2                     6c22  bge.b 0x52
0x00000030   4                 0c42fffe  cmpi.w 0xfffe, d2
0x00000034   2                     6612  bne.b 0x48
0x00000036   4                 3d40000c  move.w d0, 0xc(a6)
0x0000003a   4                 3d41000e  move.w d1, 0xe(a6)
0x0000003e   4                 47fa00b5  lea.l 0xf5(pc), a3
0x00000042   4                 2d4b0030  move.l a3, 0x30(a6)
0x00000046   2                     60b8  bra.b 0x0
0x00000048   2                     3a04  move.w d4, d5
0x0000004a   4                 4eba09b0  jsr 0x9fc(pc)
0x0000004e   4                 4efa2df6  jmp 0x2e46(pc)
0x00000052   4                 206dffa0  movea.l -0x60(a5), a0
0x00000056   2                     2449  movea.l a1, a2
0x00000058   4                 4ead02e2  jsr 0x2e2(a5)
0x0000005c   2                     141b  move.b (a3)+, d2
0x0000005e   4                 0c0200d6  cmpi.b 0xd6, d2
0x00000062   2                     6610  bne.b 0x74
0x00000064   2                     3f00  move.w d0, -(a7)
0x00000066   4                 303c0002  move.w 0x2, d0
0x0000006a   4                 4ead0042  jsr 0x42(a5)
0x0000006e   2                     301f  move.w (a7)+, d0
0x00000070   2                     4202  clr.b d2
0x00000072   2                     6018  bra.b 0x8c
0x00000074   4                 0c0200d5  cmpi.b 0xd5, d2
0x00000078   2                     660e  bne.b 0x88
0x0000007a   2                     3f00  move.w d0, -(a7)
0x0000007c   4                 303c0003  move.w 0x3, d0
0x00000080   4                 4ead0042  jsr 0x42(a5)
0x00000084   2                     301f  move.w (a7)+, d0
0x00000086   2                     601c  bra.b 0xa4
0x00000088   2                     4a02  tst.b d2
0x0000008a   2                     6d18  blt.b 0xa4
0x0000008c   2                     4882  ext.w d2
0x0000008e   4                 302e000c  move.w 0xc(a6), d0
0x00000092   4                 322e000e  move.w 0xe(a6), d1
0x00000096   4                 226c006c  movea.l 0x6c(a4), a1
0x0000009a   4                 0441000a  subi.w 0xa, d1
0x0000009e   2                     5040  addq.w 0x8, d0
0x000000a0   4                 4ead02e2  jsr 0x2e2(a5)
0x000000a4   4                 2d4b0030  move.l a3, 0x30(a6)
0x000000a8   2                     224a  movea.l a2, a1
0x000000aa   4                 302e000c  move.w 0xc(a6), d0
0x000000ae   4                 322e000e  move.w 0xe(a6), d1
0x000000b2   2                     2456  movea.l (a6), a2
0x000000b4   4                 4efa0540  jmp 0x5f6(pc)
0x000000b8   2                     4e75  rts
0x000000ba   4                 47fa0016  lea.l 0xd2(pc), a3
0x000000be   2                     4e75  rts
0x000000c0   4                 47fa0033  lea.l 0xf5(pc), a3
0x000000c4   2                     4e75  rts
0x000000c6   4                 47fa0127  lea.l 0x1ef(pc), a3
0x000000ca   2                     4e75  rts
0x000000cc   4                 47fa0135  lea.l 0x203(pc), a3
0x000000d0   2                     4e75  rts
0x000000d2   4                 00100400  ori.b 0x0, (a0)
0x000000d6   2                     ff00  invalid
0x000000d8   2                     0f04  btst.l d7, d4
0x000000da   4                 01ff000f  
0x000000de   4                 0401ff00  subi.b 0x0, d1
0x000000e2   2                     0f04  btst.l d7, d4
0x000000e4   4                 01ff0010  
0x000000e8   4                 0400ff00  subi.b 0x0, d0
0x000000ec   2                     ff00  invalid
0x000000ee   4                 01ff00f9  
0x000000f2   4                 0001ff04  ori.b 0x4, d1
0x000000f6   4                 001400d6  ori.b 0xd6, (a4)
0x000000fa   4                 04001400  subi.b 0x0, d0
0x000000fe   2                     0100  btst.l d0, d0
0x00000100   4                 000c0102  
0x00000104   4                 00000c01  ori.b 0x1, d0
0x00000108   2                     0304  btst.l d1, d4
0x0000010a   4                 00140004  ori.b 0x4, (a4)
0x0000010e   2                     0300  btst.l d1, d0
0x00000110   2                     1401  move.b d1, d2
0x00000112   2                     0503  btst.l d2, d3
0x00000114   4                 00140100  ori.b 0x0, (a4)
0x00000118   2                     f800  invalid
0x0000011a   2                     1402  move.b d2, d2
0x0000011c   4                 01f80014  bset.b d0, 0x14.w
0x00000120   4                 0202f900  andi.b 0x0, d2
0x00000124   2                     1403  move.b d3, d2
0x00000126   6             03f900140304  bset.b d1, 0x140304.l
0x0000012c   2                     fd00  invalid
0x0000012e   2                     1404  move.b d4, d2
0x00000130   4                 05fd0014  
0x00000134   2                     04d6  invalid
0x00000136   4                 00001405  ori.b 0x5, d0
0x0000013a   2                     0100  btst.l d0, d0
0x0000013c   4                 00140502  ori.b 0x2, (a4)
0x00000140   4                 00001800  ori.b 0x0, d0
0x00000144   2                     0300  btst.l d1, d0
0x00000146   4                 00180004  ori.b 0x4, (a0)+
0x0000014a   4                 04001400  subi.b 0x0, d0
0x0000014e   2                     0504  btst.l d2, d4
0x00000150   4                 00140000  ori.b 0x0, (a4)
0x00000154   4                 00000c01  ori.b 0x1, d0
0x00000158   2                     0100  btst.l d0, d0
0x0000015a   4                 000c0102  
0x0000015e   4                 04001400  subi.b 0x0, d0
0x00000162   2                     0304  btst.l d1, d4
0x00000164   4                 00140004  ori.b 0x4, (a4)
0x00000168   4                 02001801  andi.b 0x1, d0
0x0000016c   2                     0502  btst.l d2, d2
0x0000016e   4                 001801d6  ori.b 0xd6, (a0)+
0x00000172   2                     0500  btst.l d2, d0
0x00000174   2                     1802  move.b d2, d4
0x00000176   2                     0105  btst.l d0, d5
0x00000178   4                 00180202  ori.b 0x2, (a0)+
0x0000017c   2                     0700  btst.l d3, d0
0x0000017e   2                     1803  move.b d3, d4
0x00000180   2                     0307  btst.l d1, d7
0x00000182   4                 00180304  ori.b 0x4, (a0)+
0x00000186   4                 0c001804  cmpi.b 0x4, d0
0x0000018a   4                 050c0018  movep.w 0x18(a4), d2
0x0000018e   4                 04000500  subi.b 0x0, d0
0x00000192   2                     1805  move.b d5, d4
0x00000194   2                     0105  btst.l d0, d5
0x00000196   4                 00180502  ori.b 0x2, (a0)+
0x0000019a   2                     0300  btst.l d1, d0
0x0000019c   2                     1401  move.b d1, d2
0x0000019e   2                     0303  btst.l d1, d3
0x000001a0   4                 00140104  ori.b 0x4, (a4)
0x000001a4   4                 00000c01  ori.b 0x1, d0
0x000001a8   2                     0500  btst.l d2, d0
0x000001aa   4                 000c01ff  
0x000001ae   4                 00000c00  ori.b 0x0, d0
0x000001b2   2                     d500  addx.b d0, d2
0x000001b4   4                 000c02ff  
0x000001b8   4                 00000c01  ori.b 0x1, d0
0x000001bc   2                     ff00  invalid
0x000001be   4                 000c00ff  
0x000001c2   4                 00000c02  ori.b 0x2, d0
0x000001c6   2                     ff00  invalid
0x000001c8   4                 000c01ff  
0x000001cc   4                 00000c00  ori.b 0x0, d0
0x000001d0   2                     ff00  invalid
0x000001d2   4                 000c02ff  
0x000001d6   4                 00000c01  ori.b 0x1, d0
0x000001da   2                     ff00  invalid
0x000001dc   4                 000c01ff  
0x000001e0   4                 00000c01  ori.b 0x1, d0
0x000001e4   2                     ff00  invalid
0x000001e6   4                 000c01ff  
0x000001ea   4                 000000ff  ori.b 0xff, d0
0x000001ee   2                     ff00  invalid
0x000001f0   2                     feff  invalid
0x000001f2   4                 03ff08f9  
0x000001f6   2                     ff04  invalid
0x000001f8   2                     ff12  invalid
0x000001fa   2                     feff  invalid
0x000001fc   4                 05ff1200  
0x00000200   4                 00feff00  
0x00000204   2                     feff  invalid
0x00000206   4                 00fff8f9  
0x0000020a   2                     ff01  invalid
0x0000020c   2                     ffee  invalid
0x0000020e   2                     feff  invalid
0x00000210   4                 02ffee00  
0x00000214   4                 00feff00  
0x00000218   4                 08fb03ff  
0x0000021c   4                 0402fc03  subi.b 0x3, d2
0x00000220   2                     ff04  invalid
0x00000222   4                 02fc02ff  
0x00000226   2                     1200  move.b d0, d1
0x00000228   4                 00feff00  
0x0000022c   4                 08fa03ff  
0x00000230   2                     ff02  invalid
0x00000232   2                     fc01  invalid
0x00000234   2                     ffff  invalid
0x00000236   4                 02fc00ff  
0x0000023a   2                     ee00  asr.b 0x7, d0
0x0000023c   4                 00feff1e  
0x00000240   2                     fafe  invalid
0x00000242   4                 00ff13f9  
0x00000246   2                     fe01  invalid
0x00000248   2                     ff00  invalid
0x0000024a   4                 05fe02ff  
0x0000024e   4                 000000fe  ori.b 0xfe, d0
0x00000252   2                     ffe2  invalid
0x00000254   2                     fafd  invalid
0x00000256   4                 00ffedf9  
0x0000025a   2                     fd01  invalid
0x0000025c   2                     ff00  invalid
0x0000025e   4                 05fd02ff  
0x00000262   4                 000000fe  ori.b 0xfe, d0
0x00000266   2                     ff00  invalid
0x00000268   6             3d72400c0006  move.w 0xc(a2, d4.w), 0x6(a6)
0x0000026e   4                 38324008  move.w 0x8(a2, d4.w), d4
0x00000272   4                 3d440004  move.w d4, 0x4(a6)
0x00000276   4                 4a6e001e  tst.w 0x1e(a6)
0x0000027a   2                     6d12  blt.b 0x28e
0x0000027c   4                 4a6e0034  tst.w 0x34(a6)
0x00000280   2                     6d06  blt.b 0x288
0x00000282   4                 47fa00fa  lea.l 0x37e(pc), a3
0x00000286   2                     6016  bra.b 0x29e
0x00000288   4                 47fa00d0  lea.l 0x35a(pc), a3
0x0000028c   2                     6010  bra.b 0x29e
0x0000028e   4                 4a6e0034  tst.w 0x34(a6)
0x00000292   2                     6e06  bgt.b 0x29a
0x00000294   4                 47fa00dc  lea.l 0x372(pc), a3
0x00000298   2                     6004  bra.b 0x29e
0x0000029a   4                 47fa00ca  lea.l 0x366(pc), a3
0x0000029e   6             3d7c00210012  move.w 0x21, 0x12(a6)
0x000002a4   4                 2d4b0030  move.l a3, 0x30(a6)
0x000002a8   2                     4e75  rts
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
0x00000354   4                 4ead02e2  jsr 0x2e2(a5)
0x00000358   2                     4e75  rts
0x0000035a   4                 000a3400  
0x0000035e   4                 00043401  ori.b 0x1, d4
0x00000362   4                 000000ff  ori.b 0xff, d0
0x00000366   4                 000a3404  
0x0000036a   4                 00043405  ori.b 0x5, d4
0x0000036e   4                 000000ff  ori.b 0xff, d0
0x00000372   4                 00ff1c00  
0x00000376   4                 0a083403  
0x0000037a   4                 000000ff  ori.b 0xff, d0
0x0000037e   4                 00ff2000  
0x00000382   6             f60834070000  invalid
0x00000388   4                 00fff705  
0x0000038c   2                     3000  move.w d0, d0
0x0000038e   2                     f705  invalid
0x00000390   2                     3001  move.w d1, d0
0x00000392   2                     f705  invalid
0x00000394   2                     3002  move.w d2, d0
0x00000396   2                     f705  invalid
0x00000398   2                     3003  move.w d3, d0
0x0000039a   4                 000000ff  ori.b 0xff, d0
0x0000039e   2                     0905  btst.l d4, d5
0x000003a0   2                     3004  move.w d4, d0
0x000003a2   2                     0905  btst.l d4, d5
0x000003a4   2                     3005  move.w d5, d0
0x000003a6   2                     0905  btst.l d4, d5
0x000003a8   2                     3006  move.w d6, d0
0x000003aa   2                     0905  btst.l d4, d5
0x000003ac   2                     3007  move.w d7, d0
0x000003ae   4                 000000ff  ori.b 0xff, d0
0x000003b2   2                     fafe  invalid
0x000003b4   2                     1c02  move.b d2, d6
0x000003b6   4                 000000ff  ori.b 0xff, d0
0x000003ba   2                     fafe  invalid
0x000003bc   2                     1c03  move.b d3, d6
0x000003be   4                 06fe2002  
0x000003c2   4                 000000ff  ori.b 0xff, d0
0x000003c6   4                 06fe2003  
0x000003ca   2                     fc0a  invalid
0x000003cc   2                     3402  move.w d2, d2
0x000003ce   4                 000000ff  ori.b 0xff, d0
0x000003d2   2                     f81f  invalid
0x000003d4   2                     3800  move.w d0, d4
0x000003d6   4                 040a3406  
0x000003da   4                 000000ff  ori.b 0xff, d0
0x000003de   4                 081f3801  
0x000003e2   6             3d7c000d0012  move.w 0xd, 0x12(a6)
0x000003e8   4                 2d4b0030  move.l a3, 0x30(a6)
0x000003ec   6             3d7cffff0034  move.w 0xffff, 0x34(a6)
0x000003f2   4                 3a2e0006  move.w 0x6(a6), d5
0x000003f6   4                 32325000  move.w (a2, d5.w), d1
0x000003fa   4                 3d41000e  move.w d1, 0xe(a6)
0x000003fe   4                 4eba1cce  jsr 0x20ce(pc)
0x00000402   4                 266e0030  movea.l 0x30(a6), a3
0x00000406   2                     161b  move.b (a3)+, d3
0x00000408   2                     4883  ext.w d3
0x0000040a   2                     d043  add.w d3, d0
0x0000040c   2                     161b  move.b (a3)+, d3
0x0000040e   2                     4883  ext.w d3
0x00000410   2                     d243  add.w d3, d1
0x00000412   2                     161b  move.b (a3)+, d3
0x00000414   2                     4883  ext.w d3
0x00000416   2                     6c08  bge.b 0x420
0x00000418   2                     4443  neg.w d3
0x0000041a   4                 4eba0104  jsr 0x520(pc)
0x0000041e   2                     6008  bra.b 0x428
0x00000420   4                 286e0016  movea.l 0x16(a6), a4
0x00000424   4                 2274305c  movea.l 0x5c(a4, d3.w), a1
0x00000428   2                     141b  move.b (a3)+, d2
0x0000042a   2                     4882  ext.w d2
0x0000042c   2                     6c12  bge.b 0x440
0x0000042e   4                 0c42fffe  cmpi.w 0xfffe, d2
0x00000432   2                     670c  beq.b 0x440
0x00000434   6             3d7c00280034  move.w 0x28, 0x34(a6)
0x0000043a   4                 2d4b0030  move.l a3, 0x30(a6)
0x0000043e   2                     60be  bra.b 0x3fe
0x00000440   4                 206dffa0  movea.l -0x60(a5), a0
0x00000444   4                 536e0034  subq.w 0x1, 0x34(a6)
0x00000448   4                 670000b2  beq.w 0x4fc
0x0000044c   2                     6e04  bgt.b 0x452
0x0000044e   4                 2d4b0030  move.l a3, 0x30(a6)
0x00000452   4                 0c42fffe  cmpi.w 0xfffe, d2
0x00000456   2                     6736  beq.b 0x48e
0x00000458   4                 362e0004  move.w 0x4(a6), d3
0x0000045c   6             0c72002d3004  cmpi.w 0x2d, 0x4(a2, d3.w)
0x00000462   2                     661a  bne.b 0x47e
0x00000464   4                 4a723006  tst.w 0x6(a2, d3.w)
0x00000468   2                     6e0a  bgt.b 0x474
0x0000046a   4                 b0723008  cmp.w 0x8(a2, d3.w), d0
0x0000046e   2                     6e0e  bgt.b 0x47e
0x00000470   4                 4efa0cec  jmp 0x115e(pc)
0x00000474   4                 b0723008  cmp.w 0x8(a2, d3.w), d0
0x00000478   2                     6d04  blt.b 0x47e
0x0000047a   4                 4efa0ce2  jmp 0x115e(pc)
0x0000047e   4                 b0723000  cmp.w (a2, d3.w), d0
0x00000482   2                     6d18  blt.b 0x49c
0x00000484   4                 b0723002  cmp.w 0x2(a2, d3.w), d0
0x00000488   2                     6e42  bgt.b 0x4cc
0x0000048a   4                 4ead02e2  jsr 0x2e2(a5)
0x0000048e   2                     4e75  rts
0x00000490   4                 3d40000c  move.w d0, 0xc(a6)
0x00000494   4                 4eba182a  jsr 0x1cc0(pc)
0x00000498   4                 4efa18a8  jmp 0x1d42(pc)
0x0000049c   4                 b0723002  cmp.w 0x2(a2, d3.w), d0
0x000004a0   2                     6eee  bgt.b 0x490
0x000004a2   4                 b0723000  cmp.w (a2, d3.w), d0
0x000004a6   2                     6d06  blt.b 0x4ae
0x000004a8   4                 3d430004  move.w d3, 0x4(a6)
0x000004ac   2                     60dc  bra.b 0x48a
0x000004ae   4                 04430012  subi.w 0x12, d3
0x000004b2   6             0c72001b3004  cmpi.w 0x1b, 0x4(a2, d3.w)
0x000004b8   2                     660a  bne.b 0x4c4
0x000004ba   4                 30323002  move.w 0x2(a2, d3.w), d0
0x000004be   4                 06400014  addi.w 0x14, d0
0x000004c2   2                     60cc  bra.b 0x490
0x000004c4   4                 4a723000  tst.w (a2, d3.w)
0x000004c8   2                     67c6  beq.b 0x490
0x000004ca   2                     60d0  bra.b 0x49c
0x000004cc   4                 b0723002  cmp.w 0x2(a2, d3.w), d0
0x000004d0   2                     6e0c  bgt.b 0x4de
0x000004d2   4                 b0723000  cmp.w (a2, d3.w), d0
0x000004d6   2                     6db8  blt.b 0x490
0x000004d8   4                 3d430004  move.w d3, 0x4(a6)
0x000004dc   2                     60ac  bra.b 0x48a
0x000004de   4                 06430012  addi.w 0x12, d3
0x000004e2   6             0c72001b3004  cmpi.w 0x1b, 0x4(a2, d3.w)
0x000004e8   2                     660a  bne.b 0x4f4
0x000004ea   4                 30323000  move.w (a2, d3.w), d0
0x000004ee   4                 04400014  subi.w 0x14, d0
0x000004f2   2                     609c  bra.b 0x490
0x000004f4   4                 4a723000  tst.w (a2, d3.w)
0x000004f8   2                     6796  beq.b 0x490
0x000004fa   2                     60d0  bra.b 0x4cc
0x000004fc   4                 536dfef8  subq.w 0x1, -0x108(a5)
0x00000500   4                 50edfefd  st.b -0x103(a5)
0x00000504   4                 4a6dfef8  tst.w -0x108(a5)
0x00000508   2                     6d14  blt.b 0x51e
0x0000050a   6             3b6dfea8fea6  move.w -0x158(a5), -0x15a(a5)
0x00000510   6             0c2d0010ff34  cmpi.b 0x10, -0xcc(a5)
0x00000516   2                     6206  bhi.b 0x51e
0x00000518   6             1b7c0010ff34  move.b 0x10, -0xcc(a5)
0x0000051e   2                     4e75  rts
0x00000520   2                     5343  subq.w 0x1, d3
0x00000522   2                     e743  asl.w 0x3, d3
0x00000524   4                 4efb3004  jmp 0x52a(pc, d3.w)
0x00000528   4                 0000226d  ori.b 0x6d, d0
0x0000052c   2                     f4f4  invalid
0x0000052e   2                     4e75  rts
0x00000530   4                 0000226d  ori.b 0x6d, d0
0x00000534   2                     f500  invalid
0x00000536   2                     4e75  rts
0x00000538   4                 0000226d  ori.b 0x6d, d0
0x0000053c   2                     f504  invalid
0x0000053e   2                     4e75  rts
0x00000540   4                 0000226d  ori.b 0x6d, d0
0x00000544   2                     f57c  invalid
0x00000546   2                     4e75  rts
0x00000548   4                 0000226d  ori.b 0x6d, d0
0x0000054c   2                     f43c  invalid
0x0000054e   2                     4e75  rts
0x00000550   4                 0000226d  ori.b 0x6d, d0
0x00000554   2                     f440  invalid
0x00000556   2                     4e75  rts
0x00000558   4                 47fa008c  lea.l 0x5e6(pc), a3
0x0000055c   2                     4e75  rts
0x0000055e   4                 00100400  ori.b 0x0, (a0)
0x00000562   4                 000f0401  
0x00000566   4                 000f0401  
0x0000056a   4                 000f0401  
0x0000056e   4                 00100400  ori.b 0x0, (a0)
0x00000572   4                 00030001  ori.b 0x1, d3
0x00000576   4                 00f60001  
0x0000057a   4                 00080402  
0x0000057e   4                 000f0403  
0x00000582   4                 000f0403  
0x00000586   4                 000000ff  ori.b 0xff, d0
0x0000058a   4                 000f0403  
0x0000058e   4                 ecfe1c00  
0x00000592   4                 e8fe1c01  
0x00000596   4                 e8fe1c02  
0x0000059a   4                 e8fe1c02  
0x0000059e   4                 000000ff  ori.b 0xff, d0
0x000005a2   4                 e8fe1c03  
0x000005a6   4                 04fe2000  
0x000005aa   4                 06fe2001  
0x000005ae   4                 06fe2002  
0x000005b2   4                 06fe2002  
0x000005b6   4                 000000ff  ori.b 0xff, d0
0x000005ba   4                 06fe2003  
0x000005be   2                     ee02  asr.b 0x7, d2
0x000005c0   2                     3400  move.w d0, d2
0x000005c2   2                     df05  addx.b d5, d7
0x000005c4   2                     3401  move.w d1, d2
0x000005c6   4                 ca0b3402  
0x000005ca   4                 000000ff  ori.b 0xff, d0
0x000005ce   2                     bc1f  cmp.b (a7)+, d6
0x000005d0   2                     3800  move.w d0, d4
0x000005d2   2                     1202  move.b d2, d1
0x000005d4   2                     3404  move.w d4, d2
0x000005d6   2                     2105  move.l d5, -(a0)
0x000005d8   2                     3405  move.w d5, d2
0x000005da   2                     360b  move.w a3, d3
0x000005dc   2                     3406  move.w d6, d2
0x000005de   4                 000000ff  ori.b 0xff, d0
0x000005e2   2                     441f  neg.b (a7)+
0x000005e4   2                     3801  move.w d1, d4
0x000005e6   4                 00feff06  
0x000005ea   4                 00080402  
0x000005ee   4                 000000ff  ori.b 0xff, d0
0x000005f2   4                 000f0403  
0x000005f6   4                 422df9fa  clr.b -0x606(a5)
0x000005fa   4                 4a6e002a  tst.w 0x2a(a6)
0x000005fe   2                     6f04  ble.b 0x604
0x00000600   4                 536e002a  subq.w 0x1, 0x2a(a6)
0x00000604   4                 41edfa0c  lea.l -0x5f4(a5), a0
0x00000608   4                 4ead046a  jsr 0x46a(a5)
0x0000060c   4                 b0fc0000  cmpa.w 0x0, a0
0x00000610   4                 6700007e  beq.w 0x690
0x00000614   6             317c00010016  move.w 0x1, 0x16(a0)
0x0000061a   4                 3028000e  move.w 0xe(a0), d0
0x0000061e   4                 32280010  move.w 0x10(a0), d1
0x00000622   4                 3e28000c  move.w 0xc(a0), d7
0x00000626   4                 0c470005  cmpi.w 0x5, d7
0x0000062a   2                     6636  bne.b 0x662
0x0000062c   4                 342e000c  move.w 0xc(a6), d2
0x00000630   4                 0c420138  cmpi.w 0x138, d2
0x00000634   4                 6d00016e  blt.w 0x7a4
0x00000638   4                 0c420177  cmpi.w 0x177, d2
0x0000063c   4                 6e000166  bgt.w 0x7a4
0x00000640   4                 342e000e  move.w 0xe(a6), d2
0x00000644   4                 0c4200f0  cmpi.w 0xf0, d2
0x00000648   4                 6e00015a  bgt.w 0x7a4
0x0000064c   4                 426e0030  clr.w 0x30(a6)
0x00000650   4                 2d480032  move.l a0, 0x32(a6)
0x00000654   6             3d7c003d0012  move.w 0x3d, 0x12(a6)
0x0000065a   4                 426dff22  clr.w -0xde(a5)
0x0000065e   4                 6000039a  bra.w 0x9fa
0x00000662   4                 0c470006  cmpi.w 0x6, d7
0x00000666   2                     6610  bne.b 0x678
0x00000668   6             046d0800ff22  subi.w 0x800, -0xde(a5)
0x0000066e   6             1b7c00fff9fa  move.b 0xff, -0x606(a5)
0x00000674   4                 6000006e  bra.w 0x6e4
0x00000678   4                 0c470003  cmpi.w 0x3, d7
0x0000067c   2                     6604  bne.b 0x682
0x0000067e   4                 4efa08ca  jmp 0xf4a(pc)
0x00000682   4                 0c470009  cmpi.w 0x9, d7
0x00000686   2                     6604  bne.b 0x68c
0x00000688   4                 4efa08c0  jmp 0xf4a(pc)
0x0000068c   4                 60000116  bra.w 0x7a4
0x00000690   4                 4ead0462  jsr 0x462(a5)
0x00000694   2                     674e  beq.b 0x6e4
0x00000696   6             b1fc04000000  cmpa.l 0x4000000, a0
0x0000069c   2                     6604  bne.b 0x6a2
0x0000069e   4                 4efa087a  jmp 0xf1a(pc)
0x000006a2   6             b1fc05000000  cmpa.l 0x5000000, a0
0x000006a8   2                     6636  bne.b 0x6e0
0x000006aa   4                 4a6e002a  tst.w 0x2a(a6)
0x000006ae   2                     6e34  bgt.b 0x6e4
0x000006b0   4                 4a6dff24  tst.w -0xdc(a5)
0x000006b4   2                     6f1a  ble.b 0x6d0
0x000006b6   2                     3f00  move.w d0, -(a7)
0x000006b8   4                 303c000c  move.w 0xc, d0
0x000006bc   4                 4ead0042  jsr 0x42(a5)
0x000006c0   2                     301f  move.w (a7)+, d0
0x000006c2   4                 536dff24  subq.w 0x1, -0xdc(a5)
0x000006c6   6             3d7c0014002a  move.w 0x14, 0x2a(a6)
0x000006cc   4                 60000016  bra.w 0x6e4
0x000006d0   6             046d0800ff22  subi.w 0x800, -0xde(a5)
0x000006d6   6             1b7c00fff9fa  move.b 0xff, -0x606(a5)
0x000006dc   4                 60000006  bra.w 0x6e4
0x000006e0   4                 600000c2  bra.w 0x7a4
0x000006e4   4                 41edff14  lea.l -0xec(a5), a0
0x000006e8   4                 4ead0452  jsr 0x452(a5)
0x000006ec   2                     6742  beq.b 0x730
0x000006ee   4                 42a80008  clr.l 0x8(a0)
0x000006f2   6             0c6d000bfea8  cmpi.w 0xb, -0x158(a5)
0x000006f8   2                     6628  bne.b 0x722
0x000006fa   4                 226df7f8  movea.l -0x808(a5), a1
0x000006fe   4                 b3e80018  cmpa.l 0x18(a0), a1
0x00000702   2                     661e  bne.b 0x722
0x00000704   6             046d1e00ff22  subi.w 0x1e00, -0xde(a5)
0x0000070a   2                     6e08  bgt.b 0x714
0x0000070c   4                 426dff22  clr.w -0xde(a5)
0x00000710   4                 60000092  bra.w 0x7a4
0x00000714   2                     3f00  move.w d0, -(a7)
0x00000716   4                 303c0017  move.w 0x17, d0
0x0000071a   4                 4ead0042  jsr 0x42(a5)
0x0000071e   2                     301f  move.w (a7)+, d0
0x00000720   2                     600e  bra.b 0x730
0x00000722   6             0c6d0001fea8  cmpi.w 0x1, -0x158(a5)
0x00000728   4                 6600007a  bne.w 0x7a4
0x0000072c   4                 4efa07ec  jmp 0xf1a(pc)
0x00000730   6             0c6d0001feda  cmpi.w 0x1, -0x126(a5)
0x00000736   4                 6d00003a  blt.w 0x772
0x0000073a   4                 4a6e002a  tst.w 0x2a(a6)
0x0000073e   4                 6e000032  bgt.w 0x772
0x00000742   4                 4a6dff24  tst.w -0xdc(a5)
0x00000746   2                     6f1a  ble.b 0x762
0x00000748   2                     3f00  move.w d0, -(a7)
0x0000074a   4                 303c000c  move.w 0xc, d0
0x0000074e   4                 4ead0042  jsr 0x42(a5)
0x00000752   2                     301f  move.w (a7)+, d0
0x00000754   4                 536dff24  subq.w 0x1, -0xdc(a5)
0x00000758   6             3d7c0014002a  move.w 0x14, 0x2a(a6)
0x0000075e   4                 6000029a  bra.w 0x9fa
0x00000762   6             046d0800ff22  subi.w 0x800, -0xde(a5)
0x00000768   6             1b7c00fff9fa  move.b 0xff, -0x606(a5)
0x0000076e   4                 60000002  bra.w 0x772
0x00000772   4                 4a2df9fa  tst.b -0x606(a5)
0x00000776   2                     671a  beq.b 0x792
0x00000778   4                 532df9fb  subq.b 0x1, -0x605(a5)
0x0000077c   2                     6e18  bgt.b 0x796
0x0000077e   2                     3f00  move.w d0, -(a7)
0x00000780   4                 303c0017  move.w 0x17, d0
0x00000784   4                 4ead0042  jsr 0x42(a5)
0x00000788   2                     301f  move.w (a7)+, d0
0x0000078a   6             1b7c000af9fb  move.b 0xa, -0x605(a5)
0x00000790   2                     6004  bra.b 0x796
0x00000792   4                 422df9fb  clr.b -0x605(a5)
0x00000796   4                 4a6dff22  tst.w -0xde(a5)
0x0000079a   4                 6e00025e  bgt.w 0x9fa
0x0000079e   2                     4240  clr.w d0
0x000007a0   4                 60000002  bra.w 0x7a4
0x000007a4   2                     3f00  move.w d0, -(a7)
0x000007a6   4                 303c000a  move.w 0xa, d0
0x000007aa   4                 4ead0042  jsr 0x42(a5)
0x000007ae   2                     301f  move.w (a7)+, d0
0x000007b0   4                 426dff22  clr.w -0xde(a5)
0x000007b4   4                 3e2e0012  move.w 0x12(a6), d7
0x000007b8   2                     e547  asl.w 0x2, d7
0x000007ba   4                 4efb7002  jmp 0x7be(pc, d7.w)
0x000007be   4                 4efa011e  jmp 0x8de(pc)
0x000007c2   4                 4efa01fa  jmp 0x9be(pc)
0x000007c6   4                 4efa0116  jmp 0x8de(pc)
0x000007ca   4                 4efa0112  jmp 0x8de(pc)
0x000007ce   4                 4efa020c  jmp 0x9dc(pc)
0x000007d2   4                 4efa01f8  jmp 0x9cc(pc)
0x000007d6   4                 4efa0106  jmp 0x8de(pc)
0x000007da   4                 4efa0182  jmp 0x95e(pc)
0x000007de   4                 4efa00fe  jmp 0x8de(pc)
0x000007e2   4                 4efa01e8  jmp 0x9cc(pc)
0x000007e6   4                 4efa01e4  jmp 0x9cc(pc)
0x000007ea   4                 4efa01e0  jmp 0x9cc(pc)
0x000007ee   4                 4efa00f8  jmp 0x8e8(pc)
0x000007f2   4                 4efa00ea  jmp 0x8de(pc)
0x000007f6   4                 4efa00e6  jmp 0x8de(pc)
0x000007fa   4                 4efa00e2  jmp 0x8de(pc)
0x000007fe   4                 4efa00de  jmp 0x8de(pc)
0x00000802   4                 4efa00da  jmp 0x8de(pc)
0x00000806   4                 4efa01c4  jmp 0x9cc(pc)
0x0000080a   4                 4efa01c0  jmp 0x9cc(pc)
0x0000080e   4                 4efa00ce  jmp 0x8de(pc)
0x00000812   4                 4efa00ca  jmp 0x8de(pc)
0x00000816   4                 4efa00c6  jmp 0x8de(pc)
0x0000081a   4                 4efa00c2  jmp 0x8de(pc)
0x0000081e   4                 4efa00be  jmp 0x8de(pc)
0x00000822   4                 4efa00ba  jmp 0x8de(pc)
0x00000826   4                 4efa00b6  jmp 0x8de(pc)
0x0000082a   4                 4efa00b2  jmp 0x8de(pc)
0x0000082e   4                 4efa00ae  jmp 0x8de(pc)
0x00000832   4                 4efa00aa  jmp 0x8de(pc)
0x00000836   4                 4efa00a6  jmp 0x8de(pc)
0x0000083a   4                 4efa00a2  jmp 0x8de(pc)
0x0000083e   4                 4efa009e  jmp 0x8de(pc)
0x00000842   4                 4efa009a  jmp 0x8de(pc)
0x00000846   4                 4efa0096  jmp 0x8de(pc)
0x0000084a   4                 4efa0092  jmp 0x8de(pc)
0x0000084e   4                 4efa008e  jmp 0x8de(pc)
0x00000852   4                 4efa008a  jmp 0x8de(pc)
0x00000856   4                 4efa0086  jmp 0x8de(pc)
0x0000085a   4                 4efa0082  jmp 0x8de(pc)
0x0000085e   4                 4efa007e  jmp 0x8de(pc)
0x00000862   4                 4efa007a  jmp 0x8de(pc)
0x00000866   4                 4efa0076  jmp 0x8de(pc)
0x0000086a   4                 4efa0072  jmp 0x8de(pc)
0x0000086e   4                 4efa006e  jmp 0x8de(pc)
0x00000872   4                 4efa006a  jmp 0x8de(pc)
0x00000876   4                 4efa0154  jmp 0x9cc(pc)
0x0000087a   4                 4efa0150  jmp 0x9cc(pc)
0x0000087e   4                 4efa005e  jmp 0x8de(pc)
0x00000882   4                 4efa005a  jmp 0x8de(pc)
0x00000886   4                 4efa0172  jmp 0x9fa(pc)
0x0000088a   4                 4efa0052  jmp 0x8de(pc)
0x0000088e   4                 4efa004e  jmp 0x8de(pc)
0x00000892   4                 4efa004a  jmp 0x8de(pc)
0x00000896   4                 4efa00ca  jmp 0x962(pc)
0x0000089a   4                 4efa0042  jmp 0x8de(pc)
0x0000089e   4                 4efa0110  jmp 0x9b0(pc)
0x000008a2   4                 4efa003a  jmp 0x8de(pc)
0x000008a6   4                 4efa0036  jmp 0x8de(pc)
0x000008aa   4                 4efa0032  jmp 0x8de(pc)
0x000008ae   4                 4efa002e  jmp 0x8de(pc)
0x000008b2   4                 4efa0146  jmp 0x9fa(pc)
0x000008b6   4                 4efa0114  jmp 0x9cc(pc)
0x000008ba   4                 4efa0022  jmp 0x8de(pc)
0x000008be   4                 4efa010c  jmp 0x9cc(pc)
0x000008c2   4                 4efa0108  jmp 0x9cc(pc)
0x000008c6   4                 4efa0016  jmp 0x8de(pc)
0x000008ca   4                 4efa0012  jmp 0x8de(pc)
0x000008ce   4                 4efa000e  jmp 0x8de(pc)
0x000008d2   4                 4efa004c  jmp 0x920(pc)
0x000008d6   4                 4efa0006  jmp 0x8de(pc)
0x000008da   4                 4efa011e  jmp 0x9fa(pc)
0x000008de   4                 3e2e0006  move.w 0x6(a6), d7
0x000008e2   6             3d727000000e  move.w (a2, d7.w), 0xe(a6)
0x000008e8   6             3d7c000d0012  move.w 0xd, 0x12(a6)
0x000008ee   6             3d7cffff0034  move.w 0xffff, 0x34(a6)
0x000008f4   4                 4a6e001e  tst.w 0x1e(a6)
0x000008f8   2                     6d10  blt.b 0x90a
0x000008fa   2                     4a40  tst.w d0
0x000008fc   2                     6d06  blt.b 0x904
0x000008fe   4                 47fafca6  lea.l 0x5a6(pc), a3
0x00000902   2                     6014  bra.b 0x918
0x00000904   4                 47fafcb8  lea.l 0x5be(pc), a3
0x00000908   2                     600e  bra.b 0x918
0x0000090a   2                     4a40  tst.w d0
0x0000090c   2                     6e06  bgt.b 0x914
0x0000090e   4                 47fafc7e  lea.l 0x58e(pc), a3
0x00000912   2                     6004  bra.b 0x918
0x00000914   4                 47fafcbc  lea.l 0x5d2(pc), a3
0x00000918   4                 2d4b0030  move.l a3, 0x30(a6)
0x0000091c   4                 600000dc  bra.w 0x9fa
0x00000920   6             046e0011000e  subi.w 0x11, 0xe(a6)
0x00000926   6             3d7c000d0012  move.w 0xd, 0x12(a6)
0x0000092c   6             3d7cffff0034  move.w 0xffff, 0x34(a6)
0x00000932   6             0c6e00100030  cmpi.w 0x10, 0x30(a6)
0x00000938   2                     660c  bne.b 0x946
0x0000093a   6             066e0011000e  addi.w 0x11, 0xe(a6)
0x00000940   4                 47fafc38  lea.l 0x57a(pc), a3
0x00000944   2                     6010  bra.b 0x956
0x00000946   4                 4a6e001e  tst.w 0x1e(a6)
0x0000094a   2                     6d06  blt.b 0x952
0x0000094c   4                 47fafc60  lea.l 0x5ae(pc), a3
0x00000950   2                     6004  bra.b 0x956
0x00000952   4                 47fafc42  lea.l 0x596(pc), a3
0x00000956   4                 2d4b0030  move.l a3, 0x30(a6)
0x0000095a   4                 6000009e  bra.w 0x9fa
0x0000095e   4                 4efaf908  jmp 0x268(pc)
0x00000962   6             0c6e00140034  cmpi.w 0x14, 0x34(a6)
0x00000968   4                 6700ff74  beq.w 0x8de
0x0000096c   6             0c6e00000034  cmpi.w 0x0, 0x34(a6)
0x00000972   4                 6700ff6a  beq.w 0x8de
0x00000976   4                 48e7e040  movem.l d0-d2/a1, -(a7)
0x0000097a   4                 302e000c  move.w 0xc(a6), d0
0x0000097e   4                 322e000e  move.w 0xe(a6), d1
0x00000982   2                     5541  subq.w 0x2, d1
0x00000984   2                     7a30  moveq 0x30, d5
0x00000986   4                 4ead05c2  jsr 0x5c2(a5)
0x0000098a   4                 4a6e001e  tst.w 0x1e(a6)
0x0000098e   2                     6e0a  bgt.b 0x99a
0x00000990   4                 0640001e  addi.w 0x1e, d0
0x00000994   4                 343c0002  move.w 0x2, d2
0x00000998   2                     6006  bra.b 0x9a0
0x0000099a   4                 0440001e  subi.w 0x1e, d0
0x0000099e   2                     4242  clr.w d2
0x000009a0   4                 06410019  addi.w 0x19, d1
0x000009a4   4                 4ead05da  jsr 0x5da(a5)
0x000009a8   4                 4cdf0207  movem.l (a7)+, d0-d2/a1
0x000009ac   4                 6000ff30  bra.w 0x8de
0x000009b0   6             3d7c00280030  move.w 0x28, 0x30(a6)
0x000009b6   4                 426e0032  clr.w 0x32(a6)
0x000009ba   4                 6000003e  bra.w 0x9fa
0x000009be   4                 362e0004  move.w 0x4(a6), d3
0x000009c2   6             3d72300c0006  move.w 0xc(a2, d3.w), 0x6(a6)
0x000009c8   4                 60000002  bra.w 0x9cc
0x000009cc   4                 302e000c  move.w 0xc(a6), d0
0x000009d0   4                 322e000e  move.w 0xe(a6), d1
0x000009d4   4                 4eba1a00  jsr 0x23d6(pc)
0x000009d8   4                 4efa12e6  jmp 0x1cc0(pc)
0x000009dc   4                 302e000c  move.w 0xc(a6), d0
0x000009e0   4                 322e000e  move.w 0xe(a6), d1
0x000009e4   4                 362e0006  move.w 0x6(a6), d3
0x000009e8   4                 b2723000  cmp.w (a2, d3.w), d1
0x000009ec   2                     6f04  ble.b 0x9f2
0x000009ee   2                     5843  addq.w 0x4, d3
0x000009f0   2                     60f6  bra.b 0x9e8
0x000009f2   4                 3d430006  move.w d3, 0x6(a6)
0x000009f6   4                 4efa12c8  jmp 0x1cc0(pc)
0x000009fa   2                     4e75  rts
0x000009fc   4                 3e325004  move.w 0x4(a2, d5.w), d7
0x00000a00   4                 024700ff  andi.w 0xff, d7
0x00000a04   2                     5347  subq.w 0x1, d7
0x00000a06   2                     e747  asl.w 0x3, d7
0x00000a08   4                 3d450004  move.w d5, 0x4(a6)
0x00000a0c   4                 4efb7006  jmp 0xa14(pc, d7.w)
0x00000a10   2                     4e75  rts
0x00000a12   4                 0000426e  ori.b 0x6e, d0
0x00000a16   4                 00124e75  ori.b 0x75, (a2)
0x00000a1a   4                 00006000  ori.b 0x0, d0
0x00000a1e   4                 021a0000  andi.b 0x0, (a2)+
0x00000a22   4                 00006000  ori.b 0x0, d0
0x00000a26   4                 02120000  andi.b 0x0, (a2)
0x00000a2a   4                 00006000  ori.b 0x0, d0
0x00000a2e   4                 020a0000  
0x00000a32   4                 00006000  ori.b 0x0, d0
0x00000a36   4                 03ee0000  bset.b d1, 0x0(a6)
0x00000a3a   4                 0000426e  ori.b 0x6e, d0
0x00000a3e   4                 00124e75  ori.b 0x75, (a2)
0x00000a42   4                 0000426e  ori.b 0x6e, d0
0x00000a46   4                 00124e75  ori.b 0x75, (a2)
0x00000a4a   4                 0000426e  ori.b 0x6e, d0
0x00000a4e   4                 00124e75  ori.b 0x75, (a2)
0x00000a52   4                 00003d7c  ori.b 0x7c, d0
0x00000a56   4                 00080012  
0x00000a5a   2                     4e75  rts
0x00000a5c   6             3d7c00080012  move.w 0x8, 0x12(a6)
0x00000a62   2                     4e75  rts
0x00000a64   6             3d7c00080012  move.w 0x8, 0x12(a6)
0x00000a6a   2                     4e75  rts
0x00000a6c   4                 426e0012  clr.w 0x12(a6)
0x00000a70   2                     4e75  rts
0x00000a72   4                 00003d7c  ori.b 0x7c, d0
0x00000a76   4                 00120012  ori.b 0x12, (a2)
0x00000a7a   2                     4e75  rts
0x00000a7c   6             3d7c00100012  move.w 0x10, 0x12(a6)
0x00000a82   2                     4e75  rts
0x00000a84   2                     4e75  rts
0x00000a86   4                 00000000  ori.b 0x0, d0
0x00000a8a   4                 00003d7c  ori.b 0x7c, d0
0x00000a8e   4                 00140012  ori.b 0x12, (a4)
0x00000a92   2                     4e75  rts
0x00000a94   6             3d7c00160012  move.w 0x16, 0x12(a6)
0x00000a9a   2                     4e75  rts
0x00000a9c   6             3d7c00170012  move.w 0x17, 0x12(a6)
0x00000aa2   2                     4e75  rts
0x00000aa4   6             3d7c003f0012  move.w 0x3f, 0x12(a6)
0x00000aaa   2                     4e75  rts
0x00000aac   2                     4e75  rts
0x00000aae   4                 00000000  ori.b 0x0, d0
0x00000ab2   4                 00004e75  ori.b 0x75, d0
0x00000ab6   4                 00000000  ori.b 0x0, d0
0x00000aba   4                 00004a9f  ori.b 0x9f, d0
0x00000abe   4                 6000012e  bra.w 0xbee
0x00000ac2   4                 00006000  ori.b 0x0, d0
0x00000ac6   2                     015a  bchg.b d0, (a2)+
0x00000ac8   4                 00000000  ori.b 0x0, d0
0x00000acc   4                 600001ae  bra.w 0xc7c
0x00000ad0   4                 00000000  ori.b 0x0, d0
0x00000ad4   4                 60000266  bra.w 0xd3c
0x00000ad8   4                 00000000  ori.b 0x0, d0
0x00000adc   4                 600001c8  bra.w 0xca6
0x00000ae0   4                 00000000  ori.b 0x0, d0
0x00000ae4   4                 6000027a  bra.w 0xd60
0x00000ae8   4                 00000000  ori.b 0x0, d0
0x00000aec   6             3d7c00260012  move.w 0x26, 0x12(a6)
0x00000af2   2                     4e75  rts
0x00000af4   6             3d7c00280012  move.w 0x28, 0x12(a6)
0x00000afa   2                     4e75  rts
0x00000afc   2                     4e71  nop
0x00000afe   4                 00000000  ori.b 0x0, d0
0x00000b02   4                 00006000  ori.b 0x0, d0
0x00000b06   2                     01a0  bclr.b d0, -(a0)
0x00000b08   4                 00000000  ori.b 0x0, d0
0x00000b0c   4                 60000198  bra.w 0xca6
0x00000b10   4                 00000000  ori.b 0x0, d0
0x00000b14   6             3d7c002e0012  move.w 0x2e, 0x12(a6)
0x00000b1a   2                     4e75  rts
0x00000b1c   6             3d7c002e0012  move.w 0x2e, 0x12(a6)
0x00000b22   2                     4e75  rts
0x00000b24   4                 426e0030  clr.w 0x30(a6)
0x00000b28   4                 600000f6  bra.w 0xc20
0x00000b2c   6             3d7c00310012  move.w 0x31, 0x12(a6)
0x00000b32   2                     4e75  rts
0x00000b34   4                 600000ea  bra.w 0xc20
0x00000b38   4                 00000000  ori.b 0x0, d0
0x00000b3c   4                 60000106  bra.w 0xc44
0x00000b40   4                 00000000  ori.b 0x0, d0
0x00000b44   4                 6000011a  bra.w 0xc60
0x00000b48   4                 00000000  ori.b 0x0, d0
0x00000b4c   4                 426e0012  clr.w 0x12(a6)
0x00000b50   2                     4e75  rts
0x00000b52   4                 00006000  ori.b 0x0, d0
0x00000b56   4                 01f20000  bset.b d0, (a2, d0.w)
0x00000b5a   4                 00006000  ori.b 0x0, d0
0x00000b5e   4                 01f60000  bset.b d0, (a6, d0.w)
0x00000b62   4                 0000426e  ori.b 0x6e, d0
0x00000b66   4                 00124e75  ori.b 0x75, (a2)
0x00000b6a   4                 00006000  ori.b 0x0, d0
0x00000b6e   6             023000000000  andi.b 0x0, (a0, d0.w)
0x00000b74   6             3d7c00370012  move.w 0x37, 0x12(a6)
0x00000b7a   2                     4e75  rts
0x00000b7c   4                 6000015a  bra.w 0xcd8
0x00000b80   4                 00000000  ori.b 0x0, d0
0x00000b84   6             3d7c00390012  move.w 0x39, 0x12(a6)
0x00000b8a   2                     4e75  rts
0x00000b8c   6             3d7c003a0012  move.w 0x3a, 0x12(a6)
0x00000b92   2                     6050  bra.b 0xbe4
0x00000b94   6             3d7c003b0012  move.w 0x3b, 0x12(a6)
0x00000b9a   2                     6048  bra.b 0xbe4
0x00000b9c   6             3d7c003c0012  move.w 0x3c, 0x12(a6)
0x00000ba2   2                     4e75  rts
0x00000ba4   4                 60000082  bra.w 0xc28
0x00000ba8   4                 00000000  ori.b 0x0, d0
0x00000bac   4                 600000da  bra.w 0xc88
0x00000bb0   4                 00000000  ori.b 0x0, d0
0x00000bb4   4                 4eed06ba  jmp 0x6ba(a5)
0x00000bb8   4                 00000000  ori.b 0x0, d0
0x00000bbc   4                 6000012a  bra.w 0xce8
0x00000bc0   4                 00000000  ori.b 0x0, d0
0x00000bc4   6             3d7c00440012  move.w 0x44, 0x12(a6)
0x00000bca   2                     6018  bra.b 0xbe4
0x00000bcc   6             3d7c00450012  move.w 0x45, 0x12(a6)
0x00000bd2   2                     6010  bra.b 0xbe4
0x00000bd4   6             3d7c00460012  move.w 0x46, 0x12(a6)
0x00000bda   2                     6008  bra.b 0xbe4
0x00000bdc   6             3d7c00470012  move.w 0x47, 0x12(a6)
0x00000be2   2                     4e71  nop
0x00000be4   4                 426e0030  clr.w 0x30(a6)
0x00000be8   4                 426e0032  clr.w 0x32(a6)
0x00000bec   2                     4e75  rts
0x00000bee   6             3d7c00380012  move.w 0x38, 0x12(a6)
0x00000bf4   6             0c6d000cfea8  cmpi.w 0xc, -0x158(a5)
0x00000bfa   2                     660c  bne.b 0xc08
0x00000bfc   6             3d7c00200030  move.w 0x20, 0x30(a6)
0x00000c02   4                 426e0032  clr.w 0x32(a6)
0x00000c06   2                     4e75  rts
0x00000c08   6             3d7c00240030  move.w 0x24, 0x30(a6)
0x00000c0e   4                 426e0032  clr.w 0x32(a6)
0x00000c12   2                     3f00  move.w d0, -(a7)
0x00000c14   4                 303c0056  move.w 0x56, d0
0x00000c18   4                 4ead0042  jsr 0x42(a5)
0x00000c1c   2                     301f  move.w (a7)+, d0
0x00000c1e   2                     4e75  rts
0x00000c20   6             3d7c00300012  move.w 0x30, 0x12(a6)
0x00000c26   2                     4e75  rts
0x00000c28   4                 426e0030  clr.w 0x30(a6)
0x00000c2c   4                 426e0010  clr.w 0x10(a6)
0x00000c30   6             3d7c003e0012  move.w 0x3e, 0x12(a6)
0x00000c36   2                     60ac  bra.b 0xbe4
0x00000c38   4                 426e0032  clr.w 0x32(a6)
0x00000c3c   6             3d7c00020012  move.w 0x2, 0x12(a6)
0x00000c42   2                     4e75  rts
0x00000c44   4                 4a6e000a  tst.w 0xa(a6)
0x00000c48   2                     6708  beq.b 0xc52
0x00000c4a   4                 06450012  addi.w 0x12, d5
0x00000c4e   4                 600001d4  bra.w 0xe24
0x00000c52   6             3d7c00020012  move.w 0x2, 0x12(a6)
0x00000c58   6             3d7c00080032  move.w 0x8, 0x32(a6)
0x00000c5e   2                     4e75  rts
0x00000c60   4                 4a6e000a  tst.w 0xa(a6)
0x00000c64   2                     6708  beq.b 0xc6e
0x00000c66   4                 06450012  addi.w 0x12, d5
0x00000c6a   4                 600001b8  bra.w 0xe24
0x00000c6e   6             3d7c00020012  move.w 0x2, 0x12(a6)
0x00000c74   6             3d7cfff80032  move.w 0xfff8, 0x32(a6)
0x00000c7a   2                     4e75  rts
0x00000c7c   6             3d7c00230012  move.w 0x23, 0x12(a6)
0x00000c82   4                 426e0030  clr.w 0x30(a6)
0x00000c86   2                     4e75  rts
0x00000c88   6             3d7c003f0012  move.w 0x3f, 0x12(a6)
0x00000c8e   4                 4a2dfeb5  tst.b -0x14b(a5)
0x00000c92   2                     670c  beq.b 0xca0
0x00000c94   6             3d7c00080030  move.w 0x8, 0x30(a6)
0x00000c9a   4                 51edfeb5  sf.b -0x14b(a5)
0x00000c9e   2                     6004  bra.b 0xca4
0x00000ca0   4                 426e0030  clr.w 0x30(a6)
0x00000ca4   2                     4e75  rts
0x00000ca6   4                 4a2dfeb5  tst.b -0x14b(a5)
0x00000caa   2                     6708  beq.b 0xcb4
0x00000cac   6             3d7c00290012  move.w 0x29, 0x12(a6)
0x00000cb2   2                     4e75  rts
0x00000cb4   4                 426e0012  clr.w 0x12(a6)
0x00000cb8   4                 30325006  move.w 0x6(a2, d5.w), d0
0x00000cbc   4                 3d40000c  move.w d0, 0xc(a6)
0x00000cc0   4                 32325008  move.w 0x8(a2, d5.w), d1
0x00000cc4   4                 3d41000e  move.w d1, 0xe(a6)
0x00000cc8   6             3d72500c0006  move.w 0xc(a2, d5.w), 0x6(a6)
0x00000cce   4                 3832500a  move.w 0xa(a2, d5.w), d4
0x00000cd2   4                 3d440004  move.w d4, 0x4(a6)
0x00000cd6   2                     4e75  rts
0x00000cd8   4                 426e0030  clr.w 0x30(a6)
0x00000cdc   6             3d7c00380012  move.w 0x38, 0x12(a6)
0x00000ce2   4                 426e0036  clr.w 0x36(a6)
0x00000ce6   2                     4e75  rts
0x00000ce8   2                     3f00  move.w d0, -(a7)
0x00000cea   4                 303c0060  move.w 0x60, d0
0x00000cee   4                 4ead0042  jsr 0x42(a5)
0x00000cf2   2                     301f  move.w (a7)+, d0
0x00000cf4   4                 426e003c  clr.w 0x3c(a6)
0x00000cf8   6             3d7c000c0030  move.w 0xc, 0x30(a6)
0x00000cfe   6             3d7250080038  move.w 0x8(a2, d5.w), 0x38(a6)
0x00000d04   6             3d725006001e  move.w 0x6(a2, d5.w), 0x1e(a6)
0x00000d0a   2                     6d06  blt.b 0xd12
0x00000d0c   6             066e00120038  addi.w 0x12, 0x38(a6)
0x00000d12   6             3d7c00380012  move.w 0x38, 0x12(a6)
0x00000d18   4                 426e0036  clr.w 0x36(a6)
0x00000d1c   4                 426e003a  clr.w 0x3a(a6)
0x00000d20   4                 3232500a  move.w 0xa(a2, d5.w), d1
0x00000d24   4                 3d41000e  move.w d1, 0xe(a6)
0x00000d28   4                 362e0006  move.w 0x6(a6), d3
0x00000d2c   4                 b27230fc  cmp.w -0x4(a2, d3.w), d1
0x00000d30   2                     6e04  bgt.b 0xd36
0x00000d32   2                     5943  subq.w 0x4, d3
0x00000d34   2                     60f6  bra.b 0xd2c
0x00000d36   4                 3d430006  move.w d3, 0x6(a6)
0x00000d3a   2                     4e75  rts
0x00000d3c   6             3d7c00240012  move.w 0x24, 0x12(a6)
0x00000d42   4                 426e0030  clr.w 0x30(a6)
0x00000d46   2                     4e75  rts
0x00000d48   6             3d7c00350012  move.w 0x35, 0x12(a6)
0x00000d4e   4                 426e0034  clr.w 0x34(a6)
0x00000d52   2                     4e75  rts
0x00000d54   6             3d7c00360012  move.w 0x36, 0x12(a6)
0x00000d5a   4                 426e0034  clr.w 0x34(a6)
0x00000d5e   2                     4e75  rts
0x00000d60   4                 3e325000  move.w (a2, d5.w), d7
0x00000d64   2                     5347  subq.w 0x1, d7
0x00000d66   4                 be7250f0  cmp.w -0x10(a2, d5.w), d7
0x00000d6a   2                     6710  beq.b 0xd7c
0x00000d6c   4                 06450012  addi.w 0x12, d5
0x00000d70   4                 30325000  move.w (a2, d5.w), d0
0x00000d74   4                 3d40000c  move.w d0, 0xc(a6)
0x00000d78   4                 6000fc82  bra.w 0x9fc
0x00000d7c   4                 3e325002  move.w 0x2(a2, d5.w), d7
0x00000d80   2                     5247  addq.w 0x1, d7
0x00000d82   4                 be725012  cmp.w 0x12(a2, d5.w), d7
0x00000d86   2                     6710  beq.b 0xd98
0x00000d88   4                 04450012  subi.w 0x12, d5
0x00000d8c   4                 30325002  move.w 0x2(a2, d5.w), d0
0x00000d90   4                 3d40000c  move.w d0, 0xc(a6)
0x00000d94   4                 6000fc66  bra.w 0x9fc
0x00000d98   4                 426e0012  clr.w 0x12(a6)
0x00000d9c   2                     4e75  rts
0x00000d9e   2                     3f00  move.w d0, -(a7)
0x00000da0   4                 303c0015  move.w 0x15, d0
0x00000da4   4                 4ead0042  jsr 0x42(a5)
0x00000da8   2                     301f  move.w (a7)+, d0
0x00000daa   4                 36325006  move.w 0x6(a2, d5.w), d3
0x00000dae   4                 3d430006  move.w d3, 0x6(a6)
0x00000db2   6             3d723000000e  move.w (a2, d3.w), 0xe(a6)
0x00000db8   4                 38323002  move.w 0x2(a2, d3.w), d4
0x00000dbc   4                 4a6e0030  tst.w 0x30(a6)
0x00000dc0   2                     6e1a  bgt.b 0xddc
0x00000dc2   4                 47faf47b  lea.l 0x23f(pc), a3
0x00000dc6   4                 0440001e  subi.w 0x1e, d0
0x00000dca   4                 3c2e0038  move.w 0x38(a6), d6
0x00000dce   2                     6724  beq.b 0xdf4
0x00000dd0   2                     b046  cmp.w d6, d0
0x00000dd2   2                     6c20  bge.b 0xdf4
0x00000dd4   4                 302e0038  move.w 0x38(a6), d0
0x00000dd8   2                     5840  addq.w 0x4, d0
0x00000dda   2                     6018  bra.b 0xdf4
0x00000ddc   4                 47faf475  lea.l 0x253(pc), a3
0x00000de0   4                 0640001e  addi.w 0x1e, d0
0x00000de4   4                 3c2e0038  move.w 0x38(a6), d6
0x00000de8   2                     670a  beq.b 0xdf4
0x00000dea   2                     b046  cmp.w d6, d0
0x00000dec   2                     6f06  ble.b 0xdf4
0x00000dee   4                 302e0038  move.w 0x38(a6), d0
0x00000df2   2                     5940  subq.w 0x4, d0
0x00000df4   4                 06440012  addi.w 0x12, d4
0x00000df8   4                 b0724002  cmp.w 0x2(a2, d4.w), d0
0x00000dfc   2                     6ef6  bgt.b 0xdf4
0x00000dfe   4                 3d440004  move.w d4, 0x4(a6)
0x00000e02   4                 3d40000c  move.w d0, 0xc(a6)
0x00000e06   6             3d7c000c0012  move.w 0xc, 0x12(a6)
0x00000e0c   4                 2d4b0030  move.l a3, 0x30(a6)
0x00000e10   6             046d0f00ff22  subi.w 0xf00, -0xde(a5)
0x00000e16   2                     3f00  move.w d0, -(a7)
0x00000e18   4                 303c0015  move.w 0x15, d0
0x00000e1c   4                 4ead0042  jsr 0x42(a5)
0x00000e20   2                     301f  move.w (a7)+, d0
0x00000e22   2                     4e75  rts
0x00000e24   4                 426e0012  clr.w 0x12(a6)
0x00000e28   6             1b72500bfa05  move.b 0xb(a2, d5.w), -0x5fb(a5)
0x00000e2e   6             3b725006fea6  move.w 0x6(a2, d5.w), -0x15a(a5)
0x00000e34   6             3b725008fea4  move.w 0x8(a2, d5.w), -0x15c(a5)
0x00000e3a   4                 50edfefd  st.b -0x103(a5)
0x00000e3e   2                     4e75  rts

0x00000e40   2                     3a04  move.w d4, d5
0x00000e42   4                 04450012  subi.w #18, d5
0x00000e46   4                 3c325002  move.w _RX(a2,d5.w), d6
0x00000e4a   2                     5246  addq.w #1, d6
0x00000e4c   4                 bc724000  cmp.w _LX(a2,d4.w), d6
0x00000e50   4                 67000006  beq.w 0xe58
0x00000e54   4                 4efa10d0  jmp 0x1f26(pc)

0x00000e58   6             0c7200065004  cmpi.w #F_LAND,_TL(a2,d5.w)
0x00000e5e   2                     660e  bne.b 0xe6e
0x00000e60   4                 30324000  move.w _LX(a2,d4.w), d0
0x00000e64   4                 3d40000c  move.w d0, _X(a6)
0x00000e68   4                 426e0008  clr.w _JOYX(a6)
0x00000e6c   2                     4e75  rts

0x00000e6e   6             0c72001b5004  cmpi.w 0x1b, 0x4(a2, d5.w)
0x00000e74   2                     6628  bne.b 0xe9e
0x00000e76   4                 47faf377  lea.l 0x1ef(pc), a3
0x00000e7a   6             3d7c000c0012  move.w 0xc, 0x12(a6)
0x00000e80   4                 2d4b0030  move.l a3, 0x30(a6)
0x00000e84   6             046d0f00ff22  subi.w 0xf00, -0xde(a5)
0x00000e8a   4                 30324000  move.w (a2, d4.w), d0
0x00000e8e   2                     5740  subq.w 0x3, d0
0x00000e90   6             0c7200294004  cmpi.w 0x29, 0x4(a2, d4.w)
0x00000e96   2                     66cc  bne.b 0xe64
0x00000e98   4                 486d05b2  pea.l 0x5b2(a5)
0x00000e9c   2                     60c6  bra.b 0xe64
0x00000e9e   4                 6000fb5c  bra.w 0x9fc
0x00000ea2   2                     3a04  move.w d4, d5
0x00000ea4   4                 06450012  addi.w 0x12, d5
0x00000ea8   4                 3c325000  move.w (a2, d5.w), d6
0x00000eac   2                     5346  subq.w 0x1, d6
0x00000eae   4                 bc724002  cmp.w 0x2(a2, d4.w), d6
0x00000eb2   4                 67000006  beq.w 0xeba
0x00000eb6   4                 4efa106e  jmp 0x1f26(pc)
0x00000eba   6             0c7200065004  cmpi.w 0x6, 0x4(a2, d5.w)
0x00000ec0   2                     660e  bne.b 0xed0
0x00000ec2   4                 30324002  move.w 0x2(a2, d4.w), d0
0x00000ec6   4                 3d40000c  move.w d0, 0xc(a6)
0x00000eca   4                 426e0008  clr.w 0x8(a6)
0x00000ece   2                     4e75  rts
0x00000ed0   6             0c72001b5004  cmpi.w 0x1b, 0x4(a2, d5.w)
0x00000ed6   2                     6628  bne.b 0xf00
0x00000ed8   4                 47faf329  lea.l 0x203(pc), a3
0x00000edc   6             3d7c000c0012  move.w 0xc, 0x12(a6)
0x00000ee2   4                 2d4b0030  move.l a3, 0x30(a6)
0x00000ee6   6             046d0f00ff22  subi.w 0xf00, -0xde(a5)
0x00000eec   4                 30324002  move.w 0x2(a2, d4.w), d0
0x00000ef0   2                     5d40  subq.w 0x6, d0
0x00000ef2   6             0c7200294004  cmpi.w 0x29, 0x4(a2, d4.w)
0x00000ef8   2                     66cc  bne.b 0xec6
0x00000efa   4                 486d05b2  pea.l 0x5b2(a5)
0x00000efe   2                     60c6  bra.b 0xec6
0x00000f00   4                 6000fafa  bra.w 0x9fc
0x00000f04   6             3d7c00050012  move.w 0x5, 0x12(a6)
0x00000f0a   4                 3d410030  move.w d1, 0x30(a6)
0x00000f0e   6             3d7c000a0032  move.w 0xa, 0x32(a6)
0x00000f14   4                 426e0034  clr.w 0x34(a6)
0x00000f18   2                     4e75  rts

0x00000f1a   4                 47fa009e  lea.l 0xfba(pc), a3
0x00000f1e   4                 2d4b0030  move.l a3, 0x30(a6)

0x00000f22   2                     3f00  move.w d0, -(a7)
0x00000f24   4                 303c0053  move.w 0x53, d0
0x00000f28   4                 4ead0042  jsr 0x42(a5)
0x00000f2c   2                     301f  move.w (a7)+, d0
0x00000f2e   6             3d7c002c0012  move.w 0x2c, 0x12(a6)
0x00000f34   6             3d7cffff0034  move.w 0xffff, 0x34(a6)
0x00000f3a   4                 426dff22  clr.w -0xde(a5)
0x00000f3e   4                 322e000e  move.w 0xe(a6), d1
0x00000f42   2                     2456  movea.l (a6), a2
0x00000f44   4                 4eba1490  jsr 0x23d6(pc)
0x00000f48   2                     4e75  rts

0x00000f4a   4                 47fa005e  lea.l 0xfaa(pc), a3
0x00000f4e   4                 2d4b0030  move.l a3, 0x30(a6)
0x00000f52   2                     60ce  bra.b 0xf22

0x00000f54   4                 266e0030  movea.l 0x30(a6), a3
0x00000f58   2                     161b  move.b (a3)+, d3
0x00000f5a   2                     4883  ext.w d3
0x00000f5c   2                     d043  add.w d3, d0
0x00000f5e   2                     161b  move.b (a3)+, d3
0x00000f60   2                     4883  ext.w d3
0x00000f62   2                     d243  add.w d3, d1
0x00000f64   2                     161b  move.b (a3)+, d3
0x00000f66   2                     4883  ext.w d3
0x00000f68   4                 43edf44c  lea.l -0xbb4(a5), a1
0x00000f6c   2                     d2c3  adda.w d3, a1
0x00000f6e   2                     2251  movea.l (a1), a1
0x00000f70   2                     141b  move.b (a3)+, d2
0x00000f72   2                     4882  ext.w d2
0x00000f74   2                     6c1a  bge.b 0xf90
0x00000f76   4                 0c42fffe  cmpi.w 0xfffe, d2
0x00000f7a   2                     670c  beq.b 0xf88
0x00000f7c   6             3d7c00280034  move.w 0x28, 0x34(a6)
0x00000f82   4                 2d4b0030  move.l a3, 0x30(a6)
0x00000f86   2                     60cc  bra.b 0xf54
0x00000f88   4                 322e000e  move.w 0xe(a6), d1
0x00000f8c   4                 4efa004c  jmp 0xfda(pc)
0x00000f90   4                 206dffa0  movea.l -0x60(a5), a0
0x00000f94   4                 536e0034  subq.w 0x1, 0x34(a6)
0x00000f98   2                     6604  bne.b 0xf9e
0x00000f9a   4                 4efaf560  jmp 0x4fc(pc)
0x00000f9e   2                     6e04  bgt.b 0xfa4
0x00000fa0   4                 2d4b0030  move.l a3, 0x30(a6)
0x00000fa4   4                 4ead02e2  jsr 0x2e2(a5)
0x00000fa8   2                     4e75  rts

0x00000faa   2                     fbfa  invalid
0x00000fac   2                     4400  neg.b d0
0x00000fae   2                     fbfa  invalid
0x00000fb0   2                     4401  neg.b d1
0x00000fb2   2                     fbfa  invalid
0x00000fb4   2                     4400  neg.b d0
0x00000fb6   2                     fbfa  invalid
0x00000fb8   2                     4401  neg.b d1

0x00000fba   2                     fbfa  invalid
0x00000fbc   2                     4400  neg.b d0
0x00000fbe   2                     fbfa  invalid
0x00000fc0   2                     4402  neg.b d2
0x00000fc2   2                     fbfe  invalid
0x00000fc4   2                     4403  neg.b d3
0x00000fc6   4                 000000fe  ori.b 0xfe, d0

0x00000fca   2                     fb0a  invalid
0x00000fcc   2                     4800  nbcd.b d0
0x00000fce   2                     fb0a  invalid
0x00000fd0   2                     4801  nbcd.b d1
0x00000fd2   4                 000000ff  ori.b 0xff, d0
0x00000fd6   2                     fb0a  invalid
0x00000fd8   2                     4802  nbcd.b d2

0x00000fda   6             3d7c002d0012  move.w 0x2d, 0x12(a6)
0x00000fe0   6             3d7c00080032  move.w 0x8, 0x32(a6)
0x00000fe6   4                 d26e0032  add.w 0x32(a6), d1
0x00000fea   4                 5c6e0032  addq.w 0x6, 0x32(a6)
0x00000fee   4                 362e0006  move.w 0x6(a6), d3
0x00000ff2   4                 3e323000  move.w (a2, d3.w), d7
0x00000ff6   2                     be41  cmp.w d1, d7
0x00000ff8   2                     6004  bra.b 0xffe
0x00000ffa   2                     5843  addq.w 0x4, d3
0x00000ffc   2                     60f4  bra.b 0xff2
0x00000ffe   4                 6e00007a  bgt.w 0x107a
0x00001002   4                 38323002  move.w 0x2(a2, d3.w), d4
0x00001006   4                 06440012  addi.w 0x12, d4
0x0000100a   4                 b0724002  cmp.w 0x2(a2, d4.w), d0
0x0000100e   2                     6e3a  bgt.b 0x104a
0x00001010   4                 b0724000  cmp.w (a2, d4.w), d0
0x00001014   2                     6de4  blt.b 0xffa
0x00001016   6             0c7202004004  cmpi.w 0x200, 0x4(a2, d4.w)
0x0000101c   2                     6cdc  bge.b 0xffa
0x0000101e   6             0c72000e4004  cmpi.w 0xe, 0x4(a2, d4.w)
0x00001024   2                     67d4  beq.b 0xffa
0x00001026   2                     3e00  move.w d0, d7
0x00001028   4                 0647001e  addi.w 0x1e, d7
0x0000102c   4                 be724002  cmp.w 0x2(a2, d4.w), d7
0x00001030   2                     6f12  ble.b 0x1044
0x00001032   4                 06440012  addi.w 0x12, d4
0x00001036   4                 4ab24000  tst.l (a2, d4.w)
0x0000103a   2                     67be  beq.b 0xffa
0x0000103c   4                 be724000  cmp.w (a2, d4.w), d7
0x00001040   2                     6db8  blt.b 0xffa
0x00001042   2                     60e8  bra.b 0x102c
0x00001044   4                 32323000  move.w (a2, d3.w), d1
0x00001048   2                     600c  bra.b 0x1056
0x0000104a   4                 06440012  addi.w 0x12, d4
0x0000104e   4                 4a724000  tst.w (a2, d4.w)
0x00001052   2                     67a6  beq.b 0xffa
0x00001054   2                     60b4  bra.b 0x100a
0x00001056   4                 3d41000e  move.w d1, 0xe(a6)
0x0000105a   4                 3d440004  move.w d4, 0x4(a6)
0x0000105e   4                 3d430006  move.w d3, 0x6(a6)
0x00001062   4                 47faff66  lea.l 0xfca(pc), a3
0x00001066   4                 2d4b0030  move.l a3, 0x30(a6)
0x0000106a   6             3d7c002c0012  move.w 0x2c, 0x12(a6)
0x00001070   6             3d7cffff0034  move.w 0xffff, 0x34(a6)
0x00001076   4                 4efafedc  jmp 0xf54(pc)

0x0000107a   4                 3d430006  move.w d3, 0x6(a6)
0x0000107e   4                 3d41000e  move.w d1, 0xe(a6)
0x00001082   2                     5d41  subq.w 0x6, d1
0x00001084   2                     5b40  subq.w 0x5, d0
0x00001086   4                 206dffa0  movea.l -0x60(a5), a0
0x0000108a   4                 226df490  movea.l -0xb70(a5), a1
0x0000108e   4                 343c0003  move.w 0x3, d2
0x00001092   4                 4ead02e2  jsr 0x2e2(a5)
0x00001096   2                     4e75  rts
0x00001098   6             3d7c00330012  move.w 0x33, 0x12(a6)
0x0000109e   4                 426e003a  clr.w 0x3a(a6)
0x000010a2   6             3d7c000a0032  move.w 0xa, 0x32(a6)
0x000010a8   4                 2d490034  move.l a1, 0x34(a6)
0x000010ac   4                 3d420038  move.w d2, 0x38(a6)
0x000010b0   2                     6020  bra.b 0x10d2
0x000010b2   6             377c0033001a  move.w 0x33, 0x1a(a3)
0x000010b8   6             377c000a003a  move.w 0xa, 0x3a(a3)
0x000010be   6             276df4c8003c  move.l -0xb38(a5), 0x3c(a3)
0x000010c4   4                 426b0040  clr.w 0x40(a3)
0x000010c8   6             377c00010042  move.w 0x1, 0x42(a3)
0x000010ce   4                 6000008c  bra.w 0x115c
0x000010d2   4                 d26e0032  add.w 0x32(a6), d1
0x000010d6   4                 506e0032  addq.w 0x8, 0x32(a6)
0x000010da   4                 362e0006  move.w 0x6(a6), d3
0x000010de   4                 3e323000  move.w (a2, d3.w), d7
0x000010e2   2                     be41  cmp.w d1, d7
0x000010e4   2                     6004  bra.b 0x10ea
0x000010e6   2                     5843  addq.w 0x4, d3
0x000010e8   2                     60f4  bra.b 0x10de
0x000010ea   4                 6e000052  bgt.w 0x113e
0x000010ee   4                 38323002  move.w 0x2(a2, d3.w), d4
0x000010f2   4                 06440012  addi.w 0x12, d4
0x000010f6   4                 b0724002  cmp.w 0x2(a2, d4.w), d0
0x000010fa   2                     6e22  bgt.b 0x111e
0x000010fc   4                 b0724000  cmp.w (a2, d4.w), d0
0x00001100   2                     6de4  blt.b 0x10e6
0x00001102   6             0c7202004004  cmpi.w 0x200, 0x4(a2, d4.w)
0x00001108   2                     6c14  bge.b 0x111e
0x0000110a   4                 4a6e003a  tst.w 0x3a(a6)
0x0000110e   2                     6708  beq.b 0x1118
0x00001110   6             0c72001d4004  cmpi.w 0x1d, 0x4(a2, d4.w)
0x00001116   2                     6606  bne.b 0x111e
0x00001118   4                 32323000  move.w (a2, d3.w), d1
0x0000111c   2                     600c  bra.b 0x112a
0x0000111e   4                 06440012  addi.w 0x12, d4
0x00001122   4                 4a724000  tst.w (a2, d4.w)
0x00001126   2                     67be  beq.b 0x10e6
0x00001128   2                     60cc  bra.b 0x10f6
0x0000112a   4                 3d41000e  move.w d1, 0xe(a6)
0x0000112e   4                 3d440004  move.w d4, 0x4(a6)
0x00001132   4                 3d430006  move.w d3, 0x6(a6)
0x00001136   2                     3a04  move.w d4, d5
0x00001138   4                 4ebaf8c2  jsr 0x9fc(pc)
0x0000113c   2                     4e75  rts
0x0000113e   4                 3d440004  move.w d4, 0x4(a6)
0x00001142   4                 3d430006  move.w d3, 0x6(a6)
0x00001146   4                 3d41000e  move.w d1, 0xe(a6)
0x0000114a   2                     5d41  subq.w 0x6, d1
0x0000114c   4                 206dffa0  movea.l -0x60(a5), a0
0x00001150   4                 226e0034  movea.l 0x34(a6), a1
0x00001154   4                 342e0038  move.w 0x38(a6), d2
0x00001158   4                 4ead02e2  jsr 0x2e2(a5)
0x0000115c   2                     4e75  rts
0x0000115e   4                 266e0030  movea.l 0x30(a6), a3
0x00001162   4                 1c2b0002  move.b 0x2(a3), d6
0x00001166   2                     4886  ext.w d6
0x00001168   4                 1e2b0003  move.b 0x3(a3), d7
0x0000116c   2                     4887  ext.w d7
0x0000116e   4                 0c46001c  cmpi.w 0x1c, d6
0x00001172   2                     6608  bne.b 0x117c
0x00001174   2                     4242  clr.w d2
0x00001176   4                 426e003a  clr.w 0x3a(a6)
0x0000117a   2                     6062  bra.b 0x11de
0x0000117c   4                 0c460020  cmpi.w 0x20, d6
0x00001180   2                     660c  bne.b 0x118e
0x00001182   4                 343c0004  move.w 0x4, d2
0x00001186   6             3d7c0001003a  move.w 0x1, 0x3a(a6)
0x0000118c   2                     6050  bra.b 0x11de
0x0000118e   4                 0c460038  cmpi.w 0x38, d6
0x00001192   2                     661c  bne.b 0x11b0
0x00001194   4                 0c470002  cmpi.w 0x2, d7
0x00001198   2                     6e0a  bgt.b 0x11a4
0x0000119a   4                 343c0001  move.w 0x1, d2
0x0000119e   4                 426e003a  clr.w 0x3a(a6)
0x000011a2   2                     603a  bra.b 0x11de
0x000011a4   4                 343c0003  move.w 0x3, d2
0x000011a8   6             3d7c0001003a  move.w 0x1, 0x3a(a6)
0x000011ae   2                     602e  bra.b 0x11de
0x000011b0   4                 0c460034  cmpi.w 0x34, d6
0x000011b4   2                     661c  bne.b 0x11d2
0x000011b6   4                 0c470000  cmpi.w 0x0, d7
0x000011ba   2                     660a  bne.b 0x11c6
0x000011bc   4                 343c0001  move.w 0x1, d2
0x000011c0   4                 426e003a  clr.w 0x3a(a6)
0x000011c4   2                     6018  bra.b 0x11de
0x000011c6   4                 343c0003  move.w 0x3, d2
0x000011ca   6             3d7c0001003a  move.w 0x1, 0x3a(a6)
0x000011d0   2                     600c  bra.b 0x11de
0x000011d2   4                 343c0002  move.w 0x2, d2
0x000011d6   6             3d7c0002003a  move.w 0x2, 0x3a(a6)
0x000011dc   2                     4e71  nop
0x000011de   6             3d7240060032  move.w 0x6(a2, d4.w), 0x32(a6)
0x000011e4   4                 3d420010  move.w d2, 0x10(a6)
0x000011e8   4                 30324008  move.w 0x8(a2, d4.w), d0
0x000011ec   4                 3d40000c  move.w d0, 0xc(a6)
0x000011f0   6             3d7c00410012  move.w 0x41, 0x12(a6)
0x000011f6   6             3d7c00010030  move.w 0x1, 0x30(a6)
0x000011fc   4                 60000004  bra.w 0x1202
0x00001200   2                     4e75  rts
0x00001202   4                 206dffa0  movea.l -0x60(a5), a0
0x00001206   4                 302e000c  move.w 0xc(a6), d0
0x0000120a   4                 322e000e  move.w 0xe(a6), d1
0x0000120e   4                 4a6e0032  tst.w 0x32(a6)
0x00001212   2                     6d06  blt.b 0x121a
0x00001214   4                 226df55c  movea.l -0xaa4(a5), a1
0x00001218   2                     6004  bra.b 0x121e
0x0000121a   4                 226df560  movea.l -0xaa0(a5), a1
0x0000121e   4                 342e0010  move.w 0x10(a6), d2
0x00001222   4                 0641001f  addi.w 0x1f, d1
0x00001226   4                 4ead02e2  jsr 0x2e2(a5)
0x0000122a   4                 536e0030  subq.w 0x1, 0x30(a6)
0x0000122e   2                     6e4a  bgt.b 0x127a
0x00001230   4                 4a6e0032  tst.w 0x32(a6)
0x00001234   2                     6d0a  blt.b 0x1240
0x00001236   4                 226df564  movea.l -0xa9c(a5), a1
0x0000123a   4                 06400016  addi.w 0x16, d0
0x0000123e   2                     6008  bra.b 0x1248
0x00001240   4                 226df568  movea.l -0xa98(a5), a1
0x00001244   4                 0640fffd  addi.w 0xfffd, d0
0x00001248   4                 3d40000c  move.w d0, 0xc(a6)
0x0000124c   4                 06410013  addi.w 0x13, d1
0x00001250   4                 3d41000e  move.w d1, 0xe(a6)
0x00001254   4                 2d490036  move.l a1, 0x36(a6)
0x00001258   6             3d7cff380030  move.w 0xff38, 0x30(a6)
0x0000125e   6             3d7c00050012  move.w 0x5, 0x12(a6)
0x00001264   6             3d6e003a0010  move.w 0x3a(a6), 0x10(a6)
0x0000126a   6             3d7c00010034  move.w 0x1, 0x34(a6)
0x00001270   6             3d7c000a0032  move.w 0xa, 0x32(a6)
0x00001276   4                 586e0006  addq.w 0x4, 0x6(a6)
0x0000127a   2                     4e75  rts
0x0000127c   4                 536e0030  subq.w 0x1, 0x30(a6)
0x00001280   2                     6e0a  bgt.b 0x128c
0x00001282   4                 536e0032  subq.w 0x1, 0x32(a6)
0x00001286   2                     6e14  bgt.b 0x129c
0x00001288   4                 4efaf272  jmp 0x4fc(pc)
0x0000128c   4                 206dffa0  movea.l -0x60(a5), a0
0x00001290   4                 226e001a  movea.l 0x1a(a6), a1
0x00001294   4                 342e0010  move.w 0x10(a6), d2
0x00001298   4                 4ead02e2  jsr 0x2e2(a5)
0x0000129c   2                     4e75  rts
0x0000129e   4                 536e0030  subq.w 0x1, 0x30(a6)
0x000012a2   2                     6e22  bgt.b 0x12c6
0x000012a4   4                 536e0032  subq.w 0x1, 0x32(a6)
0x000012a8   2                     6e2c  bgt.b 0x12d6
0x000012aa   4                 45fa0008  lea.l 0x12b4(pc), a2
0x000012ae   2                     4245  clr.w d5
0x000012b0   4                 4efafb72  jmp 0xe24(pc)
0x000012b4   4                 00010002  ori.b 0x2, d1
0x000012b8   4                 00050000  ori.b 0x0, d5
0x000012bc   4                 00000000  ori.b 0x0, d0
0x000012c0   4                 00000000  ori.b 0x0, d0
0x000012c4   4                 0000206d  ori.b 0x6d, d0
0x000012c8   2                     ffa0  invalid
0x000012ca   4                 226df408  movea.l -0xbf8(a5), a1
0x000012ce   4                 343c0001  move.w 0x1, d2
0x000012d2   4                 4ead02e2  jsr 0x2e2(a5)
0x000012d6   2                     4e75  rts
0x000012d8   6             082e00020014  btst.b 0x2, 0x14(a6)
0x000012de   2                     6714  beq.b 0x12f4
0x000012e0   6             082e00040015  btst.b 0x4, 0x15(a6)
0x000012e6   2                     6708  beq.b 0x12f0
0x000012e8   6             08ae00030014  bclr.b 0x3, 0x14(a6)
0x000012ee   2                     6004  bra.b 0x12f4
0x000012f0   4                 4eba1118  jsr 0x240a(pc)
0x000012f4   6             082e00040015  btst.b 0x4, 0x15(a6)
0x000012fa   2                     6760  beq.b 0x135c
0x000012fc   6             082e00030014  btst.b 0x3, 0x14(a6)
0x00001302   4                 670000e4  beq.w 0x13e8
0x00001306   4                 343c0001  move.w 0x1, d2
0x0000130a   6             082e00010014  btst.b 0x1, 0x14(a6)
0x00001310   4                 670000e8  beq.w 0x13fa
0x00001314   4                 4a6dff28  tst.w -0xd8(a5)
0x00001318   4                 670000e0  beq.w 0x13fa
0x0000131c   4                 4a2dff27  tst.b -0xd9(a5)
0x00001320   4                 660000d8  bne.w 0x13fa
0x00001324   4                 536dff28  subq.w 0x1, -0xd8(a5)
0x00001328   6             08ae00010014  bclr.b 0x1, 0x14(a6)
0x0000132e   4                 48a7c800  movem.w d0-d1/d4, -(a7)
0x00001332   2                     204a  movea.l a2, a0
0x00001334   2                     d0c4  adda.w d4, a0
0x00001336   4                 4a6e001e  tst.w 0x1e(a6)
0x0000133a   2                     6c06  bge.b 0x1342
0x0000133c   4                 0440000a  subi.w 0xa, d0
0x00001340   2                     6004  bra.b 0x1346
0x00001342   4                 0640000a  addi.w 0xa, d0
0x00001346   2                     3404  move.w d4, d2
0x00001348   4                 362e0006  move.w 0x6(a6), d3
0x0000134c   4                 4ead040a  jsr 0x40a(a5)
0x00001350   4                 4c9f0013  movem.w (a7)+, d0-d1/d4
0x00001354   4                 343c0002  move.w 0x2, d2
0x00001358   4                 600000a0  bra.w 0x13fa
0x0000135c   6             082e00030014  btst.b 0x3, 0x14(a6)
0x00001362   4                 670000b6  beq.w 0x141a
0x00001366   6             08ee00040015  bset.b 0x4, 0x15(a6)
0x0000136c   2                     4242  clr.w d2
0x0000136e   2                     5041  addq.w 0x8, d1
0x00001370   6             066e0011000e  addi.w 0x11, 0xe(a6)
0x00001376   4                 4a6e001e  tst.w 0x1e(a6)
0x0000137a   2                     6e44  bgt.b 0x13c0
0x0000137c   2                     3a04  move.w d4, d5
0x0000137e   4                 04450012  subi.w 0x12, d5
0x00001382   6             0c72001b5004  cmpi.w 0x1b, 0x4(a2, d5.w)
0x00001388   2                     6670  bne.b 0x13fa
0x0000138a   2                     3c00  move.w d0, d6
0x0000138c   2                     5946  subq.w 0x4, d6
0x0000138e   4                 bc725002  cmp.w 0x2(a2, d5.w), d6
0x00001392   2                     6e66  bgt.b 0x13fa
0x00001394   4                 47faee81  lea.l 0x217(pc), a3
0x00001398   4                 30324000  move.w (a2, d4.w), d0
0x0000139c   2                     5640  addq.w 0x3, d0
0x0000139e   6             3d7c000c0012  move.w 0xc, 0x12(a6)
0x000013a4   4                 3d40000c  move.w d0, 0xc(a6)
0x000013a8   4                 2d4b0030  move.l a3, 0x30(a6)
0x000013ac   6             046d0f00ff22  subi.w 0xf00, -0xde(a5)
0x000013b2   6             046e0011000e  subi.w 0x11, 0xe(a6)
0x000013b8   6             08ae00040015  bclr.b 0x4, 0x15(a6)
0x000013be   2                     603a  bra.b 0x13fa
0x000013c0   2                     3a04  move.w d4, d5
0x000013c2   4                 06450012  addi.w 0x12, d5
0x000013c6   6             0c72001b5004  cmpi.w 0x1b, 0x4(a2, d5.w)
0x000013cc   2                     662c  bne.b 0x13fa
0x000013ce   2                     3c00  move.w d0, d6
0x000013d0   4                 0646000a  addi.w 0xa, d6
0x000013d4   4                 bc725000  cmp.w (a2, d5.w), d6
0x000013d8   2                     6d20  blt.b 0x13fa
0x000013da   4                 47faee4f  lea.l 0x22b(pc), a3
0x000013de   4                 30324002  move.w 0x2(a2, d4.w), d0
0x000013e2   4                 0440000c  subi.w 0xc, d0
0x000013e6   2                     60b6  bra.b 0x139e
0x000013e8   2                     4242  clr.w d2
0x000013ea   6             08ae00040015  bclr.b 0x4, 0x15(a6)
0x000013f0   4                 04410009  subi.w 0x9, d1
0x000013f4   6             046e0011000e  subi.w 0x11, 0xe(a6)
0x000013fa   4                 206dffa0  movea.l -0x60(a5), a0
0x000013fe   4                 286e0016  movea.l 0x16(a6), a4
0x00001402   4                 4a6e001e  tst.w 0x1e(a6)
0x00001406   2                     6d06  blt.b 0x140e
0x00001408   4                 226c0050  movea.l 0x50(a4), a1
0x0000140c   2                     6004  bra.b 0x1412
0x0000140e   4                 226c004c  movea.l 0x4c(a4), a1
0x00001412   4                 4ead02e2  jsr 0x2e2(a5)
0x00001416   4                 600000d0  bra.w 0x14e8
0x0000141a   6             082e00000014  btst.b 0x0, 0x14(a6)
0x00001420   2                     670a  beq.b 0x142c
0x00001422   6             3d7c00030012  move.w 0x3, 0x12(a6)
0x00001428   4                 60000064  bra.w 0x148e
0x0000142c   4                 d06e0008  add.w 0x8(a6), d0
0x00001430   6             0c6e00040010  cmpi.w 0x4, 0x10(a6)
0x00001436   2                     6604  bne.b 0x143c
0x00001438   4                 d06e0008  add.w 0x8(a6), d0
0x0000143c   4                 b0724000  cmp.w (a2, d4.w), d0
0x00001440   2                     6c08  bge.b 0x144a
0x00001442   4                 4ebaf9fc  jsr 0xe40(pc)
0x00001446   4                 4efa19fe  jmp 0x2e46(pc)
0x0000144a   4                 b0724002  cmp.w 0x2(a2, d4.w), d0
0x0000144e   2                     6f08  ble.b 0x1458
0x00001450   4                 4ebafa50  jsr 0xea2(pc)
0x00001454   4                 4efa19f0  jmp 0x2e46(pc)
0x00001458   4                 3d40000c  move.w d0, 0xc(a6)
0x0000145c   4                 342e0010  move.w 0x10(a6), d2
0x00001460   4                 286e0016  movea.l 0x16(a6), a4
0x00001464   4                 4a6e0008  tst.w 0x8(a6)
0x00001468   2                     6724  beq.b 0x148e
0x0000146a   2                     6e10  bgt.b 0x147c
0x0000146c   2                     2254  movea.l (a4), a1
0x0000146e   4                 2d49001a  move.l a1, 0x1a(a6)
0x00001472   6             3d7cffff001e  move.w 0xffff, 0x1e(a6)
0x00001478   2                     5242  addq.w 0x1, d2
0x0000147a   2                     6042  bra.b 0x14be
0x0000147c   4                 226c0004  movea.l 0x4(a4), a1
0x00001480   4                 2d49001a  move.l a1, 0x1a(a6)
0x00001484   6             3d7c0001001e  move.w 0x1, 0x1e(a6)
0x0000148a   2                     5242  addq.w 0x1, d2
0x0000148c   2                     6030  bra.b 0x14be
0x0000148e   4                 206dffa0  movea.l -0x60(a5), a0
0x00001492   4                 286e0016  movea.l 0x16(a6), a4
0x00001496   4                 226c0018  movea.l 0x18(a4), a1
0x0000149a   4                 426e0010  clr.w 0x10(a6)
0x0000149e   4                 4a6e001e  tst.w 0x1e(a6)
0x000014a2   2                     6d0e  blt.b 0x14b2
0x000014a4   4                 343c0003  move.w 0x3, d2
0x000014a8   4                 4ead02e2  jsr 0x2e2(a5)
0x000014ac   4                 4eba2004  jsr 0x34b2(pc)
0x000014b0   2                     6036  bra.b 0x14e8
0x000014b2   2                     4242  clr.w d2
0x000014b4   4                 4eba1ffc  jsr 0x34b2(pc)
0x000014b8   4                 4ead02e2  jsr 0x2e2(a5)
0x000014bc   2                     602a  bra.b 0x14e8
0x000014be   4                 b4690002  cmp.w 0x2(a1), d2
0x000014c2   2                     6d02  blt.b 0x14c6
0x000014c4   2                     4242  clr.w d2
0x000014c6   4                 3d420010  move.w d2, 0x10(a6)
0x000014ca   4                 206dffa0  movea.l -0x60(a5), a0
0x000014ce   4                 0c420000  cmpi.w 0x0, d2
0x000014d2   2                     6706  beq.b 0x14da
0x000014d4   4                 0c420003  cmpi.w 0x3, d2
0x000014d8   2                     660a  bne.b 0x14e4
0x000014da   2                     3f00  move.w d0, -(a7)
0x000014dc   2                     4240  clr.w d0
0x000014de   4                 4ead0042  jsr 0x42(a5)
0x000014e2   2                     301f  move.w (a7)+, d0
0x000014e4   4                 4ead02e2  jsr 0x2e2(a5)
0x000014e8   4                 4efaf10c  jmp 0x5f6(pc)
0x000014ec   4                 342e0010  move.w 0x10(a6), d2
0x000014f0   4                 3a2e0030  move.w 0x30(a6), d5
0x000014f4   4                 286e0016  movea.l 0x16(a6), a4
0x000014f8   4                 226c0008  movea.l 0x8(a4), a1
0x000014fc   4                 4a6e000a  tst.w 0xa(a6)
0x00001500   2                     663a  bne.b 0x153c
0x00001502   4                 4a6e0032  tst.w 0x32(a6)
0x00001506   2                     6614  bne.b 0x151c
0x00001508   2                     3f00  move.w d0, -(a7)
0x0000150a   4                 303c000e  move.w 0xe, d0
0x0000150e   4                 4ead004a  jsr 0x4a(a5)
0x00001512   2                     301f  move.w (a7)+, d0
0x00001514   4                 426e0034  clr.w 0x34(a6)
0x00001518   4                 600000e4  bra.w 0x15fe
0x0000151c   4                 536e0034  subq.w 0x1, 0x34(a6)
0x00001520   2                     6e12  bgt.b 0x1534
0x00001522   2                     3f00  move.w d0, -(a7)
0x00001524   4                 303c000e  move.w 0xe, d0
0x00001528   4                 4ead0042  jsr 0x42(a5)
0x0000152c   2                     301f  move.w (a7)+, d0
0x0000152e   6             3d7c00080034  move.w 0x8, 0x34(a6)
0x00001534   4                 4a6e0032  tst.w 0x32(a6)
0x00001538   2                     6d6e  blt.b 0x15a8
0x0000153a   2                     6e22  bgt.b 0x155e
0x0000153c   4                 426e0032  clr.w 0x32(a6)
0x00001540   4                 536e0034  subq.w 0x1, 0x34(a6)
0x00001544   2                     6e12  bgt.b 0x1558
0x00001546   2                     3f00  move.w d0, -(a7)
0x00001548   4                 303c000e  move.w 0xe, d0
0x0000154c   4                 4ead0042  jsr 0x42(a5)
0x00001550   2                     301f  move.w (a7)+, d0
0x00001552   6             3d7c00080034  move.w 0x8, 0x34(a6)
0x00001558   4                 4a6e000a  tst.w 0xa(a6)
0x0000155c   2                     6d4a  blt.b 0x15a8
0x0000155e   4                 0641000a  addi.w 0xa, d1
0x00001562   4                 3632400c  move.w 0xc(a2, d4.w), d3
0x00001566   4                 b2723000  cmp.w (a2, d3.w), d1
0x0000156a   2                     6d30  blt.b 0x159c
0x0000156c   4                 32323000  move.w (a2, d3.w), d1
0x00001570   4                 3d41000e  move.w d1, 0xe(a6)
0x00001574   6             0c7200275004  cmpi.w 0x27, 0x4(a2, d5.w)
0x0000157a   2                     6718  beq.b 0x1594
0x0000157c   6             3d7c00020012  move.w 0x2, 0x12(a6)
0x00001582   4                 3d450004  move.w d5, 0x4(a6)
0x00001586   2                     3805  move.w d5, d4
0x00001588   4                 3d430006  move.w d3, 0x6(a6)
0x0000158c   4                 426e0032  clr.w 0x32(a6)
0x00001590   4                 60000080  bra.w 0x1612
0x00001594   4                 06450012  addi.w 0x12, d5
0x00001598   4                 4efaf88a  jmp 0xe24(pc)
0x0000159c   2                     5242  addq.w 0x1, d2
0x0000159e   4                 b4690002  cmp.w 0x2(a1), d2
0x000015a2   2                     6d5a  blt.b 0x15fe
0x000015a4   2                     4242  clr.w d2
0x000015a6   2                     6056  bra.b 0x15fe
0x000015a8   4                 0441000a  subi.w 0xa, d1
0x000015ac   4                 3632500a  move.w 0xa(a2, d5.w), d3
0x000015b0   4                 3c323000  move.w (a2, d3.w), d6
0x000015b4   4                 06460028  addi.w 0x28, d6
0x000015b8   2                     b246  cmp.w d6, d1
0x000015ba   2                     6e36  bgt.b 0x15f2
0x000015bc   6             0c7200264004  cmpi.w 0x26, 0x4(a2, d4.w)
0x000015c2   2                     6724  beq.b 0x15e8
0x000015c4   6             3d7c000f0012  move.w 0xf, 0x12(a6)
0x000015ca   4                 426e0010  clr.w 0x10(a6)
0x000015ce   4                 0641000a  addi.w 0xa, d1
0x000015d2   2                     3206  move.w d6, d1
0x000015d4   4                 3d41000e  move.w d1, 0xe(a6)
0x000015d8   4                 3d440004  move.w d4, 0x4(a6)
0x000015dc   4                 3d430006  move.w d3, 0x6(a6)
0x000015e0   4                 426e0032  clr.w 0x32(a6)
0x000015e4   4                 600000e0  bra.w 0x16c6
0x000015e8   2                     3a04  move.w d4, d5
0x000015ea   4                 06450012  addi.w 0x12, d5
0x000015ee   4                 4efaf834  jmp 0xe24(pc)
0x000015f2   2                     5342  subq.w 0x1, d2
0x000015f4   2                     6c08  bge.b 0x15fe
0x000015f6   4                 34290002  move.w 0x2(a1), d2
0x000015fa   2                     5342  subq.w 0x1, d2
0x000015fc   2                     4e71  nop
0x000015fe   4                 206dffa0  movea.l -0x60(a5), a0
0x00001602   4                 3d420010  move.w d2, 0x10(a6)
0x00001606   4                 3d41000e  move.w d1, 0xe(a6)
0x0000160a   4                 4ead02e2  jsr 0x2e2(a5)
0x0000160e   4                 4efaefe6  jmp 0x5f6(pc)
0x00001612   6             0c72002f4004  cmpi.w 0x2f, 0x4(a2, d4.w)
0x00001618   2                     660e  bne.b 0x1628
0x0000161a   6             3d7c00390012  move.w 0x39, 0x12(a6)
0x00001620   4                 426e0030  clr.w 0x30(a6)
0x00001624   4                 4efa0edc  jmp 0x2502(pc)
0x00001628   4                 4a6e0032  tst.w 0x32(a6)
0x0000162c   2                     6612  bne.b 0x1640
0x0000162e   6             082e00040015  btst.b 0x4, 0x15(a6)
0x00001634   2                     6606  bne.b 0x163c
0x00001636   4                 4a6e000a  tst.w 0xa(a6)
0x0000163a   2                     6604  bne.b 0x1640
0x0000163c   4                 4efafc9a  jmp 0x12d8(pc)
0x00001640   2                     6a44  bpl.b 0x1686
0x00001642   4                 363c0002  move.w 0x2, d3
0x00001646   4                 b6724004  cmp.w 0x4(a2, d4.w), d3
0x0000164a   2                     6604  bne.b 0x1650
0x0000164c   4                 4efafc8a  jmp 0x12d8(pc)
0x00001650   6             0c7200274004  cmpi.w 0x27, 0x4(a2, d4.w)
0x00001656   2                     6704  beq.b 0x165c
0x00001658   4                 426e0032  clr.w 0x32(a6)
0x0000165c   6             3d7c00010012  move.w 0x1, 0x12(a6)
0x00001662   4                 3d440030  move.w d4, 0x30(a6)
0x00001666   4                 30324000  move.w (a2, d4.w), d0
0x0000166a   4                 38324006  move.w 0x6(a2, d4.w), d4
0x0000166e   4                 3d440004  move.w d4, 0x4(a6)
0x00001672   4                 3d40000c  move.w d0, 0xc(a6)
0x00001676   4                 526e000c  addq.w 0x1, 0xc(a6)
0x0000167a   4                 426e0010  clr.w 0x10(a6)
0x0000167e   4                 426e0034  clr.w 0x34(a6)
0x00001682   4                 6000fe68  bra.w 0x14ec
0x00001686   4                 363c0003  move.w 0x3, d3
0x0000168a   4                 b6724004  cmp.w 0x4(a2, d4.w), d3
0x0000168e   2                     6604  bne.b 0x1694
0x00001690   4                 4efafc46  jmp 0x12d8(pc)
0x00001694   6             0c7200264004  cmpi.w 0x26, 0x4(a2, d4.w)
0x0000169a   2                     6704  beq.b 0x16a0
0x0000169c   4                 426e0032  clr.w 0x32(a6)
0x000016a0   6             3d7c000e0012  move.w 0xe, 0x12(a6)
0x000016a6   4                 3d440004  move.w d4, 0x4(a6)
0x000016aa   6             3d7240080030  move.w 0x8(a2, d4.w), 0x30(a6)
0x000016b0   4                 30324000  move.w (a2, d4.w), d0
0x000016b4   4                 3d40000c  move.w d0, 0xc(a6)
0x000016b8   4                 526e000c  addq.w 0x1, 0xc(a6)
0x000016bc   6             3d7c00030010  move.w 0x3, 0x10(a6)
0x000016c2   4                 6000003e  bra.w 0x1702
0x000016c6   4                 342e0010  move.w 0x10(a6), d2
0x000016ca   4                 206dffa0  movea.l -0x60(a5), a0
0x000016ce   4                 286e0016  movea.l 0x16(a6), a4
0x000016d2   4                 226c000c  movea.l 0xc(a4), a1
0x000016d6   4                 0441000a  subi.w 0xa, d1
0x000016da   4                 4ead02e2  jsr 0x2e2(a5)
0x000016de   2                     5242  addq.w 0x1, d2
0x000016e0   4                 b4690002  cmp.w 0x2(a1), d2
0x000016e4   2                     6d10  blt.b 0x16f6
0x000016e6   2                     4242  clr.w d2
0x000016e8   6             3d7c00020012  move.w 0x2, 0x12(a6)
0x000016ee   4                 362e0006  move.w 0x6(a6), d3
0x000016f2   4                 32323000  move.w (a2, d3.w), d1
0x000016f6   4                 3d420010  move.w d2, 0x10(a6)
0x000016fa   4                 3d41000e  move.w d1, 0xe(a6)
0x000016fe   4                 4efaeef6  jmp 0x5f6(pc)
0x00001702   4                 342e0010  move.w 0x10(a6), d2
0x00001706   4                 206dffa0  movea.l -0x60(a5), a0
0x0000170a   4                 286e0016  movea.l 0x16(a6), a4
0x0000170e   4                 226c000c  movea.l 0xc(a4), a1
0x00001712   4                 4ead02e2  jsr 0x2e2(a5)
0x00001716   2                     5342  subq.w 0x1, d2
0x00001718   2                     6c12  bge.b 0x172c
0x0000171a   2                     4242  clr.w d2
0x0000171c   6             3d7c00010012  move.w 0x1, 0x12(a6)
0x00001722   4                 426e0034  clr.w 0x34(a6)
0x00001726   6             046e000a000e  subi.w 0xa, 0xe(a6)
0x0000172c   4                 3d420010  move.w d2, 0x10(a6)
0x00001730   6             066e000a000e  addi.w 0xa, 0xe(a6)
0x00001736   4                 4efaeebe  jmp 0x5f6(pc)
0x0000173a   4                 342e0010  move.w 0x10(a6), d2
0x0000173e   4                 3a2e0030  move.w 0x30(a6), d5
0x00001742   4                 286e0016  movea.l 0x16(a6), a4
0x00001746   4                 4a6e000a  tst.w 0xa(a6)
0x0000174a   4                 670000f0  beq.w 0x183c
0x0000174e   2                     6d7c  blt.b 0x17cc
0x00001750   4                 4a6e0034  tst.w 0x34(a6)
0x00001754   2                     6d10  blt.b 0x1766
0x00001756   6             3d7c0001001e  move.w 0x1, 0x1e(a6)
0x0000175c   4                 3e3c0012  move.w 0x12, d7
0x00001760   4                 226c0020  movea.l 0x20(a4), a1
0x00001764   2                     600e  bra.b 0x1774
0x00001766   6             3d7cffff001e  move.w 0xffff, 0x1e(a6)
0x0000176c   4                 3e3cffee  move.w 0xffee, d7
0x00001770   4                 226c0028  movea.l 0x28(a4), a1
0x00001774   4                 3632400c  move.w 0xc(a2, d4.w), d3
0x00001778   4                 3c323000  move.w (a2, d3.w), d6
0x0000177c   4                 04460009  subi.w 0x9, d6
0x00001780   2                     b246  cmp.w d6, d1
0x00001782   2                     6d1c  blt.b 0x17a0
0x00001784   6             3d7c00080012  move.w 0x8, 0x12(a6)
0x0000178a   4                 32323000  move.w (a2, d3.w), d1
0x0000178e   4                 3d41000e  move.w d1, 0xe(a6)
0x00001792   4                 3d450004  move.w d5, 0x4(a6)
0x00001796   2                     3805  move.w d5, d4
0x00001798   4                 3d430006  move.w d3, 0x6(a6)
0x0000179c   4                 600000c0  bra.w 0x185e
0x000017a0   2                     5242  addq.w 0x1, d2
0x000017a2   4                 0c420000  cmpi.w 0x0, d2
0x000017a6   2                     6706  beq.b 0x17ae
0x000017a8   4                 0c420003  cmpi.w 0x3, d2
0x000017ac   2                     660a  bne.b 0x17b8
0x000017ae   2                     3f00  move.w d0, -(a7)
0x000017b0   2                     4240  clr.w d0
0x000017b2   4                 4ead0042  jsr 0x42(a5)
0x000017b6   2                     301f  move.w (a7)+, d0
0x000017b8   4                 b4690002  cmp.w 0x2(a1), d2
0x000017bc   4                 6d000082  blt.w 0x1840
0x000017c0   2                     d047  add.w d7, d0
0x000017c2   4                 0641000a  addi.w 0xa, d1
0x000017c6   2                     4242  clr.w d2
0x000017c8   4                 60000076  bra.w 0x1840
0x000017cc   4                 4a6e0034  tst.w 0x34(a6)
0x000017d0   2                     6d10  blt.b 0x17e2
0x000017d2   6             3d7cffff001e  move.w 0xffff, 0x1e(a6)
0x000017d8   4                 3e3cffee  move.w 0xffee, d7
0x000017dc   4                 226c0024  movea.l 0x24(a4), a1
0x000017e0   2                     600e  bra.b 0x17f0
0x000017e2   6             3d7c0001001e  move.w 0x1, 0x1e(a6)
0x000017e8   4                 3e3c0012  move.w 0x12, d7
0x000017ec   4                 226c001c  movea.l 0x1c(a4), a1
0x000017f0   4                 3632500a  move.w 0xa(a2, d5.w), d3
0x000017f4   4                 b2723000  cmp.w (a2, d3.w), d1
0x000017f8   2                     6e1a  bgt.b 0x1814
0x000017fa   6             3d7c00080012  move.w 0x8, 0x12(a6)
0x00001800   4                 32323000  move.w (a2, d3.w), d1
0x00001804   4                 3d41000e  move.w d1, 0xe(a6)
0x00001808   4                 3d440004  move.w d4, 0x4(a6)
0x0000180c   4                 3d430006  move.w d3, 0x6(a6)
0x00001810   4                 6000004c  bra.w 0x185e
0x00001814   2                     5242  addq.w 0x1, d2
0x00001816   4                 0c420000  cmpi.w 0x0, d2
0x0000181a   2                     6706  beq.b 0x1822
0x0000181c   4                 0c420003  cmpi.w 0x3, d2
0x00001820   2                     660a  bne.b 0x182c
0x00001822   2                     3f00  move.w d0, -(a7)
0x00001824   2                     4240  clr.w d0
0x00001826   4                 4ead0042  jsr 0x42(a5)
0x0000182a   2                     301f  move.w (a7)+, d0
0x0000182c   4                 b4690002  cmp.w 0x2(a1), d2
0x00001830   2                     6d0e  blt.b 0x1840
0x00001832   2                     4242  clr.w d2
0x00001834   2                     d047  add.w d7, d0
0x00001836   4                 0441000a  subi.w 0xa, d1
0x0000183a   2                     6004  bra.b 0x1840
0x0000183c   4                 226e001a  movea.l 0x1a(a6), a1
0x00001840   4                 206dffa0  movea.l -0x60(a5), a0
0x00001844   4                 3d420010  move.w d2, 0x10(a6)
0x00001848   4                 3d40000c  move.w d0, 0xc(a6)
0x0000184c   4                 3d41000e  move.w d1, 0xe(a6)
0x00001850   4                 2d49001a  move.l a1, 0x1a(a6)
0x00001854   2                     5341  subq.w 0x1, d1
0x00001856   4                 4ead02e2  jsr 0x2e2(a5)
0x0000185a   4                 4efaed9a  jmp 0x5f6(pc)
0x0000185e   6             082e00040015  btst.b 0x4, 0x15(a6)
0x00001864   2                     6606  bne.b 0x186c
0x00001866   4                 4a6e000a  tst.w 0xa(a6)
0x0000186a   2                     6604  bne.b 0x1870
0x0000186c   4                 4efafa6a  jmp 0x12d8(pc)
0x00001870   2                     6a3e  bpl.b 0x18b0
0x00001872   4                 363c0009  move.w 0x9, d3
0x00001876   4                 b6724004  cmp.w 0x4(a2, d4.w), d3
0x0000187a   2                     6604  bne.b 0x1880
0x0000187c   4                 4efafa5a  jmp 0x12d8(pc)
0x00001880   6             3d7c00070012  move.w 0x7, 0x12(a6)
0x00001886   4                 3d440030  move.w d4, 0x30(a6)
0x0000188a   6             3d7240060004  move.w 0x6(a2, d4.w), 0x4(a6)
0x00001890   4                 426e0010  clr.w 0x10(a6)
0x00001894   6             3d72400e0034  move.w 0xe(a2, d4.w), 0x34(a6)
0x0000189a   4                 30324010  move.w 0x10(a2, d4.w), d0
0x0000189e   4                 3d40000c  move.w d0, 0xc(a6)
0x000018a2   2                     5f41  subq.w 0x7, d1
0x000018a4   4                 3d41000e  move.w d1, 0xe(a6)
0x000018a8   4                 382e0004  move.w 0x4(a6), d4
0x000018ac   4                 6000fe8c  bra.w 0x173a
0x000018b0   4                 363c000a  move.w 0xa, d3
0x000018b4   4                 b6724004  cmp.w 0x4(a2, d4.w), d3
0x000018b8   2                     6604  bne.b 0x18be
0x000018ba   4                 4efafa1c  jmp 0x12d8(pc)
0x000018be   6             3d7c00070012  move.w 0x7, 0x12(a6)
0x000018c4   4                 3d440004  move.w d4, 0x4(a6)
0x000018c8   6             3d7240080030  move.w 0x8(a2, d4.w), 0x30(a6)
0x000018ce   4                 426e0010  clr.w 0x10(a6)
0x000018d2   6             3d72400e0034  move.w 0xe(a2, d4.w), 0x34(a6)
0x000018d8   4                 30324010  move.w 0x10(a2, d4.w), d0
0x000018dc   4                 3d40000c  move.w d0, 0xc(a6)
0x000018e0   2                     5541  subq.w 0x2, d1
0x000018e2   4                 3d41000e  move.w d1, 0xe(a6)
0x000018e6   4                 6000fe52  bra.w 0x173a
0x000018ea   6             08ae00000014  bclr.b 0x0, 0x14(a6)
0x000018f0   6             3d6e00080030  move.w 0x8(a6), 0x30(a6)
0x000018f6   2                     670c  beq.b 0x1904
0x000018f8   6             1d7c00010036  move.b 0x1, 0x36(a6)
0x000018fe   4                 47fa02d0  lea.l 0x1bd0(pc), a3
0x00001902   2                     6022  bra.b 0x1926
0x00001904   4                 422e0036  clr.b 0x36(a6)
0x00001908   6             3d6e001e0030  move.w 0x1e(a6), 0x30(a6)
0x0000190e   2                     6606  bne.b 0x1916
0x00001910   6             3d7c00080030  move.w 0x8, 0x30(a6)
0x00001916   4                 4a6e000a  tst.w 0xa(a6)
0x0000191a   2                     6e06  bgt.b 0x1922
0x0000191c   4                 47fa02f8  lea.l 0x1c16(pc), a3
0x00001920   2                     6004  bra.b 0x1926
0x00001922   4                 47fa0342  lea.l 0x1c66(pc), a3
0x00001926   6             3d6e0030001e  move.w 0x30(a6), 0x1e(a6)
0x0000192c   4                 2d4b0032  move.l a3, 0x32(a6)
0x00001930   6             3d7c00040012  move.w 0x4, 0x12(a6)
0x00001936   4                 596e0006  subq.w 0x4, 0x6(a6)
0x0000193a   6             1d7c00ff0037  move.b 0xff, 0x37(a6)
0x00001940   2                     3a04  move.w d4, d5
0x00001942   4                 4a6e0030  tst.w 0x30(a6)
0x00001946   2                     6e20  bgt.b 0x1968
0x00001948   4                 04450012  subi.w 0x12, d5
0x0000194c   6             0c72001b5004  cmpi.w 0x1b, 0x4(a2, d5.w)
0x00001952   2                     6708  beq.b 0x195c
0x00001954   4                 4ab25000  tst.l (a2, d5.w)
0x00001958   2                     66ee  bne.b 0x1948
0x0000195a   2                     602c  bra.b 0x1988
0x0000195c   4                 3e325002  move.w 0x2(a2, d5.w), d7
0x00001960   2                     5247  addq.w 0x1, d7
0x00001962   4                 3d470038  move.w d7, 0x38(a6)
0x00001966   2                     6024  bra.b 0x198c
0x00001968   4                 06450012  addi.w 0x12, d5
0x0000196c   6             0c72001b5004  cmpi.w 0x1b, 0x4(a2, d5.w)
0x00001972   2                     6708  beq.b 0x197c
0x00001974   4                 4ab25000  tst.l (a2, d5.w)
0x00001978   2                     66ee  bne.b 0x1968
0x0000197a   2                     600c  bra.b 0x1988
0x0000197c   4                 3e325000  move.w (a2, d5.w), d7
0x00001980   2                     5347  subq.w 0x1, d7
0x00001982   4                 3d470038  move.w d7, 0x38(a6)
0x00001986   2                     6004  bra.b 0x198c
0x00001988   4                 426e0038  clr.w 0x38(a6)
0x0000198c   2                     4e71  nop
0x0000198e   4                 266e0032  movea.l 0x32(a6), a3
0x00001992   4                 50ae0032  addq.l 0x8, 0x32(a6)
0x00001996   2                     4a53  tst.w (a3)
0x00001998   2                     6c0c  bge.b 0x19a6
0x0000199a   4                 0441000a  subi.w 0xa, d1
0x0000199e   4                 3d41000e  move.w d1, 0xe(a6)
0x000019a2   4                 4efa030a  jmp 0x1cae(pc)
0x000019a6   4                 286e0016  movea.l 0x16(a6), a4
0x000019aa   2                     3c00  move.w d0, d6
0x000019ac   4                 4a6e0030  tst.w 0x30(a6)
0x000019b0   4                 6d00008a  blt.w 0x1a3c
0x000019b4   2                     d05b  add.w (a3)+, d0
0x000019b6   4                 4a6e0038  tst.w 0x38(a6)
0x000019ba   2                     674c  beq.b 0x1a08
0x000019bc   4                 b06e0038  cmp.w 0x38(a6), d0
0x000019c0   2                     6d46  blt.b 0x1a08
0x000019c2   6             3d7c00010010  move.w 0x1, 0x10(a6)
0x000019c8   4                 302e0038  move.w 0x38(a6), d0
0x000019cc   4                 4a2e0037  tst.b 0x37(a6)
0x000019d0   4                 6a000006  bpl.w 0x19d8
0x000019d4   4                 586e0006  addq.w 0x4, 0x6(a6)
0x000019d8   4                 3d410030  move.w d1, 0x30(a6)
0x000019dc   4                 3d40000c  move.w d0, 0xc(a6)
0x000019e0   2                     3f00  move.w d0, -(a7)
0x000019e2   4                 303c0001  move.w 0x1, d0
0x000019e6   4                 4ead0042  jsr 0x42(a5)
0x000019ea   2                     301f  move.w (a7)+, d0
0x000019ec   6             3d7c00050012  move.w 0x5, 0x12(a6)
0x000019f2   6             3d7c00020034  move.w 0x2, 0x34(a6)
0x000019f8   6             3d7c000a0032  move.w 0xa, 0x32(a6)
0x000019fe   6             2d6df5780036  move.l -0xa88(a5), 0x36(a6)
0x00001a04   4                 4efa033c  jmp 0x1d42(pc)
0x00001a08   4                 b06dff36  cmp.w -0xca(a5), d0
0x00001a0c   2                     6d1c  blt.b 0x1a2a
0x00001a0e   4                 302dff36  move.w -0xca(a5), d0
0x00001a12   4                 0440000a  subi.w 0xa, d0
0x00001a16   4                 3d40000c  move.w d0, 0xc(a6)
0x00001a1a   4                 4a2e0037  tst.b 0x37(a6)
0x00001a1e   4                 6a00ff7a  bpl.w 0x199a
0x00001a22   4                 586e0006  addq.w 0x4, 0x6(a6)
0x00001a26   4                 6000ff72  bra.w 0x199a
0x00001a2a   4                 4a2e0036  tst.b 0x36(a6)
0x00001a2e   2                     6706  beq.b 0x1a36
0x00001a30   4                 226c0014  movea.l 0x14(a4), a1
0x00001a34   2                     6044  bra.b 0x1a7a
0x00001a36   4                 226c0048  movea.l 0x48(a4), a1
0x00001a3a   2                     603e  bra.b 0x1a7a
0x00001a3c   2                     905b  sub.w (a3)+, d0
0x00001a3e   4                 4a6e0038  tst.w 0x38(a6)
0x00001a42   2                     6714  beq.b 0x1a58
0x00001a44   4                 b06e0038  cmp.w 0x38(a6), d0
0x00001a48   2                     6e0e  bgt.b 0x1a58
0x00001a4a   4                 426e0010  clr.w 0x10(a6)
0x00001a4e   4                 302e0038  move.w 0x38(a6), d0
0x00001a52   2                     5e40  addq.w 0x7, d0
0x00001a54   4                 6000ff76  bra.w 0x19cc
0x00001a58   4                 b06dff38  cmp.w -0xc8(a5), d0
0x00001a5c   2                     6e0a  bgt.b 0x1a68
0x00001a5e   4                 302dff38  move.w -0xc8(a5), d0
0x00001a62   4                 0640000a  addi.w 0xa, d0
0x00001a66   2                     60ae  bra.b 0x1a16
0x00001a68   4                 4a2e0036  tst.b 0x36(a6)
0x00001a6c   2                     6706  beq.b 0x1a74
0x00001a6e   4                 226c0010  movea.l 0x10(a4), a1
0x00001a72   2                     6006  bra.b 0x1a7a
0x00001a74   4                 226c0044  movea.l 0x44(a4), a1
0x00001a78   2                     4e71  nop
0x00001a7a   2                     3e1b  move.w (a3)+, d7
0x00001a7c   2                     d247  add.w d7, d1
0x00001a7e   2                     4a47  tst.w d7
0x00001a80   2                     6e5c  bgt.b 0x1ade
0x00001a82   4                 362e0006  move.w 0x6(a6), d3
0x00001a86   4                 3e323000  move.w (a2, d3.w), d7
0x00001a8a   4                 670000c0  beq.w 0x1b4c
0x00001a8e   2                     be41  cmp.w d1, d7
0x00001a90   2                     6004  bra.b 0x1a96
0x00001a92   2                     5943  subq.w 0x4, d3
0x00001a94   2                     60f0  bra.b 0x1a86
0x00001a96   4                 6d0000b4  blt.w 0x1b4c
0x00001a9a   4                 38323002  move.w 0x2(a2, d3.w), d4
0x00001a9e   4                 06440012  addi.w 0x12, d4
0x00001aa2   4                 b0724002  cmp.w 0x2(a2, d4.w), d0
0x00001aa6   2                     6e2a  bgt.b 0x1ad2
0x00001aa8   4                 b0724000  cmp.w (a2, d4.w), d0
0x00001aac   2                     6de4  blt.b 0x1a92
0x00001aae   4                 32323000  move.w (a2, d3.w), d1
0x00001ab2   2                     3f00  move.w d0, -(a7)
0x00001ab4   4                 303c0004  move.w 0x4, d0
0x00001ab8   4                 4ead0042  jsr 0x42(a5)
0x00001abc   2                     301f  move.w (a7)+, d0
0x00001abe   4                 6100008c  bsr.w 0x1b4c
0x00001ac2   6             0c6e00040012  cmpi.w 0x4, 0x12(a6)
0x00001ac8   2                     6606  bne.b 0x1ad0
0x00001aca   2                     3a04  move.w d4, d5
0x00001acc   4                 4ebaef2e  jsr 0x9fc(pc)
0x00001ad0   2                     4e75  rts
0x00001ad2   4                 06440012  addi.w 0x12, d4
0x00001ad6   4                 4a724000  tst.w (a2, d4.w)
0x00001ada   2                     67b6  beq.b 0x1a92
0x00001adc   2                     60c4  bra.b 0x1aa2
0x00001ade   4                 362e0006  move.w 0x6(a6), d3
0x00001ae2   4                 4a2e0037  tst.b 0x37(a6)
0x00001ae6   2                     6a08  bpl.b 0x1af0
0x00001ae8   2                     5843  addq.w 0x4, d3
0x00001aea   6             1d7c00010037  move.b 0x1, 0x37(a6)
0x00001af0   4                 3e323000  move.w (a2, d3.w), d7
0x00001af4   2                     be41  cmp.w d1, d7
0x00001af6   2                     6004  bra.b 0x1afc
0x00001af8   2                     5843  addq.w 0x4, d3
0x00001afa   2                     60f4  bra.b 0x1af0
0x00001afc   4                 6e00004e  bgt.w 0x1b4c
0x00001b00   4                 38323002  move.w 0x2(a2, d3.w), d4
0x00001b04   2                     67f2  beq.b 0x1af8
0x00001b06   4                 06440012  addi.w 0x12, d4
0x00001b0a   4                 b0724002  cmp.w 0x2(a2, d4.w), d0
0x00001b0e   2                     6e30  bgt.b 0x1b40
0x00001b10   4                 b0724000  cmp.w (a2, d4.w), d0
0x00001b14   2                     6de2  blt.b 0x1af8
0x00001b16   6             0c7204004004  cmpi.w 0x400, 0x4(a2, d4.w)
0x00001b1c   2                     6cda  bge.b 0x1af8
0x00001b1e   4                 32323000  move.w (a2, d3.w), d1
0x00001b22   2                     3f00  move.w d0, -(a7)
0x00001b24   4                 303c0004  move.w 0x4, d0
0x00001b28   4                 4ead0042  jsr 0x42(a5)
0x00001b2c   2                     301f  move.w (a7)+, d0
0x00001b2e   2                     611c  bsr.b 0x1b4c
0x00001b30   6             0c6e00040012  cmpi.w 0x4, 0x12(a6)
0x00001b36   2                     6606  bne.b 0x1b3e
0x00001b38   2                     3a04  move.w d4, d5
0x00001b3a   4                 4ebaeec0  jsr 0x9fc(pc)
0x00001b3e   2                     4e75  rts
0x00001b40   4                 06440012  addi.w 0x12, d4
0x00001b44   4                 4a724000  tst.w (a2, d4.w)
0x00001b48   2                     67ae  beq.b 0x1af8
0x00001b4a   2                     60be  bra.b 0x1b0a
0x00001b4c   4                 3d440004  move.w d4, 0x4(a6)
0x00001b50   4                 3d430006  move.w d3, 0x6(a6)
0x00001b54   4                 3d40000c  move.w d0, 0xc(a6)
0x00001b58   4                 3d41000e  move.w d1, 0xe(a6)
0x00001b5c   4                 206dffa0  movea.l -0x60(a5), a0
0x00001b60   4                 4a6dfebe  tst.w -0x142(a5)
0x00001b64   2                     6d58  blt.b 0x1bbe
0x00001b66   4                 b26dfec0  cmp.w -0x140(a5), d1
0x00001b6a   2                     6d1a  blt.b 0x1b86
0x00001b6c   4                 b26dfec2  cmp.w -0x13e(a5), d1
0x00001b70   2                     6e14  bgt.b 0x1b86
0x00001b72   4                 3a2dfec4  move.w -0x13c(a5), d5
0x00001b76   2                     b045  cmp.w d5, d0
0x00001b78   2                     6d06  blt.b 0x1b80
0x00001b7a   2                     bc45  cmp.w d5, d6
0x00001b7c   2                     6e08  bgt.b 0x1b86
0x00001b7e   2                     6024  bra.b 0x1ba4
0x00001b80   2                     bc45  cmp.w d5, d6
0x00001b82   2                     6d02  blt.b 0x1b86
0x00001b84   2                     601e  bra.b 0x1ba4
0x00001b86   4                 b26dfeb8  cmp.w -0x148(a5), d1
0x00001b8a   2                     6d32  blt.b 0x1bbe
0x00001b8c   4                 b26dfeba  cmp.w -0x146(a5), d1
0x00001b90   2                     6e2c  bgt.b 0x1bbe
0x00001b92   4                 3a2dfebc  move.w -0x144(a5), d5
0x00001b96   2                     b045  cmp.w d5, d0
0x00001b98   2                     6d06  blt.b 0x1ba0
0x00001b9a   2                     bc45  cmp.w d5, d6
0x00001b9c   2                     6e20  bgt.b 0x1bbe
0x00001b9e   2                     6004  bra.b 0x1ba4
0x00001ba0   2                     bc45  cmp.w d5, d6
0x00001ba2   2                     6d1a  blt.b 0x1bbe
0x00001ba4   4                 4a2e0037  tst.b 0x37(a6)
0x00001ba8   4                 6a000006  bpl.w 0x1bb0
0x00001bac   4                 586e0006  addq.w 0x4, 0x6(a6)
0x00001bb0   4                 9a6e0030  sub.w 0x30(a6), d5
0x00001bb4   4                 3d45000c  move.w d5, 0xc(a6)
0x00001bb8   2                     3005  move.w d5, d0
0x00001bba   4                 4efa0138  jmp 0x1cf4(pc)
0x00001bbe   2                     341b  move.w (a3)+, d2
0x00001bc0   2                     d25b  add.w (a3)+, d1
0x00001bc2   4                 3d420010  move.w d2, 0x10(a6)
0x00001bc6   4                 4ead02e2  jsr 0x2e2(a5)
0x00001bca   4                 4efaea2a  jmp 0x5f6(pc)
0x00001bce   2                     4e75  rts
0x00001bd0   4                 0008ffff  
0x00001bd4   4                 0000fffc  ori.b 0xfc, d0
0x00001bd8   4                 0008fff8  
0x00001bdc   4                 0001fffc  ori.b 0xfc, d1
0x00001be0   4                 0020fff2  ori.b 0xf2, -(a0)
0x00001be4   4                 0002fffc  ori.b 0xfc, d2
0x00001be8   4                 00170002  ori.b 0x2, (a7)
0x00001bec   4                 0003fffc  ori.b 0xfc, d3
0x00001bf0   4                 001f000b  ori.b 0xb, (a7)+
0x00001bf4   4                 0004fffc  ori.b 0xfc, d4
0x00001bf8   4                 0008000e  
0x00001bfc   4                 0005fffc  ori.b 0xfc, d5
0x00001c00   4                 00000006  ori.b 0x6, d0
0x00001c04   4                 0005fffc  ori.b 0xfc, d5
0x00001c08   2                     ffff  invalid
0x00001c0a   4                 00000000  ori.b 0x0, d0
0x00001c0e   4                 000047fa  ori.b 0xfa, d0
0x00001c12   4                 00044e75  ori.b 0x75, d4
0x00001c16   4                 0002ffff  ori.b 0xff, d2
0x00001c1a   4                 0000fff8  ori.b 0xf8, d0
0x00001c1e   4                 0004fff6  ori.b 0xf6, d4
0x00001c22   4                 0001fff7  ori.b 0xf7, d1
0x00001c26   4                 0009fffb  
0x00001c2a   4                 0002fff7  ori.b 0xf7, d2
0x00001c2e   4                 0010ffe7  ori.b 0xe7, (a0)
0x00001c32   4                 0003fff7  ori.b 0xf7, d3
0x00001c36   4                 0010fffd  ori.b 0xfd, (a0)
0x00001c3a   4                 0004fff7  ori.b 0xf7, d4
0x00001c3e   4                 0001000c  ori.b 0xc, d1
0x00001c42   4                 0005fff7  ori.b 0xf7, d5
0x00001c46   4                 000a000c  
0x00001c4a   4                 0006fff7  ori.b 0xf7, d6
0x00001c4e   4                 00080013  
0x00001c52   4                 0000fff7  ori.b 0xf7, d0
0x00001c56   4                 00000006  ori.b 0x6, d0
0x00001c5a   4                 0000fff7  ori.b 0xf7, d0
0x00001c5e   2                     ffff  invalid
0x00001c60   4                 00000000  ori.b 0x0, d0
0x00001c64   4                 00000002  ori.b 0x2, d0
0x00001c68   2                     ffff  invalid
0x00001c6a   4                 0000fff8  ori.b 0xf8, d0
0x00001c6e   4                 0004fff6  ori.b 0xf6, d4
0x00001c72   4                 0001fff7  ori.b 0xf7, d1
0x00001c76   4                 0010fffe  ori.b 0xfe, (a0)
0x00001c7a   4                 0003fff7  ori.b 0xf7, d3
0x00001c7e   4                 0010ffff  ori.b 0xff, (a0)
0x00001c82   4                 0004fff7  ori.b 0xf7, d4
0x00001c86   4                 0001000c  ori.b 0xc, d1
0x00001c8a   4                 0005fff7  ori.b 0xf7, d5
0x00001c8e   4                 000a000c  
0x00001c92   4                 0006fff7  ori.b 0xf7, d6
0x00001c96   4                 00080013  
0x00001c9a   4                 0000fff7  ori.b 0xf7, d0
0x00001c9e   4                 00080006  
0x00001ca2   4                 0000fff7  ori.b 0xf7, d0
0x00001ca6   2                     ffff  invalid
0x00001ca8   4                 00000000  ori.b 0x0, d0
0x00001cac   4                 00003d41  ori.b 0x41, d0
0x00001cb0   6             00303f00303c  ori.b 0x0, 0x3c(a0, d3.w)
0x00001cb6   4                 00014ead  ori.b 0xad, d1
0x00001cba   4                 0042301f  ori.w 0x301f, d2
0x00001cbe   2                     604c  bra.b 0x1d0c
0x00001cc0   6             3d7cff380030  move.w 0xff38, 0x30(a6)
0x00001cc6   6             3d7c00050012  move.w 0x5, 0x12(a6)
0x00001ccc   4                 426e0034  clr.w 0x34(a6)
0x00001cd0   6             3d7c000a0032  move.w 0xa, 0x32(a6)
0x00001cd6   4                 b06dff38  cmp.w -0xc8(a5), d0
0x00001cda   2                     6c06  bge.b 0x1ce2
0x00001cdc   4                 302dff38  move.w -0xc8(a5), d0
0x00001ce0   2                     600a  bra.b 0x1cec
0x00001ce2   4                 b06dff36  cmp.w -0xca(a5), d0
0x00001ce6   2                     6f08  ble.b 0x1cf0
0x00001ce8   4                 302dff36  move.w -0xca(a5), d0
0x00001cec   4                 3d40000c  move.w d0, 0xc(a6)
0x00001cf0   4                 60000232  bra.w 0x1f24
0x00001cf4   4                 3d410030  move.w d1, 0x30(a6)
0x00001cf8   6             046e001f0030  subi.w 0x1f, 0x30(a6)
0x00001cfe   2                     3f00  move.w d0, -(a7)
0x00001d00   4                 303c0001  move.w 0x1, d0
0x00001d04   4                 4ead0042  jsr 0x42(a5)
0x00001d08   2                     301f  move.w (a7)+, d0
0x00001d0a   2                     4e71  nop
0x00001d0c   6             3d7c00050012  move.w 0x5, 0x12(a6)
0x00001d12   4                 426e0034  clr.w 0x34(a6)
0x00001d16   6             3d7c000a0032  move.w 0xa, 0x32(a6)
0x00001d1c   4                 b06dff38  cmp.w -0xc8(a5), d0
0x00001d20   2                     6c0e  bge.b 0x1d30
0x00001d22   4                 302dff38  move.w -0xc8(a5), d0
0x00001d26   4                 0640000a  addi.w 0xa, d0
0x00001d2a   4                 3d40000c  move.w d0, 0xc(a6)
0x00001d2e   2                     6012  bra.b 0x1d42
0x00001d30   4                 b06dff36  cmp.w -0xca(a5), d0
0x00001d34   2                     6f0c  ble.b 0x1d42
0x00001d36   4                 302dff36  move.w -0xca(a5), d0
0x00001d3a   4                 0440000a  subi.w 0xa, d0
0x00001d3e   4                 3d40000c  move.w d0, 0xc(a6)
0x00001d42   4                 d26e0032  add.w 0x32(a6), d1
0x00001d46   4                 506e0032  addq.w 0x8, 0x32(a6)
0x00001d4a   2                     4242  clr.w d2
0x00001d4c   4                 362e0006  move.w 0x6(a6), d3
0x00001d50   4                 3e323000  move.w (a2, d3.w), d7
0x00001d54   2                     be41  cmp.w d1, d7
0x00001d56   2                     6004  bra.b 0x1d5c
0x00001d58   2                     5843  addq.w 0x4, d3
0x00001d5a   2                     60f4  bra.b 0x1d50
0x00001d5c   4                 6e00018c  bgt.w 0x1eea
0x00001d60   4                 38323002  move.w 0x2(a2, d3.w), d4
0x00001d64   2                     67f2  beq.b 0x1d58
0x00001d66   4                 06440012  addi.w 0x12, d4
0x00001d6a   4                 b0724002  cmp.w 0x2(a2, d4.w), d0
0x00001d6e   2                     6e14  bgt.b 0x1d84
0x00001d70   4                 b0724000  cmp.w (a2, d4.w), d0
0x00001d74   2                     6de2  blt.b 0x1d58
0x00001d76   6             0c7202004004  cmpi.w 0x200, 0x4(a2, d4.w)
0x00001d7c   2                     6c06  bge.b 0x1d84
0x00001d7e   4                 32323000  move.w (a2, d3.w), d1
0x00001d82   2                     600c  bra.b 0x1d90
0x00001d84   4                 06440012  addi.w 0x12, d4
0x00001d88   4                 4a724000  tst.w (a2, d4.w)
0x00001d8c   2                     67ca  beq.b 0x1d58
0x00001d8e   2                     60da  bra.b 0x1d6a
0x00001d90   4                 3d41000e  move.w d1, 0xe(a6)
0x00001d94   4                 3d440004  move.w d4, 0x4(a6)
0x00001d98   4                 3d430006  move.w d3, 0x6(a6)
0x00001d9c   6             0c7200294004  cmpi.w 0x29, 0x4(a2, d4.w)
0x00001da2   2                     6630  bne.b 0x1dd4
0x00001da4   4                 3e2e0030  move.w 0x30(a6), d7
0x00001da8   2                     4447  neg.w d7
0x00001daa   2                     de41  add.w d1, d7
0x00001dac   4                 0c470050  cmpi.w 0x50, d7
0x00001db0   4                 6e00010a  bgt.w 0x1ebc
0x00001db4   4                 4a6e001e  tst.w 0x1e(a6)
0x00001db8   2                     6e06  bgt.b 0x1dc0
0x00001dba   4                 47fae45b  lea.l 0x217(pc), a3
0x00001dbe   2                     6008  bra.b 0x1dc8
0x00001dc0   4                 47fae469  lea.l 0x22b(pc), a3
0x00001dc4   4                 0440000c  subi.w 0xc, d0
0x00001dc8   4                 3d40000c  move.w d0, 0xc(a6)
0x00001dcc   4                 2d4b0030  move.l a3, 0x30(a6)
0x00001dd0   4                 4eed05b2  jmp 0x5b2(a5)
0x00001dd4   6             0c6e00020034  cmpi.w 0x2, 0x34(a6)
0x00001dda   2                     6666  bne.b 0x1e42
0x00001ddc   4                 3e2e0030  move.w 0x30(a6), d7
0x00001de0   2                     4447  neg.w d7
0x00001de2   2                     de41  add.w d1, d7
0x00001de4   4                 0c470050  cmpi.w 0x50, d7
0x00001de8   4                 6e0000d2  bgt.w 0x1ebc
0x00001dec   4                 4a6e001e  tst.w 0x1e(a6)
0x00001df0   2                     6e06  bgt.b 0x1df8
0x00001df2   4                 47fae423  lea.l 0x217(pc), a3
0x00001df6   2                     6008  bra.b 0x1e00
0x00001df8   4                 47fae431  lea.l 0x22b(pc), a3
0x00001dfc   4                 0440000c  subi.w 0xc, d0
0x00001e00   6             0c7200054004  cmpi.w 0x5, 0x4(a2, d4.w)
0x00001e06   2                     6622  bne.b 0x1e2a
0x00001e08   6             0c72001b4016  cmpi.w 0x1b, 0x16(a2, d4.w)
0x00001e0e   2                     660a  bne.b 0x1e1a
0x00001e10   4                 04440012  subi.w 0x12, d4
0x00001e14   4                 3d440004  move.w d4, 0x4(a6)
0x00001e18   2                     6010  bra.b 0x1e2a
0x00001e1a   6             0c72001b40f2  cmpi.w 0x1b, -0xe(a2, d4.w)
0x00001e20   2                     6608  bne.b 0x1e2a
0x00001e22   4                 06440012  addi.w 0x12, d4
0x00001e26   4                 3d440004  move.w d4, 0x4(a6)
0x00001e2a   4                 3d40000c  move.w d0, 0xc(a6)
0x00001e2e   6             3d7c000c0012  move.w 0xc, 0x12(a6)
0x00001e34   4                 2d4b0030  move.l a3, 0x30(a6)
0x00001e38   6             046d0f00ff22  subi.w 0xf00, -0xde(a5)
0x00001e3e   4                 4efae1c0  jmp 0x0(pc)
0x00001e42   6             0c7200164004  cmpi.w 0x16, 0x4(a2, d4.w)
0x00001e48   2                     6612  bne.b 0x1e5c
0x00001e4a   4                 426dff22  clr.w -0xde(a5)
0x00001e4e   2                     3a04  move.w d4, d5
0x00001e50   4                 4ebaebaa  jsr 0x9fc(pc)
0x00001e54   4                 0641000a  addi.w 0xa, d1
0x00001e58   4                 60000090  bra.w 0x1eea
0x00001e5c   6             0c72001d4004  cmpi.w 0x1d, 0x4(a2, d4.w)
0x00001e62   2                     662a  bne.b 0x1e8e
0x00001e64   6             0c6eff380030  cmpi.w 0xff38, 0x30(a6)
0x00001e6a   2                     6710  beq.b 0x1e7c
0x00001e6c   6             3d7c00280012  move.w 0x28, 0x12(a6)
0x00001e72   6             3d7c00040030  move.w 0x4, 0x30(a6)
0x00001e78   4                 4efa057a  jmp 0x23f4(pc)
0x00001e7c   4                 4ebae67e  jsr 0x4fc(pc)
0x00001e80   4                 4a6dfef8  tst.w -0x108(a5)
0x00001e84   4                 6d00009e  blt.w 0x1f24
0x00001e88   4                 51edfefd  sf.b -0x103(a5)
0x00001e8c   2                     60de  bra.b 0x1e6c
0x00001e8e   4                 3e2e0030  move.w 0x30(a6), d7
0x00001e92   2                     4447  neg.w d7
0x00001e94   2                     de41  add.w d1, d7
0x00001e96   2                     6f3c  ble.b 0x1ed4
0x00001e98   4                 0c47001e  cmpi.w 0x1e, d7
0x00001e9c   2                     6d36  blt.b 0x1ed4
0x00001e9e   4                 0c470050  cmpi.w 0x50, d7
0x00001ea2   2                     6e18  bgt.b 0x1ebc
0x00001ea4   6             3d7c000c0012  move.w 0xc, 0x12(a6)
0x00001eaa   4                 47fae226  lea.l 0xd2(pc), a3
0x00001eae   4                 2d4b0030  move.l a3, 0x30(a6)
0x00001eb2   6             046d0f00ff22  subi.w 0xf00, -0xde(a5)
0x00001eb8   4                 4efae146  jmp 0x0(pc)
0x00001ebc   2                     3f00  move.w d0, -(a7)
0x00001ebe   4                 303c0006  move.w 0x6, d0
0x00001ec2   4                 4ead0042  jsr 0x42(a5)
0x00001ec6   2                     301f  move.w (a7)+, d0
0x00001ec8   4                 47fae694  lea.l 0x55e(pc), a3
0x00001ecc   4                 426dff22  clr.w -0xde(a5)
0x00001ed0   4                 4efae510  jmp 0x3e2(pc)
0x00001ed4   2                     3f00  move.w d0, -(a7)
0x00001ed6   4                 303c0004  move.w 0x4, d0
0x00001eda   4                 4ead0042  jsr 0x42(a5)
0x00001ede   2                     301f  move.w (a7)+, d0
0x00001ee0   2                     3a04  move.w d4, d5
0x00001ee2   4                 4ebaeb18  jsr 0x9fc(pc)
0x00001ee6   4                 4efa0f5e  jmp 0x2e46(pc)
0x00001eea   4                 3d440004  move.w d4, 0x4(a6)
0x00001eee   4                 3d430006  move.w d3, 0x6(a6)
0x00001ef2   4                 3d41000e  move.w d1, 0xe(a6)
0x00001ef6   2                     5141  subq.w 0x8, d1
0x00001ef8   4                 206dffa0  movea.l -0x60(a5), a0
0x00001efc   4                 286e0016  movea.l 0x16(a6), a4
0x00001f00   4                 4a6e0034  tst.w 0x34(a6)
0x00001f04   2                     6606  bne.b 0x1f0c
0x00001f06   4                 226c005c  movea.l 0x5c(a4), a1
0x00001f0a   2                     6008  bra.b 0x1f14
0x00001f0c   4                 342e0010  move.w 0x10(a6), d2
0x00001f10   4                 226e0036  movea.l 0x36(a6), a1
0x00001f14   4                 4ead02e2  jsr 0x2e2(a5)
0x00001f18   6             0c6eff380030  cmpi.w 0xff38, 0x30(a6)
0x00001f1e   2                     6704  beq.b 0x1f24
0x00001f20   4                 4efae6d4  jmp 0x5f6(pc)
0x00001f24   2                     4e75  rts
0x00001f26   4                 4a6e0008  tst.w 0x8(a6)
0x00001f2a   2                     6606  bne.b 0x1f32
0x00001f2c   4                 47fa0090  lea.l 0x1fbe(pc), a3
0x00001f30   2                     6010  bra.b 0x1f42
0x00001f32   4                 4a6e0008  tst.w 0x8(a6)
0x00001f36   2                     6e06  bgt.b 0x1f3e
0x00001f38   4                 47fa007c  lea.l 0x1fb6(pc), a3
0x00001f3c   2                     6004  bra.b 0x1f42
0x00001f3e   4                 47fa0058  lea.l 0x1f98(pc), a3
0x00001f42   4                 2d4b0030  move.l a3, 0x30(a6)
0x00001f46   6             3d7c00060012  move.w 0x6, 0x12(a6)
0x00001f4c   4                 60000048  bra.w 0x1f96
0x00001f50   4                 286e0016  movea.l 0x16(a6), a4
0x00001f54   4                 226c0064  movea.l 0x64(a4), a1
0x00001f58   4                 266e0030  movea.l 0x30(a6), a3
0x00001f5c   2                     161b  move.b (a3)+, d3
0x00001f5e   2                     4883  ext.w d3
0x00001f60   2                     d043  add.w d3, d0
0x00001f62   2                     141b  move.b (a3)+, d2
0x00001f64   2                     4882  ext.w d2
0x00001f66   2                     6c04  bge.b 0x1f6c
0x00001f68   4                 4efafd44  jmp 0x1cae(pc)
0x00001f6c   4                 0c42002a  cmpi.w 0x2a, d2
0x00001f70   2                     6610  bne.b 0x1f82
0x00001f72   2                     3f00  move.w d0, -(a7)
0x00001f74   4                 303c0005  move.w 0x5, d0
0x00001f78   4                 4ead0042  jsr 0x42(a5)
0x00001f7c   2                     301f  move.w (a7)+, d0
0x00001f7e   4                 343c0002  move.w 0x2, d2
0x00001f82   4                 206dffa0  movea.l -0x60(a5), a0
0x00001f86   4                 3d40000c  move.w d0, 0xc(a6)
0x00001f8a   4                 2d4b0030  move.l a3, 0x30(a6)
0x00001f8e   4                 4ead02e2  jsr 0x2e2(a5)
0x00001f92   4                 4efae662  jmp 0x5f6(pc)
0x00001f96   2                     4e75  rts
0x00001f98   4                 06000600  addi.b 0x0, d0
0x00001f9c   4                 06000a02  addi.b 0x2, d0
0x00001fa0   4                 00020002  ori.b 0x2, d2
0x00001fa4   4                 0002002a  ori.b 0x2a, d2
0x00001fa8   4                 00030003  ori.b 0x3, d3
0x00001fac   4                 00030002  ori.b 0x2, d3
0x00001fb0   4                 00020002  ori.b 0x2, d2
0x00001fb4   4                 00fffa01  
0x00001fb8   2                     fa01  invalid
0x00001fba   2                     fa01  invalid
0x00001fbc   6             f60200020002  invalid
0x00001fc2   4                 0002002a  ori.b 0x2a, d2
0x00001fc6   4                 00030003  ori.b 0x3, d3
0x00001fca   4                 00030002  ori.b 0x2, d3
0x00001fce   4                 00020002  ori.b 0x2, d2
0x00001fd2   4                 00ff3d7c  
0x00001fd6   4                 00150012  ori.b 0x12, (a5)
0x00001fda   6             3d7240060004  move.w 0x6(a2, d4.w), 0x4(a6)
0x00001fe0   4                 3432400a  move.w 0xa(a2, d4.w), d2
0x00001fe4   4                 3d420006  move.w d2, 0x6(a6)
0x00001fe8   6             046d0f00ff22  subi.w 0xf00, -0xde(a5)
0x00001fee   4                 47fa0092  lea.l 0x2082(pc), a3
0x00001ff2   4                 2d4b0030  move.l a3, 0x30(a6)
0x00001ff6   4                 286e0016  movea.l 0x16(a6), a4
0x00001ffa   4                 4a6e001e  tst.w 0x1e(a6)
0x00001ffe   2                     6e0c  bgt.b 0x200c
0x00002000   6             2d6c00780034  move.l 0x78(a4), 0x34(a6)
0x00002006   4                 0440000a  subi.w 0xa, d0
0x0000200a   2                     6006  bra.b 0x2012
0x0000200c   6             2d6c007c0034  move.l 0x7c(a4), 0x34(a6)
0x00002012   2                     4e71  nop
0x00002014   4                 266e0030  movea.l 0x30(a6), a3
0x00002018   2                     161b  move.b (a3)+, d3
0x0000201a   2                     4883  ext.w d3
0x0000201c   4                 4a6e001e  tst.w 0x1e(a6)
0x00002020   2                     6e02  bgt.b 0x2024
0x00002022   2                     4443  neg.w d3
0x00002024   2                     d043  add.w d3, d0
0x00002026   2                     161b  move.b (a3)+, d3
0x00002028   2                     4883  ext.w d3
0x0000202a   2                     d243  add.w d3, d1
0x0000202c   2                     141b  move.b (a3)+, d2
0x0000202e   2                     4882  ext.w d2
0x00002030   2                     6c12  bge.b 0x2044
0x00002032   6             3d7c000c0012  move.w 0xc, 0x12(a6)
0x00002038   4                 47fae0bb  lea.l 0xf5(pc), a3
0x0000203c   4                 2d4b0030  move.l a3, 0x30(a6)
0x00002040   4                 4efadfbe  jmp 0x0(pc)
0x00002044   4                 0c420064  cmpi.w 0x64, d2
0x00002048   2                     661e  bne.b 0x2068
0x0000204a   4                 342e0006  move.w 0x6(a6), d2
0x0000204e   4                 32322000  move.w (a2, d2.w), d1
0x00002052   4                 3d41000e  move.w d1, 0xe(a6)
0x00002056   2                     d243  add.w d3, d1
0x00002058   4                 343c0002  move.w 0x2, d2
0x0000205c   2                     3f00  move.w d0, -(a7)
0x0000205e   4                 303c004e  move.w 0x4e, d0
0x00002062   4                 4ead0042  jsr 0x42(a5)
0x00002066   2                     301f  move.w (a7)+, d0
0x00002068   4                 226e0034  movea.l 0x34(a6), a1
0x0000206c   4                 206dffa0  movea.l -0x60(a5), a0
0x00002070   4                 3d40000c  move.w d0, 0xc(a6)
0x00002074   4                 2d4b0030  move.l a3, 0x30(a6)
0x00002078   4                 4ead02e2  jsr 0x2e2(a5)
0x0000207c   4                 4efae578  jmp 0x5f6(pc)
0x00002080   2                     4e75  rts
0x00002082   4                 04fe0008  
0x00002086   2                     f901  invalid
0x00002088   4                 10f50218  move.b 0x18(a5, d0.w), (a0)+
0x0000208c   2                     fc64  invalid
0x0000208e   4                 04fe0300  
0x00002092   2                     fe03  invalid
0x00002094   4                 00fe0300  
0x00002098   2                     fe03  invalid
0x0000209a   4                 00fe0300  
0x0000209e   2                     fe03  invalid
0x000020a0   4                 00fe0300  
0x000020a4   2                     fe03  invalid
0x000020a6   4                 00fe0300  
0x000020aa   2                     fe03  invalid
0x000020ac   4                 00fe0300  
0x000020b0   2                     fe04  invalid
0x000020b2   4                 00fe0400  
0x000020b6   2                     fe04  invalid
0x000020b8   4                 00fe0500  
0x000020bc   2                     fe05  invalid
0x000020be   4                 00fe0500  
0x000020c2   2                     fe06  invalid
0x000020c4   4                 00fe0600  
0x000020c8   2                     fe06  invalid
0x000020ca   4                 0000ff00  ori.b 0x0, d0
0x000020ce   6             0c72000e4004  cmpi.w 0xe, 0x4(a2, d4.w)
0x000020d4   2                     6604  bne.b 0x20da
0x000020d6   4                 4efa0014  jmp 0x20ec(pc)
0x000020da   6             0c72002d4004  cmpi.w 0x2d, 0x4(a2, d4.w)
0x000020e0   2                     6604  bne.b 0x20e6
0x000020e2   4                 4efa0012  jmp 0x20f6(pc)
0x000020e6   2                     4e75  rts
0x000020e8   4                 487af1ee  pea.l 0x12d8(pc)
0x000020ec   4                 d072400c  add.w 0xc(a2, d4.w), d0
0x000020f0   4                 3d40000c  move.w d0, 0xc(a6)
0x000020f4   2                     4e75  rts
0x000020f6   4                 d0724006  add.w 0x6(a2, d4.w), d0
0x000020fa   4                 3d40000c  move.w d0, 0xc(a6)
0x000020fe   4                 b0724000  cmp.w (a2, d4.w), d0
0x00002102   2                     6d08  blt.b 0x210c
0x00002104   4                 b0724002  cmp.w 0x2(a2, d4.w), d0
0x00002108   2                     6e02  bgt.b 0x210c
0x0000210a   2                     4e75  rts
0x0000210c   6             0c6e000d0012  cmpi.w 0xd, 0x12(a6)
0x00002112   2                     6602  bne.b 0x2116
0x00002114   2                     4e75  rts
0x00002116   2                     4a9f  tst.l (a7)+
0x00002118   6             0c6e00250012  cmpi.w 0x25, 0x12(a6)
0x0000211e   2                     660c  bne.b 0x212c
0x00002120   2                     3f00  move.w d0, -(a7)
0x00002122   4                 303c0063  move.w 0x63, d0
0x00002126   4                 4ead004a  jsr 0x4a(a5)
0x0000212a   2                     301f  move.w (a7)+, d0
0x0000212c   4                 4ebafdf8  jsr 0x1f26(pc)
0x00002130   4                 4efafe1e  jmp 0x1f50(pc)
0x00002134   4                 4a6e0030  tst.w 0x30(a6)
0x00002138   2                     6d0a  blt.b 0x2144
0x0000213a   4                 4a724006  tst.w 0x6(a2, d4.w)
0x0000213e   2                     6c0e  bge.b 0x214e
0x00002140   4                 4efafb6c  jmp 0x1cae(pc)
0x00002144   4                 4a724008  tst.w 0x8(a2, d4.w)
0x00002148   2                     6c04  bge.b 0x214e
0x0000214a   4                 4efafb62  jmp 0x1cae(pc)
0x0000214e   4                 426e0010  clr.w 0x10(a6)
0x00002152   4                 30324000  move.w (a2, d4.w), d0
0x00002156   4                 3d40000c  move.w d0, 0xc(a6)
0x0000215a   6             3d7c002f0012  move.w 0x2f, 0x12(a6)
0x00002160   6             3d6e0030001e  move.w 0x30(a6), 0x1e(a6)
0x00002166   4                 446e001e  neg.w 0x1e(a6)
0x0000216a   4                 426e0032  clr.w 0x32(a6)
0x0000216e   4                 b272400e  cmp.w 0xe(a2, d4.w), d1
0x00002172   2                     6c04  bge.b 0x2178
0x00002174   4                 3232400e  move.w 0xe(a2, d4.w), d1
0x00002178   4                 b2724010  cmp.w 0x10(a2, d4.w), d1
0x0000217c   2                     6f04  ble.b 0x2182
0x0000217e   4                 32324010  move.w 0x10(a2, d4.w), d1
0x00002182   4                 342e0010  move.w 0x10(a6), d2
0x00002186   4                 206dffa0  movea.l -0x60(a5), a0
0x0000218a   6             0c7202224004  cmpi.w 0x222, 0x4(a2, d4.w)
0x00002190   2                     660c  bne.b 0x219e
0x00002192   6             3d7c000a000a  move.w 0xa, 0xa(a6)
0x00002198   2                     5342  subq.w 0x1, d2
0x0000219a   4                 600001a0  bra.w 0x233c
0x0000219e   4                 3e2e0008  move.w 0x8(a6), d7
0x000021a2   4                 67000030  beq.w 0x21d4
0x000021a6   2                     6d0a  blt.b 0x21b2
0x000021a8   4                 4a724008  tst.w 0x8(a2, d4.w)
0x000021ac   2                     6c0e  bge.b 0x21bc
0x000021ae   4                 60000024  bra.w 0x21d4
0x000021b2   4                 4a724006  tst.w 0x6(a2, d4.w)
0x000021b6   2                     6c04  bge.b 0x21bc
0x000021b8   4                 6000001a  bra.w 0x21d4
0x000021bc   4                 be6e001e  cmp.w 0x1e(a6), d7
0x000021c0   2                     660a  bne.b 0x21cc
0x000021c2   2                     4a47  tst.w d7
0x000021c4   4                 6d00002e  blt.w 0x21f4
0x000021c8   4                 6e000036  bgt.w 0x2200
0x000021cc   4                 3d47001e  move.w d7, 0x1e(a6)
0x000021d0   4                 426e0008  clr.w 0x8(a6)
0x000021d4   4                 4a6e000a  tst.w 0xa(a6)
0x000021d8   4                 6d000106  blt.w 0x22e0
0x000021dc   4                 6e00015e  bgt.w 0x233c
0x000021e0   2                     3f00  move.w d0, -(a7)
0x000021e2   4                 303c000e  move.w 0xe, d0
0x000021e6   4                 4ead004a  jsr 0x4a(a5)
0x000021ea   2                     301f  move.w (a7)+, d0
0x000021ec   4                 426e0032  clr.w 0x32(a6)
0x000021f0   4                 600001bc  bra.w 0x23ae
0x000021f4   4                 3a324006  move.w 0x6(a2, d4.w), d5
0x000021f8   4                 67000012  beq.w 0x220c
0x000021fc   4                 60000060  bra.w 0x225e
0x00002200   4                 3a324008  move.w 0x8(a2, d4.w), d5
0x00002204   4                 67000006  beq.w 0x220c
0x00002208   4                 60000054  bra.w 0x225e
0x0000220c   2                     5141  subq.w 0x8, d1
0x0000220e   4                 3d41000e  move.w d1, 0xe(a6)
0x00002212   4                 610001c2  bsr.w 0x23d6
0x00002216   4                 4a6e001e  tst.w 0x1e(a6)
0x0000221a   2                     6c08  bge.b 0x2224
0x0000221c   4                 30324000  move.w (a2, d4.w), d0
0x00002220   2                     5340  subq.w 0x1, d0
0x00002222   2                     6006  bra.b 0x222a
0x00002224   4                 30324002  move.w 0x2(a2, d4.w), d0
0x00002228   2                     5240  addq.w 0x1, d0
0x0000222a   4                 3d40000c  move.w d0, 0xc(a6)
0x0000222e   6             3d6e001e0030  move.w 0x1e(a6), 0x30(a6)
0x00002234   4                 422e0036  clr.b 0x36(a6)
0x00002238   4                 47faf9dc  lea.l 0x1c16(pc), a3
0x0000223c   4                 d6fc0028  adda.w 0x28, a3
0x00002240   4                 2d4b0032  move.l a3, 0x32(a6)
0x00002244   6             3d7cffff0010  move.w 0xffff, 0x10(a6)
0x0000224a   6             3d7c00040012  move.w 0x4, 0x12(a6)
0x00002250   6             1d7c00010037  move.b 0x1, 0x37(a6)
0x00002256   4                 426e0038  clr.w 0x38(a6)
0x0000225a   4                 4efaf732  jmp 0x198e(pc)
0x0000225e   4                 0c450001  cmpi.w 0x1, d5
0x00002262   2                     662c  bne.b 0x2290
0x00002264   4                 4ebaec9e  jsr 0xf04(pc)
0x00002268   4                 6100016c  bsr.w 0x23d6
0x0000226c   4                 4a6e001e  tst.w 0x1e(a6)
0x00002270   2                     6e10  bgt.b 0x2282
0x00002272   4                 0440001d  subi.w 0x1d, d0
0x00002276   4                 3d40000c  move.w d0, 0xc(a6)
0x0000227a   6             066e000e000c  addi.w 0xe, 0xc(a6)
0x00002280   2                     600a  bra.b 0x228c
0x00002282   4                 06400015  addi.w 0x15, d0
0x00002286   4                 3d40000c  move.w d0, 0xc(a6)
0x0000228a   2                     5740  subq.w 0x3, d0
0x0000228c   4                 60000024  bra.w 0x22b2
0x00002290   4                 b272500e  cmp.w 0xe(a2, d5.w), d1
0x00002294   4                 6d00ff76  blt.w 0x220c
0x00002298   4                 b2725010  cmp.w 0x10(a2, d5.w), d1
0x0000229c   4                 6e00ff6e  bgt.w 0x220c
0x000022a0   4                 30325000  move.w (a2, d5.w), d0
0x000022a4   4                 3d40000c  move.w d0, 0xc(a6)
0x000022a8   2                     3805  move.w d5, d4
0x000022aa   4                 3d440004  move.w d4, 0x4(a6)
0x000022ae   4                 426e0008  clr.w 0x8(a6)
0x000022b2   4                 286e0016  movea.l 0x16(a6), a4
0x000022b6   4                 226c0040  movea.l 0x40(a4), a1
0x000022ba   4                 3d420010  move.w d2, 0x10(a6)
0x000022be   4                 4a6e001e  tst.w 0x1e(a6)
0x000022c2   2                     6e08  bgt.b 0x22cc
0x000022c4   4                 06400016  addi.w 0x16, d0
0x000022c8   2                     4242  clr.w d2
0x000022ca   2                     6006  bra.b 0x22d2
0x000022cc   2                     5940  subq.w 0x4, d0
0x000022ce   4                 343c0001  move.w 0x1, d2
0x000022d2   2                     5541  subq.w 0x2, d1
0x000022d4   4                 4ead02e2  jsr 0x2e2(a5)
0x000022d8   4                 446e001e  neg.w 0x1e(a6)
0x000022dc   4                 600000f2  bra.w 0x23d0
0x000022e0   4                 d26e000a  add.w 0xa(a6), d1
0x000022e4   4                 b272400e  cmp.w 0xe(a2, d4.w), d1
0x000022e8   2                     6c2c  bge.b 0x2316
0x000022ea   4                 3a32400a  move.w 0xa(a2, d4.w), d5
0x000022ee   2                     6f1e  ble.b 0x230e
0x000022f0   4                 4a6e001e  tst.w 0x1e(a6)
0x000022f4   2                     6d08  blt.b 0x22fe
0x000022f6   4                 4a725008  tst.w 0x8(a2, d5.w)
0x000022fa   2                     6c0a  bge.b 0x2306
0x000022fc   2                     6010  bra.b 0x230e
0x000022fe   4                 4a725006  tst.w 0x6(a2, d5.w)
0x00002302   2                     6c02  bge.b 0x2306
0x00002304   2                     6008  bra.b 0x230e
0x00002306   2                     3805  move.w d5, d4
0x00002308   4                 3d440004  move.w d4, 0x4(a6)
0x0000230c   2                     60d6  bra.b 0x22e4
0x0000230e   4                 3232400e  move.w 0xe(a2, d4.w), d1
0x00002312   4                 6000009a  bra.w 0x23ae
0x00002316   4                 536e0032  subq.w 0x1, 0x32(a6)
0x0000231a   2                     6c12  bge.b 0x232e
0x0000231c   2                     3f00  move.w d0, -(a7)
0x0000231e   4                 303c000e  move.w 0xe, d0
0x00002322   4                 4ead0042  jsr 0x42(a5)
0x00002326   2                     301f  move.w (a7)+, d0
0x00002328   6             3d7c00080032  move.w 0x8, 0x32(a6)
0x0000232e   2                     5342  subq.w 0x1, d2
0x00002330   4                 6c00007c  bge.w 0x23ae
0x00002334   4                 343c0002  move.w 0x2, d2
0x00002338   4                 60000074  bra.w 0x23ae
0x0000233c   4                 d26e000a  add.w 0xa(a6), d1
0x00002340   4                 b2724010  cmp.w 0x10(a2, d4.w), d1
0x00002344   2                     6f44  ble.b 0x238a
0x00002346   4                 3a32400c  move.w 0xc(a2, d4.w), d5
0x0000234a   2                     6728  beq.b 0x2374
0x0000234c   2                     6d1e  blt.b 0x236c
0x0000234e   4                 4a6e001e  tst.w 0x1e(a6)
0x00002352   2                     6d08  blt.b 0x235c
0x00002354   4                 4a725008  tst.w 0x8(a2, d5.w)
0x00002358   2                     6c0a  bge.b 0x2364
0x0000235a   2                     6010  bra.b 0x236c
0x0000235c   4                 4a725006  tst.w 0x6(a2, d5.w)
0x00002360   2                     6c02  bge.b 0x2364
0x00002362   2                     6008  bra.b 0x236c
0x00002364   2                     3805  move.w d5, d4
0x00002366   4                 3d440004  move.w d4, 0x4(a6)
0x0000236a   2                     601e  bra.b 0x238a
0x0000236c   4                 322e000e  move.w 0xe(a6), d1
0x00002370   4                 6000003c  bra.w 0x23ae
0x00002374   4                 32324010  move.w 0x10(a2, d4.w), d1
0x00002378   4                 3d41000e  move.w d1, 0xe(a6)
0x0000237c   4                 61000058  bsr.w 0x23d6
0x00002380   2                     5840  addq.w 0x4, d0
0x00002382   4                 3d40000c  move.w d0, 0xc(a6)
0x00002386   4                 4efaf926  jmp 0x1cae(pc)
0x0000238a   4                 536e0032  subq.w 0x1, 0x32(a6)
0x0000238e   2                     6c12  bge.b 0x23a2
0x00002390   2                     3f00  move.w d0, -(a7)
0x00002392   4                 303c000e  move.w 0xe, d0
0x00002396   4                 4ead0042  jsr 0x42(a5)
0x0000239a   2                     301f  move.w (a7)+, d0
0x0000239c   6             3d7c00080032  move.w 0x8, 0x32(a6)
0x000023a2   2                     5242  addq.w 0x1, d2
0x000023a4   4                 0c420003  cmpi.w 0x3, d2
0x000023a8   4                 6d000004  blt.w 0x23ae
0x000023ac   2                     4242  clr.w d2
0x000023ae   4                 286e0016  movea.l 0x16(a6), a4
0x000023b2   4                 4a6e001e  tst.w 0x1e(a6)
0x000023b6   2                     6d06  blt.b 0x23be
0x000023b8   4                 226c003c  movea.l 0x3c(a4), a1
0x000023bc   2                     6006  bra.b 0x23c4
0x000023be   4                 226c0038  movea.l 0x38(a4), a1
0x000023c2   2                     5a40  addq.w 0x5, d0
0x000023c4   4                 3d420010  move.w d2, 0x10(a6)
0x000023c8   4                 3d41000e  move.w d1, 0xe(a6)
0x000023cc   4                 4ead02e2  jsr 0x2e2(a5)
0x000023d0   4                 4efae224  jmp 0x5f6(pc)
0x000023d4   2                     4e75  rts
0x000023d6   4                 3c2e0006  move.w 0x6(a6), d6
0x000023da   4                 b2726000  cmp.w (a2, d6.w), d1
0x000023de   2                     6c04  bge.b 0x23e4
0x000023e0   2                     5946  subq.w 0x4, d6
0x000023e2   2                     60f6  bra.b 0x23da
0x000023e4   4                 b2726000  cmp.w (a2, d6.w), d1
0x000023e8   2                     6f04  ble.b 0x23ee
0x000023ea   2                     5846  addq.w 0x4, d6
0x000023ec   2                     60f6  bra.b 0x23e4
0x000023ee   4                 3d460006  move.w d6, 0x6(a6)
0x000023f2   2                     4e75  rts
0x000023f4   4                 536e0030  subq.w 0x1, 0x30(a6)
0x000023f8   2                     6e0e  bgt.b 0x2408
0x000023fa   6             3b7c0003fea6  move.w 0x3, -0x15a(a5)
0x00002400   4                 426dfea4  clr.w -0x15c(a5)
0x00002404   4                 50edfefd  st.b -0x103(a5)
0x00002408   2                     4e75  rts
0x0000240a   6             082e00010015  btst.b 0x1, 0x15(a6)
0x00002410   2                     6722  beq.b 0x2434
0x00002412   2                     3f00  move.w d0, -(a7)
0x00002414   4                 303c0063  move.w 0x63, d0
0x00002418   4                 4ead0042  jsr 0x42(a5)
0x0000241c   2                     301f  move.w (a7)+, d0
0x0000241e   6             3d7c001e002e  move.w 0x1e, 0x2e(a6)
0x00002424   6             3d6e0012002c  move.w 0x12(a6), 0x2c(a6)
0x0000242a   6             3d7c00250012  move.w 0x25, 0x12(a6)
0x00002430   2                     4a9f  tst.l (a7)+
0x00002432   2                     6002  bra.b 0x2436
0x00002434   2                     4e75  rts
0x00002436   4                 4ebafc96  jsr 0x20ce(pc)
0x0000243a   4                 206dffa0  movea.l -0x60(a5), a0
0x0000243e   4                 286e0016  movea.l 0x16(a6), a4
0x00002442   4                 4a6e001e  tst.w 0x1e(a6)
0x00002446   2                     6e06  bgt.b 0x244e
0x00002448   4                 226c00b0  movea.l 0xb0(a4), a1
0x0000244c   2                     6004  bra.b 0x2452
0x0000244e   4                 226c00b4  movea.l 0xb4(a4), a1
0x00002452   4                 342e002e  move.w 0x2e(a6), d2
0x00002456   4                 02420001  andi.w 0x1, d2
0x0000245a   2                     5741  subq.w 0x3, d1
0x0000245c   2                     5d40  subq.w 0x6, d0
0x0000245e   4                 4ead02e2  jsr 0x2e2(a5)
0x00002462   4                 536e002e  subq.w 0x1, 0x2e(a6)
0x00002466   2                     6e1e  bgt.b 0x2486
0x00002468   6             3d6e002c0012  move.w 0x2c(a6), 0x12(a6)
0x0000246e   4                 426e002c  clr.w 0x2c(a6)
0x00002472   6             08ae00020014  bclr.b 0x2, 0x14(a6)
0x00002478   2                     3f00  move.w d0, -(a7)
0x0000247a   4                 303c0063  move.w 0x63, d0
0x0000247e   4                 4ead004a  jsr 0x4a(a5)
0x00002482   2                     301f  move.w (a7)+, d0
0x00002484   2                     6008  bra.b 0x248e
0x00002486   6             082e00020014  btst.b 0x2, 0x14(a6)
0x0000248c   2                     67da  beq.b 0x2468
0x0000248e   2                     4e75  rts
0x00002490   4                 4a724006  tst.w 0x6(a2, d4.w)
0x00002494   2                     6e22  bgt.b 0x24b8
0x00002496   2                     6d1c  blt.b 0x24b4
0x00002498   6             082e00040015  btst.b 0x4, 0x15(a6)
0x0000249e   2                     6614  bne.b 0x24b4
0x000024a0   6             082e00020014  btst.b 0x2, 0x14(a6)
0x000024a6   2                     670c  beq.b 0x24b4
0x000024a8   6             35bc00014006  move.w 0x1, 0x6(a2, d4.w)
0x000024ae   6             08ae00020014  bclr.b 0x2, 0x14(a6)
0x000024b4   4                 4efaee22  jmp 0x12d8(pc)
0x000024b8   4                 34324006  move.w 0x6(a2, d4.w), d2
0x000024bc   2                     6df6  blt.b 0x24b4
0x000024be   2                     5342  subq.w 0x1, d2
0x000024c0   4                 143b2036  move.b 0x24f8(pc, d2.w), d2
0x000024c4   2                     4882  ext.w d2
0x000024c6   4                 206dffa0  movea.l -0x60(a5), a0
0x000024ca   4                 286e0016  movea.l 0x16(a6), a4
0x000024ce   2                     5f41  subq.w 0x7, d1
0x000024d0   4                 0c4000c8  cmpi.w 0xc8, d0
0x000024d4   2                     6e0c  bgt.b 0x24e2
0x000024d6   4                 30324000  move.w (a2, d4.w), d0
0x000024da   2                     5140  subq.w 0x8, d0
0x000024dc   4                 226c00b8  movea.l 0xb8(a4), a1
0x000024e0   2                     600c  bra.b 0x24ee
0x000024e2   4                 30324002  move.w 0x2(a2, d4.w), d0
0x000024e6   4                 0440000c  subi.w 0xc, d0
0x000024ea   4                 226c00dc  movea.l 0xdc(a4), a1
0x000024ee   4                 4ead02e2  jsr 0x2e2(a5)
0x000024f2   4                 4efae102  jmp 0x5f6(pc)
0x000024f6   2                     4e75  rts
0x000024f8   4                 00000102  ori.b 0x2, d0
0x000024fc   2                     0304  btst.l d1, d4
0x000024fe   4                 04030300  subi.b 0x0, d3
0x00002502   4                 206dffa0  movea.l -0x60(a5), a0
0x00002506   4                 362e0030  move.w 0x30(a6), d3
0x0000250a   4                 566e0030  addq.w 0x3, 0x30(a6)
0x0000250e   4                 49fa017a  lea.l 0x268a(pc), a4
0x00002512   2                     d8c3  adda.w d3, a4
0x00002514   2                     161c  move.b (a4)+, d3
0x00002516   4                 6c000084  bge.w 0x259c
0x0000251a   2                     3f00  move.w d0, -(a7)
0x0000251c   4                 303c000b  move.w 0xb, d0
0x00002520   4                 4ead0042  jsr 0x42(a5)
0x00002524   2                     301f  move.w (a7)+, d0
0x00002526   4                 1c32400f  move.b 0xf(a2, d4.w), d6
0x0000252a   4                 0dadfeae  bclr.b d6, -0x152(a5)
0x0000252e   4                 48e7f0c0  movem.l d0-d3/a0-a1, -(a7)
0x00002532   4                 303c0002  move.w 0x2, d0
0x00002536   4                 4ead03ea  jsr 0x3ea(a5)
0x0000253a   4                 3e2dfea8  move.w -0x158(a5), d7
0x0000253e   4                 0c470001  cmpi.w 0x1, d7
0x00002542   2                     6606  bne.b 0x254a
0x00002544   4                 303c0034  move.w 0x34, d0
0x00002548   2                     602e  bra.b 0x2578
0x0000254a   4                 0c470009  cmpi.w 0x9, d7
0x0000254e   2                     6606  bne.b 0x2556
0x00002550   4                 303c0054  move.w 0x54, d0
0x00002554   2                     6022  bra.b 0x2578
0x00002556   4                 0c470006  cmpi.w 0x6, d7
0x0000255a   2                     6606  bne.b 0x2562
0x0000255c   4                 303c0048  move.w 0x48, d0
0x00002560   2                     6016  bra.b 0x2578
0x00002562   4                 0c47000d  cmpi.w 0xd, d7
0x00002566   2                     6606  bne.b 0x256e
0x00002568   4                 303c0060  move.w 0x60, d0
0x0000256c   2                     600a  bra.b 0x2578
0x0000256e   4                 0c47000c  cmpi.w 0xc, d7
0x00002572   2                     6608  bne.b 0x257c
0x00002574   4                 303c0064  move.w 0x64, d0
0x00002578   4                 4ead0492  jsr 0x492(a5)
0x0000257c   4                 4cdf030f  movem.l (a7)+, d0-d3/a0-a1
0x00002580   6             35bc00024004  move.w 0x2, 0x4(a2, d4.w)
0x00002586   4                 426e0032  clr.w 0x32(a6)
0x0000258a   6             3d7c00020012  move.w 0x2, 0x12(a6)
0x00002590   4                 302e000c  move.w 0xc(a6), d0
0x00002594   4                 322e000e  move.w 0xe(a6), d1
0x00002598   4                 4efaf078  jmp 0x1612(pc)
0x0000259c   4                 43edf520  lea.l -0xae0(a5), a1
0x000025a0   2                     4883  ext.w d3
0x000025a2   2                     d2c3  adda.w d3, a1
0x000025a4   2                     2251  movea.l (a1), a1
0x000025a6   2                     e243  asr.w 0x1, d3
0x000025a8   4                 47fa00da  lea.l 0x2684(pc), a3
0x000025ac   4                 d2733000  add.w (a3, d3.w), d1
0x000025b0   2                     5340  subq.w 0x1, d0
0x000025b2   2                     141c  move.b (a4)+, d2
0x000025b4   2                     4882  ext.w d2
0x000025b6   4                 0c420006  cmpi.w 0x6, d2
0x000025ba   2                     6644  bne.b 0x2600
0x000025bc   6             082d0002ff3a  btst.b 0x2, -0xc6(a5)
0x000025c2   2                     673c  beq.b 0x2600
0x000025c4   4                 48e7e8c0  movem.l d0-d2/d4/a0-a1, -(a7)
0x000025c8   2                     3404  move.w d4, d2
0x000025ca   4                 362e0006  move.w 0x6(a6), d3
0x000025ce   4                 06410011  addi.w 0x11, d1
0x000025d2   4                 4ead0402  jsr 0x402(a5)
0x000025d6   4                 4cdf0317  movem.l (a7)+, d0-d2/d4/a0-a1
0x000025da   4                 426dff22  clr.w -0xde(a5)
0x000025de   6             3d7c00420012  move.w 0x42, 0x12(a6)
0x000025e4   4                 2d49001a  move.l a1, 0x1a(a6)
0x000025e8   4                 3d41000e  move.w d1, 0xe(a6)
0x000025ec   4                 3d420010  move.w d2, 0x10(a6)
0x000025f0   6             3d7c00050030  move.w 0x5, 0x30(a6)
0x000025f6   6             3d7c000f0032  move.w 0xf, 0x32(a6)
0x000025fc   4                 4efaec7e  jmp 0x127c(pc)
0x00002600   4                 48e7e040  movem.l d0-d2/a1, -(a7)
0x00002604   2                     1e1c  move.b (a4)+, d7
0x00002606   2                     4887  ext.w d7
0x00002608   2                     6d38  blt.b 0x2642
0x0000260a   4                 0c470040  cmpi.w 0x40, d7
0x0000260e   2                     6d10  blt.b 0x2620
0x00002610   4                 04470040  subi.w 0x40, d7
0x00002614   2                     3f00  move.w d0, -(a7)
0x00002616   4                 303c003b  move.w 0x3b, d0
0x0000261a   4                 4ead0042  jsr 0x42(a5)
0x0000261e   2                     301f  move.w (a7)+, d0
0x00002620   2                     3407  move.w d7, d2
0x00002622   4                 226df608  movea.l -0x9f8(a5), a1
0x00002626   4                 302e000c  move.w 0xc(a6), d0
0x0000262a   4                 322e000e  move.w 0xe(a6), d1
0x0000262e   4                 0440000a  subi.w 0xa, d0
0x00002632   4                 04410011  subi.w 0x11, d1
0x00002636   4                 90680012  sub.w 0x12(a0), d0
0x0000263a   4                 92680014  sub.w 0x14(a0), d1
0x0000263e   4                 4ead02fa  jsr 0x2fa(a5)
0x00002642   4                 4cdf0207  movem.l (a7)+, d0-d2/a1
0x00002646   4                 4ead02e2  jsr 0x2e2(a5)
0x0000264a   2                     4a47  tst.w d7
0x0000264c   2                     6d12  blt.b 0x2660
0x0000264e   4                 226df610  movea.l -0x9f0(a5), a1
0x00002652   2                     3407  move.w d7, d2
0x00002654   2                     5e40  addq.w 0x7, d0
0x00002656   2                     5241  addq.w 0x1, d1
0x00002658   4                 4ead02e2  jsr 0x2e2(a5)
0x0000265c   4                 60000104  bra.w 0x2762
0x00002660   4                 0c47fffe  cmpi.w 0xfffe, d7
0x00002664   4                 660000fc  bne.w 0x2762
0x00002668   4                 206df9f0  movea.l -0x610(a5), a0
0x0000266c   2                     5048  addq.w 0x8, a0
0x0000266e   4                 42a8fffc  clr.l -0x4(a0)
0x00002672   4                 206df9f4  movea.l -0x60c(a5), a0
0x00002676   4                 b0fc0000  cmpa.w 0x0, a0
0x0000267a   4                 670000e6  beq.w 0x2762
0x0000267e   2                     4e90  jsr (a0)
0x00002680   4                 600000e0  bra.w 0x2762
0x00002684   4                 0002ffef  ori.b 0xef, d2
0x00002688   2                     fff3  invalid
0x0000268a   4                 0000ff00  ori.b 0x0, d0
0x0000268e   4                 00ff0001  
0x00002692   2                     fe00  invalid
0x00002694   4                 01ff0800  
0x00002698   2                     ff08  invalid
0x0000269a   4                 00ff0400  
0x0000269e   2                     ff04  invalid
0x000026a0   4                 00ff0401  
0x000026a4   2                     ff04  invalid
0x000026a6   4                 01ff0402  
0x000026aa   2                     ff04  invalid
0x000026ac   4                 02ff0403  
0x000026b0   2                     ff04  invalid
0x000026b2   4                 03ff0404  
0x000026b6   2                     ff04  invalid
0x000026b8   4                 04ff0405  
0x000026bc   4                 00040541  ori.b 0x41, d4
0x000026c0   4                 04050204  subi.b 0x4, d5
0x000026c4   2                     0503  btst.l d2, d3
0x000026c6   4                 04050404  subi.b 0x4, d5
0x000026ca   2                     0505  btst.l d2, d5
0x000026cc   4                 04050504  subi.b 0x4, d5
0x000026d0   2                     0505  btst.l d2, d5
0x000026d2   4                 04050404  subi.b 0x4, d5
0x000026d6   2                     0503  btst.l d2, d3
0x000026d8   4                 04050204  subi.b 0x4, d5
0x000026dc   2                     0501  btst.l d2, d1
0x000026de   4                 04050004  subi.b 0x4, d5
0x000026e2   2                     0500  btst.l d2, d0
0x000026e4   4                 04054104  subi.b 0x4, d5
0x000026e8   2                     0502  btst.l d2, d2
0x000026ea   4                 04050304  subi.b 0x4, d5
0x000026ee   2                     0504  btst.l d2, d4
0x000026f0   4                 04050504  subi.b 0x4, d5
0x000026f4   2                     0505  btst.l d2, d5
0x000026f6   4                 04050504  subi.b 0x4, d5
0x000026fa   2                     0504  btst.l d2, d4
0x000026fc   4                 04050304  subi.b 0x4, d5
0x00002700   2                     0502  btst.l d2, d2
0x00002702   4                 04050104  subi.b 0x4, d5
0x00002706   2                     0500  btst.l d2, d0
0x00002708   4                 04050004  subi.b 0x4, d5
0x0000270c   2                     0541  bchg.b d2, d1
0x0000270e   4                 04050204  subi.b 0x4, d5
0x00002712   2                     0503  btst.l d2, d3
0x00002714   4                 04050404  subi.b 0x4, d5
0x00002718   2                     0505  btst.l d2, d5
0x0000271a   4                 04050504  subi.b 0x4, d5
0x0000271e   2                     0505  btst.l d2, d5
0x00002720   4                 04050404  subi.b 0x4, d5
0x00002724   2                     0503  btst.l d2, d3
0x00002726   4                 04050204  subi.b 0x4, d5
0x0000272a   2                     0501  btst.l d2, d1
0x0000272c   4                 04050008  subi.b 0x8, d5
0x00002730   4                 01ff0802  
0x00002734   2                     ff08  invalid
0x00002736   4                 03ff0804  
0x0000273a   2                     ff00  invalid
0x0000273c   4                 02ff0002  
0x00002740   2                     ff00  invalid
0x00002742   4                 03ff0003  
0x00002746   2                     ff00  invalid
0x00002748   4                 04ff0004  
0x0000274c   2                     ff00  invalid
0x0000274e   4                 05ff0005  
0x00002752   2                     ff00  invalid
0x00002754   4                 06ff0006  
0x00002758   2                     ff00  invalid
0x0000275a   4                 07ff0007  
0x0000275e   2                     ffff  invalid
0x00002760   4                 00004e75  ori.b 0x75, d0
0x00002764   4                 206dffa0  movea.l -0x60(a5), a0
0x00002768   4                 362e0030  move.w 0x30(a6), d3
0x0000276c   4                 4efb3002  jmp 0x2770(pc, d3.w)
0x00002770   4                 4efa0006  jmp 0x2778(pc)
0x00002774   4                 4efa0030  jmp 0x27a6(pc)
0x00002778   6             082e00040015  btst.b 0x4, 0x15(a6)
0x0000277e   2                     6622  bne.b 0x27a2
0x00002780   6             082e00020014  btst.b 0x2, 0x14(a6)
0x00002786   2                     671a  beq.b 0x27a2
0x00002788   6             082e00020015  btst.b 0x2, 0x15(a6)
0x0000278e   2                     6712  beq.b 0x27a2
0x00002790   6             08ae00020014  bclr.b 0x2, 0x14(a6)
0x00002796   6             3d7c00040030  move.w 0x4, 0x30(a6)
0x0000279c   4                 426e0032  clr.w 0x32(a6)
0x000027a0   2                     6004  bra.b 0x27a6
0x000027a2   4                 4efaeb34  jmp 0x12d8(pc)
0x000027a6   4                 362e0032  move.w 0x32(a6), d3
0x000027aa   4                 566e0032  addq.w 0x3, 0x32(a6)
0x000027ae   4                 49fa00b2  lea.l 0x2862(pc), a4
0x000027b2   2                     d8c3  adda.w d3, a4
0x000027b4   2                     161c  move.b (a4)+, d3
0x000027b6   2                     6c30  bge.b 0x27e8
0x000027b8   4                 3c32400a  move.w 0xa(a2, d4.w), d6
0x000027bc   4                 0dedfeac  bset.b d6, -0x154(a5)
0x000027c0   4                 303c0002  move.w 0x2, d0
0x000027c4   4                 4ead03e2  jsr 0x3e2(a5)
0x000027c8   6             0c2d001ffeac  cmpi.b 0x1f, -0x154(a5)
0x000027ce   4                 6600000a  bne.w 0x27da
0x000027d2   4                 50edfa08  st.b -0x5f8(a5)
0x000027d6   4                 50edfa09  st.b -0x5f7(a5)
0x000027da   6             35bc00014004  move.w 0x1, 0x4(a2, d4.w)
0x000027e0   4                 426e0012  clr.w 0x12(a6)
0x000027e4   4                 4efaeaf2  jmp 0x12d8(pc)
0x000027e8   4                 43edf52c  lea.l -0xad4(a5), a1
0x000027ec   2                     4883  ext.w d3
0x000027ee   2                     d2c3  adda.w d3, a1
0x000027f0   2                     2251  movea.l (a1), a1
0x000027f2   2                     e243  asr.w 0x1, d3
0x000027f4   4                 d27b3066  add.w 0x285c(pc, d3.w), d1
0x000027f8   4                 30324006  move.w 0x6(a2, d4.w), d0
0x000027fc   2                     141c  move.b (a4)+, d2
0x000027fe   2                     4882  ext.w d2
0x00002800   4                 4ead02e2  jsr 0x2e2(a5)
0x00002804   2                     1e1c  move.b (a4)+, d7
0x00002806   2                     4887  ext.w d7
0x00002808   2                     6d28  blt.b 0x2832
0x0000280a   4                 0c470040  cmpi.w 0x40, d7
0x0000280e   2                     6d10  blt.b 0x2820
0x00002810   4                 04470040  subi.w 0x40, d7
0x00002814   2                     3f00  move.w d0, -(a7)
0x00002816   4                 303c003b  move.w 0x3b, d0
0x0000281a   4                 4ead0042  jsr 0x42(a5)
0x0000281e   2                     301f  move.w (a7)+, d0
0x00002820   4                 226df610  movea.l -0x9f0(a5), a1
0x00002824   2                     3407  move.w d7, d2
0x00002826   2                     5e40  addq.w 0x7, d0
0x00002828   2                     5241  addq.w 0x1, d1
0x0000282a   4                 4ead02e2  jsr 0x2e2(a5)
0x0000282e   4                 600000d2  bra.w 0x2902
0x00002832   4                 0c47fffe  cmpi.w 0xfffe, d7
0x00002836   4                 660000ca  bne.w 0x2902
0x0000283a   4                 30324006  move.w 0x6(a2, d4.w), d0
0x0000283e   4                 32324008  move.w 0x8(a2, d4.w), d1
0x00002842   2                     4242  clr.w d2
0x00002844   4                 226df60c  movea.l -0x9f4(a5), a1
0x00002848   4                 4ead03d2  jsr 0x3d2(a5)
0x0000284c   2                     3f00  move.w d0, -(a7)
0x0000284e   4                 303c0050  move.w 0x50, d0
0x00002852   4                 4ead0042  jsr 0x42(a5)
0x00002856   2                     301f  move.w (a7)+, d0
0x00002858   4                 600000a8  bra.w 0x2902
0x0000285c   4                 0000ffef  ori.b 0xef, d0
0x00002860   2                     fff9  invalid
0x00002862   4                 0000ff00  ori.b 0x0, d0
0x00002866   4                 00ff0001  
0x0000286a   2                     ff00  invalid
0x0000286c   4                 01ff0000  
0x00002870   2                     ff00  invalid
0x00002872   4                 00ff0002  
0x00002876   2                     ff00  invalid
0x00002878   4                 02ff0002  
0x0000287c   2                     ff00  invalid
0x0000287e   4                 02ff0003  
0x00002882   2                     ff00  invalid
0x00002884   4                 03ff0800  
0x00002888   2                     ff08  invalid
0x0000288a   4                 00ff0801  
0x0000288e   2                     ff08  invalid
0x00002890   4                 01ff0400  
0x00002894   2                     ff04  invalid
0x00002896   4                 00ff0401  
0x0000289a   2                     ff04  invalid
0x0000289c   4                 01ff0402  
0x000028a0   2                     ff04  invalid
0x000028a2   4                 02ff0403  
0x000028a6   2                     ff04  invalid
0x000028a8   2                     0300  btst.l d1, d0
0x000028aa   4                 04034104  subi.b 0x4, d3
0x000028ae   2                     0302  btst.l d1, d2
0x000028b0   4                 04030304  subi.b 0x4, d3
0x000028b4   2                     0304  btst.l d1, d4
0x000028b6   4                 04030504  subi.b 0x4, d3
0x000028ba   2                     0304  btst.l d1, d4
0x000028bc   4                 04030304  subi.b 0x4, d3
0x000028c0   2                     0302  btst.l d1, d2
0x000028c2   4                 04030104  subi.b 0x4, d3
0x000028c6   2                     0300  btst.l d1, d0
0x000028c8   4                 04034104  subi.b 0x4, d3
0x000028cc   2                     0302  btst.l d1, d2
0x000028ce   4                 04030304  subi.b 0x4, d3
0x000028d2   2                     0304  btst.l d1, d4
0x000028d4   4                 04030504  subi.b 0x4, d3
0x000028d8   2                     0304  btst.l d1, d4
0x000028da   4                 04030304  subi.b 0x4, d3
0x000028de   2                     0302  btst.l d1, d2
0x000028e0   4                 04030104  subi.b 0x4, d3
0x000028e4   2                     0300  btst.l d1, d0
0x000028e6   4                 0802ff08  
0x000028ea   4                 02fe0004  
0x000028ee   2                     ff00  invalid
0x000028f0   4                 04ff0005  
0x000028f4   2                     ff00  invalid
0x000028f6   4                 05ff0006  
0x000028fa   2                     ff00  invalid
0x000028fc   4                 06ffff00  
0x00002900   4                 00004e75  ori.b 0x75, d0
0x00002904   4                 4a6e0030  tst.w 0x30(a6)
0x00002908   2                     6e20  bgt.b 0x292a
0x0000290a   6             082e00040015  btst.b 0x4, 0x15(a6)
0x00002910   4                 66000256  bne.w 0x2b68
0x00002914   6             082e00020014  btst.b 0x2, 0x14(a6)
0x0000291a   4                 6700024c  beq.w 0x2b68
0x0000291e   6             08ae00020014  bclr.b 0x2, 0x14(a6)
0x00002924   6             3d7c00030030  move.w 0x3, 0x30(a6)
0x0000292a   4                 536e0030  subq.w 0x1, 0x30(a6)
0x0000292e   4                 206dffa0  movea.l -0x60(a5), a0
0x00002932   6             0c72001c4008  cmpi.w 0x1c, 0x8(a2, d4.w)
0x00002938   2                     6d12  blt.b 0x294c
0x0000293a   4                 226df470  movea.l -0xb90(a5), a1
0x0000293e   2                     4242  clr.w d2
0x00002940   4                 30324000  move.w (a2, d4.w), d0
0x00002944   2                     5040  addq.w 0x8, d0
0x00002946   4                 0441000b  subi.w 0xb, d1
0x0000294a   2                     601e  bra.b 0x296a
0x0000294c   4                 226df4b4  movea.l -0xb4c(a5), a1
0x00002950   4                 4a6e001e  tst.w 0x1e(a6)
0x00002954   2                     6d08  blt.b 0x295e
0x00002956   4                 30324002  move.w 0x2(a2, d4.w), d0
0x0000295a   2                     4242  clr.w d2
0x0000295c   2                     6008  bra.b 0x2966
0x0000295e   4                 30324000  move.w (a2, d4.w), d0
0x00002962   4                 343c0001  move.w 0x1, d2
0x00002966   4                 0641000e  addi.w 0xe, d1
0x0000296a   4                 4ead02e2  jsr 0x2e2(a5)
0x0000296e   4                 4a6e0030  tst.w 0x30(a6)
0x00002972   4                 6e0001f0  bgt.w 0x2b64
0x00002976   4                 36324008  move.w 0x8(a2, d4.w), d3
0x0000297a   4                 4efb3002  jmp 0x297e(pc, d3.w)
0x0000297e   4                 60000026  bra.w 0x29a6
0x00002982   4                 6000006e  bra.w 0x29f2
0x00002986   4                 6000009e  bra.w 0x2a26
0x0000298a   4                 600000ce  bra.w 0x2a5a
0x0000298e   4                 60000100  bra.w 0x2a90
0x00002992   4                 6000012a  bra.w 0x2abe
0x00002996   4                 6000014e  bra.w 0x2ae6
0x0000299a   4                 60000178  bra.w 0x2b14
0x0000299e   4                 6000018c  bra.w 0x2b2c
0x000029a2   4                 600001a4  bra.w 0x2b48
0x000029a6   6             0c2d007fff34  cmpi.b 0x7f, -0xcc(a5)
0x000029ac   2                     6230  bhi.b 0x29de
0x000029ae   2                     3f00  move.w d0, -(a7)
0x000029b0   4                 303c000b  move.w 0xb, d0
0x000029b4   4                 4ead0042  jsr 0x42(a5)
0x000029b8   2                     301f  move.w (a7)+, d0
0x000029ba   6             3b7c0002ff2e  move.w 0x2, -0xd2(a5)
0x000029c0   2                     3f06  move.w d6, -(a7)
0x000029c2   4                 1c3c0010  move.b 0x10, d6
0x000029c6   4                 1e2dff34  move.b -0xcc(a5), d7
0x000029ca   4                 023c0007  andi.b 0x7, ccr
0x000029ce   2                     cf06  abcd.b d6, d7
0x000029d0   4                 1b47ff34  move.b d7, -0xcc(a5)
0x000029d4   2                     3c1f  move.w (a7)+, d6
0x000029d6   6             35bc00014004  move.w 0x1, 0x4(a2, d4.w)
0x000029dc   2                     600c  bra.b 0x29ea
0x000029de   2                     3f00  move.w d0, -(a7)
0x000029e0   4                 303c000d  move.w 0xd, d0
0x000029e4   4                 4ead0042  jsr 0x42(a5)
0x000029e8   2                     301f  move.w (a7)+, d0
0x000029ea   4                 426e0012  clr.w 0x12(a6)
0x000029ee   4                 60000174  bra.w 0x2b64
0x000029f2   6             0c6d005aff24  cmpi.w 0x5a, -0xdc(a5)
0x000029f8   2                     6c18  bge.b 0x2a12
0x000029fa   2                     3f00  move.w d0, -(a7)
0x000029fc   4                 303c000b  move.w 0xb, d0
0x00002a00   4                 4ead0042  jsr 0x42(a5)
0x00002a04   2                     301f  move.w (a7)+, d0
0x00002a06   4                 526dff24  addq.w 0x1, -0xdc(a5)
0x00002a0a   6             35bc00014004  move.w 0x1, 0x4(a2, d4.w)
0x00002a10   2                     600c  bra.b 0x2a1e
0x00002a12   2                     3f00  move.w d0, -(a7)
0x00002a14   4                 303c000d  move.w 0xd, d0
0x00002a18   4                 4ead0042  jsr 0x42(a5)
0x00002a1c   2                     301f  move.w (a7)+, d0
0x00002a1e   4                 426e0012  clr.w 0x12(a6)
0x00002a22   4                 60000140  bra.w 0x2b64
0x00002a26   6             0c6d005aff28  cmpi.w 0x5a, -0xd8(a5)
0x00002a2c   2                     6c18  bge.b 0x2a46
0x00002a2e   2                     3f00  move.w d0, -(a7)
0x00002a30   4                 303c000b  move.w 0xb, d0
0x00002a34   4                 4ead0042  jsr 0x42(a5)
0x00002a38   2                     301f  move.w (a7)+, d0
0x00002a3a   4                 526dff28  addq.w 0x1, -0xd8(a5)
0x00002a3e   6             35bc00014004  move.w 0x1, 0x4(a2, d4.w)
0x00002a44   2                     600c  bra.b 0x2a52
0x00002a46   2                     3f00  move.w d0, -(a7)
0x00002a48   4                 303c000d  move.w 0xd, d0
0x00002a4c   4                 4ead0042  jsr 0x42(a5)
0x00002a50   2                     301f  move.w (a7)+, d0
0x00002a52   4                 426e0012  clr.w 0x12(a6)
0x00002a56   4                 6000010c  bra.w 0x2b64
0x00002a5a   6             0c6d005aff2a  cmpi.w 0x5a, -0xd6(a5)
0x00002a60   2                     6c1a  bge.b 0x2a7c
0x00002a62   2                     3f00  move.w d0, -(a7)
0x00002a64   4                 303c000b  move.w 0xb, d0
0x00002a68   4                 4ead0042  jsr 0x42(a5)
0x00002a6c   2                     301f  move.w (a7)+, d0
0x00002a6e   6             066d000aff2a  addi.w 0xa, -0xd6(a5)
0x00002a74   6             35bc00014004  move.w 0x1, 0x4(a2, d4.w)
0x00002a7a   2                     600c  bra.b 0x2a88
0x00002a7c   2                     3f00  move.w d0, -(a7)
0x00002a7e   4                 303c000d  move.w 0xd, d0
0x00002a82   4                 4ead0042  jsr 0x42(a5)
0x00002a86   2                     301f  move.w (a7)+, d0
0x00002a88   4                 426e0012  clr.w 0x12(a6)
0x00002a8c   4                 600000d6  bra.w 0x2b64
0x00002a90   2                     3f00  move.w d0, -(a7)
0x00002a92   4                 303c000b  move.w 0xb, d0
0x00002a96   4                 4ead0042  jsr 0x42(a5)
0x00002a9a   2                     301f  move.w (a7)+, d0
0x00002a9c   6             066d3200ff22  addi.w 0x3200, -0xde(a5)
0x00002aa2   6             0c6d6400ff22  cmpi.w 0x6400, -0xde(a5)
0x00002aa8   2                     6306  bls.b 0x2ab0
0x00002aaa   6             3b7c6400ff22  move.w 0x6400, -0xde(a5)
0x00002ab0   4                 426e0012  clr.w 0x12(a6)
0x00002ab4   6             35bc00014004  move.w 0x1, 0x4(a2, d4.w)
0x00002aba   4                 600000a8  bra.w 0x2b64
0x00002abe   2                     3f00  move.w d0, -(a7)
0x00002ac0   4                 303c0010  move.w 0x10, d0
0x00002ac4   4                 4ead0042  jsr 0x42(a5)
0x00002ac8   2                     301f  move.w (a7)+, d0
0x00002aca   6             35bc00014004  move.w 0x1, 0x4(a2, d4.w)
0x00002ad0   6             3d7c00430012  move.w 0x43, 0x12(a6)
0x00002ad6   6             3d7c00070030  move.w 0x7, 0x30(a6)
0x00002adc   6             3d7c000a0032  move.w 0xa, 0x32(a6)
0x00002ae2   4                 60000080  bra.w 0x2b64
0x00002ae6   2                     3f00  move.w d0, -(a7)
0x00002ae8   4                 303c0012  move.w 0x12, d0
0x00002aec   4                 4ead0042  jsr 0x42(a5)
0x00002af0   2                     301f  move.w (a7)+, d0
0x00002af2   6             046d1e00ff22  subi.w 0x1e00, -0xde(a5)
0x00002af8   2                     6e04  bgt.b 0x2afe
0x00002afa   4                 426dff22  clr.w -0xde(a5)
0x00002afe   6             3d7c000c0012  move.w 0xc, 0x12(a6)
0x00002b04   4                 47fad5ef  lea.l 0xf5(pc), a3
0x00002b08   4                 2d4b0030  move.l a3, 0x30(a6)
0x00002b0c   6             35bc00014004  move.w 0x1, 0x4(a2, d4.w)
0x00002b12   2                     6050  bra.b 0x2b64
0x00002b14   2                     3f00  move.w d0, -(a7)
0x00002b16   4                 303c000b  move.w 0xb, d0
0x00002b1a   4                 4ead0042  jsr 0x42(a5)
0x00002b1e   2                     301f  move.w (a7)+, d0
0x00002b20   4                 426e0012  clr.w 0x12(a6)
0x00002b24   6             35bc00014004  move.w 0x1, 0x4(a2, d4.w)
0x00002b2a   2                     6038  bra.b 0x2b64
0x00002b2c   2                     3f00  move.w d0, -(a7)
0x00002b2e   4                 303c0049  move.w 0x49, d0
0x00002b32   4                 4ead0042  jsr 0x42(a5)
0x00002b36   2                     301f  move.w (a7)+, d0
0x00002b38   4                 526dff20  addq.w 0x1, -0xe0(a5)
0x00002b3c   4                 426e0012  clr.w 0x12(a6)
0x00002b40   6             35bc00014004  move.w 0x1, 0x4(a2, d4.w)
0x00002b46   2                     601c  bra.b 0x2b64
0x00002b48   2                     3f00  move.w d0, -(a7)
0x00002b4a   4                 303c0049  move.w 0x49, d0
0x00002b4e   4                 4ead0042  jsr 0x42(a5)
0x00002b52   2                     301f  move.w (a7)+, d0
0x00002b54   4                 5a6dff20  addq.w 0x5, -0xe0(a5)
0x00002b58   4                 426e0012  clr.w 0x12(a6)
0x00002b5c   6             35bc00014004  move.w 0x1, 0x4(a2, d4.w)
0x00002b62   2                     4e71  nop
0x00002b64   4                 4efada90  jmp 0x5f6(pc)
0x00002b68   4                 4efae76e  jmp 0x12d8(pc)
0x00002b6c   2                     4e75  rts
0x00002b6e   4                 4a724006  tst.w 0x6(a2, d4.w)
0x00002b72   2                     6e28  bgt.b 0x2b9c
0x00002b74   2                     6d22  blt.b 0x2b98
0x00002b76   6             082e00040015  btst.b 0x4, 0x15(a6)
0x00002b7c   2                     661a  bne.b 0x2b98
0x00002b7e   6             082e00020014  btst.b 0x2, 0x14(a6)
0x00002b84   2                     6712  beq.b 0x2b98
0x00002b86   6             35bc00014006  move.w 0x1, 0x6(a2, d4.w)
0x00002b8c   6             08ae00020014  bclr.b 0x2, 0x14(a6)
0x00002b92   4                 426e0030  clr.w 0x30(a6)
0x00002b96   2                     6004  bra.b 0x2b9c
0x00002b98   4                 4efae73e  jmp 0x12d8(pc)
0x00002b9c   4                 362e0030  move.w 0x30(a6), d3
0x00002ba0   4                 143b3036  move.b 0x2bd8(pc, d3.w), d2
0x00002ba4   2                     4882  ext.w d2
0x00002ba6   2                     6df0  blt.b 0x2b98
0x00002ba8   4                 526e0030  addq.w 0x1, 0x30(a6)
0x00002bac   4                 206dffa0  movea.l -0x60(a5), a0
0x00002bb0   2                     5f41  subq.w 0x7, d1
0x00002bb2   4                 4a72400e  tst.w 0xe(a2, d4.w)
0x00002bb6   2                     6e0c  bgt.b 0x2bc4
0x00002bb8   4                 30324000  move.w (a2, d4.w), d0
0x00002bbc   2                     5140  subq.w 0x8, d0
0x00002bbe   4                 226df4a8  movea.l -0xb58(a5), a1
0x00002bc2   2                     600c  bra.b 0x2bd0
0x00002bc4   4                 30324002  move.w 0x2(a2, d4.w), d0
0x00002bc8   4                 0440000c  subi.w 0xc, d0
0x00002bcc   4                 226df4cc  movea.l -0xb34(a5), a1
0x00002bd0   4                 4ead02e2  jsr 0x2e2(a5)
0x00002bd4   4                 4efada20  jmp 0x5f6(pc)
0x00002bd8   4                 00000102  ori.b 0x2, d0
0x00002bdc   2                     0304  btst.l d1, d4
0x00002bde   4                 040303ff  subi.b 0xff, d3
0x00002be2   2                     4e75  rts
0x00002be4   4                 3e2e0030  move.w 0x30(a6), d7
0x00002be8   4                 4efb7002  jmp 0x2bec(pc, d7.w)
0x00002bec   4                 4efa000a  jmp 0x2bf8(pc)
0x00002bf0   4                 4efa00ea  jmp 0x2cdc(pc)
0x00002bf4   4                 4efa00b0  jmp 0x2ca6(pc)
0x00002bf8   6             082e00040015  btst.b 0x4, 0x15(a6)
0x00002bfe   4                 660000a2  bne.w 0x2ca2
0x00002c02   6             082e00020014  btst.b 0x2, 0x14(a6)
0x00002c08   4                 67000098  beq.w 0x2ca2
0x00002c0c   6             08ae00020014  bclr.b 0x2, 0x14(a6)
0x00002c12   4                 3e32400c  move.w 0xc(a2, d4.w), d7
0x00002c16   4                 4efb7002  jmp 0x2c1a(pc, d7.w)
0x00002c1a   2                     6004  bra.b 0x2c20
0x00002c1c   2                     6020  bra.b 0x2c3e
0x00002c1e   2                     6036  bra.b 0x2c56
0x00002c20   4                 4a6dff20  tst.w -0xe0(a5)
0x00002c24   2                     6e0a  bgt.b 0x2c30
0x00002c26   4                 47fa01c6  lea.l 0x2dee(pc), a3
0x00002c2a   4                 2d4b0034  move.l a3, 0x34(a6)
0x00002c2e   2                     6044  bra.b 0x2c74
0x00002c30   4                 47fa0176  lea.l 0x2da8(pc), a3
0x00002c34   4                 2d4b0034  move.l a3, 0x34(a6)
0x00002c38   4                 536dff20  subq.w 0x1, -0xe0(a5)
0x00002c3c   2                     6036  bra.b 0x2c74
0x00002c3e   6             0c6d0000fea8  cmpi.w 0x0, -0x158(a5)
0x00002c44   2                     6606  bne.b 0x2c4c
0x00002c46   4                 47fa01e6  lea.l 0x2e2e(pc), a3
0x00002c4a   2                     6004  bra.b 0x2c50
0x00002c4c   4                 47fa01c4  lea.l 0x2e12(pc), a3
0x00002c50   4                 2d4b0034  move.l a3, 0x34(a6)
0x00002c54   2                     601e  bra.b 0x2c74
0x00002c56   4                 4a6dff20  tst.w -0xe0(a5)
0x00002c5a   2                     6e0a  bgt.b 0x2c66
0x00002c5c   4                 47fa0190  lea.l 0x2dee(pc), a3
0x00002c60   4                 2d4b0034  move.l a3, 0x34(a6)
0x00002c64   2                     600e  bra.b 0x2c74
0x00002c66   4                 536dff20  subq.w 0x1, -0xe0(a5)
0x00002c6a   4                 47fa015e  lea.l 0x2dca(pc), a3
0x00002c6e   4                 2d4b0034  move.l a3, 0x34(a6)
0x00002c72   2                     4e71  nop
0x00002c74   6             3d7cfffd0032  move.w 0xfffd, 0x32(a6)
0x00002c7a   4                 426e0038  clr.w 0x38(a6)
0x00002c7e   6             3d7c00040030  move.w 0x4, 0x30(a6)
0x00002c84   4                 3032400e  move.w 0xe(a2, d4.w), d0
0x00002c88   6             0c6d0000fea8  cmpi.w 0x0, -0x158(a5)
0x00002c8e   2                     6606  bne.b 0x2c96
0x00002c90   4                 06400014  addi.w 0x14, d0
0x00002c94   2                     6004  bra.b 0x2c9a
0x00002c96   4                 06400024  addi.w 0x24, d0
0x00002c9a   4                 3d40000c  move.w d0, 0xc(a6)
0x00002c9e   4                 6000003c  bra.w 0x2cdc
0x00002ca2   4                 4efae634  jmp 0x12d8(pc)
0x00002ca6   6             0c6d0000fea8  cmpi.w 0x0, -0x158(a5)
0x00002cac   2                     6606  bne.b 0x2cb4
0x00002cae   4                 47fa018a  lea.l 0x2e3a(pc), a3
0x00002cb2   2                     6004  bra.b 0x2cb8
0x00002cb4   4                 47fa016c  lea.l 0x2e22(pc), a3
0x00002cb8   4                 2d4b0034  move.l a3, 0x34(a6)
0x00002cbc   6             3d7cfffd0032  move.w 0xfffd, 0x32(a6)
0x00002cc2   4                 426e0038  clr.w 0x38(a6)
0x00002cc6   6             3d7c00040030  move.w 0x4, 0x30(a6)
0x00002ccc   4                 3032400e  move.w 0xe(a2, d4.w), d0
0x00002cd0   4                 0640000c  addi.w 0xc, d0
0x00002cd4   4                 3d40000c  move.w d0, 0xc(a6)
0x00002cd8   4                 60000002  bra.w 0x2cdc
0x00002cdc   4                 362e0032  move.w 0x32(a6), d3
0x00002ce0   4                 286e0034  movea.l 0x34(a6), a4
0x00002ce4   4                 536e0038  subq.w 0x1, 0x38(a6)
0x00002ce8   2                     6e5e  bgt.b 0x2d48
0x00002cea   2                     5643  addq.w 0x3, d3
0x00002cec   4                 4a343000  tst.b (a4, d3.w)
0x00002cf0   2                     6c38  bge.b 0x2d2a
0x00002cf2   6             0c3400ff3000  cmpi.b 0xff, (a4, d3.w)
0x00002cf8   2                     660c  bne.b 0x2d06
0x00002cfa   2                     3a04  move.w d4, d5
0x00002cfc   4                 4ebae126  jsr 0xe24(pc)
0x00002d00   4                 362e0032  move.w 0x32(a6), d3
0x00002d04   2                     6042  bra.b 0x2d48
0x00002d06   6             0c3400fd3000  cmpi.b 0xfd, (a4, d3.w)
0x00002d0c   2                     6614  bne.b 0x2d22
0x00002d0e   2                     3f00  move.w d0, -(a7)
0x00002d10   4                 303c003c  move.w 0x3c, d0
0x00002d14   4                 4ead0042  jsr 0x42(a5)
0x00002d18   2                     301f  move.w (a7)+, d0
0x00002d1a   4                 426e0030  clr.w 0x30(a6)
0x00002d1e   4                 6000fed8  bra.w 0x2bf8
0x00002d22   4                 426e0012  clr.w 0x12(a6)
0x00002d26   4                 4efae5b0  jmp 0x12d8(pc)
0x00002d2a   4                 3d430032  move.w d3, 0x32(a6)
0x00002d2e   4                 1a343002  move.b 0x2(a4, d3.w), d5
0x00002d32   2                     4885  ext.w d5
0x00002d34   2                     6c0e  bge.b 0x2d44
0x00002d36   2                     4445  neg.w d5
0x00002d38   2                     3f00  move.w d0, -(a7)
0x00002d3a   4                 303c0049  move.w 0x49, d0
0x00002d3e   4                 4ead0042  jsr 0x42(a5)
0x00002d42   2                     301f  move.w (a7)+, d0
0x00002d44   4                 3d450038  move.w d5, 0x38(a6)
0x00002d48   4                 206dffa0  movea.l -0x60(a5), a0
0x00002d4c   4                 14343001  move.b 0x1(a4, d3.w), d2
0x00002d50   2                     4882  ext.w d2
0x00002d52   2                     6d1e  blt.b 0x2d72
0x00002d54   4                 3032400e  move.w 0xe(a2, d4.w), d0
0x00002d58   4                 32324010  move.w 0x10(a2, d4.w), d1
0x00002d5c   6             0c6d0000fea8  cmpi.w 0x0, -0x158(a5)
0x00002d62   2                     6606  bne.b 0x2d6a
0x00002d64   4                 226df8bc  movea.l -0x744(a5), a1
0x00002d68   2                     6004  bra.b 0x2d6e
0x00002d6a   4                 226df6dc  movea.l -0x924(a5), a1
0x00002d6e   4                 4ead02e2  jsr 0x2e2(a5)
0x00002d72   4                 302e000c  move.w 0xc(a6), d0
0x00002d76   4                 322e000e  move.w 0xe(a6), d1
0x00002d7a   2                     5241  addq.w 0x1, d1
0x00002d7c   4                 14343000  move.b (a4, d3.w), d2
0x00002d80   2                     4882  ext.w d2
0x00002d82   4                 0c420040  cmpi.w 0x40, d2
0x00002d86   2                     6c06  bge.b 0x2d8e
0x00002d88   4                 226df7cc  movea.l -0x834(a5), a1
0x00002d8c   2                     600a  bra.b 0x2d98
0x00002d8e   4                 226df408  movea.l -0xbf8(a5), a1
0x00002d92   4                 04420040  subi.w 0x40, d2
0x00002d96   2                     5240  addq.w 0x1, d0
0x00002d98   4                 4ead02e2  jsr 0x2e2(a5)
0x00002d9c   4                 4a343001  tst.b 0x1(a4, d3.w)
0x00002da0   4                 6c0000a2  bge.w 0x2e44
0x00002da4   4                 4efad850  jmp 0x5f6(pc)
0x00002da8   4                 41ff0200  
0x00002dac   2                     ff03  invalid
0x00002dae   4                 01ff0300  
0x00002db2   2                     ff03  invalid
0x00002db4   4                 02ff0403  
0x00002db8   2                     ff03  invalid
0x00002dba   4                 04fffe04  
0x00002dbe   4                 00030401  ori.b 0x1, d3
0x00002dc2   2                     0304  btst.l d1, d4
0x00002dc4   4                 0203ff00  andi.b 0x0, d3
0x00002dc8   4                 000041ff  ori.b 0xff, d0
0x00002dcc   4                 0200ff03  andi.b 0x3, d0
0x00002dd0   4                 01ff0300  
0x00002dd4   2                     ff03  invalid
0x00002dd6   4                 02ff0403  
0x00002dda   2                     ff03  invalid
0x00002ddc   4                 04fffb40  
0x00002de0   2                     ff02  invalid
0x00002de2   4                 42ff0407  
0x00002de6   2                     ff05  invalid
0x00002de8   4                 42ff04fe  
0x00002dec   4                 000041ff  ori.b 0xff, d0
0x00002df0   4                 0200ff03  andi.b 0x3, d0
0x00002df4   4                 01ff0300  
0x00002df8   2                     ff03  invalid
0x00002dfa   4                 05ff0306  
0x00002dfe   2                     ff03  invalid
0x00002e00   4                 05ff0340  
0x00002e04   2                     ff02  invalid
0x00002e06   4                 42ff0407  
0x00002e0a   2                     ff05  invalid
0x00002e0c   4                 42ff04fe  
0x00002e10   4                 000041ff  ori.b 0xff, d0
0x00002e14   2                     fe04  invalid
0x00002e16   4                 00030401  ori.b 0x1, d3
0x00002e1a   2                     0304  btst.l d1, d4
0x00002e1c   4                 0203ff00  andi.b 0x0, d3
0x00002e20   4                 00004202  ori.b 0x2, d0
0x00002e24   2                     0342  bchg.b d1, d2
0x00002e26   2                     0103  btst.l d0, d3
0x00002e28   2                     4200  clr.b d0
0x00002e2a   4                 03fd0000  
0x00002e2e   4                 41fffe04  
0x00002e32   4                 00040401  ori.b 0x1, d4
0x00002e36   4                 04ff0000  
0x00002e3a   2                     4201  clr.b d1
0x00002e3c   4                 04420004  subi.w 0x4, d2
0x00002e40   2                     fd00  invalid
0x00002e42   4                 00004e75  ori.b 0x75, d0
0x00002e46   4                 382e0004  move.w 0x4(a6), d4
0x00002e4a   2                     2456  movea.l (a6), a2
0x00002e4c   4                 302e000c  move.w 0xc(a6), d0
0x00002e50   4                 322e000e  move.w 0xe(a6), d1
0x00002e54   4                 362e0012  move.w 0x12(a6), d3
0x00002e58   2                     e543  asl.w 0x2, d3
0x00002e5a   4                 4efb3002  jmp 0x2e5e(pc, d3.w)
0x00002e5e   4                 4efae478  jmp 0x12d8(pc)
0x00002e62   4                 4efae688  jmp 0x14ec(pc)
0x00002e66   4                 4efae7aa  jmp 0x1612(pc)
0x00002e6a   4                 4efaea7e  jmp 0x18ea(pc)
0x00002e6e   4                 4efaeb1e  jmp 0x198e(pc)
0x00002e72   4                 4efaeece  jmp 0x1d42(pc)
0x00002e76   4                 4efaf0d8  jmp 0x1f50(pc)
0x00002e7a   4                 4efae8be  jmp 0x173a(pc)
0x00002e7e   4                 4efae9de  jmp 0x185e(pc)
0x00002e82   4                 4efae454  jmp 0x12d8(pc)
0x00002e86   4                 4efae450  jmp 0x12d8(pc)
0x00002e8a   4                 4efae44c  jmp 0x12d8(pc)
0x00002e8e   4                 4efad170  jmp 0x0(pc)
0x00002e92   4                 4efad56a  jmp 0x3fe(pc)
0x00002e96   4                 4efae86a  jmp 0x1702(pc)
0x00002e9a   4                 4efae82a  jmp 0x16c6(pc)
0x00002e9e   4                 4efaf248  jmp 0x20e8(pc)
0x00002ea2   4                 4efae434  jmp 0x12d8(pc)
0x00002ea6   4                 4eed0692  jmp 0x692(a5)
0x00002eaa   4                 4eed069a  jmp 0x69a(a5)
0x00002eae   4                 4efaf124  jmp 0x1fd4(pc)
0x00002eb2   4                 4efaf160  jmp 0x2014(pc)
0x00002eb6   4                 4eed062a  jmp 0x62a(a5)
0x00002eba   4                 4eed064a  jmp 0x64a(a5)
0x00002ebe   4                 4eed0622  jmp 0x622(a5)
0x00002ec2   4                 4eed0642  jmp 0x642(a5)
0x00002ec6   4                 4eed0652  jmp 0x652(a5)
0x00002eca   4                 4eed0632  jmp 0x632(a5)
0x00002ece   4                 4eed063a  jmp 0x63a(a5)
0x00002ed2   4                 4eed061a  jmp 0x61a(a5)
0x00002ed6   4                 4efae400  jmp 0x12d8(pc)
0x00002eda   4                 4efae3fc  jmp 0x12d8(pc)
0x00002ede   4                 4efae3f8  jmp 0x12d8(pc)
0x00002ee2   4                 4efad3c6  jmp 0x2aa(pc)
0x00002ee6   4                 4efae3f0  jmp 0x12d8(pc)
0x00002eea   4                 4eed06e2  jmp 0x6e2(a5)
0x00002eee   4                 4eed06f2  jmp 0x6f2(a5)
0x00002ef2   4                 4efaf542  jmp 0x2436(pc)
0x00002ef6   4                 4eed065a  jmp 0x65a(a5)
0x00002efa   4                 4efae3dc  jmp 0x12d8(pc)
0x00002efe   4                 4efaf4f4  jmp 0x23f4(pc)
0x00002f02   4                 4eed060a  jmp 0x60a(a5)
0x00002f06   4                 4efae3d0  jmp 0x12d8(pc)
0x00002f0a   4                 4efae3cc  jmp 0x12d8(pc)
0x00002f0e   4                 4efae044  jmp 0xf54(pc)
0x00002f12   4                 4efae0d2  jmp 0xfe6(pc)
0x00002f16   4                 4efaf21c  jmp 0x2134(pc)
0x00002f1a   4                 4efaf266  jmp 0x2182(pc)
0x00002f1e   4                 4eed06a2  jmp 0x6a2(a5)
0x00002f22   4                 4efaf56c  jmp 0x2490(pc)
0x00002f26   4                 4eed066a  jmp 0x66a(a5)
0x00002f2a   4                 4efae1a6  jmp 0x10d2(pc)
0x00002f2e   4                 4efae3a8  jmp 0x12d8(pc)
0x00002f32   4                 4eed05ba  jmp 0x5ba(a5)
0x00002f36   4                 4eed05ca  jmp 0x5ca(a5)
0x00002f3a   4                 4eed05d2  jmp 0x5d2(a5)
0x00002f3e   4                 4eed05fa  jmp 0x5fa(a5)
0x00002f42   4                 4efaf5be  jmp 0x2502(pc)
0x00002f46   4                 4efaf81c  jmp 0x2764(pc)
0x00002f4a   4                 4efaf9b8  jmp 0x2904(pc)
0x00002f4e   4                 4efafc1e  jmp 0x2b6e(pc)
0x00002f52   4                 4eed0612  jmp 0x612(a5)
0x00002f56   4                 4eed06fa  jmp 0x6fa(a5)
0x00002f5a   4                 4efafc88  jmp 0x2be4(pc)
0x00002f5e   4                 4eed06b2  jmp 0x6b2(a5)
0x00002f62   4                 4efae29e  jmp 0x1202(pc)
0x00002f66   4                 4efae314  jmp 0x127c(pc)
0x00002f6a   4                 4efae332  jmp 0x129e(pc)
0x00002f6e   4                 4eed0682  jmp 0x682(a5)
0x00002f72   4                 4eed06ca  jmp 0x6ca(a5)
0x00002f76   4                 4eed0672  jmp 0x672(a5)
0x00002f7a   4                 4eed070a  jmp 0x70a(a5)
0x00002f7e   2                     4e75  rts
0x00002f80   4                 266dff3c  movea.l -0xc4(a5), a3
0x00002f84   2                     504b  addq.w 0x8, a3
0x00002f86   4                 41edff40  lea.l -0xc0(a5), a0
0x00002f8a   4                 303c001e  move.w 0x1e, d0
0x00002f8e   2                     a031  invalid
0x00002f90   2                     4a40  tst.w d0
0x00002f92   4                 66000024  bne.w 0x2fb8
0x00002f96   4                 302dff40  move.w -0xc0(a5), d0
0x00002f9a   4                 0c400003  cmpi.w 0x3, d0
0x00002f9e   2                     671c  beq.b 0x2fbc
0x00002fa0   4                 0c400004  cmpi.w 0x4, d0
0x00002fa4   4                 670000de  beq.w 0x3084
0x00002fa8   4                 0c400001  cmpi.w 0x1, d0
0x00002fac   4                 670002ca  beq.w 0x3278
0x00002fb0   4                 0c400002  cmpi.w 0x2, d0
0x00002fb4   4                 670002cc  beq.w 0x3282
0x00002fb8   4                 600002d2  bra.w 0x328c
0x00002fbc   4                 3c2dff4e  move.w -0xb2(a5), d6
0x00002fc0   4                 08060008  btst.b 0x8, d6
0x00002fc4   4                 66000164  bne.w 0x312a
0x00002fc8   4                 102dff45  move.b -0xbb(a5), d0
0x00002fcc   2                     4880  ext.w d0
0x00002fce   4                 0c400061  cmpi.w 0x61, d0
0x00002fd2   2                     6d0a  blt.b 0x2fde
0x00002fd4   4                 0c40007a  cmpi.w 0x7a, d0
0x00002fd8   2                     6e04  bgt.b 0x2fde
0x00002fda   4                 04400020  subi.w 0x20, d0
0x00002fde   4                 206dff50  movea.l -0xb0(a5), a0
0x00002fe2   2                     2050  movea.l (a0), a0
0x00002fe4   2                     b050  cmp.w (a0), d0
0x00002fe6   2                     660a  bne.b 0x2ff2
0x00002fe8   6             377cfff8000a  move.w 0xfff8, 0xa(a3)
0x00002fee   4                 6000029c  bra.w 0x328c
0x00002ff2   4                 b0680002  cmp.w 0x2(a0), d0
0x00002ff6   2                     660a  bne.b 0x3002
0x00002ff8   6             377c0008000a  move.w 0x8, 0xa(a3)
0x00002ffe   4                 6000028c  bra.w 0x328c
0x00003002   4                 b0680004  cmp.w 0x4(a0), d0
0x00003006   2                     6618  bne.b 0x3020
0x00003008   6             377cfff80008  move.w 0xfff8, 0x8(a3)
0x0000300e   4                 08060009  btst.b 0x9, d6
0x00003012   4                 67000278  beq.w 0x328c
0x00003016   6             08eb00000014  bset.b 0x0, 0x14(a3)
0x0000301c   4                 6000026e  bra.w 0x328c
0x00003020   4                 b0680006  cmp.w 0x6(a0), d0
0x00003024   2                     6618  bne.b 0x303e
0x00003026   6             377c00080008  move.w 0x8, 0x8(a3)
0x0000302c   4                 08060009  btst.b 0x9, d6
0x00003030   4                 6700025a  beq.w 0x328c
0x00003034   6             08eb00000014  bset.b 0x0, 0x14(a3)
0x0000303a   4                 60000250  bra.w 0x328c
0x0000303e   4                 b068000a  cmp.w 0xa(a0), d0
0x00003042   2                     660a  bne.b 0x304e
0x00003044   6             08eb00020014  bset.b 0x2, 0x14(a3)
0x0000304a   4                 60000240  bra.w 0x328c
0x0000304e   4                 b0680008  cmp.w 0x8(a0), d0
0x00003052   2                     660a  bne.b 0x305e
0x00003054   6             08eb00000014  bset.b 0x0, 0x14(a3)
0x0000305a   4                 60000230  bra.w 0x328c
0x0000305e   4                 b068000c  cmp.w 0xc(a0), d0
0x00003062   2                     660a  bne.b 0x306e
0x00003064   6             08eb00030014  bset.b 0x3, 0x14(a3)
0x0000306a   4                 60000220  bra.w 0x328c
0x0000306e   4                 b068000e  cmp.w 0xe(a0), d0
0x00003072   2                     660c  bne.b 0x3080
0x00003074   4                 4a6dfec6  tst.w -0x13a(a5)
0x00003078   4                 66000212  bne.w 0x328c
0x0000307c   4                 60000242  bra.w 0x32c0
0x00003080   4                 6000020a  bra.w 0x328c
0x00003084   4                 102dff45  move.b -0xbb(a5), d0
0x00003088   2                     4880  ext.w d0
0x0000308a   4                 0c400061  cmpi.w 0x61, d0
0x0000308e   2                     6d0a  blt.b 0x309a
0x00003090   4                 0c40007a  cmpi.w 0x7a, d0
0x00003094   2                     6e04  bgt.b 0x309a
0x00003096   4                 04400020  subi.w 0x20, d0
0x0000309a   4                 206dff50  movea.l -0xb0(a5), a0
0x0000309e   2                     2050  movea.l (a0), a0
0x000030a0   2                     b050  cmp.w (a0), d0
0x000030a2   2                     6610  bne.b 0x30b4
0x000030a4   4                 4a6b000a  tst.w 0xa(a3)
0x000030a8   4                 6c0001e2  bge.w 0x328c
0x000030ac   4                 426b000a  clr.w 0xa(a3)
0x000030b0   4                 600001da  bra.w 0x328c
0x000030b4   4                 b0680002  cmp.w 0x2(a0), d0
0x000030b8   2                     6610  bne.b 0x30ca
0x000030ba   4                 4a6b000a  tst.w 0xa(a3)
0x000030be   4                 6f0001cc  ble.w 0x328c
0x000030c2   4                 426b000a  clr.w 0xa(a3)
0x000030c6   4                 600001c4  bra.w 0x328c
0x000030ca   4                 b0680004  cmp.w 0x4(a0), d0
0x000030ce   2                     6610  bne.b 0x30e0
0x000030d0   4                 4a6b0008  tst.w 0x8(a3)
0x000030d4   4                 6c0001b6  bge.w 0x328c
0x000030d8   4                 426b0008  clr.w 0x8(a3)
0x000030dc   4                 600001ae  bra.w 0x328c
0x000030e0   4                 b0680006  cmp.w 0x6(a0), d0
0x000030e4   2                     6610  bne.b 0x30f6
0x000030e6   4                 4a6b0008  tst.w 0x8(a3)
0x000030ea   4                 6f0001a0  ble.w 0x328c
0x000030ee   4                 426b0008  clr.w 0x8(a3)
0x000030f2   4                 60000198  bra.w 0x328c
0x000030f6   4                 b068000a  cmp.w 0xa(a0), d0
0x000030fa   2                     660a  bne.b 0x3106
0x000030fc   6             08ab00020014  bclr.b 0x2, 0x14(a3)
0x00003102   4                 60000188  bra.w 0x328c
0x00003106   4                 b0680008  cmp.w 0x8(a0), d0
0x0000310a   2                     660a  bne.b 0x3116
0x0000310c   6             08ab00000014  bclr.b 0x0, 0x14(a3)
0x00003112   4                 60000178  bra.w 0x328c
0x00003116   4                 b068000c  cmp.w 0xc(a0), d0
0x0000311a   2                     660a  bne.b 0x3126
0x0000311c   6             08ab00030014  bclr.b 0x3, 0x14(a3)
0x00003122   4                 60000168  bra.w 0x328c
0x00003126   4                 60000164  bra.w 0x328c
0x0000312a   4                 102dff45  move.b -0xbb(a5), d0
0x0000312e   2                     4880  ext.w d0
0x00003130   4                 0c400061  cmpi.w 0x61, d0
0x00003134   2                     6d0a  blt.b 0x3140
0x00003136   4                 0c40007a  cmpi.w 0x7a, d0
0x0000313a   2                     6e04  bgt.b 0x3140
0x0000313c   4                 04400020  subi.w 0x20, d0
0x00003140   4                 206dff50  movea.l -0xb0(a5), a0
0x00003144   2                     2050  movea.l (a0), a0
0x00003146   4                 b0680010  cmp.w 0x10(a0), d0
0x0000314a   2                     6608  bne.b 0x3154
0x0000314c   4                 50edfefd  st.b -0x103(a5)
0x00003150   4                 426dfef8  clr.w -0x108(a5)
0x00003154   4                 4a2dfe9f  tst.b -0x161(a5)
0x00003158   4                 67000112  beq.w 0x326c
0x0000315c   4                 0c40004c  cmpi.w 0x4c, d0
0x00003160   2                     6612  bne.b 0x3174
0x00003162   6             0c6d0031fef8  cmpi.w 0x31, -0x108(a5)
0x00003168   4                 6e00010a  bgt.w 0x3274
0x0000316c   4                 526dfef8  addq.w 0x1, -0x108(a5)
0x00003170   4                 600000fe  bra.w 0x3270
0x00003174   4                 0c400045  cmpi.w 0x45, d0
0x00003178   2                     6612  bne.b 0x318c
0x0000317a   6             0c6d002dff24  cmpi.w 0x2d, -0xdc(a5)
0x00003180   4                 6e0000f2  bgt.w 0x3274
0x00003184   4                 5a6dff24  addq.w 0x5, -0xdc(a5)
0x00003188   4                 600000e6  bra.w 0x3270
0x0000318c   4                 0c400052  cmpi.w 0x52, d0
0x00003190   2                     662a  bne.b 0x31bc
0x00003192   6             0c2d007fff34  cmpi.b 0x7f, -0xcc(a5)
0x00003198   4                 620000da  bhi.w 0x3274
0x0000319c   6             3b7c0002ff2e  move.w 0x2, -0xd2(a5)
0x000031a2   2                     3f06  move.w d6, -(a7)
0x000031a4   4                 1c3c0010  move.b 0x10, d6
0x000031a8   4                 1e2dff34  move.b -0xcc(a5), d7
0x000031ac   4                 023c0007  andi.b 0x7, ccr
0x000031b0   2                     cf06  abcd.b d6, d7
0x000031b2   4                 1b47ff34  move.b d7, -0xcc(a5)
0x000031b6   2                     3c1f  move.w (a7)+, d6
0x000031b8   4                 600000b6  bra.w 0x3270
0x000031bc   4                 0c400047  cmpi.w 0x47, d0
0x000031c0   2                     6614  bne.b 0x31d6
0x000031c2   6             0c6d005aff2a  cmpi.w 0x5a, -0xd6(a5)
0x000031c8   4                 6c0000aa  bge.w 0x3274
0x000031cc   6             066d000aff2a  addi.w 0xa, -0xd6(a5)
0x000031d2   4                 6000009c  bra.w 0x3270
0x000031d6   4                 0c40004b  cmpi.w 0x4b, d0
0x000031da   2                     6612  bne.b 0x31ee
0x000031dc   6             0c6d002dff20  cmpi.w 0x2d, -0xe0(a5)
0x000031e2   4                 6e000090  bgt.w 0x3274
0x000031e6   4                 5a6dff20  addq.w 0x5, -0xe0(a5)
0x000031ea   4                 60000084  bra.w 0x3270
0x000031ee   4                 0c400048  cmpi.w 0x48, d0
0x000031f2   2                     661a  bne.b 0x320e
0x000031f4   6             066d1900ff22  addi.w 0x1900, -0xde(a5)
0x000031fa   6             0c6d6400ff22  cmpi.w 0x6400, -0xde(a5)
0x00003200   4                 6f00006e  ble.w 0x3270
0x00003204   6             3b7c6400ff22  move.w 0x6400, -0xde(a5)
0x0000320a   4                 60000064  bra.w 0x3270
0x0000320e   4                 0c400042  cmpi.w 0x42, d0
0x00003212   2                     6612  bne.b 0x3226
0x00003214   6             0c6d002dff28  cmpi.w 0x2d, -0xd8(a5)
0x0000321a   4                 6e000058  bgt.w 0x3274
0x0000321e   4                 5a6dff28  addq.w 0x5, -0xd8(a5)
0x00003222   4                 6000004c  bra.w 0x3270
0x00003226   4                 0c400053  cmpi.w 0x53, d0
0x0000322a   2                     661c  bne.b 0x3248
0x0000322c   6             082b00010015  btst.b 0x1, 0x15(a3)
0x00003232   4                 66000040  bne.w 0x3274
0x00003236   2                     2f0e  move.l a6, -(a7)
0x00003238   2                     2c4b  movea.l a3, a6
0x0000323a   4                 303c0001  move.w 0x1, d0
0x0000323e   4                 4ead03ea  jsr 0x3ea(a5)
0x00003242   2                     2c5f  movea.l (a7)+, a6
0x00003244   4                 6000002a  bra.w 0x3270
0x00003248   4                 0c400046  cmpi.w 0x46, d0
0x0000324c   2                     661a  bne.b 0x3268
0x0000324e   6             082b00000015  btst.b 0x0, 0x15(a3)
0x00003254   4                 6600001e  bne.w 0x3274
0x00003258   2                     2f0e  move.l a6, -(a7)
0x0000325a   2                     2c4b  movea.l a3, a6
0x0000325c   2                     4240  clr.w d0
0x0000325e   4                 4ead03ea  jsr 0x3ea(a5)
0x00003262   2                     2c5f  movea.l (a7)+, a6
0x00003264   4                 6000000a  bra.w 0x3270
0x00003268   4                 60000022  bra.w 0x328c
0x0000326c   4                 6000001e  bra.w 0x328c
0x00003270   4                 6000001a  bra.w 0x328c
0x00003274   4                 60000016  bra.w 0x328c
0x00003278   6             08eb00010014  bset.b 0x1, 0x14(a3)
0x0000327e   4                 6000000c  bra.w 0x328c
0x00003282   6             08ab00010014  bclr.b 0x1, 0x14(a3)
0x00003288   4                 60000002  bra.w 0x328c
0x0000328c   4                 206dff50  movea.l -0xb0(a5), a0
0x00003290   2                     2050  movea.l (a0), a0
0x00003292   4                 4a680012  tst.w 0x12(a0)
0x00003296   2                     660a  bne.b 0x32a2
0x00003298   4                 30380832  move.w 0x832.w, d0
0x0000329c   4                 c0edfcaa  mulu.w -0x356(a5), d0
0x000032a0   2                     6008  bra.b 0x32aa
0x000032a2   4                 30380830  move.w 0x830.w, d0
0x000032a6   4                 c0edfca8  mulu.w -0x358(a5), d0
0x000032aa   2                     e080  asr.l 0x8, d0
0x000032ac   2                     6a02  bpl.b 0x32b0
0x000032ae   2                     4240  clr.w d0
0x000032b0   4                 0c400200  cmpi.w 0x200, d0
0x000032b4   2                     6d04  blt.b 0x32ba
0x000032b6   4                 303c01ff  move.w 0x1ff, d0
0x000032ba   4                 37400020  move.w d0, 0x20(a3)
0x000032be   2                     4e75  rts
0x000032c0   4                 4ead0032  jsr 0x32(a5)
0x000032c4   4                 41edff40  lea.l -0xc0(a5), a0
0x000032c8   4                 303c000a  move.w 0xa, d0
0x000032cc   2                     a030  invalid
0x000032ce   2                     4a40  tst.w d0
0x000032d0   2                     66f2  bne.b 0x32c4
0x000032d2   4                 4ead003a  jsr 0x3a(a5)
0x000032d6   4                 6000fcae  bra.w 0x2f86
0x000032da   2                     3400  move.w d0, d2
0x000032dc   2                     3a01  move.w d1, d5
0x000032de   2                     7048  moveq 0x48, d0
0x000032e0   2                     a31e  invalid
0x000032e2   4                 2b48ff3c  move.l a0, -0xc4(a5)
0x000032e6   4                 43fafb5e  lea.l 0x2e46(pc), a1
0x000032ea   4                 21490004  move.l a1, 0x4(a0)
0x000032ee   4                 214a0008  move.l a2, 0x8(a0)
0x000032f2   4                 3145000c  move.w d5, 0xc(a0)
0x000032f6   4                 3142000e  move.w d2, 0xe(a0)
0x000032fa   4                 42680010  clr.w 0x10(a0)
0x000032fe   4                 42680012  clr.w 0x12(a0)
0x00003302   6             317250000014  move.w (a2, d5.w), 0x14(a0)
0x00003308   6             317220000016  move.w (a2, d2.w), 0x16(a0)
0x0000330e   4                 42680018  clr.w 0x18(a0)
0x00003312   4                 4268001a  clr.w 0x1a(a0)
0x00003316   4                 4228001c  clr.b 0x1c(a0)
0x0000331a   6             116dff3a001d  move.b -0xc6(a5), 0x1d(a0)
0x00003320   4                 43edf3f0  lea.l -0xc10(a5), a1
0x00003324   4                 2149001e  move.l a1, 0x1e(a0)
0x00003328   4                 21510022  move.l (a1), 0x22(a0)
0x0000332c   4                 42680028  clr.w 0x28(a0)
0x00003330   4                 4268002a  clr.w 0x2a(a0)
0x00003334   4                 4268002c  clr.w 0x2c(a0)
0x00003338   4                 42680030  clr.w 0x30(a0)
0x0000333c   4                 42680032  clr.w 0x32(a0)
0x00003340   4                 20adfefe  move.l -0x102(a5), (a0)
0x00003344   4                 2b48fefe  move.l a0, -0x102(a5)
0x00003348   2                     2c48  movea.l a0, a6
0x0000334a   2                     504e  addq.w 0x8, a6
0x0000334c   6             0c72003a5004  cmpi.w 0x3a, 0x4(a2, d5.w)
0x00003352   2                     6606  bne.b 0x335a
0x00003354   4                 426e0012  clr.w 0x12(a6)
0x00003358   2                     6004  bra.b 0x335e
0x0000335a   4                 4ebad6a0  jsr 0x9fc(pc)
0x0000335e   6             1b72500bfa04  move.b 0xb(a2, d5.w), -0x5fc(a5)
0x00003364   6             1b7c00fffa05  move.b 0xff, -0x5fb(a5)
0x0000336a   4                 3e2dfe9c  move.w -0x164(a5), d7
0x0000336e   2                     e547  asl.w 0x2, d7
0x00003370   4                 4efb7002  jmp 0x3374(pc, d7.w)
0x00003374   4                 4efa000a  jmp 0x3380(pc)
0x00003378   4                 4efa0012  jmp 0x338c(pc)
0x0000337c   4                 4efa000e  jmp 0x338c(pc)
0x00003380   2                     7008  moveq 0x8, d0
0x00003382   2                     a31e  invalid
0x00003384   4                 43fafbfa  lea.l 0x2f80(pc), a1
0x00003388   4                 6000000e  bra.w 0x3398
0x0000338c   2                     700a  moveq 0xa, d0
0x0000338e   2                     a31e  invalid
0x00003390   4                 43ed071a  lea.l 0x71a(a5), a1
0x00003394   4                 60000002  bra.w 0x3398
0x00003398   4                 21490004  move.l a1, 0x4(a0)
0x0000339c   4                 20adfefe  move.l -0x102(a5), (a0)
0x000033a0   4                 2b48fefe  move.l a0, -0x102(a5)
0x000033a4   4                 42adff1c  clr.l -0xe4(a5)
0x000033a8   4                 42adff18  clr.l -0xe8(a5)
0x000033ac   4                 51edfeb5  sf.b -0x14b(a5)
0x000033b0   2                     4e75  rts

0x000033b2   4                 48e784b0  movem.l d0/d5/a0/a2-a3, -(a7)
0x000033b6   2                     3a00  move.w d0, d5
0x000033b8   2                     2448  movea.l a0, a2
0x000033ba   2                     702a  moveq 0x2a, d0
0x000033bc   2                     a31e  invalid
0x000033be   4                 47fa0068  lea.l 0x3428(pc), a3
0x000033c2   4                 214b0004  move.l a3, 0x4(a0)
0x000033c6   2                     4845  swap d5
0x000033c8   2                     4245  clr.w d5
0x000033ca   4                 21450010  move.l d5, 0x10(a0)
0x000033ce   2                     4841  swap d1
0x000033d0   2                     4241  clr.w d1
0x000033d2   4                 21410014  move.l d1, 0x14(a0)
0x000033d6   4                 21420018  move.l d2, 0x18(a0)
0x000033da   4                 2143001c  move.l d3, 0x1c(a0)
0x000033de   4                 95a80010  sub.l d2, 0x10(a0)
0x000033e2   4                 97a80014  sub.l d3, 0x14(a0)
0x000033e6   4                 214a0020  move.l a2, 0x20(a0)
0x000033ea   4                 42680024  clr.w 0x24(a0)
0x000033ee   4                 21440026  move.l d4, 0x26(a0)
0x000033f2   4                 b2fc0000  cmpa.w 0x0, a1
0x000033f6   2                     671a  beq.b 0x3412
0x000033f8   2                     2651  movea.l (a1), a3
0x000033fa   4                 214b0008  move.l a3, 0x8(a0)
0x000033fe   4                 2149000c  move.l a1, 0xc(a0)
0x00003402   2                     2288  move.l a0, (a1)
0x00003404   2                     5091  addq.l 0x8, (a1)
0x00003406   4                 b6fc0000  cmpa.w 0x0, a3
0x0000340a   2                     670e  beq.b 0x341a
0x0000340c   4                 27510004  move.l (a1), 0x4(a3)
0x00003410   2                     6008  bra.b 0x341a
0x00003412   4                 42a80008  clr.l 0x8(a0)
0x00003416   4                 42a8000c  clr.l 0xc(a0)
0x0000341a   4                 20aefff8  move.l -0x8(a6), (a0)
0x0000341e   4                 2d48fff8  move.l a0, -0x8(a6)
0x00003422   4                 4cdf0d21  movem.l (a7)+, d0/d5/a0/a2-a3
0x00003426   2                     4e75  rts

0x00003428   4                 202e0008  move.l 0x8(a6), d0
0x0000342c   2                     676c  beq.b 0x349a
0x0000342e   4                 222e000c  move.l 0xc(a6), d1
0x00003432   4                 262e001e  move.l 0x1e(a6), d3
0x00003436   4                 d7ae0014  add.l d3, 0x14(a6)
0x0000343a   4                 d0ae0010  add.l 0x10(a6), d0
0x0000343e   4                 d2ae0014  add.l 0x14(a6), d1
0x00003442   4                 206dffa0  movea.l -0x60(a5), a0
0x00003446   2                     2800  move.l d0, d4
0x00003448   2                     2a01  move.l d1, d5
0x0000344a   2                     4844  swap d4
0x0000344c   4                 98680012  sub.w 0x12(a0), d4
0x00003450   2                     4845  swap d5
0x00003452   4                 9a680014  sub.w 0x14(a0), d5
0x00003456   4                 0c440004  cmpi.w 0x4, d4
0x0000345a   2                     6f3e  ble.b 0x349a
0x0000345c   4                 0c4401f8  cmpi.w 0x1f8, d4
0x00003460   2                     6c38  bge.b 0x349a
0x00003462   4                 0c450004  cmpi.w 0x4, d5
0x00003466   2                     6f32  ble.b 0x349a
0x00003468   4                 0c45014e  cmpi.w 0x14e, d5
0x0000346c   2                     6c2c  bge.b 0x349a
0x0000346e   4                 226e0018  movea.l 0x18(a6), a1
0x00003472   4                 342e001c  move.w 0x1c(a6), d2
0x00003476   2                     5242  addq.w 0x1, d2
0x00003478   4                 b4690002  cmp.w 0x2(a1), d2
0x0000347c   2                     6d02  blt.b 0x3480
0x0000347e   2                     4242  clr.w d2
0x00003480   4                 2d400008  move.l d0, 0x8(a6)
0x00003484   4                 2d41000c  move.l d1, 0xc(a6)
0x00003488   4                 3d42001c  move.w d2, 0x1c(a6)
0x0000348c   2                     4840  swap d0
0x0000348e   2                     4841  swap d1
0x00003490   2                     5940  subq.w 0x4, d0
0x00003492   2                     5941  subq.w 0x4, d1
0x00003494   4                 4ead02e2  jsr 0x2e2(a5)
0x00003498   2                     4e75  rts
0x0000349a   4                 266e0004  movea.l 0x4(a6), a3
0x0000349e   4                 b6fc0000  cmpa.w 0x0, a3
0x000034a2   2                     6708  beq.b 0x34ac
0x000034a4   2                     2856  movea.l (a6), a4
0x000034a6   2                     268c  move.l a4, (a3)
0x000034a8   4                 294b0004  move.l a3, 0x4(a4)
0x000034ac   4                 42aefffc  clr.l -0x4(a6)
0x000034b0   2                     60e6  bra.b 0x3498
0x000034b2   4                 48e7fff8  movem.l d0-d7/a0-a4, -(a7)
0x000034b6   4                 206dffa0  movea.l -0x60(a5), a0
0x000034ba   4                 286e0016  movea.l 0x16(a6), a4
0x000034be   2                     4247  clr.w d7
0x000034c0   4                 342e0024  move.w 0x24(a6), d2
0x000034c4   2                     e542  asl.w 0x2, d2
0x000034c6   4                 4efb2002  jmp 0x34ca(pc, d2.w)
0x000034ca   4                 4efa0034  jmp 0x3500(pc)
0x000034ce   4                 4efa000a  jmp 0x34da(pc)
0x000034d2   4                 4efa0094  jmp 0x3568(pc)
0x000034d6   4                 4efa0096  jmp 0x356e(pc)
0x000034da   4                 342e0020  move.w 0x20(a6), d2
0x000034de   4                 b46e0022  cmp.w 0x22(a6), d2
0x000034e2   2                     6610  bne.b 0x34f4
0x000034e4   6             082e00010014  btst.b 0x1, 0x14(a6)
0x000034ea   2                     6608  bne.b 0x34f4
0x000034ec   4                 343c0007  move.w 0x7, d2
0x000034f0   4                 60000170  bra.w 0x3662
0x000034f4   6             3d7c00190026  move.w 0x19, 0x26(a6)
0x000034fa   4                 426e0024  clr.w 0x24(a6)
0x000034fe   2                     4e71  nop
0x00003500   4                 342e0020  move.w 0x20(a6), d2
0x00003504   4                 b46e0022  cmp.w 0x22(a6), d2
0x00003508   2                     670a  beq.b 0x3514
0x0000350a   6             3d7c00190026  move.w 0x19, 0x26(a6)
0x00003510   4                 3d420022  move.w d2, 0x22(a6)
0x00003514   4                 536e0028  subq.w 0x1, 0x28(a6)
0x00003518   2                     6c3a  bge.b 0x3554
0x0000351a   4                 426e0028  clr.w 0x28(a6)
0x0000351e   6             082e00010014  btst.b 0x1, 0x14(a6)
0x00003524   2                     672e  beq.b 0x3554
0x00003526   6             3d7c00190026  move.w 0x19, 0x26(a6)
0x0000352c   6             3d7c00040028  move.w 0x4, 0x28(a6)
0x00003532   4                 343c0008  move.w 0x8, d2
0x00003536   4                 3e3c0010  move.w 0x10, d7
0x0000353a   6             3d7c00020024  move.w 0x2, 0x24(a6)
0x00003540   6             0c6e00c00020  cmpi.w 0xc0, 0x20(a6)
0x00003546   4                 6e00011a  bgt.w 0x3662
0x0000354a   6             3d7c00030024  move.w 0x3, 0x24(a6)
0x00003550   4                 60000110  bra.w 0x3662
0x00003554   2                     ec42  asr.w 0x6, d2
0x00003556   4                 536e0026  subq.w 0x1, 0x26(a6)
0x0000355a   4                 6e000106  bgt.w 0x3662
0x0000355e   6             3d7c00010024  move.w 0x1, 0x24(a6)
0x00003564   4                 600000fc  bra.w 0x3662
0x00003568   4                 343c0009  move.w 0x9, d2
0x0000356c   2                     6004  bra.b 0x3572
0x0000356e   4                 343c000a  move.w 0xa, d2
0x00003572   4                 426e0024  clr.w 0x24(a6)
0x00003576   4                 4a6e001e  tst.w 0x1e(a6)
0x0000357a   2                     6d12  blt.b 0x358e
0x0000357c   4                 226c0030  movea.l 0x30(a4), a1
0x00003580   4                 45fa0108  lea.l 0x368a(pc), a2
0x00003584   2                     5d41  subq.w 0x6, d1
0x00003586   2                     5840  addq.w 0x4, d0
0x00003588   4                 04400010  subi.w 0x10, d0
0x0000358c   2                     6012  bra.b 0x35a0
0x0000358e   4                 226c002c  movea.l 0x2c(a4), a1
0x00003592   4                 45fa0108  lea.l 0x369c(pc), a2
0x00003596   2                     5d41  subq.w 0x6, d1
0x00003598   4                 0440000e  subi.w 0xe, d0
0x0000359c   4                 06400010  addi.w 0x10, d0
0x000035a0   4                 4ead02e2  jsr 0x2e2(a5)
0x000035a4   6             082e00000015  btst.b 0x0, 0x15(a6)
0x000035aa   2                     6618  bne.b 0x35c4
0x000035ac   4                 206c0034  movea.l 0x34(a4), a0
0x000035b0   4                 4a2dff34  tst.b -0xcc(a5)
0x000035b4   2                     6724  beq.b 0x35da
0x000035b6   2                     3f00  move.w d0, -(a7)
0x000035b8   4                 303c0007  move.w 0x7, d0
0x000035bc   4                 4ead0042  jsr 0x42(a5)
0x000035c0   2                     301f  move.w (a7)+, d0
0x000035c2   2                     6016  bra.b 0x35da
0x000035c4   4                 206c0098  movea.l 0x98(a4), a0
0x000035c8   4                 4a2dff34  tst.b -0xcc(a5)
0x000035cc   2                     670c  beq.b 0x35da
0x000035ce   2                     3f00  move.w d0, -(a7)
0x000035d0   4                 303c0009  move.w 0x9, d0
0x000035d4   4                 4ead0042  jsr 0x42(a5)
0x000035d8   2                     301f  move.w (a7)+, d0
0x000035da   4                 43edff1c  lea.l -0xe4(a5), a1
0x000035de   4                 342e0020  move.w 0x20(a6), d2
0x000035e2   2                     ec42  asr.w 0x6, d2
0x000035e4   2                     e342  asl.w 0x1, d2
0x000035e6   2                     d4c2  adda.w d2, a2
0x000035e8   2                     141a  move.b (a2)+, d2
0x000035ea   2                     4882  ext.w d2
0x000035ec   2                     d042  add.w d2, d0
0x000035ee   2                     1612  move.b (a2), d3
0x000035f0   2                     4883  ext.w d3
0x000035f2   2                     d243  add.w d3, d1
0x000035f4   4                 362e0020  move.w 0x20(a6), d3
0x000035f8   4                 343c012c  move.w 0x12c, d2
0x000035fc   4                 0443012c  subi.w 0x12c, d3
0x00003600   2                     6b04  bmi.b 0x3606
0x00003602   2                     9443  sub.w d3, d2
0x00003604   2                     6002  bra.b 0x3608
0x00003606   2                     d443  add.w d3, d2
0x00003608   2                     48c2  ext.l d2
0x0000360a   2                     48c3  ext.l d3
0x0000360c   2                     7a0d  moveq 0xd, d5
0x0000360e   2                     eba2  asl.l d5, d2
0x00003610   2                     eba3  asl.l d5, d3
0x00003612   4                 4a6e001e  tst.w 0x1e(a6)
0x00003616   2                     6c02  bge.b 0x361a
0x00003618   2                     4482  neg.l d2
0x0000361a   6             0c6e00380012  cmpi.w 0x38, 0x12(a6)
0x00003620   2                     6614  bne.b 0x3636
0x00003622   6             0c6e000c0030  cmpi.w 0xc, 0x30(a6)
0x00003628   2                     660c  bne.b 0x3636
0x0000362a   4                 382e0034  move.w 0x34(a6), d4
0x0000362e   2                     d044  add.w d4, d0
0x00003630   2                     4844  swap d4
0x00003632   2                     4244  clr.w d4
0x00003634   2                     d484  add.l d4, d2
0x00003636   6             283c0000d555  move.l 0xd555, d4
0x0000363c   4                 4a2dff34  tst.b -0xcc(a5)
0x00003640   2                     6742  beq.b 0x3684
0x00003642   4                 1e2dff34  move.b -0xcc(a5), d7
0x00003646   4                 1c3c0001  move.b 0x1, d6
0x0000364a   4                 023c0007  andi.b 0x7, ccr
0x0000364e   2                     8f06  sbcd.b d6, d7
0x00003650   4                 1b47ff34  move.b d7, -0xcc(a5)
0x00003654   6             3b7c0002ff2e  move.w 0x2, -0xd2(a5)
0x0000365a   4                 4ebafd56  jsr 0x33b2(pc)
0x0000365e   4                 60000024  bra.w 0x3684
0x00003662   4                 4a6e001e  tst.w 0x1e(a6)
0x00003666   2                     6d0c  blt.b 0x3674
0x00003668   4                 226c0030  movea.l 0x30(a4), a1
0x0000366c   2                     5d41  subq.w 0x6, d1
0x0000366e   2                     5840  addq.w 0x4, d0
0x00003670   2                     9047  sub.w d7, d0
0x00003672   2                     600c  bra.b 0x3680
0x00003674   4                 226c002c  movea.l 0x2c(a4), a1
0x00003678   2                     5d41  subq.w 0x6, d1
0x0000367a   4                 0440000e  subi.w 0xe, d0
0x0000367e   2                     d047  add.w d7, d0
0x00003680   4                 4ead02e2  jsr 0x2e2(a5)
0x00003684   4                 4cdf1fff  movem.l (a7)+, d0-d7/a0-a4
0x00003688   2                     4e75  rts
0x0000368a   2                     1003  move.b d3, d0
0x0000368c   2                     1003  move.b d3, d0
0x0000368e   2                     1003  move.b d3, d0
0x00003690   2                     1003  move.b d3, d0
0x00003692   2                     1313  move.b (a3), -(a1)
0x00003694   2                     1313  move.b (a3), -(a1)
0x00003696   2                     1313  move.b (a3), -(a1)
0x00003698   2                     1313  move.b (a3), -(a1)
0x0000369a   2                     1313  move.b (a3), -(a1)
0x0000369c   2                     0b04  btst.l d5, d4
0x0000369e   2                     0b04  btst.l d5, d4
0x000036a0   2                     0b04  btst.l d5, d4
0x000036a2   2                     0b04  btst.l d5, d4
0x000036a4   4                 0c130c13  cmpi.b 0x13, (a3)
0x000036a8   4                 0c130c13  cmpi.b 0x13, (a3)

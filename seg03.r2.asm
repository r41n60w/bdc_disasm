; vi: syntax=asm68k

0x00000000   4                 48e7ff7e  movem.l d0-d7/a1-a6, -(a7)
0x00000004   4                 90680012  sub.w 0x12(a0), d0
0x00000008   4                 92680014  sub.w 0x14(a0), d1
0x0000000c   2                     3e00  move.w d0, d7
0x0000000e   4                 0240000f  andi.w 0xf, d0
0x00000012   4                 04400010  subi.w 0x10, d0
0x00000016   2                     4440  neg.w d0
0x00000018   2                     e647  asr.w 0x3, d7
0x0000001a   4                 0247fffe  andi.w 0xfffe, d7
0x0000001e   4                 36290004  move.w 0x4(a1), d3
0x00000022   4                 38290006  move.w 0x6(a1), d4
0x00000026   2                     e342  asl.w 0x1, d2
0x00000028   4                 c4e90008  mulu.w 0x8(a1), d2
0x0000002c   4                 0642000e  addi.w 0xe, d2
0x00000030   2                     2449  movea.l a1, a2
0x00000032   4                 d4e90008  adda.w 0x8(a1), a2
0x00000036   2                     d2c2  adda.w d2, a1
0x00000038   2                     d4c2  adda.w d2, a2
0x0000003a   2                     4a41  tst.w d1
0x0000003c   2                     6c10  bge.b 0x4e
0x0000003e   2                     d841  add.w d1, d4
0x00000040   4                 6f0001f0  ble.w 0x232
0x00000044   2                     c2c3  mulu.w d3, d1
0x00000046   2                     e341  asl.w 0x1, d1
0x00000048   2                     92c1  suba.w d1, a1
0x0000004a   2                     94c1  suba.w d1, a2
0x0000004c   2                     4241  clr.w d1
0x0000004e   2                     3c01  move.w d1, d6
0x00000050   2                     dc44  add.w d4, d6
0x00000052   4                 9c6dff88  sub.w -0x78(a5), d6
0x00000056   2                     6f06  ble.b 0x5e
0x00000058   2                     9846  sub.w d6, d4
0x0000005a   4                 6f0001d6  ble.w 0x232
0x0000005e   4                 3c7c0040  movea.w 0x40, a6
0x00000062   4                 26680002  movea.l 0x2(a0), a3
0x00000066   4                 28680006  movea.l 0x6(a0), a4
0x0000006a   2                     ed41  asl.w 0x6, d1
0x0000006c   2                     4a47  tst.w d7
0x0000006e   4                 6d000088  blt.w 0xf8
0x00000072   2                     3a03  move.w d3, d5
0x00000074   2                     e345  asl.w 0x1, d5
0x00000076   2                     da47  add.w d7, d5
0x00000078   4                 0445003e  subi.w 0x3e, d5
0x0000007c   4                 6e0000fe  bgt.w 0x17c
0x00000080   2                     d247  add.w d7, d1
0x00000082   2                     d6c1  adda.w d1, a3
0x00000084   2                     d8c1  adda.w d1, a4
0x00000086   4                 2a68000a  movea.l 0xa(a0), a5
0x0000008a   2                     3ac3  move.w d3, (a5)+
0x0000008c   2                     3a84  move.w d4, (a5)
0x0000008e   2                     535d  subq.w 0x1, (a5)+
0x00000090   2                     48c1  ext.l d1
0x00000092   2                     2ac1  move.l d1, (a5)+
0x00000094   4                 0c430001  cmpi.w 0x1, d3
0x00000098   4                 6700015c  beq.w 0x1f6
0x0000009c   2                     e343  asl.w 0x1, d3
0x0000009e   2                     9cc3  suba.w d3, a6
0x000000a0   2                     e243  asr.w 0x1, d3
0x000000a2   2                     554e  subq.w 0x2, a6
0x000000a4   2                     2ace  move.l a6, (a5)+
0x000000a6   2                     5343  subq.w 0x1, d3
0x000000a8   2                     5344  subq.w 0x1, d4

0x000000aa   2                     3403  move.w d3, d2
0x000000ac   2                     3e1b  move.w (a3)+, d7
0x000000ae   2                     3ac7  move.w d7, (a5)+
0x000000b0   2                     321c  move.w (a4)+, d1
0x000000b2   2                     4847  swap d7
0x000000b4   2                     4841  swap d1
0x000000b6   2                     3e1b  move.w (a3)+, d7
0x000000b8   2                     3ac7  move.w d7, (a5)+
0x000000ba   2                     321c  move.w (a4)+, d1
0x000000bc   2                     7c00  moveq 0x0, d6
0x000000be   2                     3c1a  move.w (a2)+, d6
0x000000c0   2                     e1be  rol.l d0, d6
0x000000c2   2                     cc81  and.l d1, d6
0x000000c4   2                     4686  not.l d6
0x000000c6   2                     ce86  and.l d6, d7
0x000000c8   2                     7c00  moveq 0x0, d6
0x000000ca   2                     3c19  move.w (a1)+, d6
0x000000cc   2                     e1be  rol.l d0, d6
0x000000ce   2                     cc81  and.l d1, d6
0x000000d0   2                     8e86  or.l d6, d7
0x000000d2   2                     4847  swap d7
0x000000d4   4                 3747fffc  move.w d7, -0x4(a3)
0x000000d8   2                     4841  swap d1
0x000000da   4                 51caffda  dbra d2, 0xb6
0x000000de   2                     4847  swap d7
0x000000e0   4                 3747fffe  move.w d7, -0x2(a3)
0x000000e4   2                     d6ce  adda.w a6, a3
0x000000e6   2                     d8ce  adda.w a6, a4
0x000000e8   4                 51ccffc0  dbra d4, 0xaa
0x000000ec   4                 2ae8000a  move.l 0xa(a0), (a5)+
0x000000f0   4                 214d000a  move.l a5, 0xa(a0)
0x000000f4   4                 6000013c  bra.w 0x232
0x000000f8   2                     3a07  move.w d7, d5
0x000000fa   2                     e245  asr.w 0x1, d5
0x000000fc   2                     4445  neg.w d5
0x000000fe   2                     b645  cmp.w d5, d3
0x00000100   4                 6d000130  blt.w 0x232
0x00000104   2                     9a43  sub.w d3, d5
0x00000106   2                     4445  neg.w d5
0x00000108   2                     d247  add.w d7, d1
0x0000010a   2                     d6c1  adda.w d1, a3
0x0000010c   2                     d8c1  adda.w d1, a4
0x0000010e   4                 2a68000a  movea.l 0xa(a0), a5
0x00000112   2                     3ac3  move.w d3, (a5)+
0x00000114   2                     3a84  move.w d4, (a5)
0x00000116   2                     535d  subq.w 0x1, (a5)+
0x00000118   2                     48c1  ext.l d1
0x0000011a   2                     2ac1  move.l d1, (a5)+
0x0000011c   2                     e343  asl.w 0x1, d3
0x0000011e   2                     9cc3  suba.w d3, a6
0x00000120   2                     e243  asr.w 0x1, d3
0x00000122   2                     554e  subq.w 0x2, a6
0x00000124   2                     2ace  move.l a6, (a5)+
0x00000126   2                     5343  subq.w 0x1, d3
0x00000128   2                     5344  subq.w 0x1, d4
0x0000012a   2                     3403  move.w d3, d2
0x0000012c   2                     3e1b  move.w (a3)+, d7
0x0000012e   2                     3ac7  move.w d7, (a5)+
0x00000130   2                     321c  move.w (a4)+, d1
0x00000132   2                     4847  swap d7
0x00000134   2                     4841  swap d1
0x00000136   2                     3e1b  move.w (a3)+, d7
0x00000138   2                     3ac7  move.w d7, (a5)+
0x0000013a   2                     321c  move.w (a4)+, d1
0x0000013c   2                     7c00  moveq 0x0, d6
0x0000013e   2                     3c1a  move.w (a2)+, d6
0x00000140   2                     e1be  rol.l d0, d6
0x00000142   2                     cc81  and.l d1, d6
0x00000144   2                     4686  not.l d6
0x00000146   2                     ce86  and.l d6, d7
0x00000148   2                     7c00  moveq 0x0, d6
0x0000014a   2                     3c19  move.w (a1)+, d6
0x0000014c   2                     e1be  rol.l d0, d6
0x0000014e   2                     cc81  and.l d1, d6
0x00000150   2                     8e86  or.l d6, d7
0x00000152   2                     4847  swap d7
0x00000154   2                     b445  cmp.w d5, d2
0x00000156   2                     6c04  bge.b 0x15c
0x00000158   4                 3747fffc  move.w d7, -0x4(a3)
0x0000015c   2                     4841  swap d1
0x0000015e   4                 51caffd6  dbra d2, 0x136
0x00000162   2                     4847  swap d7
0x00000164   4                 3747fffe  move.w d7, -0x2(a3)
0x00000168   2                     d6ce  adda.w a6, a3
0x0000016a   2                     d8ce  adda.w a6, a4
0x0000016c   4                 51ccffbc  dbra d4, 0x12a
0x00000170   4                 2ae8000a  move.l 0xa(a0), (a5)+
0x00000174   4                 214d000a  move.l a5, 0xa(a0)
0x00000178   4                 600000b8  bra.w 0x232
0x0000017c   2                     e245  asr.w 0x1, d5
0x0000017e   2                     b645  cmp.w d5, d3
0x00000180   4                 6d0000b0  blt.w 0x232
0x00000184   2                     d247  add.w d7, d1
0x00000186   2                     d6c1  adda.w d1, a3
0x00000188   2                     d8c1  adda.w d1, a4
0x0000018a   4                 2a68000a  movea.l 0xa(a0), a5
0x0000018e   2                     3ac3  move.w d3, (a5)+
0x00000190   2                     3a84  move.w d4, (a5)
0x00000192   2                     535d  subq.w 0x1, (a5)+
0x00000194   2                     48c1  ext.l d1
0x00000196   2                     2ac1  move.l d1, (a5)+
0x00000198   2                     e343  asl.w 0x1, d3
0x0000019a   2                     9cc3  suba.w d3, a6
0x0000019c   2                     e243  asr.w 0x1, d3
0x0000019e   2                     554e  subq.w 0x2, a6
0x000001a0   2                     2ace  move.l a6, (a5)+
0x000001a2   2                     5343  subq.w 0x1, d3
0x000001a4   2                     5344  subq.w 0x1, d4
0x000001a6   2                     5345  subq.w 0x1, d5
0x000001a8   2                     3403  move.w d3, d2
0x000001aa   2                     3e1b  move.w (a3)+, d7
0x000001ac   2                     3ac7  move.w d7, (a5)+
0x000001ae   2                     321c  move.w (a4)+, d1
0x000001b0   2                     4847  swap d7
0x000001b2   2                     4841  swap d1
0x000001b4   2                     3e1b  move.w (a3)+, d7
0x000001b6   2                     3ac7  move.w d7, (a5)+
0x000001b8   2                     321c  move.w (a4)+, d1
0x000001ba   2                     7c00  moveq 0x0, d6
0x000001bc   2                     3c1a  move.w (a2)+, d6
0x000001be   2                     e1be  rol.l d0, d6
0x000001c0   2                     cc81  and.l d1, d6
0x000001c2   2                     4686  not.l d6
0x000001c4   2                     ce86  and.l d6, d7
0x000001c6   2                     7c00  moveq 0x0, d6
0x000001c8   2                     3c19  move.w (a1)+, d6
0x000001ca   2                     e1be  rol.l d0, d6
0x000001cc   2                     cc81  and.l d1, d6
0x000001ce   2                     8e86  or.l d6, d7
0x000001d0   2                     4847  swap d7
0x000001d2   2                     ba42  cmp.w d2, d5
0x000001d4   2                     6e04  bgt.b 0x1da
0x000001d6   4                 3747fffc  move.w d7, -0x4(a3)
0x000001da   2                     4841  swap d1
0x000001dc   4                 51caffd6  dbra d2, 0x1b4
0x000001e0   2                     4847  swap d7
0x000001e2   2                     d6ce  adda.w a6, a3
0x000001e4   2                     d8ce  adda.w a6, a4
0x000001e6   4                 51ccffc0  dbra d4, 0x1a8
0x000001ea   4                 2ae8000a  move.l 0xa(a0), (a5)+
0x000001ee   4                 214d000a  move.l a5, 0xa(a0)
0x000001f2   4                 6000003e  bra.w 0x232
0x000001f6   4                 3c7c003c  movea.w 0x3c, a6
0x000001fa   2                     2ace  move.l a6, (a5)+
0x000001fc   2                     5344  subq.w 0x1, d4
0x000001fe   2                     2e1b  move.l (a3)+, d7
0x00000200   2                     2ac7  move.l d7, (a5)+
0x00000202   2                     221c  move.l (a4)+, d1
0x00000204   2                     7c00  moveq 0x0, d6
0x00000206   2                     3c1a  move.w (a2)+, d6
0x00000208   2                     e1be  rol.l d0, d6
0x0000020a   2                     cc81  and.l d1, d6
0x0000020c   2                     4686  not.l d6
0x0000020e   2                     ce86  and.l d6, d7
0x00000210   2                     7c00  moveq 0x0, d6
0x00000212   2                     3c19  move.w (a1)+, d6
0x00000214   2                     e1be  rol.l d0, d6
0x00000216   2                     cc81  and.l d1, d6
0x00000218   2                     8e86  or.l d6, d7
0x0000021a   4                 2747fffc  move.l d7, -0x4(a3)
0x0000021e   2                     d6ce  adda.w a6, a3
0x00000220   2                     d8ce  adda.w a6, a4
0x00000222   4                 51ccffda  dbra d4, 0x1fe
0x00000226   4                 2ae8000a  move.l 0xa(a0), (a5)+
0x0000022a   4                 214d000a  move.l a5, 0xa(a0)
0x0000022e   4                 60000002  bra.w 0x232
0x00000232   4                 4cdf7eff  movem.l (a7)+, d0-d7/a1-a6
0x00000236   2                     4e75  rts
0x00000238   4                 48e7ff7a  movem.l d0-d7/a1-a4/a6, -(a7)
0x0000023c   2                     3600  move.w d0, d3
0x0000023e   4                 0240000f  andi.w 0xf, d0
0x00000242   2                     e643  asr.w 0x3, d3
0x00000244   4                 0243fffe  andi.w 0xfffe, d3
0x00000248   4                 38290004  move.w 0x4(a1), d4
0x0000024c   2                     5344  subq.w 0x1, d4
0x0000024e   2                     48c4  ext.l d4
0x00000250   4                 3a290006  move.w 0x6(a1), d5
0x00000254   2                     5345  subq.w 0x1, d5
0x00000256   2                     48c5  ext.l d5
0x00000258   2                     e342  asl.w 0x1, d2
0x0000025a   4                 c4e90008  mulu.w 0x8(a1), d2
0x0000025e   2                     2649  movea.l a1, a3
0x00000260   4                 d6fc000e  adda.w 0xe, a3
0x00000264   2                     d7c2  adda.l d2, a3
0x00000266   2                     284b  movea.l a3, a4
0x00000268   4                 d8e90008  adda.w 0x8(a1), a4
0x0000026c   2                     4a41  tst.w d1
0x0000026e   2                     6c16  bge.b 0x286
0x00000270   2                     4441  neg.w d1
0x00000272   2                     9a41  sub.w d1, d5
0x00000274   4                 6f00005c  ble.w 0x2d2
0x00000278   2                     5284  addq.l 0x1, d4
0x0000027a   2                     c2c4  mulu.w d4, d1
0x0000027c   2                     5384  subq.l 0x1, d4
0x0000027e   2                     e381  asl.l 0x1, d1
0x00000280   2                     d7c1  adda.l d1, a3
0x00000282   2                     d9c1  adda.l d1, a4
0x00000284   2                     7200  moveq 0x0, d1
0x00000286   2                     3c10  move.w (a0), d6
0x00000288   2                     48c6  ext.l d6
0x0000028a   4                 22680002  movea.l 0x2(a0), a1
0x0000028e   2                     c2c6  mulu.w d6, d1
0x00000290   2                     48c3  ext.l d3
0x00000292   2                     d283  add.l d3, d1
0x00000294   2                     d3c1  adda.l d1, a1
0x00000296   2                     e384  asl.l 0x1, d4
0x00000298   2                     9c84  sub.l d4, d6
0x0000029a   2                     e284  asr.l 0x1, d4
0x0000029c   2                     5986  subq.l 0x4, d6
0x0000029e   2                     2e04  move.l d4, d7
0x000002a0   2                     3219  move.w (a1)+, d1
0x000002a2   2                     4841  swap d1
0x000002a4   2                     3219  move.w (a1)+, d1
0x000002a6   2                     361c  move.w (a4)+, d3
0x000002a8   2                     4843  swap d3
0x000002aa   2                     4243  clr.w d3
0x000002ac   2                     e0bb  ror.l d0, d3
0x000002ae   2                     4683  not.l d3
0x000002b0   2                     c283  and.l d3, d1
0x000002b2   2                     361b  move.w (a3)+, d3
0x000002b4   2                     4843  swap d3
0x000002b6   2                     4243  clr.w d3
0x000002b8   2                     e0bb  ror.l d0, d3
0x000002ba   2                     8283  or.l d3, d1
0x000002bc   2                     4841  swap d1
0x000002be   4                 3341fffc  move.w d1, -0x4(a1)
0x000002c2   4                 51cfffe0  dbra d7, 0x2a4
0x000002c6   2                     4841  swap d1
0x000002c8   4                 3341fffe  move.w d1, -0x2(a1)
0x000002cc   2                     d3c6  adda.l d6, a1
0x000002ce   4                 51cdffce  dbra d5, 0x29e
0x000002d2   4                 4cdf5eff  movem.l (a7)+, d0-d7/a1-a4/a6
0x000002d6   2                     4e75  rts
0x000002d8   4                 48e7ff7a  movem.l d0-d7/a1-a4/a6, -(a7)
0x000002dc   2                     3600  move.w d0, d3
0x000002de   4                 0240000f  andi.w 0xf, d0
0x000002e2   2                     e643  asr.w 0x3, d3
0x000002e4   4                 0243fffe  andi.w 0xfffe, d3
0x000002e8   4                 38290004  move.w 0x4(a1), d4
0x000002ec   2                     5344  subq.w 0x1, d4
0x000002ee   2                     48c4  ext.l d4
0x000002f0   4                 3a290006  move.w 0x6(a1), d5
0x000002f4   2                     5345  subq.w 0x1, d5
0x000002f6   2                     48c5  ext.l d5
0x000002f8   2                     e342  asl.w 0x1, d2
0x000002fa   4                 c4e90008  mulu.w 0x8(a1), d2
0x000002fe   2                     2649  movea.l a1, a3
0x00000300   4                 d6fc000e  adda.w 0xe, a3
0x00000304   2                     d7c2  adda.l d2, a3
0x00000306   2                     284b  movea.l a3, a4
0x00000308   4                 d8e90008  adda.w 0x8(a1), a4
0x0000030c   2                     4a41  tst.w d1
0x0000030e   2                     6c16  bge.b 0x326
0x00000310   2                     4441  neg.w d1
0x00000312   2                     9a41  sub.w d1, d5
0x00000314   4                 6f000050  ble.w 0x366
0x00000318   2                     5284  addq.l 0x1, d4
0x0000031a   2                     c2c4  mulu.w d4, d1
0x0000031c   2                     5384  subq.l 0x1, d4
0x0000031e   2                     e381  asl.l 0x1, d1
0x00000320   2                     d7c1  adda.l d1, a3
0x00000322   2                     d9c1  adda.l d1, a4
0x00000324   2                     7200  moveq 0x0, d1
0x00000326   2                     3c10  move.w (a0), d6
0x00000328   2                     48c6  ext.l d6
0x0000032a   4                 22680002  movea.l 0x2(a0), a1
0x0000032e   2                     c2c6  mulu.w d6, d1
0x00000330   2                     48c3  ext.l d3
0x00000332   2                     d283  add.l d3, d1
0x00000334   2                     d3c1  adda.l d1, a1
0x00000336   2                     e384  asl.l 0x1, d4
0x00000338   2                     9c84  sub.l d4, d6
0x0000033a   2                     e284  asr.l 0x1, d4
0x0000033c   2                     5986  subq.l 0x4, d6
0x0000033e   2                     2e04  move.l d4, d7
0x00000340   2                     3219  move.w (a1)+, d1
0x00000342   2                     4841  swap d1
0x00000344   2                     3219  move.w (a1)+, d1
0x00000346   2                     361c  move.w (a4)+, d3
0x00000348   2                     4843  swap d3
0x0000034a   2                     4243  clr.w d3
0x0000034c   2                     e0bb  ror.l d0, d3
0x0000034e   2                     8283  or.l d3, d1
0x00000350   2                     4841  swap d1
0x00000352   4                 3341fffc  move.w d1, -0x4(a1)
0x00000356   4                 51cfffec  dbra d7, 0x344
0x0000035a   2                     4841  swap d1
0x0000035c   4                 3341fffe  move.w d1, -0x2(a1)
0x00000360   2                     d3c6  adda.l d6, a1
0x00000362   4                 51cdffda  dbra d5, 0x33e
0x00000366   4                 4cdf5eff  movem.l (a7)+, d0-d7/a1-a4/a6
0x0000036a   2                     4e75  rts
0x0000036c   4                 48e7ff7a  movem.l d0-d7/a1-a4/a6, -(a7)
0x00000370   2                     3600  move.w d0, d3
0x00000372   4                 0240000f  andi.w 0xf, d0
0x00000376   2                     e643  asr.w 0x3, d3
0x00000378   4                 0243fffe  andi.w 0xfffe, d3
0x0000037c   4                 38290004  move.w 0x4(a1), d4
0x00000380   2                     5344  subq.w 0x1, d4
0x00000382   2                     48c4  ext.l d4
0x00000384   4                 3a290006  move.w 0x6(a1), d5
0x00000388   2                     5345  subq.w 0x1, d5
0x0000038a   2                     48c5  ext.l d5
0x0000038c   2                     e342  asl.w 0x1, d2
0x0000038e   4                 c4e90008  mulu.w 0x8(a1), d2
0x00000392   2                     2649  movea.l a1, a3
0x00000394   4                 d6fc000e  adda.w 0xe, a3
0x00000398   2                     d7c2  adda.l d2, a3
0x0000039a   2                     284b  movea.l a3, a4
0x0000039c   4                 d8e90008  adda.w 0x8(a1), a4
0x000003a0   2                     4a41  tst.w d1
0x000003a2   2                     6c16  bge.b 0x3ba
0x000003a4   2                     4441  neg.w d1
0x000003a6   2                     9a41  sub.w d1, d5
0x000003a8   4                 6f000076  ble.w 0x420
0x000003ac   2                     5284  addq.l 0x1, d4
0x000003ae   2                     c2c4  mulu.w d4, d1
0x000003b0   2                     5384  subq.l 0x1, d4
0x000003b2   2                     e381  asl.l 0x1, d1
0x000003b4   2                     d7c1  adda.l d1, a3
0x000003b6   2                     d9c1  adda.l d1, a4
0x000003b8   2                     7200  moveq 0x0, d1
0x000003ba   4                 2c68000a  movea.l 0xa(a0), a6
0x000003be   2                     3c84  move.w d4, (a6)
0x000003c0   2                     525e  addq.w 0x1, (a6)+
0x000003c2   2                     3cc5  move.w d5, (a6)+
0x000003c4   2                     3c10  move.w (a0), d6
0x000003c6   2                     48c6  ext.l d6
0x000003c8   4                 22680002  movea.l 0x2(a0), a1
0x000003cc   2                     c2c6  mulu.w d6, d1
0x000003ce   2                     48c3  ext.l d3
0x000003d0   2                     d283  add.l d3, d1
0x000003d2   2                     2cc1  move.l d1, (a6)+
0x000003d4   2                     d3c1  adda.l d1, a1
0x000003d6   2                     e384  asl.l 0x1, d4
0x000003d8   2                     9c84  sub.l d4, d6
0x000003da   2                     e284  asr.l 0x1, d4
0x000003dc   2                     5986  subq.l 0x4, d6
0x000003de   2                     2cc6  move.l d6, (a6)+
0x000003e0   2                     2e04  move.l d4, d7
0x000003e2   2                     3219  move.w (a1)+, d1
0x000003e4   2                     3cc1  move.w d1, (a6)+
0x000003e6   2                     4841  swap d1
0x000003e8   2                     3219  move.w (a1)+, d1
0x000003ea   2                     3cc1  move.w d1, (a6)+
0x000003ec   2                     361c  move.w (a4)+, d3
0x000003ee   2                     4843  swap d3
0x000003f0   2                     4243  clr.w d3
0x000003f2   2                     e0bb  ror.l d0, d3
0x000003f4   2                     4683  not.l d3
0x000003f6   2                     c283  and.l d3, d1
0x000003f8   2                     361b  move.w (a3)+, d3
0x000003fa   2                     4843  swap d3
0x000003fc   2                     4243  clr.w d3
0x000003fe   2                     e0bb  ror.l d0, d3
0x00000400   2                     8283  or.l d3, d1
0x00000402   2                     4841  swap d1
0x00000404   4                 3341fffc  move.w d1, -0x4(a1)
0x00000408   4                 51cfffde  dbra d7, 0x3e8
0x0000040c   2                     4841  swap d1
0x0000040e   4                 3341fffe  move.w d1, -0x2(a1)
0x00000412   2                     d3c6  adda.l d6, a1
0x00000414   4                 51cdffca  dbra d5, 0x3e0
0x00000418   4                 2ce8000a  move.l 0xa(a0), (a6)+
0x0000041c   4                 214e000a  move.l a6, 0xa(a0)
0x00000420   4                 4cdf5eff  movem.l (a7)+, d0-d7/a1-a4/a6
0x00000424   2                     4e75  rts
0x00000426   4                 48e7ff7a  movem.l d0-d7/a1-a4/a6, -(a7)
0x0000042a   2                     3600  move.w d0, d3
0x0000042c   4                 0240000f  andi.w 0xf, d0
0x00000430   2                     e643  asr.w 0x3, d3
0x00000432   4                 0243fffe  andi.w 0xfffe, d3
0x00000436   4                 38290004  move.w 0x4(a1), d4
0x0000043a   2                     5344  subq.w 0x1, d4
0x0000043c   2                     48c4  ext.l d4
0x0000043e   4                 3a290006  move.w 0x6(a1), d5
0x00000442   2                     5345  subq.w 0x1, d5
0x00000444   2                     48c5  ext.l d5
0x00000446   4                 c4e90008  mulu.w 0x8(a1), d2
0x0000044a   2                     2649  movea.l a1, a3
0x0000044c   4                 d6fc000e  adda.w 0xe, a3
0x00000450   2                     d7c2  adda.l d2, a3
0x00000452   2                     4a41  tst.w d1
0x00000454   2                     6c14  bge.b 0x46a
0x00000456   2                     4441  neg.w d1
0x00000458   2                     9a41  sub.w d1, d5
0x0000045a   4                 6f00008a  ble.w 0x4e6
0x0000045e   2                     5284  addq.l 0x1, d4
0x00000460   2                     c2c4  mulu.w d4, d1
0x00000462   2                     5384  subq.l 0x1, d4
0x00000464   2                     e381  asl.l 0x1, d1
0x00000466   2                     d7c1  adda.l d1, a3
0x00000468   2                     7200  moveq 0x0, d1
0x0000046a   4                 2c68000a  movea.l 0xa(a0), a6
0x0000046e   2                     3c84  move.w d4, (a6)
0x00000470   2                     525e  addq.w 0x1, (a6)+
0x00000472   2                     3cc5  move.w d5, (a6)+
0x00000474   2                     3c10  move.w (a0), d6
0x00000476   2                     48c6  ext.l d6
0x00000478   4                 24680006  movea.l 0x6(a0), a2
0x0000047c   4                 22680002  movea.l 0x2(a0), a1
0x00000480   2                     c2c6  mulu.w d6, d1
0x00000482   2                     48c3  ext.l d3
0x00000484   2                     d283  add.l d3, d1
0x00000486   2                     2cc1  move.l d1, (a6)+
0x00000488   2                     d3c1  adda.l d1, a1
0x0000048a   2                     d5c1  adda.l d1, a2
0x0000048c   2                     e384  asl.l 0x1, d4
0x0000048e   2                     9c84  sub.l d4, d6
0x00000490   2                     e284  asr.l 0x1, d4
0x00000492   2                     5986  subq.l 0x4, d6
0x00000494   2                     2cc6  move.l d6, (a6)+
0x00000496   2                     2e04  move.l d4, d7
0x00000498   2                     3219  move.w (a1)+, d1
0x0000049a   2                     3cc1  move.w d1, (a6)+
0x0000049c   2                     341a  move.w (a2)+, d2
0x0000049e   2                     4841  swap d1
0x000004a0   2                     4842  swap d2
0x000004a2   2                     3219  move.w (a1)+, d1
0x000004a4   2                     3cc1  move.w d1, (a6)+
0x000004a6   2                     341a  move.w (a2)+, d2
0x000004a8   4                 363cffff  move.w 0xffff, d3
0x000004ac   2                     4843  swap d3
0x000004ae   2                     4243  clr.w d3
0x000004b0   2                     e0bb  ror.l d0, d3
0x000004b2   2                     c682  and.l d2, d3
0x000004b4   2                     4683  not.l d3
0x000004b6   2                     c283  and.l d3, d1
0x000004b8   2                     361b  move.w (a3)+, d3
0x000004ba   2                     4843  swap d3
0x000004bc   2                     4243  clr.w d3
0x000004be   2                     e0bb  ror.l d0, d3
0x000004c0   2                     c682  and.l d2, d3
0x000004c2   2                     8283  or.l d3, d1
0x000004c4   2                     4841  swap d1
0x000004c6   4                 3341fffc  move.w d1, -0x4(a1)
0x000004ca   2                     4842  swap d2
0x000004cc   4                 51cfffd4  dbra d7, 0x4a2
0x000004d0   2                     4841  swap d1
0x000004d2   4                 3341fffe  move.w d1, -0x2(a1)
0x000004d6   2                     d3c6  adda.l d6, a1
0x000004d8   2                     d5c6  adda.l d6, a2
0x000004da   4                 51cdffba  dbra d5, 0x496
0x000004de   4                 2ce8000a  move.l 0xa(a0), (a6)+
0x000004e2   4                 214e000a  move.l a6, 0xa(a0)
0x000004e6   4                 4cdf5eff  movem.l (a7)+, d0-d7/a1-a4/a6
0x000004ea   2                     4e75  rts
0x000004ec   4                 48e7ff7a  movem.l d0-d7/a1-a4/a6, -(a7)
0x000004f0   2                     3600  move.w d0, d3
0x000004f2   4                 0240000f  andi.w 0xf, d0
0x000004f6   2                     e643  asr.w 0x3, d3
0x000004f8   4                 0243fffe  andi.w 0xfffe, d3
0x000004fc   4                 38290004  move.w 0x4(a1), d4
0x00000500   2                     5344  subq.w 0x1, d4
0x00000502   2                     48c4  ext.l d4
0x00000504   4                 3a290006  move.w 0x6(a1), d5
0x00000508   2                     5345  subq.w 0x1, d5
0x0000050a   2                     48c5  ext.l d5
0x0000050c   4                 c4e90008  mulu.w 0x8(a1), d2
0x00000510   2                     2649  movea.l a1, a3
0x00000512   4                 d6fc000e  adda.w 0xe, a3
0x00000516   2                     d7c2  adda.l d2, a3
0x00000518   2                     4a41  tst.w d1
0x0000051a   2                     6c14  bge.b 0x530
0x0000051c   2                     4441  neg.w d1
0x0000051e   2                     9a41  sub.w d1, d5
0x00000520   4                 6f000076  ble.w 0x598
0x00000524   2                     5284  addq.l 0x1, d4
0x00000526   2                     c2c4  mulu.w d4, d1
0x00000528   2                     5384  subq.l 0x1, d4
0x0000052a   2                     e381  asl.l 0x1, d1
0x0000052c   2                     d7c1  adda.l d1, a3
0x0000052e   2                     7200  moveq 0x0, d1
0x00000530   4                 2c68000a  movea.l 0xa(a0), a6
0x00000534   2                     3c84  move.w d4, (a6)
0x00000536   2                     525e  addq.w 0x1, (a6)+
0x00000538   2                     3cc5  move.w d5, (a6)+
0x0000053a   2                     3c10  move.w (a0), d6
0x0000053c   2                     48c6  ext.l d6
0x0000053e   4                 22680002  movea.l 0x2(a0), a1
0x00000542   2                     c2c6  mulu.w d6, d1
0x00000544   2                     48c3  ext.l d3
0x00000546   2                     d283  add.l d3, d1
0x00000548   2                     2cc1  move.l d1, (a6)+
0x0000054a   2                     d3c1  adda.l d1, a1
0x0000054c   2                     e384  asl.l 0x1, d4
0x0000054e   2                     9c84  sub.l d4, d6
0x00000550   2                     e284  asr.l 0x1, d4
0x00000552   2                     5986  subq.l 0x4, d6
0x00000554   2                     2cc6  move.l d6, (a6)+
0x00000556   2                     2e04  move.l d4, d7
0x00000558   2                     3219  move.w (a1)+, d1
0x0000055a   2                     3cc1  move.w d1, (a6)+
0x0000055c   2                     4841  swap d1
0x0000055e   2                     3219  move.w (a1)+, d1
0x00000560   2                     3cc1  move.w d1, (a6)+
0x00000562   4                 363cffff  move.w 0xffff, d3
0x00000566   2                     4843  swap d3
0x00000568   2                     4243  clr.w d3
0x0000056a   2                     e0bb  ror.l d0, d3
0x0000056c   2                     4683  not.l d3
0x0000056e   2                     c283  and.l d3, d1
0x00000570   2                     361b  move.w (a3)+, d3
0x00000572   2                     4843  swap d3
0x00000574   2                     4243  clr.w d3
0x00000576   2                     e0bb  ror.l d0, d3
0x00000578   2                     8283  or.l d3, d1
0x0000057a   2                     4841  swap d1
0x0000057c   4                 3341fffc  move.w d1, -0x4(a1)
0x00000580   4                 51cfffdc  dbra d7, 0x55e
0x00000584   2                     4841  swap d1
0x00000586   4                 3341fffe  move.w d1, -0x2(a1)
0x0000058a   2                     d3c6  adda.l d6, a1
0x0000058c   4                 51cdffc8  dbra d5, 0x556
0x00000590   4                 2ce8000a  move.l 0xa(a0), (a6)+
0x00000594   4                 214e000a  move.l a6, 0xa(a0)
0x00000598   4                 4cdf5eff  movem.l (a7)+, d0-d7/a1-a4/a6
0x0000059c   2                     4e75  rts
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
0x00000642   4                 48e7fc38  movem.l d0-d5/a2-a4, -(a7)
0x00000646   4                 45e9000e  lea.l 0xe(a1), a2
0x0000064a   4                 c4e90008  mulu.w 0x8(a1), d2
0x0000064e   2                     d5c2  adda.l d2, a2
0x00000650   2                     e640  asr.w 0x3, d0
0x00000652   4                 0240fffe  andi.w 0xfffe, d0
0x00000656   2                     48c0  ext.l d0
0x00000658   4                 28680002  movea.l 0x2(a0), a4
0x0000065c   2                     3801  move.w d1, d4
0x0000065e   2                     c8d0  mulu.w (a0), d4
0x00000660   2                     d9c4  adda.l d4, a4
0x00000662   2                     d9c0  adda.l d0, a4
0x00000664   4                 32290004  move.w 0x4(a1), d1
0x00000668   2                     e241  asr.w 0x1, d1
0x0000066a   2                     5341  subq.w 0x1, d1
0x0000066c   2                     48c1  ext.l d1
0x0000066e   4                 34290006  move.w 0x6(a1), d2
0x00000672   2                     5342  subq.w 0x1, d2
0x00000674   2                     48c2  ext.l d2
0x00000676   2                     3a10  move.w (a0), d5
0x00000678   2                     e541  asl.w 0x2, d1
0x0000067a   2                     9a41  sub.w d1, d5
0x0000067c   2                     5945  subq.w 0x4, d5
0x0000067e   2                     48c5  ext.l d5
0x00000680   2                     e441  asr.w 0x2, d1
0x00000682   2                     2601  move.l d1, d3
0x00000684   2                     201a  move.l (a2)+, d0
0x00000686   2                     b19c  eor.l d0, (a4)+
0x00000688   4                 51cbfffa  dbra d3, 0x684
0x0000068c   2                     d9c5  adda.l d5, a4
0x0000068e   4                 51cafff2  dbra d2, 0x682
0x00000692   4                 4cdf1c3f  movem.l (a7)+, d0-d5/a2-a4
0x00000696   2                     4e75  rts
0x00000698   4                 48e71830  movem.l d3-d4/a2-a3, -(a7)
0x0000069c   4                 2069000a  movea.l 0xa(a1), a0
0x000006a0   2                     2060  movea.l -(a0), a0
0x000006a2   4                 b0fc0000  cmpa.w 0x0, a0
0x000006a6   2                     6742  beq.b 0x6ea
0x000006a8   4                 2348000a  move.l a0, 0xa(a1)
0x000006ac   2                     2448  movea.l a0, a2
0x000006ae   2                     301a  move.w (a2)+, d0
0x000006b0   2                     321a  move.w (a2)+, d1
0x000006b2   2                     241a  move.l (a2)+, d2
0x000006b4   2                     261a  move.l (a2)+, d3
0x000006b6   4                 26690002  movea.l 0x2(a1), a3
0x000006ba   2                     d7c2  adda.l d2, a3
0x000006bc   2                     5340  subq.w 0x1, d0
0x000006be   4                 08000000  btst.b 0x0, d0
0x000006c2   2                     6714  beq.b 0x6d8
0x000006c4   2                     e240  asr.w 0x1, d0
0x000006c6   2                     3800  move.w d0, d4
0x000006c8   2                     26da  move.l (a2)+, (a3)+
0x000006ca   4                 51ccfffc  dbra d4, 0x6c8
0x000006ce   2                     36da  move.w (a2)+, (a3)+
0x000006d0   2                     d7c3  adda.l d3, a3
0x000006d2   4                 51c9fff2  dbra d1, 0x6c6
0x000006d6   2                     60c8  bra.b 0x6a0
0x000006d8   2                     e240  asr.w 0x1, d0
0x000006da   2                     3800  move.w d0, d4
0x000006dc   2                     26da  move.l (a2)+, (a3)+
0x000006de   4                 51ccfffc  dbra d4, 0x6dc
0x000006e2   2                     d7c3  adda.l d3, a3
0x000006e4   4                 51c9fff4  dbra d1, 0x6da
0x000006e8   2                     60b6  bra.b 0x6a0
0x000006ea   4                 4cdf0c18  movem.l (a7)+, d3-d4/a2-a3
0x000006ee   2                     4e75  rts
0x000006f0   2                     2f0d  move.l a5, -(a7)
0x000006f2   4                 2a780904  movea.l 0x904.w, a5
0x000006f6   4                 226dff94  movea.l -0x6c(a5), a1
0x000006fa   4                 b2fc0000  cmpa.w 0x0, a1
0x000006fe   2                     6720  beq.b 0x720
0x00000700   4                 206dff98  movea.l -0x68(a5), a0
0x00000704   6             317c0005000a  move.w 0x5, 0xa(a0)
0x0000070a   4                 202dff8e  move.l -0x72(a5), d0
0x0000070e   2                     6704  beq.b 0x714
0x00000710   2                     2040  movea.l d0, a0
0x00000712   2                     4e90  jsr (a0)
0x00000714   2                     6182  bsr.b 0x698
0x00000716   4                 42adff94  clr.l -0x6c(a5)
0x0000071a   4                 51edff93  sf.b -0x6d(a5)
0x0000071e   2                     600a  bra.b 0x72a
0x00000720   4                 206dff98  movea.l -0x68(a5), a0
0x00000724   6             317c0001000a  move.w 0x1, 0xa(a0)
0x0000072a   2                     2a5f  movea.l (a7)+, a5
0x0000072c   2                     4e75  rts
0x0000072e   2                     2f0d  move.l a5, -(a7)
0x00000730   4                 2a780904  movea.l 0x904.w, a5
0x00000734   4                 4a2dff8b  tst.b -0x75(a5)
0x00000738   2                     6606  bne.b 0x740
0x0000073a   4                 4a2dff93  tst.b -0x6d(a5)
0x0000073e   2                     6742  beq.b 0x782
0x00000740   4                 207801d4  movea.l 0x1d4.w, a0
0x00000744   4                 d0fc1e00  adda.w 0x1e00, a0
0x00000748   4                 202dffa0  move.l -0x60(a5), d0
0x0000074c   4                 43edffea  lea.l -0x16(a5), a1
0x00000750   2                     b3c0  cmpa.l d0, a1
0x00000752   2                     6612  bne.b 0x766
0x00000754   4                 43edffd4  lea.l -0x2c(a5), a1
0x00000758   4                 2b49ffa0  move.l a1, -0x60(a5)
0x0000075c   4                 08d00006  bset.b 0x6, (a0)
0x00000760   4                 2b49ff94  move.l a1, -0x6c(a5)
0x00000764   2                     6010  bra.b 0x776
0x00000766   4                 43edffea  lea.l -0x16(a5), a1
0x0000076a   4                 2b49ffa0  move.l a1, -0x60(a5)
0x0000076e   4                 08900006  bclr.b 0x6, (a0)
0x00000772   4                 2b49ff94  move.l a1, -0x6c(a5)
0x00000776   4                 206dff9c  movea.l -0x64(a5), a0
0x0000077a   6             317c0005000a  move.w 0x5, 0xa(a0)
0x00000780   2                     600e  bra.b 0x790
0x00000782   4                 206dff9c  movea.l -0x64(a5), a0
0x00000786   6             317c0001000a  move.w 0x1, 0xa(a0)
0x0000078c   4                 526dff8c  addq.w 0x1, -0x74(a5)
0x00000790   4                 4cdf2000  movem.l (a7)+, a5
0x00000794   2                     4e75  rts
0x00000796   2                     2f0d  move.l a5, -(a7)
0x00000798   4                 2a780904  movea.l 0x904.w, a5
0x0000079c   4                 4a2dff8b  tst.b -0x75(a5)
0x000007a0   2                     6606  bne.b 0x7a8
0x000007a2   4                 4a2dff93  tst.b -0x6d(a5)
0x000007a6   2                     6714  beq.b 0x7bc
0x000007a8   4                 226dffa0  movea.l -0x60(a5), a1
0x000007ac   4                 2b49ff94  move.l a1, -0x6c(a5)
0x000007b0   4                 226dff9c  movea.l -0x64(a5), a1
0x000007b4   6             337c0005000a  move.w 0x5, 0xa(a1)
0x000007ba   2                     600e  bra.b 0x7ca
0x000007bc   4                 226dff9c  movea.l -0x64(a5), a1
0x000007c0   6             337c0001000a  move.w 0x1, 0xa(a1)
0x000007c6   4                 526dff8c  addq.w 0x1, -0x74(a5)
0x000007ca   2                     2a5f  movea.l (a7)+, a5
0x000007cc   2                     4e75  rts
0x000007ce   2                     2f0d  move.l a5, -(a7)
0x000007d0   4                 2a780904  movea.l 0x904.w, a5
0x000007d4   4                 4a2dff8b  tst.b -0x75(a5)
0x000007d8   2                     6606  bne.b 0x7e0
0x000007da   4                 4a2dff93  tst.b -0x6d(a5)
0x000007de   2                     6732  beq.b 0x812
0x000007e0   4                 202dffa0  move.l -0x60(a5), d0
0x000007e4   4                 43edffea  lea.l -0x16(a5), a1
0x000007e8   2                     b3c0  cmpa.l d0, a1
0x000007ea   2                     660e  bne.b 0x7fa
0x000007ec   4                 43edffd4  lea.l -0x2c(a5), a1
0x000007f0   4                 2b49ffa0  move.l a1, -0x60(a5)
0x000007f4   4                 2b49ff94  move.l a1, -0x6c(a5)
0x000007f8   2                     600c  bra.b 0x806
0x000007fa   4                 43edffea  lea.l -0x16(a5), a1
0x000007fe   4                 2b49ffa0  move.l a1, -0x60(a5)
0x00000802   4                 2b49ff94  move.l a1, -0x6c(a5)
0x00000806   4                 206dff9c  movea.l -0x64(a5), a0
0x0000080a   6             317c0005000a  move.w 0x5, 0xa(a0)
0x00000810   2                     600e  bra.b 0x820
0x00000812   4                 206dff9c  movea.l -0x64(a5), a0
0x00000816   6             317c0001000a  move.w 0x1, 0xa(a0)
0x0000081c   4                 526dff8c  addq.w 0x1, -0x74(a5)
0x00000820   4                 4cdf2000  movem.l (a7)+, a5
0x00000824   2                     4e75  rts
0x00000826   4                 50edff93  st.b -0x6d(a5)
0x0000082a   4                 4a2dfca7  tst.b -0x359(a5)
0x0000082e   2                     661a  bne.b 0x84a
0x00000830   4                 426dfefa  clr.w -0x106(a5)
0x00000834   4                 526dfefa  addq.w 0x1, -0x106(a5)
0x00000838   4                 303c0005  move.w 0x5, d0
0x0000083c   2                     4e71  nop
0x0000083e   4                 51c8fffc  dbra d0, 0x83c
0x00000842   4                 4a2dff93  tst.b -0x6d(a5)
0x00000846   2                     66ec  bne.b 0x834
0x00000848   2                     6054  bra.b 0x89e
0x0000084a   4                 426dfefa  clr.w -0x106(a5)
0x0000084e   4                 526dfefa  addq.w 0x1, -0x106(a5)
0x00000852   4                 303c0005  move.w 0x5, d0
0x00000856   2                     4e71  nop
0x00000858   4                 51c8fffc  dbra d0, 0x856
0x0000085c   4                 226dff94  movea.l -0x6c(a5), a1
0x00000860   4                 b2fc0000  cmpa.w 0x0, a1
0x00000864   2                     67e8  beq.b 0x84e
0x00000866   4                 202dffa0  move.l -0x60(a5), d0
0x0000086a   4                 43edffea  lea.l -0x16(a5), a1
0x0000086e   2                     b3c0  cmpa.l d0, a1
0x00000870   2                     660a  bne.b 0x87c
0x00000872   4                 486dffc6  pea.l -0x3a(a5)
0x00000876   4                 4ead01f2  jsr 0x1f2(a5)
0x0000087a   2                     6008  bra.b 0x884
0x0000087c   4                 486dffb8  pea.l -0x48(a5)
0x00000880   4                 4ead01f2  jsr 0x1f2(a5)
0x00000884   4                 226dff94  movea.l -0x6c(a5), a1
0x00000888   4                 202dff8e  move.l -0x72(a5), d0
0x0000088c   2                     6704  beq.b 0x892
0x0000088e   2                     2040  movea.l d0, a0
0x00000890   2                     4e90  jsr (a0)
0x00000892   4                 4ebafe04  jsr 0x698(pc)
0x00000896   4                 42adff94  clr.l -0x6c(a5)
0x0000089a   4                 51edff93  sf.b -0x6d(a5)
0x0000089e   2                     4e75  rts
0x000008a0   2                     2f03  move.l d3, -(a7)
0x000008a2   2                     3611  move.w (a1), d3
0x000008a4   2                     48c3  ext.l d3
0x000008a6   4                 86fc03e8  divu.w 0x3e8, d3
0x000008aa   2                     4843  swap d3
0x000008ac   2                     e543  asl.w 0x2, d3
0x000008ae   2                     48c3  ext.l d3
0x000008b0   4                 4ebb3006  jsr 0x8b8(pc, d3.w)
0x000008b4   2                     261f  move.l (a7)+, d3
0x000008b6   2                     4e75  rts
0x000008b8   4                 4efaf746  jmp 0x0(pc)
0x000008bc   4                 4efaf742  jmp 0x0(pc)
0x000008c0   4                 4efaf73e  jmp 0x0(pc)
0x000008c4   4                 4efafaa6  jmp 0x36c(pc)
0x000008c8   4                 4efafc22  jmp 0x4ec(pc)
0x000008cc   4                 4efafb58  jmp 0x426(pc)
0x000008d0   4                 4eed04f2  jmp 0x4f2(a5)
0x000008d4   4                 4efafcc8  jmp 0x59e(pc)
0x000008d8   4                 4efafb4c  jmp 0x426(pc)
0x000008dc   4                 4efafa8e  jmp 0x36c(pc)
0x000008e0   4                 21df0a80  move.l (a7)+, 0xa80.w
0x000008e4   2                     225f  movea.l (a7)+, a1
0x000008e6   2                     205f  movea.l (a7)+, a0
0x000008e8   2                     341f  move.w (a7)+, d2
0x000008ea   2                     321f  move.w (a7)+, d1
0x000008ec   2                     301f  move.w (a7)+, d0
0x000008ee   4                 2f380a80  move.l 0xa80.w, -(a7)
0x000008f2   4                 48e71f38  movem.l d3-d7/a2-a4, -(a7)
0x000008f6   4                 4ebaffa8  jsr 0x8a0(pc)
0x000008fa   4                 4cdf1cf8  movem.l (a7)+, d3-d7/a2-a4
0x000008fe   2                     4e75  rts
0x00000900   2                     245f  movea.l (a7)+, a2
0x00000902   2                     225f  movea.l (a7)+, a1
0x00000904   2                     2f0a  move.l a2, -(a7)
0x00000906   4                 4ebafd90  jsr 0x698(pc)
0x0000090a   2                     4e75  rts
0x0000090c   4                 4a2dfca7  tst.b -0x359(a5)
0x00000910   2                     660c  bne.b 0x91e
0x00000912   4                 207801d4  movea.l 0x1d4.w, a0
0x00000916   4                 d0fc1e00  adda.w 0x1e00, a0
0x0000091a   4                 08d00006  bset.b 0x6, (a0)
0x0000091e   2                     4e75  rts
0x00000920   4                 4a2dfca7  tst.b -0x359(a5)
0x00000924   2                     660c  bne.b 0x932
0x00000926   4                 207801d4  movea.l 0x1d4.w, a0
0x0000092a   4                 d0fc1e00  adda.w 0x1e00, a0
0x0000092e   4                 08900006  bclr.b 0x6, (a0)
0x00000932   2                     4e75  rts
0x00000934   2                     2448  movea.l a0, a2
0x00000936   2                     702a  moveq 0x2a, d0
0x00000938   2                     a31e  invalid
0x0000093a   4                 43fa002c  lea.l 0x968(pc), a1
0x0000093e   4                 21490004  move.l a1, 0x4(a0)
0x00000942   2                     700f  moveq 0xf, d0
0x00000944   2                     2248  movea.l a0, a1
0x00000946   2                     5049  addq.w 0x8, a1
0x00000948   2                     32da  move.w (a2)+, (a1)+
0x0000094a   4                 51c8fffc  dbra d0, 0x948
0x0000094e   4                 4eba3818  jsr 0x4168(pc)
0x00000952   4                 c068001e  and.w 0x1e(a0), d0
0x00000956   4                 d068001c  add.w 0x1c(a0), d0
0x0000095a   4                 31400028  move.w d0, 0x28(a0)
0x0000095e   4                 20adfefe  move.l -0x102(a5), (a0)
0x00000962   4                 2b48fefe  move.l a0, -0x102(a5)
0x00000966   2                     4e75  rts
0x00000968   4                 4a6e0018  tst.w 0x18(a6)
0x0000096c   4                 6f00018e  ble.w 0xafc
0x00000970   4                 536e0020  subq.w 0x1, 0x20(a6)
0x00000974   4                 6e000186  bgt.w 0xafc
0x00000978   4                 536e0018  subq.w 0x1, 0x18(a6)
0x0000097c   2                     204e  movea.l a6, a0
0x0000097e   2                     224e  movea.l a6, a1
0x00000980   4                 4eba37e6  jsr 0x4168(pc)
0x00000984   2                     3e00  move.w d0, d7
0x00000986   2                     3616  move.w (a6), d3
0x00000988   4                 4efb3002  jmp 0x98c(pc, d3.w)
0x0000098c   4                 4efa0006  jmp 0x994(pc)
0x00000990   4                 4efa00a0  jmp 0xa32(pc)
0x00000994   6             0c6d0008fea8  cmpi.w 0x8, -0x158(a5)
0x0000099a   4                 67000014  beq.w 0x9b0
0x0000099e   6             0c6d0005fea8  cmpi.w 0x5, -0x158(a5)
0x000009a4   4                 6700000a  beq.w 0x9b0
0x000009a8   4                 61000154  bsr.w 0xafe
0x000009ac   4                 60000142  bra.w 0xaf0
0x000009b0   4                 286dffa0  movea.l -0x60(a5), a4
0x000009b4   4                 362c0014  move.w 0x14(a4), d3
0x000009b8   4                 b66e0004  cmp.w 0x4(a6), d3
0x000009bc   4                 6e0000a0  bgt.w 0xa5e
0x000009c0   4                 06430124  addi.w 0x124, d3
0x000009c4   4                 b66e0004  cmp.w 0x4(a6), d3
0x000009c8   4                 6d000094  blt.w 0xa5e
0x000009cc   4                 342c0012  move.w 0x12(a4), d2
0x000009d0   4                 266dff3c  movea.l -0xc4(a5), a3
0x000009d4   4                 4a6b0026  tst.w 0x26(a3)
0x000009d8   2                     6e2a  bgt.b 0xa04
0x000009da   4                 b46e0008  cmp.w 0x8(a6), d2
0x000009de   4                 6d00007e  blt.w 0xa5e
0x000009e2   4                 06420200  addi.w 0x200, d2
0x000009e6   4                 b46e000a  cmp.w 0xa(a6), d2
0x000009ea   4                 6e000072  bgt.w 0xa5e
0x000009ee   6             3d7c00060006  move.w 0x6, 0x6(a6)
0x000009f4   4                 04420220  subi.w 0x220, d2
0x000009f8   4                 3d420002  move.w d2, 0x2(a6)
0x000009fc   4                 61000100  bsr.w 0xafe
0x00000a00   4                 600000ee  bra.w 0xaf0
0x00000a04   4                 06420200  addi.w 0x200, d2
0x00000a08   4                 b46e000a  cmp.w 0xa(a6), d2
0x00000a0c   4                 6e000050  bgt.w 0xa5e
0x00000a10   4                 04420200  subi.w 0x200, d2
0x00000a14   4                 b46e0008  cmp.w 0x8(a6), d2
0x00000a18   4                 6d000044  blt.w 0xa5e
0x00000a1c   6             3d7cfffa0006  move.w 0xfffa, 0x6(a6)
0x00000a22   4                 06420200  addi.w 0x200, d2
0x00000a26   4                 3d420002  move.w d2, 0x2(a6)
0x00000a2a   4                 610000d2  bsr.w 0xafe
0x00000a2e   4                 600000c0  bra.w 0xaf0
0x00000a32   4                 286dffa0  movea.l -0x60(a5), a4
0x00000a36   4                 342c0012  move.w 0x12(a4), d2
0x00000a3a   4                 b46e001e  cmp.w 0x1e(a6), d2
0x00000a3e   2                     6e1e  bgt.b 0xa5e
0x00000a40   4                 06420200  addi.w 0x200, d2
0x00000a44   4                 b46e001a  cmp.w 0x1a(a6), d2
0x00000a48   2                     6d14  blt.b 0xa5e
0x00000a4a   4                 362c0014  move.w 0x14(a4), d3
0x00000a4e   4                 b66e0010  cmp.w 0x10(a6), d3
0x00000a52   2                     6e0a  bgt.b 0xa5e
0x00000a54   4                 06430124  addi.w 0x124, d3
0x00000a58   4                 b66e0004  cmp.w 0x4(a6), d3
0x00000a5c   2                     6c08  bge.b 0xa66
0x00000a5e   4                 526e0018  addq.w 0x1, 0x18(a6)
0x00000a62   4                 6000008c  bra.w 0xaf0
0x00000a66   4                 0c475555  cmpi.w 0x5555, d7
0x00000a6a   2                     6208  bhi.b 0xa74
0x00000a6c   6             3d6e001a000e  move.w 0x1a(a6), 0xe(a6)
0x00000a72   2                     6014  bra.b 0xa88
0x00000a74   4                 0c47aaaa  cmpi.w 0xaaaa, d7
0x00000a78   2                     6208  bhi.b 0xa82
0x00000a7a   6             3d6e001c000e  move.w 0x1c(a6), 0xe(a6)
0x00000a80   2                     6006  bra.b 0xa88
0x00000a82   6             3d6e001e000e  move.w 0x1e(a6), 0xe(a6)
0x00000a88   4                 322c0014  move.w 0x14(a4), d1
0x00000a8c   4                 3f2e0004  move.w 0x4(a6), -(a7)
0x00000a90   2                     3f16  move.w (a6), -(a7)
0x00000a92   4                 3f2e0002  move.w 0x2(a6), -(a7)
0x00000a96   4                 b26e0004  cmp.w 0x4(a6), d1
0x00000a9a   2                     6f42  ble.b 0xade
0x00000a9c   4                 266dff3c  movea.l -0xc4(a5), a3
0x00000aa0   4                 4a6b0012  tst.w 0x12(a3)
0x00000aa4   2                     6f22  ble.b 0xac8
0x00000aa6   4                 0641014a  addi.w 0x14a, d1
0x00000aaa   4                 b26e0010  cmp.w 0x10(a6), d1
0x00000aae   2                     6d06  blt.b 0xab6
0x00000ab0   4                 0441014a  subi.w 0x14a, d1
0x00000ab4   2                     6012  bra.b 0xac8
0x00000ab6   4                 3d410004  move.w d1, 0x4(a6)
0x00000aba   6             3d6e000e0002  move.w 0xe(a6), 0x2(a6)
0x00000ac0   4                 5e6e0002  addq.w 0x7, 0x2(a6)
0x00000ac4   4                 30bc000c  move.w 0xc, (a0)
0x00000ac8   4                 0441001c  subi.w 0x1c, d1
0x00000acc   4                 3d410004  move.w d1, 0x4(a6)
0x00000ad0   6             3d6e000e0002  move.w 0xe(a6), 0x2(a6)
0x00000ad6   4                 5e6e0002  addq.w 0x7, 0x2(a6)
0x00000ada   4                 30bc000c  move.w 0xc, (a0)
0x00000ade   4                 6100001e  bsr.w 0xafe
0x00000ae2   4                 3d5f0002  move.w (a7)+, 0x2(a6)
0x00000ae6   2                     3c9f  move.w (a7)+, (a6)
0x00000ae8   4                 3d5f0004  move.w (a7)+, 0x4(a6)
0x00000aec   4                 60000002  bra.w 0xaf0
0x00000af0   4                 ce6e0016  and.w 0x16(a6), d7
0x00000af4   4                 de6e0014  add.w 0x14(a6), d7
0x00000af8   4                 3d470020  move.w d7, 0x20(a6)
0x00000afc   2                     4e75  rts
0x00000afe   2                     2448  movea.l a0, a2
0x00000b00   2                     2649  movea.l a1, a3
0x00000b02   2                     703c  moveq 0x3c, d0
0x00000b04   2                     a31e  invalid
0x00000b06   4                 43fa008c  lea.l 0xb94(pc), a1
0x00000b0a   4                 21490004  move.l a1, 0x4(a0)
0x00000b0e   4                 214b0020  move.l a3, 0x20(a0)
0x00000b12   6             317c003c001e  move.w 0x3c, 0x1e(a0)
0x00000b18   2                     7009  moveq 0x9, d0
0x00000b1a   2                     2248  movea.l a0, a1
0x00000b1c   2                     5049  addq.w 0x8, a1
0x00000b1e   2                     32da  move.w (a2)+, (a1)+
0x00000b20   4                 51c8fffc  dbra d0, 0xb1e
0x00000b24   6             3168000a002c  move.w 0xa(a0), 0x2c(a0)
0x00000b2a   6             3168000c002e  move.w 0xc(a0), 0x2e(a0)
0x00000b30   6             317c00060030  move.w 0x6, 0x30(a0)
0x00000b36   6             0c68000c0008  cmpi.w 0xc, 0x8(a0)
0x00000b3c   2                     660e  bne.b 0xb4c
0x00000b3e   6             317c00080036  move.w 0x8, 0x36(a0)
0x00000b44   6             317c00180038  move.w 0x18, 0x38(a0)
0x00000b4a   2                     600c  bra.b 0xb58
0x00000b4c   6             317c00180036  move.w 0x18, 0x36(a0)
0x00000b52   6             317c00040038  move.w 0x4, 0x38(a0)
0x00000b58   2                     2848  movea.l a0, a4
0x00000b5a   4                 48e700c0  movem.l a0-a1, -(a7)
0x00000b5e   4                 41edfa0c  lea.l -0x5f4(a5), a0
0x00000b62   4                 43ec0024  lea.l 0x24(a4), a1
0x00000b66   4                 23480004  move.l a0, 0x4(a1)
0x00000b6a   2                     2290  move.l (a0), (a1)
0x00000b6c   2                     2089  move.l a1, (a0)
0x00000b6e   2                     2051  movea.l (a1), a0
0x00000b70   4                 b0fc0000  cmpa.w 0x0, a0
0x00000b74   2                     6704  beq.b 0xb7a
0x00000b76   4                 21490004  move.l a1, 0x4(a0)
0x00000b7a   4                 4cdf0300  movem.l (a7)+, a0-a1
0x00000b7e   4                 20adfefe  move.l -0x102(a5), (a0)
0x00000b82   4                 2b48fefe  move.l a0, -0x102(a5)
0x00000b86   2                     3f00  move.w d0, -(a7)
0x00000b88   4                 303c0013  move.w 0x13, d0
0x00000b8c   4                 4ead0042  jsr 0x42(a5)
0x00000b90   2                     301f  move.w (a7)+, d0
0x00000b92   2                     4e75  rts
0x00000b94   4                 302e0002  move.w 0x2(a6), d0
0x00000b98   4                 322e0004  move.w 0x4(a6), d1
0x00000b9c   2                     3416  move.w (a6), d2
0x00000b9e   4                 4efb2002  jmp 0xba2(pc, d2.w)
0x00000ba2   4                 4efa014e  jmp 0xcf2(pc)
0x00000ba6   4                 4efa00e8  jmp 0xc90(pc)
0x00000baa   4                 4efa0098  jmp 0xc44(pc)
0x00000bae   4                 4efa004e  jmp 0xbfe(pc)
0x00000bb2   4                 4efa0006  jmp 0xbba(pc)
0x00000bb6   4                 4efa0212  jmp 0xdca(pc)
0x00000bba   4                 0641000a  addi.w 0xa, d1
0x00000bbe   4                 3d410004  move.w d1, 0x4(a6)
0x00000bc2   4                 b26e0012  cmp.w 0x12(a6), d1
0x00000bc6   2                     6d22  blt.b 0xbea
0x00000bc8   2                     4256  clr.w (a6)
0x00000bca   4                 426e0014  clr.w 0x14(a6)
0x00000bce   4                 322e0012  move.w 0x12(a6), d1
0x00000bd2   4                 0641000b  addi.w 0xb, d1
0x00000bd6   4                 3d410004  move.w d1, 0x4(a6)
0x00000bda   6             3d7c0018002e  move.w 0x18, 0x2e(a6)
0x00000be0   6             3d7c00040030  move.w 0x4, 0x30(a6)
0x00000be6   4                 6000010a  bra.w 0xcf2
0x00000bea   4                 226df7ac  movea.l -0x854(a5), a1
0x00000bee   4                 343c0006  move.w 0x6, d2
0x00000bf2   4                 6000021e  bra.w 0xe12
0x00000bf6   4                 000102ff  ori.b 0xff, d1
0x00000bfa   2                     0304  btst.l d1, d4
0x00000bfc   4                 05ffb26e  
0x00000c00   4                 00106d0a  ori.b 0xa, (a0)
0x00000c04   4                 3cbc0010  move.w 0x10, (a6)
0x00000c08   4                 426e0014  clr.w 0x14(a6)
0x00000c0c   2                     60ac  bra.b 0xbba
0x00000c0e   4                 226df7ac  movea.l -0x854(a5), a1
0x00000c12   4                 342e0014  move.w 0x14(a6), d2
0x00000c16   4                 526e0014  addq.w 0x1, 0x14(a6)
0x00000c1a   4                 4a2e0006  tst.b 0x6(a6)
0x00000c1e   2                     6d06  blt.b 0xc26
0x00000c20   4                 143b201e  move.b 0xc40(pc, d2.w), d2
0x00000c24   2                     6004  bra.b 0xc2a
0x00000c26   4                 143b2014  move.b 0xc3c(pc, d2.w), d2
0x00000c2a   2                     4882  ext.w d2
0x00000c2c   4                 6c0001e4  bge.w 0xe12
0x00000c30   4                 426e0014  clr.w 0x14(a6)
0x00000c34   2                     5041  addq.w 0x8, d1
0x00000c36   4                 3d410004  move.w d1, 0x4(a6)
0x00000c3a   2                     60d6  bra.b 0xc12
0x00000c3c   4                 000102ff  ori.b 0xff, d1
0x00000c40   2                     0304  btst.l d1, d4
0x00000c42   4                 05ff362e  
0x00000c46   4                 0014526e  ori.b 0x6e, (a4)
0x00000c4a   4                 0014143b  ori.b 0x3b, (a4)
0x00000c4e   4                 303a4882  move.w 0x54d2(pc), d0
0x00000c52   2                     6c24  bge.b 0xc78
0x00000c54   4                 3cbc000c  move.w 0xc, (a6)
0x00000c58   4                 426e0014  clr.w 0x14(a6)
0x00000c5c   2                     5e40  addq.w 0x7, d0
0x00000c5e   4                 3d400002  move.w d0, 0x2(a6)
0x00000c62   4                 0641000a  addi.w 0xa, d1
0x00000c66   4                 3d410004  move.w d1, 0x4(a6)
0x00000c6a   6             3d7c0008002e  move.w 0x8, 0x2e(a6)
0x00000c70   6             3d7c00180030  move.w 0x18, 0x30(a6)
0x00000c76   2                     6086  bra.b 0xbfe
0x00000c78   4                 226df7a8  movea.l -0x858(a5), a1
0x00000c7c   4                 4a6e0006  tst.w 0x6(a6)
0x00000c80   2                     6d02  blt.b 0xc84
0x00000c82   2                     5e42  addq.w 0x7, d2
0x00000c84   4                 6000018c  bra.w 0xe12
0x00000c88   4                 00010203  ori.b 0x3, d1
0x00000c8c   4                 040506ff  subi.b 0xff, d5
0x00000c90   4                 d06e0006  add.w 0x6(a6), d0
0x00000c94   4                 4a6e0006  tst.w 0x6(a6)
0x00000c98   2                     6e1e  bgt.b 0xcb8
0x00000c9a   4                 b06e000e  cmp.w 0xe(a6), d0
0x00000c9e   2                     6e1e  bgt.b 0xcbe
0x00000ca0   4                 3cbc0008  move.w 0x8, (a6)
0x00000ca4   4                 302e000e  move.w 0xe(a6), d0
0x00000ca8   4                 3d400002  move.w d0, 0x2(a6)
0x00000cac   2                     5e41  addq.w 0x7, d1
0x00000cae   4                 3d410004  move.w d1, 0x4(a6)
0x00000cb2   4                 426e0014  clr.w 0x14(a6)
0x00000cb6   2                     608c  bra.b 0xc44
0x00000cb8   4                 b06e000e  cmp.w 0xe(a6), d0
0x00000cbc   2                     6ce2  bge.b 0xca0
0x00000cbe   4                 3d400002  move.w d0, 0x2(a6)
0x00000cc2   4                 226df708  movea.l -0x8f8(a5), a1
0x00000cc6   4                 342e0014  move.w 0x14(a6), d2
0x00000cca   4                 526e0014  addq.w 0x1, 0x14(a6)
0x00000cce   4                 4a2e0006  tst.b 0x6(a6)
0x00000cd2   2                     6d06  blt.b 0xcda
0x00000cd4   4                 143b2018  move.b 0xcee(pc, d2.w), d2
0x00000cd8   2                     6004  bra.b 0xcde
0x00000cda   4                 143b200e  move.b 0xcea(pc, d2.w), d2
0x00000cde   2                     4882  ext.w d2
0x00000ce0   4                 6c000130  bge.w 0xe12
0x00000ce4   4                 426e0014  clr.w 0x14(a6)
0x00000ce8   2                     60dc  bra.b 0xcc6
0x00000cea   4                 000102ff  ori.b 0xff, d1
0x00000cee   2                     0304  btst.l d1, d4
0x00000cf0   4                 05ff0c6e  
0x00000cf4   4                 00010032  ori.b 0x32, d1
0x00000cf8   2                     660a  bne.b 0xd04
0x00000cfa   4                 d06e0006  add.w 0x6(a6), d0
0x00000cfe   4                 426e0032  clr.w 0x32(a6)
0x00000d02   2                     602e  bra.b 0xd32
0x00000d04   4                 d06e0006  add.w 0x6(a6), d0
0x00000d08   4                 b06e0008  cmp.w 0x8(a6), d0
0x00000d0c   2                     6e08  bgt.b 0xd16
0x00000d0e   6             3d7c00060006  move.w 0x6, 0x6(a6)
0x00000d14   2                     600c  bra.b 0xd22
0x00000d16   4                 b06e000a  cmp.w 0xa(a6), d0
0x00000d1a   2                     6d12  blt.b 0xd2e
0x00000d1c   6             3d7cfffa0006  move.w 0xfffa, 0x6(a6)
0x00000d22   2                     3f00  move.w d0, -(a7)
0x00000d24   4                 303c0013  move.w 0x13, d0
0x00000d28   4                 4ead0042  jsr 0x42(a5)
0x00000d2c   2                     301f  move.w (a7)+, d0
0x00000d2e   4                 3d400002  move.w d0, 0x2(a6)
0x00000d32   4                 266dff3c  movea.l -0xc4(a5), a3
0x00000d36   6             0c6b000d001a  cmpi.w 0xd, 0x1a(a3)
0x00000d3c   4                 6700005c  beq.w 0xd9a
0x00000d40   6             0c6b0025001a  cmpi.w 0x25, 0x1a(a3)
0x00000d46   4                 67000052  beq.w 0xd9a
0x00000d4a   4                 382b0014  move.w 0x14(a3), d4
0x00000d4e   4                 3a2b0016  move.w 0x16(a3), d5
0x00000d52   4                 06450028  addi.w 0x28, d5
0x00000d56   2                     b245  cmp.w d5, d1
0x00000d58   2                     6e40  bgt.b 0xd9a
0x00000d5a   4                 0445001e  subi.w 0x1e, d5
0x00000d5e   2                     b245  cmp.w d5, d1
0x00000d60   2                     6d38  blt.b 0xd9a
0x00000d62   4                 d86e000c  add.w 0xc(a6), d4
0x00000d66   2                     b044  cmp.w d4, d0
0x00000d68   2                     6e30  bgt.b 0xd9a
0x00000d6a   4                 986e000c  sub.w 0xc(a6), d4
0x00000d6e   4                 986e000c  sub.w 0xc(a6), d4
0x00000d72   2                     b044  cmp.w d4, d0
0x00000d74   2                     6d24  blt.b 0xd9a
0x00000d76   4                 d86e000c  add.w 0xc(a6), d4
0x00000d7a   2                     b840  cmp.w d0, d4
0x00000d7c   2                     6d0e  blt.b 0xd8c
0x00000d7e   4                 b86e000a  cmp.w 0xa(a6), d4
0x00000d82   2                     6e16  bgt.b 0xd9a
0x00000d84   6             3d7c00060006  move.w 0x6, 0x6(a6)
0x00000d8a   2                     600e  bra.b 0xd9a
0x00000d8c   4                 b86e0008  cmp.w 0x8(a6), d4
0x00000d90   2                     6d08  blt.b 0xd9a
0x00000d92   6             3d7cfffa0006  move.w 0xfffa, 0x6(a6)
0x00000d98   2                     4e71  nop
0x00000d9a   4                 226df708  movea.l -0x8f8(a5), a1
0x00000d9e   4                 342e0014  move.w 0x14(a6), d2
0x00000da2   4                 526e0014  addq.w 0x1, 0x14(a6)
0x00000da6   4                 4a2e0006  tst.b 0x6(a6)
0x00000daa   2                     6d06  blt.b 0xdb2
0x00000dac   4                 143b2018  move.b 0xdc6(pc, d2.w), d2
0x00000db0   2                     6004  bra.b 0xdb6
0x00000db2   4                 143b200e  move.b 0xdc2(pc, d2.w), d2
0x00000db6   2                     4882  ext.w d2
0x00000db8   4                 6c000058  bge.w 0xe12
0x00000dbc   4                 426e0014  clr.w 0x14(a6)
0x00000dc0   2                     60dc  bra.b 0xd9e
0x00000dc2   4                 000102ff  ori.b 0xff, d1
0x00000dc6   2                     0304  btst.l d1, d4
0x00000dc8   4                 05ff206d  
0x00000dcc   2                     ffa0  invalid
0x00000dce   4                 342e0014  move.w 0x14(a6), d2
0x00000dd2   4                 4efb2002  jmp 0xdd6(pc, d2.w)
0x00000dd6   4                 4efa0012  jmp 0xdea(pc)
0x00000dda   4                 4efa000e  jmp 0xdea(pc)
0x00000dde   4                 4efa001c  jmp 0xdfc(pc)
0x00000de2   4                 4efa0018  jmp 0xdfc(pc)
0x00000de6   4                 4efa0014  jmp 0xdfc(pc)
0x00000dea   4                 226df86c  movea.l -0x794(a5), a1
0x00000dee   2                     5541  subq.w 0x2, d1
0x00000df0   2                     4242  clr.w d2
0x00000df2   4                 4a6e0006  tst.w 0x6(a6)
0x00000df6   2                     6d02  blt.b 0xdfa
0x00000df8   2                     5242  addq.w 0x1, d2
0x00000dfa   2                     600a  bra.b 0xe06
0x00000dfc   4                 226df868  movea.l -0x798(a5), a1
0x00000e00   2                     5d40  subq.w 0x6, d0
0x00000e02   2                     4242  clr.w d2
0x00000e04   2                     4e71  nop
0x00000e06   4                 4ebaf1f8  jsr 0x0(pc)
0x00000e0a   4                 42aefffc  clr.l -0x4(a6)
0x00000e0e   4                 600000be  bra.w 0xece
0x00000e12   4                 206dffa0  movea.l -0x60(a5), a0
0x00000e16   4                 4ebaf1e8  jsr 0x0(pc)
0x00000e1a   4                 3d400024  move.w d0, 0x24(a6)
0x00000e1e   4                 3d410026  move.w d1, 0x26(a6)
0x00000e22   4                 41edff1c  lea.l -0xe4(a5), a0
0x00000e26   4                 4eba2fc2  jsr 0x3dea(pc)
0x00000e2a   2                     6752  beq.b 0xe7e
0x00000e2c   4                 42a80008  clr.l 0x8(a0)
0x00000e30   2                     3f00  move.w d0, -(a7)
0x00000e32   4                 303c003d  move.w 0x3d, d0
0x00000e36   4                 4ead0042  jsr 0x42(a5)
0x00000e3a   2                     301f  move.w (a7)+, d0
0x00000e3c   4                 303c0022  move.w 0x22, d0
0x00000e40   4                 4eba325a  jsr 0x409c(pc)
0x00000e44   4                 3d560014  move.w (a6), 0x14(a6)
0x00000e48   4                 3cbc0014  move.w 0x14, (a6)
0x00000e4c   4                 48e700c0  movem.l a0-a1, -(a7)
0x00000e50   4                 43ee001c  lea.l 0x1c(a6), a1
0x00000e54   4                 20690004  movea.l 0x4(a1), a0
0x00000e58   2                     2251  movea.l (a1), a1
0x00000e5a   2                     2089  move.l a1, (a0)
0x00000e5c   4                 b2fc0000  cmpa.w 0x0, a1
0x00000e60   2                     6704  beq.b 0xe66
0x00000e62   4                 23480004  move.l a0, 0x4(a1)
0x00000e66   4                 4cdf0300  movem.l (a7)+, a0-a1
0x00000e6a   4                 206e0018  movea.l 0x18(a6), a0
0x00000e6e   4                 b0fc0000  cmpa.w 0x0, a0
0x00000e72   4                 6700005a  beq.w 0xece
0x00000e76   4                 52680018  addq.w 0x1, 0x18(a0)
0x00000e7a   4                 60000052  bra.w 0xece
0x00000e7e   4                 41edfa14  lea.l -0x5ec(a5), a0
0x00000e82   4                 4eba30a8  jsr 0x3f2c(pc)
0x00000e86   4                 b0fc0000  cmpa.w 0x0, a0
0x00000e8a   2                     66a4  bne.b 0xe30
0x00000e8c   4                 4a2dff87  tst.b -0x79(a5)
0x00000e90   2                     673c  beq.b 0xece
0x00000e92   4                 206dffa0  movea.l -0x60(a5), a0
0x00000e96   4                 34280012  move.w 0x12(a0), d2
0x00000e9a   4                 302e0002  move.w 0x2(a6), d0
0x00000e9e   2                     b440  cmp.w d0, d2
0x00000ea0   2                     6e24  bgt.b 0xec6
0x00000ea2   4                 06420200  addi.w 0x200, d2
0x00000ea6   2                     b440  cmp.w d0, d2
0x00000ea8   2                     6d1c  blt.b 0xec6
0x00000eaa   4                 322e0004  move.w 0x4(a6), d1
0x00000eae   4                 36280014  move.w 0x14(a0), d3
0x00000eb2   2                     b641  cmp.w d1, d3
0x00000eb4   2                     6e10  bgt.b 0xec6
0x00000eb6   4                 0643012c  addi.w 0x12c, d3
0x00000eba   2                     b641  cmp.w d1, d3
0x00000ebc   2                     6d08  blt.b 0xec6
0x00000ebe   6             3d7c003c0016  move.w 0x3c, 0x16(a6)
0x00000ec4   2                     6008  bra.b 0xece
0x00000ec6   4                 536e0016  subq.w 0x1, 0x16(a6)
0x00000eca   4                 6f00ff78  ble.w 0xe44
0x00000ece   2                     4e75  rts
0x00000ed0   2                     3c00  move.w d0, d6
0x00000ed2   2                     3e01  move.w d1, d7
0x00000ed4   2                     2a08  move.l a0, d5
0x00000ed6   2                     2809  move.l a1, d4
0x00000ed8   2                     260a  move.l a2, d3
0x00000eda   2                     7028  moveq 0x28, d0
0x00000edc   2                     d042  add.w d2, d0
0x00000ede   2                     a31e  invalid
0x00000ee0   4                 43fa004a  lea.l 0xf2c(pc), a1
0x00000ee4   4                 21490004  move.l a1, 0x4(a0)
0x00000ee8   4                 214c0020  move.l a4, 0x20(a0)
0x00000eec   4                 31460008  move.w d6, 0x8(a0)
0x00000ef0   4                 3147000a  move.w d7, 0xa(a0)
0x00000ef4   4                 49fa0032  lea.l 0xf28(pc), a4
0x00000ef8   4                 214c000c  move.l a4, 0xc(a0)
0x00000efc   4                 42680010  clr.w 0x10(a0)
0x00000f00   4                 42680012  clr.w 0x12(a0)
0x00000f04   4                 21450014  move.l d5, 0x14(a0)
0x00000f08   4                 21440018  move.l d4, 0x18(a0)
0x00000f0c   4                 2143001c  move.l d3, 0x1c(a0)
0x00000f10   4                 49e80028  lea.l 0x28(a0), a4
0x00000f14   2                     e242  asr.w 0x1, d2
0x00000f16   2                     6002  bra.b 0xf1a
0x00000f18   2                     38db  move.w (a3)+, (a4)+
0x00000f1a   4                 51cafffc  dbra d2, 0xf18
0x00000f1e   4                 20adfefe  move.l -0x102(a5), (a0)
0x00000f22   4                 2b48fefe  move.l a0, -0x102(a5)
0x00000f26   2                     4e75  rts
0x00000f28   4                 000000ff  ori.b 0xff, d0
0x00000f2c   2                     3016  move.w (a6), d0
0x00000f2e   4                 322e0002  move.w 0x2(a6), d1
0x00000f32   4                 206e0018  movea.l 0x18(a6), a0
0x00000f36   4                 b0fc0000  cmpa.w 0x0, a0
0x00000f3a   2                     6702  beq.b 0xf3e
0x00000f3c   2                     4e90  jsr (a0)
0x00000f3e   4                 266e0004  movea.l 0x4(a6), a3
0x00000f42   4                 d6ee0008  adda.w 0x8(a6), a3
0x00000f46   4                 586e0008  addq.w 0x4, 0x8(a6)
0x00000f4a   4                 4a2b0003  tst.b 0x3(a3)
0x00000f4e   2                     6c24  bge.b 0xf74
0x00000f50   4                 536e000a  subq.w 0x1, 0xa(a6)
0x00000f54   2                     6e18  bgt.b 0xf6e
0x00000f56   4                 206e000c  movea.l 0xc(a6), a0
0x00000f5a   2                     4e90  jsr (a0)
0x00000f5c   4                 2d480004  move.l a0, 0x4(a6)
0x00000f60   4                 426e0008  clr.w 0x8(a6)
0x00000f64   4                 3d42000a  move.w d2, 0xa(a6)
0x00000f68   4                 6d00003e  blt.w 0xfa8
0x00000f6c   2                     60d0  bra.b 0xf3e
0x00000f6e   4                 426e0008  clr.w 0x8(a6)
0x00000f72   2                     60ca  bra.b 0xf3e
0x00000f74   2                     161b  move.b (a3)+, d3
0x00000f76   2                     4883  ext.w d3
0x00000f78   2                     d043  add.w d3, d0
0x00000f7a   2                     161b  move.b (a3)+, d3
0x00000f7c   2                     4883  ext.w d3
0x00000f7e   2                     d243  add.w d3, d1
0x00000f80   2                     161b  move.b (a3)+, d3
0x00000f82   2                     4883  ext.w d3
0x00000f84   4                 226e0010  movea.l 0x10(a6), a1
0x00000f88   4                 22713000  movea.l (a1, d3.w), a1
0x00000f8c   2                     141b  move.b (a3)+, d2
0x00000f8e   2                     4882  ext.w d2
0x00000f90   4                 206dffa0  movea.l -0x60(a5), a0
0x00000f94   2                     3c80  move.w d0, (a6)
0x00000f96   4                 3d410002  move.w d1, 0x2(a6)
0x00000f9a   4                 04400010  subi.w 0x10, d0
0x00000f9e   4                 4ebaf060  jsr 0x0(pc)
0x00000fa2   4                 206e0014  movea.l 0x14(a6), a0
0x00000fa6   2                     4ed0  jmp (a0)
0x00000fa8   2                     4e75  rts
0x00000faa   4                 342e002e  move.w 0x2e(a6), d2
0x00000fae   2                     e542  asl.w 0x2, d2
0x00000fb0   4                 4efb2002  jmp 0xfb4(pc, d2.w)
0x00000fb4   4                 4efa0036  jmp 0xfec(pc)
0x00000fb8   4                 4efa005a  jmp 0x1014(pc)
0x00000fbc   4                 4efa00ac  jmp 0x106a(pc)
0x00000fc0   4                 4efa0258  jmp 0x121a(pc)
0x00000fc4   4                 4efa0296  jmp 0x125c(pc)
0x00000fc8   4                 4efa00b8  jmp 0x1082(pc)
0x00000fcc   4                 4efa00d2  jmp 0x10a0(pc)
0x00000fd0   4                 4efa010c  jmp 0x10de(pc)
0x00000fd4   4                 4efa014e  jmp 0x1124(pc)
0x00000fd8   4                 4efa019e  jmp 0x1178(pc)
0x00000fdc   4                 4efa01b8  jmp 0x1196(pc)
0x00000fe0   4                 4efa01c6  jmp 0x11a8(pc)
0x00000fe4   4                 4efa01e0  jmp 0x11c6(pc)
0x00000fe8   4                 4efa01fa  jmp 0x11e4(pc)
0x00000fec   4                 41faff3a  lea.l 0xf28(pc), a0
0x00000ff0   4                 343cffff  move.w 0xffff, d2
0x00000ff4   4                 536e0036  subq.w 0x1, 0x36(a6)
0x00000ff8   4                 6e000292  bgt.w 0x128c
0x00000ffc   6             3d7c0001002e  move.w 0x1, 0x2e(a6)
0x00001002   4                 41ee001c  lea.l 0x1c(a6), a0
0x00001006   6             2e3c08000000  move.l 0x8000000, d7
0x0000100c   4                 4eba2e56  jsr 0x3e64(pc)
0x00001010   4                 60000002  bra.w 0x1014
0x00001014   4                 4a6e0024  tst.w 0x24(a6)
0x00001018   2                     6706  beq.b 0x1020
0x0000101a   4                 41fa0272  lea.l 0x128e(pc), a0
0x0000101e   2                     6004  bra.b 0x1024
0x00001020   4                 41fa028c  lea.l 0x12ae(pc), a0
0x00001024   4                 343c0001  move.w 0x1, d2
0x00001028   2                     3f00  move.w d0, -(a7)
0x0000102a   4                 303c0040  move.w 0x40, d0
0x0000102e   4                 4ead0042  jsr 0x42(a5)
0x00001032   2                     301f  move.w (a7)+, d0
0x00001034   4                 302e0020  move.w 0x20(a6), d0
0x00001038   4                 322e0022  move.w 0x22(a6), d1
0x0000103c   6             3d7c0002002e  move.w 0x2, 0x2e(a6)
0x00001042   4                 48e7e0e0  movem.l d0-d2/a0-a2, -(a7)
0x00001046   4                 4eba3120  jsr 0x4168(pc)
0x0000104a   4                 c06e0028  and.w 0x28(a6), d0
0x0000104e   2                     5540  subq.w 0x2, d0
0x00001050   4                 3d400036  move.w d0, 0x36(a6)
0x00001054   4                 4cdf0707  movem.l (a7)+, d0-d2/a0-a2
0x00001058   4                 4a6e0036  tst.w 0x36(a6)
0x0000105c   4                 6e00022e  bgt.w 0x128c
0x00001060   6             3d7c0005002e  move.w 0x5, 0x2e(a6)
0x00001066   4                 60000224  bra.w 0x128c
0x0000106a   4                 536e0036  subq.w 0x1, 0x36(a6)
0x0000106e   2                     6e06  bgt.b 0x1076
0x00001070   6             3d7c0005002e  move.w 0x5, 0x2e(a6)
0x00001076   4                 41fa0356  lea.l 0x13ce(pc), a0
0x0000107a   4                 343c0003  move.w 0x3, d2
0x0000107e   4                 6000020c  bra.w 0x128c
0x00001082   4                 41fa024a  lea.l 0x12ce(pc), a0
0x00001086   4                 343c0001  move.w 0x1, d2
0x0000108a   6             3d7c0006002e  move.w 0x6, 0x2e(a6)
0x00001090   2                     3f00  move.w d0, -(a7)
0x00001092   4                 303c003f  move.w 0x3f, d0
0x00001096   4                 4ead0042  jsr 0x42(a5)
0x0000109a   2                     301f  move.w (a7)+, d0
0x0000109c   4                 600001ee  bra.w 0x128c
0x000010a0   4                 41fa0234  lea.l 0x12d6(pc), a0
0x000010a4   4                 266dff3c  movea.l -0xc4(a5), a3
0x000010a8   4                 342b0016  move.w 0x16(a3), d2
0x000010ac   4                 b46e0044  cmp.w 0x44(a6), d2
0x000010b0   2                     6f04  ble.b 0x10b6
0x000010b2   4                 342e0044  move.w 0x44(a6), d2
0x000010b6   4                 b46e0042  cmp.w 0x42(a6), d2
0x000010ba   2                     6c04  bge.b 0x10c0
0x000010bc   4                 342e0042  move.w 0x42(a6), d2
0x000010c0   2                     9441  sub.w d1, d2
0x000010c2   4                 04420012  subi.w 0x12, d2
0x000010c6   2                     6e02  bgt.b 0x10ca
0x000010c8   2                     4242  clr.w d2
0x000010ca   2                     48c2  ext.l d2
0x000010cc   4                 84fc000c  divu.w 0xc, d2
0x000010d0   4                 3d42003c  move.w d2, 0x3c(a6)
0x000010d4   6             3d7c0007002e  move.w 0x7, 0x2e(a6)
0x000010da   4                 600001b0  bra.w 0x128c
0x000010de   4                 266dff3c  movea.l -0xc4(a5), a3
0x000010e2   4                 342b0014  move.w 0x14(a3), d2
0x000010e6   4                 b46e003e  cmp.w 0x3e(a6), d2
0x000010ea   2                     6c06  bge.b 0x10f2
0x000010ec   4                 342e003e  move.w 0x3e(a6), d2
0x000010f0   2                     600a  bra.b 0x10fc
0x000010f2   4                 b46e0040  cmp.w 0x40(a6), d2
0x000010f6   2                     6f04  ble.b 0x10fc
0x000010f8   4                 342e0040  move.w 0x40(a6), d2
0x000010fc   2                     b440  cmp.w d0, d2
0x000010fe   2                     6e0c  bgt.b 0x110c
0x00001100   6             3d7cffff0038  move.w 0xffff, 0x38(a6)
0x00001106   4                 41fa01ee  lea.l 0x12f6(pc), a0
0x0000110a   2                     600a  bra.b 0x1116
0x0000110c   6             3d7c00010038  move.w 0x1, 0x38(a6)
0x00001112   4                 41fa01d2  lea.l 0x12e6(pc), a0
0x00001116   4                 343c0001  move.w 0x1, d2
0x0000111a   6             3d7c0008002e  move.w 0x8, 0x2e(a6)
0x00001120   4                 6000016a  bra.w 0x128c
0x00001124   4                 266dff3c  movea.l -0xc4(a5), a3
0x00001128   4                 342b0014  move.w 0x14(a3), d2
0x0000112c   4                 b46e003e  cmp.w 0x3e(a6), d2
0x00001130   2                     6c06  bge.b 0x1138
0x00001132   4                 342e003e  move.w 0x3e(a6), d2
0x00001136   2                     600a  bra.b 0x1142
0x00001138   4                 b46e0040  cmp.w 0x40(a6), d2
0x0000113c   2                     6f04  ble.b 0x1142
0x0000113e   4                 342e0040  move.w 0x40(a6), d2
0x00001142   2                     9440  sub.w d0, d2
0x00001144   4                 4a6e0038  tst.w 0x38(a6)
0x00001148   2                     6d0a  blt.b 0x1154
0x0000114a   4                 41fa01ba  lea.l 0x1306(pc), a0
0x0000114e   4                 0642000c  addi.w 0xc, d2
0x00001152   2                     600a  bra.b 0x115e
0x00001154   4                 41fa01b8  lea.l 0x130e(pc), a0
0x00001158   2                     4442  neg.w d2
0x0000115a   4                 04420023  subi.w 0x23, d2
0x0000115e   2                     4a42  tst.w d2
0x00001160   2                     6e02  bgt.b 0x1164
0x00001162   2                     4242  clr.w d2
0x00001164   2                     48c2  ext.l d2
0x00001166   4                 84fc000c  divu.w 0xc, d2
0x0000116a   4                 3d42003a  move.w d2, 0x3a(a6)
0x0000116e   6             3d7c0009002e  move.w 0x9, 0x2e(a6)
0x00001174   4                 60000116  bra.w 0x128c
0x00001178   4                 4a6e0038  tst.w 0x38(a6)
0x0000117c   2                     6d06  blt.b 0x1184
0x0000117e   4                 41fa0196  lea.l 0x1316(pc), a0
0x00001182   2                     6004  bra.b 0x1188
0x00001184   4                 41fa01c4  lea.l 0x134a(pc), a0
0x00001188   4                 343c0001  move.w 0x1, d2
0x0000118c   6             3d7c000a002e  move.w 0xa, 0x2e(a6)
0x00001192   4                 600000f8  bra.w 0x128c
0x00001196   4                 41fa0146  lea.l 0x12de(pc), a0
0x0000119a   4                 342e003c  move.w 0x3c(a6), d2
0x0000119e   6             3d7c000b002e  move.w 0xb, 0x2e(a6)
0x000011a4   4                 600000e6  bra.w 0x128c
0x000011a8   4                 4a6e0038  tst.w 0x38(a6)
0x000011ac   2                     6d06  blt.b 0x11b4
0x000011ae   4                 41fa01ce  lea.l 0x137e(pc), a0
0x000011b2   2                     6004  bra.b 0x11b8
0x000011b4   4                 41fa01d8  lea.l 0x138e(pc), a0
0x000011b8   4                 343c0001  move.w 0x1, d2
0x000011bc   6             3d7c000c002e  move.w 0xc, 0x2e(a6)
0x000011c2   4                 600000c8  bra.w 0x128c
0x000011c6   4                 4a6e0038  tst.w 0x38(a6)
0x000011ca   2                     6d06  blt.b 0x11d2
0x000011cc   4                 41fa0140  lea.l 0x130e(pc), a0
0x000011d0   2                     6004  bra.b 0x11d6
0x000011d2   4                 41fa0132  lea.l 0x1306(pc), a0
0x000011d6   4                 342e003a  move.w 0x3a(a6), d2
0x000011da   6             3d7c000d002e  move.w 0xd, 0x2e(a6)
0x000011e0   4                 600000aa  bra.w 0x128c
0x000011e4   4                 4a6e0038  tst.w 0x38(a6)
0x000011e8   2                     6d06  blt.b 0x11f0
0x000011ea   4                 41fa01b2  lea.l 0x139e(pc), a0
0x000011ee   2                     6004  bra.b 0x11f4
0x000011f0   4                 41fa01c4  lea.l 0x13b6(pc), a0
0x000011f4   4                 343c0001  move.w 0x1, d2
0x000011f8   6             3d7c0002002e  move.w 0x2, 0x2e(a6)
0x000011fe   4                 48e7e0e0  movem.l d0-d2/a0-a2, -(a7)
0x00001202   4                 4eba2f64  jsr 0x4168(pc)
0x00001206   4                 c06e0028  and.w 0x28(a6), d0
0x0000120a   4                 d06e0026  add.w 0x26(a6), d0
0x0000120e   4                 3d400036  move.w d0, 0x36(a6)
0x00001212   4                 4cdf0707  movem.l (a7)+, d0-d2/a0-a2
0x00001216   4                 60000074  bra.w 0x128c
0x0000121a   4                 0641001e  addi.w 0x1e, d1
0x0000121e   4                 b06e0034  cmp.w 0x34(a6), d0
0x00001222   2                     6d14  blt.b 0x1238
0x00001224   4                 b26e0032  cmp.w 0x32(a6), d1
0x00001228   2                     6d22  blt.b 0x124c
0x0000122a   4                 322e0032  move.w 0x32(a6), d1
0x0000122e   6             3d7c0004002e  move.w 0x4, 0x2e(a6)
0x00001234   4                 60000026  bra.w 0x125c
0x00001238   4                 b26e0030  cmp.w 0x30(a6), d1
0x0000123c   2                     6d0e  blt.b 0x124c
0x0000123e   4                 322e0030  move.w 0x30(a6), d1
0x00001242   6             3d7c0004002e  move.w 0x4, 0x2e(a6)
0x00001248   4                 60000012  bra.w 0x125c
0x0000124c   4                 0441001e  subi.w 0x1e, d1
0x00001250   4                 41fa01a0  lea.l 0x13f2(pc), a0
0x00001254   4                 343c0001  move.w 0x1, d2
0x00001258   4                 60000032  bra.w 0x128c
0x0000125c   4                 41fa01a0  lea.l 0x13fe(pc), a0
0x00001260   4                 343c0001  move.w 0x1, d2
0x00001264   2                     3f00  move.w d0, -(a7)
0x00001266   4                 303c003d  move.w 0x3d, d0
0x0000126a   4                 4ead0042  jsr 0x42(a5)
0x0000126e   2                     301f  move.w (a7)+, d0
0x00001270   4                 426e002e  clr.w 0x2e(a6)
0x00001274   4                 48e7e0e0  movem.l d0-d2/a0-a2, -(a7)
0x00001278   4                 4eba2eee  jsr 0x4168(pc)
0x0000127c   4                 c06e002c  and.w 0x2c(a6), d0
0x00001280   4                 d06e002a  add.w 0x2a(a6), d0
0x00001284   4                 3d400036  move.w d0, 0x36(a6)
0x00001288   4                 4cdf0707  movem.l (a7)+, d0-d2/a0-a2
0x0000128c   2                     4e75  rts
0x0000128e   2                     e51e  rol.b 0x2, d6
0x00001290   4                 0006e51e  ori.b 0x1e, d6
0x00001294   4                 0006ee14  ori.b 0x14, d6
0x00001298   4                 0006f808  ori.b 0x8, d6
0x0000129c   4                 0006f50d  ori.b 0xd, d6
0x000012a0   4                 0000f70e  ori.b 0xe, d0
0x000012a4   4                 0000fb0d  ori.b 0xd, d0
0x000012a8   4                 00000000  ori.b 0x0, d0
0x000012ac   4                 00ff1b1e  
0x000012b0   4                 00051b1e  ori.b 0x1e, d5
0x000012b4   4                 00051214  ori.b 0x14, d5
0x000012b8   4                 00050808  ori.b 0x8, d5
0x000012bc   4                 00050b0d  ori.b 0xd, d5
0x000012c0   4                 0000090e  ori.b 0xe, d0
0x000012c4   4                 0000050d  ori.b 0xd, d0
0x000012c8   4                 00000000  ori.b 0x0, d0
0x000012cc   4                 00ff0000  
0x000012d0   4                 00000000  ori.b 0x0, d0
0x000012d4   4                 00ff000c  
0x000012d8   4                 000a0000  
0x000012dc   4                 00ff00f4  
0x000012e0   4                 00090000  
0x000012e4   4                 00ff0608  
0x000012e8   4                 000f0608  
0x000012ec   4                 00050608  ori.b 0x8, d5
0x000012f0   4                 04030000  subi.b 0x0, d3
0x000012f4   4                 00fffa08  
0x000012f8   4                 0010fa08  ori.b 0x8, (a0)
0x000012fc   4                 0006fa08  ori.b 0x8, d6
0x00001300   4                 000b0000  
0x00001304   4                 00ff0c00  
0x00001308   4                 04030000  subi.b 0x0, d3
0x0000130c   4                 00fff400  
0x00001310   4                 000b0000  
0x00001314   4                 00ff08f8  
0x00001318   4                 000c00f8  
0x0000131c   4                 0009f8f8  
0x00001320   4                 000df800  
0x00001324   4                 000bf808  
0x00001328   4                 000e0008  
0x0000132c   4                 000a0808  
0x00001330   4                 000f0c00  
0x00001334   4                 04030c00  subi.b 0x0, d3
0x00001338   4                 040308f8  subi.b 0xf8, d3
0x0000133c   4                 000c0af6  
0x00001340   4                 00070af6  ori.b 0xf6, d7
0x00001344   4                 00070000  ori.b 0x0, d7
0x00001348   4                 00fff8f8  
0x0000134c   4                 001100f8  ori.b 0xf8, (a1)
0x00001350   4                 000908f8  
0x00001354   4                 00120800  ori.b 0x0, (a2)
0x00001358   4                 04030808  subi.b 0x8, d3
0x0000135c   4                 00130008  ori.b 0x8, (a3)
0x00001360   4                 000af808  
0x00001364   4                 0010f400  ori.b 0x0, (a0)
0x00001368   4                 000bf400  
0x0000136c   4                 000bf8f8  
0x00001370   4                 0011f6f6  ori.b 0xf6, (a1)
0x00001374   4                 0008f6f6  
0x00001378   4                 00080000  
0x0000137c   4                 00ff00f0  
0x00001380   4                 0009f8f8  
0x00001384   4                 000df4f4  
0x00001388   4                 00080000  
0x0000138c   4                 00ff00f0  
0x00001390   4                 000908f8  
0x00001394   4                 00120cf4  ori.b 0xf4, (a2)
0x00001398   4                 00070000  ori.b 0x0, d7
0x0000139c   4                 00fff60a  
0x000013a0   4                 000ef60a  
0x000013a4   4                 0006f608  ori.b 0x8, d6
0x000013a8   4                 0000fa06  ori.b 0x6, d0
0x000013ac   4                 0000fa06  ori.b 0x6, d0
0x000013b0   4                 00000000  ori.b 0x0, d0
0x000013b4   4                 00ff0a0a  
0x000013b8   4                 00130a0a  ori.b 0xa, (a3)
0x000013bc   4                 00050a08  ori.b 0x8, d5
0x000013c0   4                 00000606  ori.b 0x6, d0
0x000013c4   4                 00000606  ori.b 0x6, d0
0x000013c8   4                 00000000  ori.b 0x0, d0
0x000013cc   4                 00ff0000  
0x000013d0   4                 00010000  ori.b 0x0, d1
0x000013d4   4                 00010000  ori.b 0x0, d1
0x000013d8   4                 00020000  ori.b 0x0, d2
0x000013dc   4                 00020000  ori.b 0x0, d2
0x000013e0   4                 00030000  ori.b 0x0, d3
0x000013e4   4                 00030000  ori.b 0x0, d3
0x000013e8   4                 00040000  ori.b 0x0, d4
0x000013ec   4                 00040000  ori.b 0x0, d4
0x000013f0   4                 00ff0019  
0x000013f4   4                 00100019  ori.b 0x19, (a0)
0x000013f8   4                 000f0000  
0x000013fc   4                 00ff0000  
0x00001400   4                 04000000  subi.b 0x0, d0
0x00001404   4                 04010000  subi.b 0x0, d1
0x00001408   4                 04020000  subi.b 0x0, d2
0x0000140c   4                 04010000  subi.b 0x0, d1
0x00001410   4                 00ff3d40  
0x00001414   4                 001c3d41  ori.b 0x41, (a4)+
0x00001418   4                 001e066e  ori.b 0x6e, (a6)+
0x0000141c   4                 0010001c  ori.b 0x1c, (a0)
0x00001420   6             066e000a001e  addi.w 0xa, 0x1e(a6)
0x00001426   4                 41edff1c  lea.l -0xe4(a5), a0
0x0000142a   4                 4eba29be  jsr 0x3dea(pc)
0x0000142e   2                     6736  beq.b 0x1466
0x00001430   4                 42a80008  clr.l 0x8(a0)
0x00001434   4                 41ee001c  lea.l 0x1c(a6), a0
0x00001438   4                 4eba2a5c  jsr 0x3e96(pc)
0x0000143c   4                 303c000e  move.w 0xe, d0
0x00001440   4                 4eba2c5a  jsr 0x409c(pc)
0x00001444   6             3d7c0003002e  move.w 0x3, 0x2e(a6)
0x0000144a   2                     3f00  move.w d0, -(a7)
0x0000144c   4                 303c003e  move.w 0x3e, d0
0x00001450   4                 4ead0042  jsr 0x42(a5)
0x00001454   2                     301f  move.w (a7)+, d0
0x00001456   4                 41fafad0  lea.l 0xf28(pc), a0
0x0000145a   4                 2d480004  move.l a0, 0x4(a6)
0x0000145e   4                 426e0008  clr.w 0x8(a6)
0x00001462   4                 426e000a  clr.w 0xa(a6)
0x00001466   2                     4e75  rts
0x00001468   2                     3010  move.w (a0), d0
0x0000146a   4                 32280002  move.w 0x2(a0), d1
0x0000146e   4                 343c0026  move.w 0x26, d2
0x00001472   2                     2648  movea.l a0, a3
0x00001474   4                 41fafb34  lea.l 0xfaa(pc), a0
0x00001478   4                 43edf5bc  lea.l -0xa44(a5), a1
0x0000147c   4                 45faff94  lea.l 0x1412(pc), a2
0x00001480   2                     99cc  suba.l a4, a4
0x00001482   4                 4ebafa4c  jsr 0xed0(pc)
0x00001486   2                     4e75  rts
0x00001488   2                     2848  movea.l a0, a4
0x0000148a   2                     3e1c  move.w (a4)+, d7
0x0000148c   2                     5347  subq.w 0x1, d7
0x0000148e   4                 41fa0042  lea.l 0x14d2(pc), a0
0x00001492   4                 315c0010  move.w (a4)+, 0x10(a0)
0x00001496   4                 315c0012  move.w (a4)+, 0x12(a0)
0x0000149a   4                 315c0014  move.w (a4)+, 0x14(a0)
0x0000149e   4                 315c001e  move.w (a4)+, 0x1e(a0)
0x000014a2   4                 315c0020  move.w (a4)+, 0x20(a0)
0x000014a6   4                 315c0022  move.w (a4)+, 0x22(a0)
0x000014aa   4                 315c0024  move.w (a4)+, 0x24(a0)
0x000014ae   4                 42680016  clr.w 0x16(a0)
0x000014b2   4                 4268000e  clr.w 0xe(a0)
0x000014b6   2                     2248  movea.l a0, a1
0x000014b8   2                     22dc  move.l (a4)+, (a1)+
0x000014ba   2                     22dc  move.l (a4)+, (a1)+
0x000014bc   2                     22dc  move.l (a4)+, (a1)+
0x000014be   2                     32dc  move.w (a4)+, (a1)+
0x000014c0   4                 48e70188  movem.l d7/a0/a4, -(a7)
0x000014c4   4                 4ebaffa2  jsr 0x1468(pc)
0x000014c8   4                 4cdf1180  movem.l (a7)+, d7/a0/a4
0x000014cc   4                 51cfffe8  dbra d7, 0x14b6
0x000014d0   2                     4e75  rts
0x000014d2   4                 00000000  ori.b 0x0, d0
0x000014d6   4                 00000000  ori.b 0x0, d0
0x000014da   4                 00000000  ori.b 0x0, d0
0x000014de   4                 00000000  ori.b 0x0, d0
0x000014e2   4                 00000000  ori.b 0x0, d0
0x000014e6   4                 00000000  ori.b 0x0, d0
0x000014ea   4                 00000000  ori.b 0x0, d0
0x000014ee   4                 00000000  ori.b 0x0, d0
0x000014f2   4                 00000000  ori.b 0x0, d0
0x000014f6   4                 00003e2e  ori.b 0x2e, d0
0x000014fa   4                 00204efb  ori.b 0xfb, -(a0)
0x000014fe   2                     7002  moveq 0x2, d0
0x00001500   4                 4efa0030  jmp 0x1532(pc)
0x00001504   4                 4efa0006  jmp 0x150c(pc)
0x00001508   4                 4efa0014  jmp 0x151e(pc)
0x0000150c   4                 41fa03ce  lea.l 0x18dc(pc), a0
0x00001510   4                 342e0024  move.w 0x24(a6), d2
0x00001514   6             3d7c00080020  move.w 0x8, 0x20(a6)
0x0000151a   4                 600001c6  bra.w 0x16e2
0x0000151e   4                 41ee001c  lea.l 0x1c(a6), a0
0x00001522   6             2e3c04000000  move.l 0x4000000, d7
0x00001528   4                 4eba293a  jsr 0x3e64(pc)
0x0000152c   4                 426e0020  clr.w 0x20(a6)
0x00001530   2                     4e71  nop
0x00001532   4                 48e70010  movem.l a3, -(a7)
0x00001536   2                     3f00  move.w d0, -(a7)
0x00001538   4                 4eba2c2e  jsr 0x4168(pc)
0x0000153c   2                     3e00  move.w d0, d7
0x0000153e   2                     301f  move.w (a7)+, d0
0x00001540   4                 0247001c  andi.w 0x1c, d7
0x00001544   4                 4efb7002  jmp 0x1548(pc, d7.w)
0x00001548   4                 4efa001e  jmp 0x1568(pc)
0x0000154c   4                 4efa0026  jmp 0x1574(pc)
0x00001550   4                 4efa003a  jmp 0x158c(pc)
0x00001554   4                 4efa002a  jmp 0x1580(pc)
0x00001558   4                 4efa00b6  jmp 0x1610(pc)
0x0000155c   4                 4efa00b2  jmp 0x1610(pc)
0x00001560   4                 4efa0036  jmp 0x1598(pc)
0x00001564   4                 4efa0032  jmp 0x1598(pc)
0x00001568   4                 41fa02c2  lea.l 0x182c(pc), a0
0x0000156c   4                 343c0001  move.w 0x1, d2
0x00001570   4                 6000016c  bra.w 0x16de
0x00001574   4                 41fa02e2  lea.l 0x1858(pc), a0
0x00001578   4                 343c0001  move.w 0x1, d2
0x0000157c   4                 60000160  bra.w 0x16de
0x00001580   4                 41fa02fe  lea.l 0x1880(pc), a0
0x00001584   4                 343c0001  move.w 0x1, d2
0x00001588   4                 60000154  bra.w 0x16de
0x0000158c   4                 41fa0322  lea.l 0x18b0(pc), a0
0x00001590   4                 343c0001  move.w 0x1, d2
0x00001594   4                 60000148  bra.w 0x16de
0x00001598   4                 266dff3c  movea.l -0xc4(a5), a3
0x0000159c   2                     504b  addq.w 0x8, a3
0x0000159e   4                 382b000c  move.w 0xc(a3), d4
0x000015a2   4                 3a2b000e  move.w 0xe(a3), d5
0x000015a6   4                 06440010  addi.w 0x10, d4
0x000015aa   4                 06450014  addi.w 0x14, d5
0x000015ae   4                 0244ffe0  andi.w 0xffe0, d4
0x000015b2   4                 0245ffe0  andi.w 0xffe0, d5
0x000015b6   2                     3400  move.w d0, d2
0x000015b8   2                     3601  move.w d1, d3
0x000015ba   4                 0242ffe0  andi.w 0xffe0, d2
0x000015be   4                 0243ffe0  andi.w 0xffe0, d3
0x000015c2   2                     b840  cmp.w d0, d4
0x000015c4   2                     6e14  bgt.b 0x15da
0x000015c6   2                     6724  beq.b 0x15ec
0x000015c8   2                     ba41  cmp.w d1, d5
0x000015ca   2                     6d08  blt.b 0x15d4
0x000015cc   2                     672e  beq.b 0x15fc
0x000015ce   4                 41fa0114  lea.l 0x16e4(pc), a0
0x000015d2   2                     6034  bra.b 0x1608
0x000015d4   4                 41fa0166  lea.l 0x173c(pc), a0
0x000015d8   2                     602e  bra.b 0x1608
0x000015da   2                     ba41  cmp.w d1, d5
0x000015dc   2                     6d08  blt.b 0x15e6
0x000015de   2                     6722  beq.b 0x1602
0x000015e0   4                 41fa012a  lea.l 0x170c(pc), a0
0x000015e4   2                     6022  bra.b 0x1608
0x000015e6   4                 41fa0178  lea.l 0x1760(pc), a0
0x000015ea   2                     601c  bra.b 0x1608
0x000015ec   2                     ba41  cmp.w d1, d5
0x000015ee   2                     6d06  blt.b 0x15f6
0x000015f0   4                 41fa0196  lea.l 0x1788(pc), a0
0x000015f4   2                     6012  bra.b 0x1608
0x000015f6   4                 41fa01b4  lea.l 0x17ac(pc), a0
0x000015fa   2                     600c  bra.b 0x1608
0x000015fc   4                 41fa01d6  lea.l 0x17d4(pc), a0
0x00001600   2                     6006  bra.b 0x1608
0x00001602   4                 41fa01f8  lea.l 0x17fc(pc), a0
0x00001606   2                     4e71  nop
0x00001608   4                 343c0003  move.w 0x3, d2
0x0000160c   4                 600000d0  bra.w 0x16de
0x00001610   4                 266dff3c  movea.l -0xc4(a5), a3
0x00001614   2                     504b  addq.w 0x8, a3
0x00001616   4                 382b000c  move.w 0xc(a3), d4
0x0000161a   4                 3a2b000e  move.w 0xe(a3), d5
0x0000161e   4                 06440010  addi.w 0x10, d4
0x00001622   4                 06450014  addi.w 0x14, d5
0x00001626   4                 0244ffe0  andi.w 0xffe0, d4
0x0000162a   4                 0245ffe0  andi.w 0xffe0, d5
0x0000162e   2                     3400  move.w d0, d2
0x00001630   2                     3601  move.w d1, d3
0x00001632   4                 0242ffe0  andi.w 0xffe0, d2
0x00001636   4                 0243ffe0  andi.w 0xffe0, d3
0x0000163a   2                     b840  cmp.w d0, d4
0x0000163c   2                     6e26  bgt.b 0x1664
0x0000163e   2                     6748  beq.b 0x1688
0x00001640   6             243cfffb0005  move.l 0xfffb0005, d2
0x00001646   2                     ba41  cmp.w d1, d5
0x00001648   2                     6d0e  blt.b 0x1658
0x0000164a   2                     675a  beq.b 0x16a6
0x0000164c   4                 41fa0096  lea.l 0x16e4(pc), a0
0x00001650   6             263c0004fffb  move.l 0x4fffb, d3
0x00001656   2                     605e  bra.b 0x16b6
0x00001658   4                 41fa00e2  lea.l 0x173c(pc), a0
0x0000165c   6             263cfffb0005  move.l 0xfffb0005, d3
0x00001662   2                     6052  bra.b 0x16b6
0x00001664   6             243c0004fffb  move.l 0x4fffb, d2
0x0000166a   2                     ba41  cmp.w d1, d5
0x0000166c   2                     6d0e  blt.b 0x167c
0x0000166e   2                     673e  beq.b 0x16ae
0x00001670   4                 41fa009a  lea.l 0x170c(pc), a0
0x00001674   6             263c0004fffb  move.l 0x4fffb, d3
0x0000167a   2                     603a  bra.b 0x16b6
0x0000167c   4                 41fa00e2  lea.l 0x1760(pc), a0
0x00001680   6             263cfffb0005  move.l 0xfffb0005, d3
0x00001686   2                     602e  bra.b 0x16b6
0x00001688   2                     7400  moveq 0x0, d2
0x0000168a   2                     ba41  cmp.w d1, d5
0x0000168c   2                     6d0c  blt.b 0x169a
0x0000168e   4                 41fa00f8  lea.l 0x1788(pc), a0
0x00001692   6             263cfffb0005  move.l 0xfffb0005, d3
0x00001698   2                     601c  bra.b 0x16b6
0x0000169a   4                 41fa0110  lea.l 0x17ac(pc), a0
0x0000169e   6             263c0004fffb  move.l 0x4fffb, d3
0x000016a4   2                     6010  bra.b 0x16b6
0x000016a6   4                 41fa0154  lea.l 0x17fc(pc), a0
0x000016aa   2                     7600  moveq 0x0, d3
0x000016ac   2                     6008  bra.b 0x16b6
0x000016ae   4                 41fa0124  lea.l 0x17d4(pc), a0
0x000016b2   2                     7600  moveq 0x0, d3
0x000016b4   2                     4e71  nop
0x000016b6   4                 48e7c080  movem.l d0-d1/a0, -(a7)
0x000016ba   2                     7800  moveq 0x0, d4
0x000016bc   4                 43edff14  lea.l -0xec(a5), a1
0x000016c0   4                 206df488  movea.l -0xb78(a5), a0
0x000016c4   4                 4ead02d2  jsr 0x2d2(a5)
0x000016c8   4                 4cdf0103  movem.l (a7)+, d0-d1/a0
0x000016cc   2                     3f00  move.w d0, -(a7)
0x000016ce   4                 303c0009  move.w 0x9, d0
0x000016d2   4                 4ead0042  jsr 0x42(a5)
0x000016d6   2                     301f  move.w (a7)+, d0
0x000016d8   4                 343c0002  move.w 0x2, d2
0x000016dc   2                     4e71  nop
0x000016de   4                 4cdf0800  movem.l (a7)+, a3
0x000016e2   2                     4e75  rts
0x000016e4   2                     ff01  invalid
0x000016e6   4                 0402ff01  subi.b 0x1, d2
0x000016ea   4                 0403ff01  subi.b 0x1, d3
0x000016ee   4                 0406ff01  subi.b 0x1, d6
0x000016f2   4                 0403ff01  subi.b 0x1, d3
0x000016f6   4                 0403ff01  subi.b 0x1, d3
0x000016fa   4                 0403ff01  subi.b 0x1, d3
0x000016fe   4                 0406ff01  subi.b 0x1, d6
0x00001702   4                 0403ff01  subi.b 0x1, d3
0x00001706   4                 04020000  subi.b 0x0, d2
0x0000170a   4                 00ff0101  
0x0000170e   4                 00090101  
0x00001712   4                 000c0101  
0x00001716   4                 00070101  ori.b 0x1, d7
0x0000171a   4                 00070101  ori.b 0x1, d7
0x0000171e   4                 000b0101  
0x00001722   4                 00070101  ori.b 0x1, d7
0x00001726   4                 00070101  ori.b 0x1, d7
0x0000172a   4                 00070101  ori.b 0x1, d7
0x0000172e   4                 000b0101  
0x00001732   4                 00070101  ori.b 0x1, d7
0x00001736   4                 00090000  
0x0000173a   4                 00ffffff  
0x0000173e   4                 0002ffff  ori.b 0xff, d2
0x00001742   4                 0400ffff  subi.b 0xff, d0
0x00001746   4                 0400ffff  subi.b 0xff, d0
0x0000174a   4                 0405ffff  subi.b 0xff, d5
0x0000174e   4                 0400ffff  subi.b 0xff, d0
0x00001752   4                 0405ffff  subi.b 0xff, d5
0x00001756   4                 0400ffff  subi.b 0xff, d0
0x0000175a   4                 00000000  ori.b 0x0, d0
0x0000175e   4                 00ff01ff  
0x00001762   4                 000801ff  
0x00001766   4                 000601ff  ori.b 0xff, d6
0x0000176a   4                 000601ff  ori.b 0xff, d6
0x0000176e   4                 000b01ff  
0x00001772   4                 000601ff  ori.b 0xff, d6
0x00001776   4                 000b01ff  
0x0000177a   4                 000601ff  ori.b 0xff, d6
0x0000177e   4                 000801ff  
0x00001782   4                 00010000  ori.b 0x0, d1
0x00001786   4                 00ff00ff  
0x0000178a   4                 000100ff  ori.b 0xff, d1
0x0000178e   4                 000200ff  ori.b 0xff, d2
0x00001792   4                 000400ff  ori.b 0xff, d4
0x00001796   4                 000200ff  ori.b 0xff, d2
0x0000179a   4                 000200ff  ori.b 0xff, d2
0x0000179e   4                 000400ff  ori.b 0xff, d4
0x000017a2   4                 000200ff  ori.b 0xff, d2
0x000017a6   4                 00000000  ori.b 0x0, d0
0x000017aa   4                 00ff0001  
0x000017ae   4                 00010001  ori.b 0x1, d1
0x000017b2   4                 00030001  ori.b 0x1, d3
0x000017b6   4                 00030001  ori.b 0x1, d3
0x000017ba   4                 00050001  ori.b 0x1, d5
0x000017be   4                 00030001  ori.b 0x1, d3
0x000017c2   4                 00030001  ori.b 0x1, d3
0x000017c6   4                 00050001  ori.b 0x1, d5
0x000017ca   4                 00030001  ori.b 0x1, d3
0x000017ce   4                 00000000  ori.b 0x0, d0
0x000017d2   4                 00ffff00  
0x000017d6   4                 0400ff00  subi.b 0x0, d0
0x000017da   4                 0402ff00  subi.b 0x0, d2
0x000017de   4                 0402ff00  subi.b 0x0, d2
0x000017e2   4                 0406ff00  subi.b 0x0, d6
0x000017e6   4                 0402ff00  subi.b 0x0, d2
0x000017ea   4                 0402ff00  subi.b 0x0, d2
0x000017ee   4                 0406ff00  subi.b 0x0, d6
0x000017f2   4                 0402ff00  subi.b 0x0, d2
0x000017f6   4                 04010000  subi.b 0x0, d1
0x000017fa   4                 00ff0100  
0x000017fe   4                 00010100  ori.b 0x0, d1
0x00001802   4                 00090100  
0x00001806   4                 00070100  ori.b 0x0, d7
0x0000180a   4                 00080100  
0x0000180e   4                 000b0100  
0x00001812   4                 00080100  
0x00001816   4                 00080100  
0x0000181a   4                 000b0100  
0x0000181e   4                 00080100  
0x00001822   4                 00070100  ori.b 0x0, d7
0x00001826   4                 000a0000  
0x0000182a   4                 00ff0000  
0x0000182e   4                 00080000  
0x00001832   4                 00070000  ori.b 0x0, d7
0x00001836   4                 00070000  ori.b 0x0, d7
0x0000183a   4                 000b0000  
0x0000183e   4                 00070000  ori.b 0x0, d7
0x00001842   4                 00070000  ori.b 0x0, d7
0x00001846   4                 00080000  
0x0000184a   4                 00060000  ori.b 0x0, d6
0x0000184e   4                 00020000  ori.b 0x0, d2
0x00001852   4                 00000000  ori.b 0x0, d0
0x00001856   4                 00ff0000  
0x0000185a   4                 04020000  subi.b 0x0, d2
0x0000185e   4                 04030000  subi.b 0x0, d3
0x00001862   4                 04060000  subi.b 0x0, d6
0x00001866   4                 04030000  subi.b 0x0, d3
0x0000186a   4                 04030000  subi.b 0x0, d3
0x0000186e   4                 04060000  subi.b 0x0, d6
0x00001872   4                 04030000  subi.b 0x0, d3
0x00001876   4                 04020000  subi.b 0x0, d2
0x0000187a   4                 00060000  ori.b 0x0, d6
0x0000187e   4                 00ff0000  
0x00001882   4                 00080000  
0x00001886   4                 00060000  ori.b 0x0, d6
0x0000188a   4                 000b0000  
0x0000188e   4                 00060000  ori.b 0x0, d6
0x00001892   4                 00020000  ori.b 0x0, d2
0x00001896   4                 00020000  ori.b 0x0, d2
0x0000189a   4                 04040000  subi.b 0x0, d4
0x0000189e   4                 04060000  subi.b 0x0, d6
0x000018a2   4                 04040000  subi.b 0x0, d4
0x000018a6   4                 04020000  subi.b 0x0, d2
0x000018aa   4                 00010000  ori.b 0x0, d1
0x000018ae   4                 00ff0000  
0x000018b2   4                 04030000  subi.b 0x0, d3
0x000018b6   4                 04030000  subi.b 0x0, d3
0x000018ba   4                 04060000  subi.b 0x0, d6
0x000018be   4                 00030000  ori.b 0x0, d3
0x000018c2   4                 00030000  ori.b 0x0, d3
0x000018c6   4                 00050000  ori.b 0x0, d5
0x000018ca   4                 00030000  ori.b 0x0, d3
0x000018ce   4                 00070000  ori.b 0x0, d7
0x000018d2   4                 00080000  
0x000018d6   4                 00030000  ori.b 0x0, d3
0x000018da   4                 00ff0000  
0x000018de   4                 00050000  ori.b 0x0, d5
0x000018e2   4                 00ff206d  
0x000018e6   2                     ffa0  invalid
0x000018e8   4                 226df800  movea.l -0x800(a5), a1
0x000018ec   4                 342e0022  move.w 0x22(a6), d2
0x000018f0   4                 363c0001  move.w 0x1, d3
0x000018f4   4                 b76e0022  eor.w d3, 0x22(a6)
0x000018f8   4                 0c400014  cmpi.w 0x14, d0
0x000018fc   2                     6c06  bge.b 0x1904
0x000018fe   4                 303c0014  move.w 0x14, d0
0x00001902   2                     6022  bra.b 0x1926
0x00001904   4                 0c4001ec  cmpi.w 0x1ec, d0
0x00001908   2                     6f06  ble.b 0x1910
0x0000190a   4                 303c01ec  move.w 0x1ec, d0
0x0000190e   2                     6016  bra.b 0x1926
0x00001910   4                 0c410014  cmpi.w 0x14, d1
0x00001914   2                     6c06  bge.b 0x191c
0x00001916   4                 323c0014  move.w 0x14, d1
0x0000191a   2                     600a  bra.b 0x1926
0x0000191c   4                 0c410116  cmpi.w 0x116, d1
0x00001920   2                     6f04  ble.b 0x1926
0x00001922   4                 323c0116  move.w 0x116, d1
0x00001926   4                 04400010  subi.w 0x10, d0
0x0000192a   4                 04410010  subi.w 0x10, d1
0x0000192e   4                 4ebae6d0  jsr 0x0(pc)
0x00001932   4                 06400010  addi.w 0x10, d0
0x00001936   4                 06410010  addi.w 0x10, d1
0x0000193a   2                     4e75  rts
0x0000193c   4                 3d40001c  move.w d0, 0x1c(a6)
0x00001940   4                 3d41001e  move.w d1, 0x1e(a6)
0x00001944   6             066e0010001c  addi.w 0x10, 0x1c(a6)
0x0000194a   6             066e000b001e  addi.w 0xb, 0x1e(a6)
0x00001950   4                 41edff1c  lea.l -0xe4(a5), a0
0x00001954   4                 4eba2494  jsr 0x3dea(pc)
0x00001958   2                     673c  beq.b 0x1996
0x0000195a   4                 42a80008  clr.l 0x8(a0)
0x0000195e   4                 41ee001c  lea.l 0x1c(a6), a0
0x00001962   6             2e3c04000000  move.l 0x4000000, d7
0x00001968   4                 4eba252c  jsr 0x3e96(pc)
0x0000196c   6             3d7c00040020  move.w 0x4, 0x20(a6)
0x00001972   2                     3f00  move.w d0, -(a7)
0x00001974   4                 303c002b  move.w 0x2b, d0
0x00001978   4                 4ead0042  jsr 0x42(a5)
0x0000197c   2                     301f  move.w (a7)+, d0
0x0000197e   4                 303c000c  move.w 0xc, d0
0x00001982   4                 4eba2718  jsr 0x409c(pc)
0x00001986   4                 41faf5a0  lea.l 0xf28(pc), a0
0x0000198a   4                 2d480004  move.l a0, 0x4(a6)
0x0000198e   4                 426e0008  clr.w 0x8(a6)
0x00001992   4                 426e000a  clr.w 0xa(a6)
0x00001996   2                     4e75  rts
0x00001998   2                     3018  move.w (a0)+, d0
0x0000199a   2                     3218  move.w (a0)+, d1
0x0000199c   4                 343c0006  move.w 0x6, d2
0x000019a0   2                     2648  movea.l a0, a3
0x000019a2   4                 41fafb54  lea.l 0x14f8(pc), a0
0x000019a6   4                 43edf804  lea.l -0x7fc(a5), a1
0x000019aa   4                 45faff90  lea.l 0x193c(pc), a2
0x000019ae   4                 49faff34  lea.l 0x18e4(pc), a4
0x000019b2   4                 4ebaf51c  jsr 0xed0(pc)
0x000019b6   4                 41e80024  lea.l 0x24(a0), a0
0x000019ba   6             2e3c04000000  move.l 0x4000000, d7
0x000019c0   4                 4eba24a2  jsr 0x3e64(pc)
0x000019c4   2                     4e75  rts
0x000019c6   2                     3e00  move.w d0, d7
0x000019c8   2                     7036  moveq 0x36, d0
0x000019ca   2                     a31e  invalid
0x000019cc   4                 43fa02da  lea.l 0x1ca8(pc), a1
0x000019d0   4                 21490004  move.l a1, 0x4(a0)
0x000019d4   4                 31470008  move.w d7, 0x8(a0)
0x000019d8   4                 3141000a  move.w d1, 0xa(a0)
0x000019dc   4                 42680010  clr.w 0x10(a0)
0x000019e0   4                 3142000c  move.w d2, 0xc(a0)
0x000019e4   4                 3143000e  move.w d3, 0xe(a0)
0x000019e8   4                 3144001c  move.w d4, 0x1c(a0)
0x000019ec   4                 3145001a  move.w d5, 0x1a(a0)
0x000019f0   4                 4268002e  clr.w 0x2e(a0)
0x000019f4   6             216df5b40012  move.l -0xa4c(a5), 0x12(a0)
0x000019fa   6             216df5b80016  move.l -0xa48(a5), 0x16(a0)
0x00001a00   4                 3146001e  move.w d6, 0x1e(a0)
0x00001a04   4                 42680022  clr.w 0x22(a0)
0x00001a08   6             317cffff0024  move.w 0xffff, 0x24(a0)
0x00001a0e   4                 20adfefe  move.l -0x102(a5), (a0)
0x00001a12   4                 2b48fefe  move.l a0, -0x102(a5)
0x00001a16   2                     4e75  rts
0x00001a18   2                     2448  movea.l a0, a2
0x00001a1a   2                     7036  moveq 0x36, d0
0x00001a1c   2                     a31e  invalid
0x00001a1e   4                 43fa0288  lea.l 0x1ca8(pc), a1
0x00001a22   4                 21490004  move.l a1, 0x4(a0)
0x00001a26   2                     7014  moveq 0x14, d0
0x00001a28   2                     2248  movea.l a0, a1
0x00001a2a   2                     5049  addq.w 0x8, a1
0x00001a2c   2                     32da  move.w (a2)+, (a1)+
0x00001a2e   4                 51c8fffc  dbra d0, 0x1a2c
0x00001a32   6             216df5b40012  move.l -0xa4c(a5), 0x12(a0)
0x00001a38   6             216df5b80016  move.l -0xa48(a5), 0x16(a0)
0x00001a3e   4                 20adfefe  move.l -0x102(a5), (a0)
0x00001a42   4                 2b48fefe  move.l a0, -0x102(a5)
0x00001a46   2                     4e75  rts
0x00001a48   2                     3016  move.w (a6), d0
0x00001a4a   4                 322e0002  move.w 0x2(a6), d1
0x00001a4e   4                 206dffa0  movea.l -0x60(a5), a0
0x00001a52   4                 3e2e001a  move.w 0x1a(a6), d7
0x00001a56   2                     e547  asl.w 0x2, d7
0x00001a58   4                 4efb7002  jmp 0x1a5c(pc, d7.w)
0x00001a5c   4                 4efa0116  jmp 0x1b74(pc)
0x00001a60   4                 4efa00be  jmp 0x1b20(pc)
0x00001a64   4                 4efa0076  jmp 0x1adc(pc)
0x00001a68   4                 4efa0044  jmp 0x1aae(pc)
0x00001a6c   4                 4efa0002  jmp 0x1a70(pc)
0x00001a70   4                 343c0003  move.w 0x3, d2
0x00001a74   4                 0641000f  addi.w 0xf, d1
0x00001a78   4                 0c41012c  cmpi.w 0x12c, d1
0x00001a7c   2                     6d18  blt.b 0x1a96
0x00001a7e   4                 41ee0028  lea.l 0x28(a6), a0
0x00001a82   4                 4eba2412  jsr 0x3e96(pc)
0x00001a86   4                 42aefffc  clr.l -0x4(a6)
0x00001a8a   4                 206e0016  movea.l 0x16(a6), a0
0x00001a8e   4                 52680016  addq.w 0x1, 0x16(a0)
0x00001a92   4                 600001c0  bra.w 0x1c54
0x00001a96   4                 4a6e0008  tst.w 0x8(a6)
0x00001a9a   2                     6e06  bgt.b 0x1aa2
0x00001a9c   4                 226e000a  movea.l 0xa(a6), a1
0x00001aa0   2                     6004  bra.b 0x1aa6
0x00001aa2   4                 226e000e  movea.l 0xe(a6), a1
0x00001aa6   4                 4ebae558  jsr 0x0(pc)
0x00001aaa   4                 6000014c  bra.w 0x1bf8
0x00001aae   4                 343c0003  move.w 0x3, d2
0x00001ab2   4                 0641000f  addi.w 0xf, d1
0x00001ab6   4                 b26e001e  cmp.w 0x1e(a6), d1
0x00001aba   2                     6d08  blt.b 0x1ac4
0x00001abc   4                 426e001a  clr.w 0x1a(a6)
0x00001ac0   4                 322e001e  move.w 0x1e(a6), d1
0x00001ac4   4                 4a6e0008  tst.w 0x8(a6)
0x00001ac8   2                     6e06  bgt.b 0x1ad0
0x00001aca   4                 226e000a  movea.l 0xa(a6), a1
0x00001ace   2                     6004  bra.b 0x1ad4
0x00001ad0   4                 226e000e  movea.l 0xe(a6), a1
0x00001ad4   4                 4ebae52a  jsr 0x0(pc)
0x00001ad8   4                 6000011e  bra.w 0x1bf8
0x00001adc   4                 343c0002  move.w 0x2, d2
0x00001ae0   4                 0641000a  addi.w 0xa, d1
0x00001ae4   4                 b26e001c  cmp.w 0x1c(a6), d1
0x00001ae8   2                     6d1e  blt.b 0x1b08
0x00001aea   4                 b06e0004  cmp.w 0x4(a6), d0
0x00001aee   2                     6d0e  blt.b 0x1afe
0x00001af0   4                 b06e0006  cmp.w 0x6(a6), d0
0x00001af4   2                     6e08  bgt.b 0x1afe
0x00001af6   6             3d7c0003001a  move.w 0x3, 0x1a(a6)
0x00001afc   2                     6006  bra.b 0x1b04
0x00001afe   6             3d7c0004001a  move.w 0x4, 0x1a(a6)
0x00001b04   4                 322e001c  move.w 0x1c(a6), d1
0x00001b08   4                 4a6e0008  tst.w 0x8(a6)
0x00001b0c   2                     6e06  bgt.b 0x1b14
0x00001b0e   4                 226e000a  movea.l 0xa(a6), a1
0x00001b12   2                     6004  bra.b 0x1b18
0x00001b14   4                 226e000e  movea.l 0xe(a6), a1
0x00001b18   4                 4ebae4e6  jsr 0x0(pc)
0x00001b1c   4                 600000da  bra.w 0x1bf8
0x00001b20   4                 342e0014  move.w 0x14(a6), d2
0x00001b24   4                 d06e0008  add.w 0x8(a6), d0
0x00001b28   4                 4a6e0008  tst.w 0x8(a6)
0x00001b2c   2                     6e1e  bgt.b 0x1b4c
0x00001b2e   4                 b06e0020  cmp.w 0x20(a6), d0
0x00001b32   2                     6e0a  bgt.b 0x1b3e
0x00001b34   6             3d7c0002001a  move.w 0x2, 0x1a(a6)
0x00001b3a   4                 302e0020  move.w 0x20(a6), d0
0x00001b3e   4                 226e000a  movea.l 0xa(a6), a1
0x00001b42   2                     5342  subq.w 0x1, d2
0x00001b44   2                     6c22  bge.b 0x1b68
0x00001b46   4                 343c0001  move.w 0x1, d2
0x00001b4a   2                     601c  bra.b 0x1b68
0x00001b4c   4                 b06e0020  cmp.w 0x20(a6), d0
0x00001b50   2                     6d0a  blt.b 0x1b5c
0x00001b52   6             3d7c0002001a  move.w 0x2, 0x1a(a6)
0x00001b58   4                 302e0020  move.w 0x20(a6), d0
0x00001b5c   4                 226e000e  movea.l 0xe(a6), a1
0x00001b60   2                     5342  subq.w 0x1, d2
0x00001b62   2                     6c04  bge.b 0x1b68
0x00001b64   4                 343c0001  move.w 0x1, d2
0x00001b68   4                 3d420014  move.w d2, 0x14(a6)
0x00001b6c   4                 4ebae492  jsr 0x0(pc)
0x00001b70   4                 60000086  bra.w 0x1bf8
0x00001b74   4                 536e0012  subq.w 0x1, 0x12(a6)
0x00001b78   2                     6e18  bgt.b 0x1b92
0x00001b7a   4                 446e0008  neg.w 0x8(a6)
0x00001b7e   4                 4eba25e8  jsr 0x4168(pc)
0x00001b82   2                     3e00  move.w d0, d7
0x00001b84   2                     3016  move.w (a6), d0
0x00001b86   4                 0247003f  andi.w 0x3f, d7
0x00001b8a   4                 0647000a  addi.w 0xa, d7
0x00001b8e   4                 3d470012  move.w d7, 0x12(a6)
0x00001b92   4                 342e0014  move.w 0x14(a6), d2
0x00001b96   4                 d06e0008  add.w 0x8(a6), d0
0x00001b9a   4                 b06e0004  cmp.w 0x4(a6), d0
0x00001b9e   2                     6e14  bgt.b 0x1bb4
0x00001ba0   6             3d7c00020008  move.w 0x2, 0x8(a6)
0x00001ba6   2                     3f00  move.w d0, -(a7)
0x00001ba8   4                 303c0046  move.w 0x46, d0
0x00001bac   4                 4ead0042  jsr 0x42(a5)
0x00001bb0   2                     301f  move.w (a7)+, d0
0x00001bb2   2                     6018  bra.b 0x1bcc
0x00001bb4   4                 b06e0006  cmp.w 0x6(a6), d0
0x00001bb8   2                     6d12  blt.b 0x1bcc
0x00001bba   6             3d7cfffe0008  move.w 0xfffe, 0x8(a6)
0x00001bc0   2                     3f00  move.w d0, -(a7)
0x00001bc2   4                 303c0046  move.w 0x46, d0
0x00001bc6   4                 4ead0042  jsr 0x42(a5)
0x00001bca   2                     301f  move.w (a7)+, d0
0x00001bcc   4                 4a6e0008  tst.w 0x8(a6)
0x00001bd0   2                     6e0e  bgt.b 0x1be0
0x00001bd2   4                 226e000a  movea.l 0xa(a6), a1
0x00001bd6   2                     5342  subq.w 0x1, d2
0x00001bd8   2                     6c12  bge.b 0x1bec
0x00001bda   4                 343c0001  move.w 0x1, d2
0x00001bde   2                     600c  bra.b 0x1bec
0x00001be0   4                 226e000e  movea.l 0xe(a6), a1
0x00001be4   2                     5342  subq.w 0x1, d2
0x00001be6   2                     6c04  bge.b 0x1bec
0x00001be8   4                 343c0001  move.w 0x1, d2
0x00001bec   4                 3d420014  move.w d2, 0x14(a6)
0x00001bf0   4                 4ebae40e  jsr 0x0(pc)
0x00001bf4   4                 60000002  bra.w 0x1bf8
0x00001bf8   2                     3c80  move.w d0, (a6)
0x00001bfa   4                 3d410002  move.w d1, 0x2(a6)
0x00001bfe   4                 3d400028  move.w d0, 0x28(a6)
0x00001c02   4                 3d41002a  move.w d1, 0x2a(a6)
0x00001c06   4                 506e0028  addq.w 0x8, 0x28(a6)
0x00001c0a   4                 5c6e002a  addq.w 0x6, 0x2a(a6)
0x00001c0e   4                 41edff1c  lea.l -0xe4(a5), a0
0x00001c12   4                 4eba21d6  jsr 0x3dea(pc)
0x00001c16   2                     672e  beq.b 0x1c46
0x00001c18   4                 42a80008  clr.l 0x8(a0)
0x00001c1c   2                     3f00  move.w d0, -(a7)
0x00001c1e   4                 303c0057  move.w 0x57, d0
0x00001c22   4                 4ead0042  jsr 0x42(a5)
0x00001c26   2                     301f  move.w (a7)+, d0
0x00001c28   4                 41ee0028  lea.l 0x28(a6), a0
0x00001c2c   4                 4eba2268  jsr 0x3e96(pc)
0x00001c30   4                 42aefffc  clr.l -0x4(a6)
0x00001c34   4                 206e0016  movea.l 0x16(a6), a0
0x00001c38   4                 52680016  addq.w 0x1, 0x16(a0)
0x00001c3c   2                     4240  clr.w d0
0x00001c3e   4                 4eba245c  jsr 0x409c(pc)
0x00001c42   4                 60000010  bra.w 0x1c54
0x00001c46   4                 41edfa14  lea.l -0x5ec(a5), a0
0x00001c4a   4                 4eba22e0  jsr 0x3f2c(pc)
0x00001c4e   4                 b0fc0000  cmpa.w 0x0, a0
0x00001c52   2                     66c8  bne.b 0x1c1c
0x00001c54   4                 4a6e002c  tst.w 0x2c(a6)
0x00001c58   2                     674c  beq.b 0x1ca6
0x00001c5a   4                 206dffa0  movea.l -0x60(a5), a0
0x00001c5e   4                 34280012  move.w 0x12(a0), d2
0x00001c62   2                     3016  move.w (a6), d0
0x00001c64   2                     b440  cmp.w d0, d2
0x00001c66   2                     6e24  bgt.b 0x1c8c
0x00001c68   4                 06420200  addi.w 0x200, d2
0x00001c6c   2                     b440  cmp.w d0, d2
0x00001c6e   2                     6d1c  blt.b 0x1c8c
0x00001c70   4                 322e0002  move.w 0x2(a6), d1
0x00001c74   4                 36280014  move.w 0x14(a0), d3
0x00001c78   2                     b641  cmp.w d1, d3
0x00001c7a   2                     6e10  bgt.b 0x1c8c
0x00001c7c   4                 0643012c  addi.w 0x12c, d3
0x00001c80   2                     b641  cmp.w d1, d3
0x00001c82   2                     6d08  blt.b 0x1c8c
0x00001c84   6             3d7c003c002c  move.w 0x3c, 0x2c(a6)
0x00001c8a   2                     601a  bra.b 0x1ca6
0x00001c8c   4                 536e002c  subq.w 0x1, 0x2c(a6)
0x00001c90   2                     6e14  bgt.b 0x1ca6
0x00001c92   4                 41ee0028  lea.l 0x28(a6), a0
0x00001c96   4                 4eba21fe  jsr 0x3e96(pc)
0x00001c9a   4                 42aefffc  clr.l -0x4(a6)
0x00001c9e   4                 206e0016  movea.l 0x16(a6), a0
0x00001ca2   4                 52680016  addq.w 0x1, 0x16(a0)
0x00001ca6   2                     4e75  rts
0x00001ca8   4                 4a6e0016  tst.w 0x16(a6)
0x00001cac   4                 6f0000cc  ble.w 0x1d7a
0x00001cb0   4                 536e0026  subq.w 0x1, 0x26(a6)
0x00001cb4   4                 6e0000c4  bgt.w 0x1d7a
0x00001cb8   4                 4eba24ae  jsr 0x4168(pc)
0x00001cbc   2                     3e00  move.w d0, d7
0x00001cbe   2                     7036  moveq 0x36, d0
0x00001cc0   2                     a31e  invalid
0x00001cc2   4                 43fafd84  lea.l 0x1a48(pc), a1
0x00001cc6   4                 21490004  move.l a1, 0x4(a0)
0x00001cca   6             316e0004000c  move.w 0x4(a6), 0xc(a0)
0x00001cd0   6             316e0006000e  move.w 0x6(a6), 0xe(a0)
0x00001cd6   4                 31560008  move.w (a6), 0x8(a0)
0x00001cda   6             316e0002000a  move.w 0x2(a6), 0xa(a0)
0x00001ce0   4                 4268001c  clr.w 0x1c(a0)
0x00001ce4   4                 42680034  clr.w 0x34(a0)
0x00001ce8   6             216e000a0012  move.l 0xa(a6), 0x12(a0)
0x00001cee   6             216e000e0016  move.l 0xe(a6), 0x16(a0)
0x00001cf4   2                     3c07  move.w d7, d6
0x00001cf6   4                 0246000f  andi.w 0xf, d6
0x00001cfa   2                     5846  addq.w 0x4, d6
0x00001cfc   4                 3146001a  move.w d6, 0x1a(a0)
0x00001d00   4                 214e001e  move.l a6, 0x1e(a0)
0x00001d04   6             316e001a0022  move.w 0x1a(a6), 0x22(a0)
0x00001d0a   2                     6736  beq.b 0x1d42
0x00001d0c   6             316e001c0024  move.w 0x1c(a6), 0x24(a0)
0x00001d12   6             316e001e0026  move.w 0x1e(a6), 0x26(a0)
0x00001d18   6             316e00080010  move.w 0x8(a6), 0x10(a0)
0x00001d1e   4                 0c475555  cmpi.w 0x5555, d7
0x00001d22   2                     6208  bhi.b 0x1d2c
0x00001d24   6             316e00200028  move.w 0x20(a6), 0x28(a0)
0x00001d2a   2                     601c  bra.b 0x1d48
0x00001d2c   4                 0c47aaaa  cmpi.w 0xaaaa, d7
0x00001d30   2                     6208  bhi.b 0x1d3a
0x00001d32   6             316e00220028  move.w 0x22(a6), 0x28(a0)
0x00001d38   2                     600e  bra.b 0x1d48
0x00001d3a   6             316e00240028  move.w 0x24(a6), 0x28(a0)
0x00001d40   2                     6006  bra.b 0x1d48
0x00001d42   6             317c00020010  move.w 0x2, 0x10(a0)
0x00001d48   4                 20adfefe  move.l -0x102(a5), (a0)
0x00001d4c   4                 2b48fefe  move.l a0, -0x102(a5)
0x00001d50   4                 536e0016  subq.w 0x1, 0x16(a6)
0x00001d54   4                 ce6e0014  and.w 0x14(a6), d7
0x00001d58   4                 de6e0012  add.w 0x12(a6), d7
0x00001d5c   4                 3d470026  move.w d7, 0x26(a6)
0x00001d60   4                 41e80030  lea.l 0x30(a0), a0
0x00001d64   6             2e3c05000000  move.l 0x5000000, d7
0x00001d6a   4                 4eba20f8  jsr 0x3e64(pc)
0x00001d6e   2                     3f00  move.w d0, -(a7)
0x00001d70   4                 303c0046  move.w 0x46, d0
0x00001d74   4                 4ead0042  jsr 0x42(a5)
0x00001d78   2                     301f  move.w (a7)+, d0
0x00001d7a   2                     4e75  rts
0x00001d7c   2                     2448  movea.l a0, a2
0x00001d7e   2                     7036  moveq 0x36, d0
0x00001d80   2                     a31e  invalid
0x00001d82   4                 43fa0028  lea.l 0x1dac(pc), a1
0x00001d86   4                 21490004  move.l a1, 0x4(a0)
0x00001d8a   2                     7014  moveq 0x14, d0
0x00001d8c   2                     2248  movea.l a0, a1
0x00001d8e   2                     5049  addq.w 0x8, a1
0x00001d90   2                     32da  move.w (a2)+, (a1)+
0x00001d92   4                 51c8fffc  dbra d0, 0x1d90
0x00001d96   6             216df5b40012  move.l -0xa4c(a5), 0x12(a0)
0x00001d9c   6             216df5b80016  move.l -0xa48(a5), 0x16(a0)
0x00001da2   4                 20adfefe  move.l -0x102(a5), (a0)
0x00001da6   4                 2b48fefe  move.l a0, -0x102(a5)
0x00001daa   2                     4e75  rts
0x00001dac   4                 4a6e0016  tst.w 0x16(a6)
0x00001db0   4                 6f000130  ble.w 0x1ee2
0x00001db4   4                 536e0026  subq.w 0x1, 0x26(a6)
0x00001db8   4                 6e000128  bgt.w 0x1ee2
0x00001dbc   4                 4eba23aa  jsr 0x4168(pc)
0x00001dc0   2                     3e00  move.w d0, d7
0x00001dc2   4                 206dffa0  movea.l -0x60(a5), a0
0x00001dc6   4                 34280012  move.w 0x12(a0), d2
0x00001dca   4                 b46e0024  cmp.w 0x24(a6), d2
0x00001dce   2                     6e1e  bgt.b 0x1dee
0x00001dd0   4                 06420200  addi.w 0x200, d2
0x00001dd4   4                 b46e0020  cmp.w 0x20(a6), d2
0x00001dd8   2                     6d14  blt.b 0x1dee
0x00001dda   4                 36280014  move.w 0x14(a0), d3
0x00001dde   4                 b66e001e  cmp.w 0x1e(a6), d3
0x00001de2   2                     6e0a  bgt.b 0x1dee
0x00001de4   4                 0643012c  addi.w 0x12c, d3
0x00001de8   4                 b66e0002  cmp.w 0x2(a6), d3
0x00001dec   2                     6e10  bgt.b 0x1dfe
0x00001dee   4                 ce6e0014  and.w 0x14(a6), d7
0x00001df2   4                 de6e0012  add.w 0x12(a6), d7
0x00001df6   4                 3d470026  move.w d7, 0x26(a6)
0x00001dfa   4                 600000e6  bra.w 0x1ee2
0x00001dfe   2                     7036  moveq 0x36, d0
0x00001e00   2                     a31e  invalid
0x00001e02   4                 43fafc44  lea.l 0x1a48(pc), a1
0x00001e06   4                 21490004  move.l a1, 0x4(a0)
0x00001e0a   6             316e0004000c  move.w 0x4(a6), 0xc(a0)
0x00001e10   6             316e0006000e  move.w 0x6(a6), 0xe(a0)
0x00001e16   4                 31560008  move.w (a6), 0x8(a0)
0x00001e1a   6             316e0002000a  move.w 0x2(a6), 0xa(a0)
0x00001e20   4                 4268001c  clr.w 0x1c(a0)
0x00001e24   6             317c003c0034  move.w 0x3c, 0x34(a0)
0x00001e2a   6             216e000a0012  move.l 0xa(a6), 0x12(a0)
0x00001e30   6             216e000e0016  move.l 0xe(a6), 0x16(a0)
0x00001e36   2                     3c07  move.w d7, d6
0x00001e38   4                 0246000f  andi.w 0xf, d6
0x00001e3c   2                     5846  addq.w 0x4, d6
0x00001e3e   4                 3146001a  move.w d6, 0x1a(a0)
0x00001e42   4                 214e001e  move.l a6, 0x1e(a0)
0x00001e46   6             317c00010022  move.w 0x1, 0x22(a0)
0x00001e4c   6             316e001c0024  move.w 0x1c(a6), 0x24(a0)
0x00001e52   6             316e001e0026  move.w 0x1e(a6), 0x26(a0)
0x00001e58   6             316e00080010  move.w 0x8(a6), 0x10(a0)
0x00001e5e   4                 0c475555  cmpi.w 0x5555, d7
0x00001e62   2                     6208  bhi.b 0x1e6c
0x00001e64   6             316e00200028  move.w 0x20(a6), 0x28(a0)
0x00001e6a   2                     601c  bra.b 0x1e88
0x00001e6c   4                 0c47aaaa  cmpi.w 0xaaaa, d7
0x00001e70   2                     6208  bhi.b 0x1e7a
0x00001e72   6             316e00220028  move.w 0x22(a6), 0x28(a0)
0x00001e78   2                     600e  bra.b 0x1e88
0x00001e7a   6             316e00240028  move.w 0x24(a6), 0x28(a0)
0x00001e80   2                     6006  bra.b 0x1e88
0x00001e82   6             317c00020010  move.w 0x2, 0x10(a0)
0x00001e88   4                 246dffa0  movea.l -0x60(a5), a2
0x00001e8c   4                 322a0014  move.w 0x14(a2), d1
0x00001e90   4                 b268000a  cmp.w 0xa(a0), d1
0x00001e94   2                     6f1a  ble.b 0x1eb0
0x00001e96   4                 b2680024  cmp.w 0x24(a0), d1
0x00001e9a   2                     6f04  ble.b 0x1ea0
0x00001e9c   4                 32280024  move.w 0x24(a0), d1
0x00001ea0   4                 3141000a  move.w d1, 0xa(a0)
0x00001ea4   6             316800280008  move.w 0x28(a0), 0x8(a0)
0x00001eaa   6             317c00020022  move.w 0x2, 0x22(a0)
0x00001eb0   4                 20adfefe  move.l -0x102(a5), (a0)
0x00001eb4   4                 2b48fefe  move.l a0, -0x102(a5)
0x00001eb8   4                 536e0016  subq.w 0x1, 0x16(a6)
0x00001ebc   4                 ce6e0014  and.w 0x14(a6), d7
0x00001ec0   4                 de6e0012  add.w 0x12(a6), d7
0x00001ec4   4                 3d470026  move.w d7, 0x26(a6)
0x00001ec8   4                 41e80030  lea.l 0x30(a0), a0
0x00001ecc   6             2e3c05000000  move.l 0x5000000, d7
0x00001ed2   4                 4eba1f90  jsr 0x3e64(pc)
0x00001ed6   2                     3f00  move.w d0, -(a7)
0x00001ed8   4                 303c0046  move.w 0x46, d0
0x00001edc   4                 4ead0042  jsr 0x42(a5)
0x00001ee0   2                     301f  move.w (a7)+, d0
0x00001ee2   2                     4e75  rts
0x00001ee4   4                 48a7e000  movem.w d0-d2, -(a7)
0x00001ee8   2                     7024  moveq 0x24, d0
0x00001eea   2                     a31e  invalid
0x00001eec   4                 4c9f0007  movem.w (a7)+, d0-d2
0x00001ef0   4                 43fa0046  lea.l 0x1f38(pc), a1
0x00001ef4   4                 21490004  move.l a1, 0x4(a0)
0x00001ef8   4                 31400008  move.w d0, 0x8(a0)
0x00001efc   4                 3141000a  move.w d1, 0xa(a0)
0x00001f00   4                 4268000c  clr.w 0xc(a0)
0x00001f04   4                 31420016  move.w d2, 0x16(a0)
0x00001f08   4                 31430018  move.w d3, 0x18(a0)
0x00001f0c   4                 3142001a  move.w d2, 0x1a(a0)
0x00001f10   4                 3144001e  move.w d4, 0x1e(a0)
0x00001f14   4                 4268000e  clr.w 0xe(a0)
0x00001f18   4                 42680010  clr.w 0x10(a0)
0x00001f1c   4                 4268001c  clr.w 0x1c(a0)
0x00001f20   6             216df5b00012  move.l -0xa50(a5), 0x12(a0)
0x00001f26   4                 31450020  move.w d5, 0x20(a0)
0x00001f2a   4                 31460022  move.w d6, 0x22(a0)
0x00001f2e   4                 20adfefe  move.l -0x102(a5), (a0)
0x00001f32   4                 2b48fefe  move.l a0, -0x102(a5)
0x00001f36   2                     4e75  rts
0x00001f38   4                 4a6e0014  tst.w 0x14(a6)
0x00001f3c   4                 6d000148  blt.w 0x2086
0x00001f40   4                 6e000182  bgt.w 0x20c4
0x00001f44   2                     3016  move.w (a6), d0
0x00001f46   4                 322e0002  move.w 0x2(a6), d1
0x00001f4a   4                 342e0004  move.w 0x4(a6), d2
0x00001f4e   4                 226e000a  movea.l 0xa(a6), a1
0x00001f52   4                 206dffa0  movea.l -0x60(a5), a0
0x00001f56   4                 536e0016  subq.w 0x1, 0x16(a6)
0x00001f5a   4                 6e000252  bgt.w 0x21ae
0x00001f5e   4                 426e0016  clr.w 0x16(a6)
0x00001f62   4                 d06e0006  add.w 0x6(a6), d0
0x00001f66   4                 d26e0008  add.w 0x8(a6), d1
0x00001f6a   2                     5242  addq.w 0x1, d2
0x00001f6c   4                 0c420003  cmpi.w 0x3, d2
0x00001f70   2                     6d04  blt.b 0x1f76
0x00001f72   4                 343c0001  move.w 0x1, d2
0x00001f76   4                 3d420004  move.w d2, 0x4(a6)
0x00001f7a   2                     3c80  move.w d0, (a6)
0x00001f7c   4                 3d410002  move.w d1, 0x2(a6)
0x00001f80   4                 4ebae07e  jsr 0x0(pc)
0x00001f84   4                 0c400005  cmpi.w 0x5, d0
0x00001f88   2                     6f22  ble.b 0x1fac
0x00001f8a   4                 0c4001f4  cmpi.w 0x1f4, d0
0x00001f8e   2                     6c1c  bge.b 0x1fac
0x00001f90   4                 b26e0018  cmp.w 0x18(a6), d1
0x00001f94   2                     6f0e  ble.b 0x1fa4
0x00001f96   4                 b26e001a  cmp.w 0x1a(a6), d1
0x00001f9a   2                     6d14  blt.b 0x1fb0
0x00001f9c   6             3d7cfffd0008  move.w 0xfffd, 0x8(a6)
0x00001fa2   2                     600c  bra.b 0x1fb0
0x00001fa4   6             3d7c00030008  move.w 0x3, 0x8(a6)
0x00001faa   2                     6004  bra.b 0x1fb0
0x00001fac   4                 426e0012  clr.w 0x12(a6)
0x00001fb0   4                 266dff3c  movea.l -0xc4(a5), a3
0x00001fb4   2                     504b  addq.w 0x8, a3
0x00001fb6   4                 536e0012  subq.w 0x1, 0x12(a6)
0x00001fba   4                 6e000070  bgt.w 0x202c
0x00001fbe   2                     3f00  move.w d0, -(a7)
0x00001fc0   4                 303c0045  move.w 0x45, d0
0x00001fc4   4                 4ead0042  jsr 0x42(a5)
0x00001fc8   2                     301f  move.w (a7)+, d0
0x00001fca   6             3d6e000e0012  move.w 0xe(a6), 0x12(a6)
0x00001fd0   2                     3f00  move.w d0, -(a7)
0x00001fd2   4                 4eba2194  jsr 0x4168(pc)
0x00001fd6   2                     3600  move.w d0, d3
0x00001fd8   2                     301f  move.w (a7)+, d0
0x00001fda   4                 c66e0010  and.w 0x10(a6), d3
0x00001fde   4                 d76e0012  add.w d3, 0x12(a6)
0x00001fe2   2                     5040  addq.w 0x8, d0
0x00001fe4   2                     5c41  addq.w 0x6, d1
0x00001fe6   4                 382b000c  move.w 0xc(a3), d4
0x00001fea   4                 3a2b000e  move.w 0xe(a3), d5
0x00001fee   4                 06440010  addi.w 0x10, d4
0x00001ff2   4                 06450014  addi.w 0x14, d5
0x00001ff6   2                     b840  cmp.w d0, d4
0x00001ff8   2                     6d08  blt.b 0x2002
0x00001ffa   2                     6e0e  bgt.b 0x200a
0x00001ffc   4                 426e0006  clr.w 0x6(a6)
0x00002000   2                     600e  bra.b 0x2010
0x00002002   6             3d7cfffd0006  move.w 0xfffd, 0x6(a6)
0x00002008   2                     6006  bra.b 0x2010
0x0000200a   6             3d7c00030006  move.w 0x3, 0x6(a6)
0x00002010   2                     b245  cmp.w d5, d1
0x00002012   2                     6d10  blt.b 0x2024
0x00002014   2                     6e06  bgt.b 0x201c
0x00002016   4                 426e0008  clr.w 0x8(a6)
0x0000201a   2                     600e  bra.b 0x202a
0x0000201c   6             3d7cfffd0008  move.w 0xfffd, 0x8(a6)
0x00002022   2                     6006  bra.b 0x202a
0x00002024   6             3d7c00030008  move.w 0x3, 0x8(a6)
0x0000202a   2                     4e71  nop
0x0000202c   2                     3016  move.w (a6), d0
0x0000202e   4                 322e0002  move.w 0x2(a6), d1
0x00002032   4                 382b000c  move.w 0xc(a3), d4
0x00002036   4                 3a2b000e  move.w 0xe(a3), d5
0x0000203a   2                     3404  move.w d4, d2
0x0000203c   2                     3605  move.w d5, d3
0x0000203e   4                 246b001a  movea.l 0x1a(a3), a2
0x00002042   4                 d46a000a  add.w 0xa(a2), d2
0x00002046   4                 d66a000c  add.w 0xc(a2), d3
0x0000204a   2                     b044  cmp.w d4, d0
0x0000204c   2                     6d34  blt.b 0x2082
0x0000204e   2                     b245  cmp.w d5, d1
0x00002050   2                     6d30  blt.b 0x2082
0x00002052   2                     b042  cmp.w d2, d0
0x00002054   2                     6e2c  bgt.b 0x2082
0x00002056   2                     b243  cmp.w d3, d1
0x00002058   2                     6e28  bgt.b 0x2082
0x0000205a   6             3d7cffff0014  move.w 0xffff, 0x14(a6)
0x00002060   4                 526dfeda  addq.w 0x1, -0x126(a5)
0x00002064   2                     3f00  move.w d0, -(a7)
0x00002066   4                 4eba2100  jsr 0x4168(pc)
0x0000206a   2                     3e00  move.w d0, d7
0x0000206c   2                     301f  move.w (a7)+, d0
0x0000206e   2                     3c07  move.w d7, d6
0x00002070   4                 0246000f  andi.w 0xf, d6
0x00002074   4                 3d460006  move.w d6, 0x6(a6)
0x00002078   4                 024700f0  andi.w 0xf0, d7
0x0000207c   2                     e847  asr.w 0x4, d7
0x0000207e   4                 3d470008  move.w d7, 0x8(a6)
0x00002082   4                 6000012e  bra.w 0x21b2
0x00002086   4                 266dff3c  movea.l -0xc4(a5), a3
0x0000208a   4                 302b0014  move.w 0x14(a3), d0
0x0000208e   4                 322b0016  move.w 0x16(a3), d1
0x00002092   4                 342e0004  move.w 0x4(a6), d2
0x00002096   4                 226e000a  movea.l 0xa(a6), a1
0x0000209a   4                 206dffa0  movea.l -0x60(a5), a0
0x0000209e   4                 d06e0006  add.w 0x6(a6), d0
0x000020a2   4                 d26e0008  add.w 0x8(a6), d1
0x000020a6   2                     5242  addq.w 0x1, d2
0x000020a8   4                 0c420003  cmpi.w 0x3, d2
0x000020ac   2                     6d04  blt.b 0x20b2
0x000020ae   4                 343c0001  move.w 0x1, d2
0x000020b2   4                 3d420004  move.w d2, 0x4(a6)
0x000020b6   2                     3c80  move.w d0, (a6)
0x000020b8   4                 3d410002  move.w d1, 0x2(a6)
0x000020bc   4                 4ebadf42  jsr 0x0(pc)
0x000020c0   4                 600000f0  bra.w 0x21b2
0x000020c4   2                     3016  move.w (a6), d0
0x000020c6   4                 322e0002  move.w 0x2(a6), d1
0x000020ca   4                 226e000a  movea.l 0xa(a6), a1
0x000020ce   4                 206dffa0  movea.l -0x60(a5), a0
0x000020d2   4                 4a6e0016  tst.w 0x16(a6)
0x000020d6   4                 6e0000ba  bgt.w 0x2192
0x000020da   4                 6d00008e  blt.w 0x216a
0x000020de   4                 286dff3c  movea.l -0xc4(a5), a4
0x000020e2   4                 246c0008  movea.l 0x8(a4), a2
0x000020e6   4                 343c0004  move.w 0x4, d2
0x000020ea   4                 4eba1e80  jsr 0x3f6c(pc)
0x000020ee   2                     4a47  tst.w d7
0x000020f0   2                     6756  beq.b 0x2148
0x000020f2   2                     6d0c  blt.b 0x2100
0x000020f4   2                     4847  swap d7
0x000020f6   4                 3a327004  move.w 0x4(a2, d7.w), d5
0x000020fa   4                 0c450016  cmpi.w 0x16, d5
0x000020fe   2                     6608  bne.b 0x2108
0x00002100   4                 42aefffc  clr.l -0x4(a6)
0x00002104   4                 600000ee  bra.w 0x21f4
0x00002108   4                 0c45000e  cmpi.w 0xe, d5
0x0000210c   2                     6614  bne.b 0x2122
0x0000210e   6             3d7cffff0016  move.w 0xffff, 0x16(a6)
0x00002114   4                 2d4a000e  move.l a2, 0xe(a6)
0x00002118   4                 3d470012  move.w d7, 0x12(a6)
0x0000211c   4                 3d410002  move.w d1, 0x2(a6)
0x00002120   2                     6048  bra.b 0x216a
0x00002122   4                 0c45000f  cmpi.w 0xf, d5
0x00002126   2                     6614  bne.b 0x213c
0x00002128   6             3d7cfffe0016  move.w 0xfffe, 0x16(a6)
0x0000212e   4                 2d4a000e  move.l a2, 0xe(a6)
0x00002132   4                 3d470012  move.w d7, 0x12(a6)
0x00002136   4                 3d410002  move.w d1, 0x2(a6)
0x0000213a   2                     602e  bra.b 0x216a
0x0000213c   6             3d7c00020016  move.w 0x2, 0x16(a6)
0x00002142   4                 3d410002  move.w d1, 0x2(a6)
0x00002146   2                     604a  bra.b 0x2192
0x00002148   4                 0641001e  addi.w 0x1e, d1
0x0000214c   2                     4242  clr.w d2
0x0000214e   4                 0c410136  cmpi.w 0x136, d1
0x00002152   2                     6d08  blt.b 0x215c
0x00002154   4                 42aefffc  clr.l -0x4(a6)
0x00002158   4                 6000009a  bra.w 0x21f4
0x0000215c   4                 4ebadea2  jsr 0x0(pc)
0x00002160   6             066e000f0002  addi.w 0xf, 0x2(a6)
0x00002166   4                 6000008c  bra.w 0x21f4
0x0000216a   6             0c6efffe0016  cmpi.w 0xfffe, 0x16(a6)
0x00002170   2                     671e  beq.b 0x2190
0x00002172   4                 246e000e  movea.l 0xe(a6), a2
0x00002176   4                 382e0012  move.w 0x12(a6), d4
0x0000217a   4                 4a724000  tst.w (a2, d4.w)
0x0000217e   2                     6e08  bgt.b 0x2188
0x00002180   4                 42aefffc  clr.l -0x4(a6)
0x00002184   4                 6000006e  bra.w 0x21f4
0x00002188   4                 d072400c  add.w 0xc(a2, d4.w), d0
0x0000218c   2                     3c80  move.w d0, (a6)
0x0000218e   2                     6002  bra.b 0x2192
0x00002190   2                     5456  addq.w 0x2, (a6)
0x00002192   4                 0641001e  addi.w 0x1e, d1
0x00002196   4                 343c0005  move.w 0x5, d2
0x0000219a   4                 4ebade64  jsr 0x0(pc)
0x0000219e   4                 536e0004  subq.w 0x1, 0x4(a6)
0x000021a2   4                 6e000050  bgt.w 0x21f4
0x000021a6   4                 42aefffc  clr.l -0x4(a6)
0x000021aa   4                 60000048  bra.w 0x21f4
0x000021ae   4                 4ebade50  jsr 0x0(pc)
0x000021b2   4                 41edff1c  lea.l -0xe4(a5), a0
0x000021b6   4                 4eba1c32  jsr 0x3dea(pc)
0x000021ba   2                     6738  beq.b 0x21f4
0x000021bc   4                 42a80008  clr.l 0x8(a0)
0x000021c0   2                     3f00  move.w d0, -(a7)
0x000021c2   4                 303c0055  move.w 0x55, d0
0x000021c6   4                 4ead0042  jsr 0x42(a5)
0x000021ca   2                     301f  move.w (a7)+, d0
0x000021cc   4                 4a6e0014  tst.w 0x14(a6)
0x000021d0   2                     6704  beq.b 0x21d6
0x000021d2   4                 536dfeda  subq.w 0x1, -0x126(a5)
0x000021d6   6             3d7c00010014  move.w 0x1, 0x14(a6)
0x000021dc   6             3d7c003c0004  move.w 0x3c, 0x4(a6)
0x000021e2   4                 426e0016  clr.w 0x16(a6)
0x000021e6   6             046e00140002  subi.w 0x14, 0x2(a6)
0x000021ec   4                 303c0006  move.w 0x6, d0
0x000021f0   4                 4eba1eaa  jsr 0x409c(pc)
0x000021f4   2                     4e75  rts
0x000021f6   4                 536e000e  subq.w 0x1, 0xe(a6)
0x000021fa   2                     6e0e  bgt.b 0x220a
0x000021fc   4                 4eba1f6a  jsr 0x4168(pc)
0x00002200   2                     3600  move.w d0, d3
0x00002202   6             3d7c000a000e  move.w 0xa, 0xe(a6)
0x00002208   2                     6004  bra.b 0x220e
0x0000220a   4                 363c7fff  move.w 0x7fff, d3
0x0000220e   2                     3016  move.w (a6), d0
0x00002210   4                 0440000a  subi.w 0xa, d0
0x00002214   4                 322e0002  move.w 0x2(a6), d1
0x00002218   4                 342e000a  move.w 0xa(a6), d2
0x0000221c   2                     6c74  bge.b 0x2292
0x0000221e   2                     5242  addq.w 0x1, d2
0x00002220   4                 3d42000a  move.w d2, 0xa(a6)
0x00002224   2                     4442  neg.w d2
0x00002226   6             082d0000ff3a  btst.b 0x0, -0xc6(a5)
0x0000222c   2                     671e  beq.b 0x224c
0x0000222e   4                 0c420014  cmpi.w 0x14, d2
0x00002232   2                     671e  beq.b 0x2252
0x00002234   2                     4a42  tst.w d2
0x00002236   2                     6e24  bgt.b 0x225c
0x00002238   4                 42aefffc  clr.l -0x4(a6)
0x0000223c   4                 206e0012  movea.l 0x12(a6), a0
0x00002240   4                 b0fc0000  cmpa.w 0x0, a0
0x00002244   2                     6716  beq.b 0x225c
0x00002246   4                 52680010  addq.w 0x1, 0x10(a0)
0x0000224a   2                     6010  bra.b 0x225c
0x0000224c   4                 b46e0016  cmp.w 0x16(a6), d2
0x00002250   2                     6604  bne.b 0x2256
0x00002252   2                     4242  clr.w d2
0x00002254   2                     601c  bra.b 0x2272
0x00002256   4                 0c420000  cmpi.w 0x0, d2
0x0000225a   2                     6706  beq.b 0x2262
0x0000225c   4                 343c0001  move.w 0x1, d2
0x00002260   2                     6010  bra.b 0x2272
0x00002262   4                 343c0002  move.w 0x2, d2
0x00002266   2                     41d6  lea.l (a6), a0
0x00002268   6             2e3c02000000  move.l 0x2000000, d7
0x0000226e   4                 4eba1bf4  jsr 0x3e64(pc)
0x00002272   4                 206dffa0  movea.l -0x60(a5), a0
0x00002276   4                 4a6e0004  tst.w 0x4(a6)
0x0000227a   2                     6e06  bgt.b 0x2282
0x0000227c   4                 226df698  movea.l -0x968(a5), a1
0x00002280   2                     6004  bra.b 0x2286
0x00002282   4                 226df69c  movea.l -0x964(a5), a1
0x00002286   4                 04410018  subi.w 0x18, d1
0x0000228a   4                 4ebadd74  jsr 0x0(pc)
0x0000228e   4                 6000019e  bra.w 0x242e
0x00002292   4                 0c4303e8  cmpi.w 0x3e8, d3
0x00002296   2                     6348  bls.b 0x22e0
0x00002298   4                 d06e0004  add.w 0x4(a6), d0
0x0000229c   4                 b06e0006  cmp.w 0x6(a6), d0
0x000022a0   2                     6e1c  bgt.b 0x22be
0x000022a2   4                 4a6e0004  tst.w 0x4(a6)
0x000022a6   2                     6e0c  bgt.b 0x22b4
0x000022a8   2                     3f00  move.w d0, -(a7)
0x000022aa   4                 303c0042  move.w 0x42, d0
0x000022ae   4                 4ead0042  jsr 0x42(a5)
0x000022b2   2                     301f  move.w (a7)+, d0
0x000022b4   6             3d7c00040004  move.w 0x4, 0x4(a6)
0x000022ba   4                 600000ce  bra.w 0x238a
0x000022be   4                 b06e0008  cmp.w 0x8(a6), d0
0x000022c2   2                     6d30  blt.b 0x22f4
0x000022c4   4                 4a6e0004  tst.w 0x4(a6)
0x000022c8   2                     6d0c  blt.b 0x22d6
0x000022ca   2                     3f00  move.w d0, -(a7)
0x000022cc   4                 303c0042  move.w 0x42, d0
0x000022d0   4                 4ead0042  jsr 0x42(a5)
0x000022d4   2                     301f  move.w (a7)+, d0
0x000022d6   6             3d7cfffc0004  move.w 0xfffc, 0x4(a6)
0x000022dc   4                 600000ac  bra.w 0x238a
0x000022e0   4                 446e0004  neg.w 0x4(a6)
0x000022e4   2                     3f00  move.w d0, -(a7)
0x000022e6   4                 303c0042  move.w 0x42, d0
0x000022ea   4                 4ead0042  jsr 0x42(a5)
0x000022ee   2                     301f  move.w (a7)+, d0
0x000022f0   4                 60000098  bra.w 0x238a
0x000022f4   4                 536e0010  subq.w 0x1, 0x10(a6)
0x000022f8   4                 6e000090  bgt.w 0x238a
0x000022fc   4                 b66e000c  cmp.w 0xc(a6), d3
0x00002300   4                 62000088  bhi.w 0x238a
0x00002304   4                 286dff3c  movea.l -0xc4(a5), a4
0x00002308   2                     3801  move.w d1, d4
0x0000230a   4                 0644fffa  addi.w 0xfffa, d4
0x0000230e   2                     ea44  asr.w 0x5, d4
0x00002310   4                 3a2c0016  move.w 0x16(a4), d5
0x00002314   4                 06450010  addi.w 0x10, d5
0x00002318   2                     ea45  asr.w 0x5, d5
0x0000231a   2                     ba44  cmp.w d4, d5
0x0000231c   4                 6600006c  bne.w 0x238a
0x00002320   4                 4a6e0004  tst.w 0x4(a6)
0x00002324   2                     6d0a  blt.b 0x2330
0x00002326   4                 b06c0014  cmp.w 0x14(a4), d0
0x0000232a   4                 6e00005e  bgt.w 0x238a
0x0000232e   2                     6008  bra.b 0x2338
0x00002330   4                 b06c0014  cmp.w 0x14(a4), d0
0x00002334   4                 6d000054  blt.w 0x238a
0x00002338   4                 48e7e000  movem.l d0-d2, -(a7)
0x0000233c   4                 0441000a  subi.w 0xa, d1
0x00002340   6             263cfffd8000  move.l 0xfffd8000, d3
0x00002346   4                 43edff14  lea.l -0xec(a5), a1
0x0000234a   4                 4a6e0004  tst.w 0x4(a6)
0x0000234e   2                     6e0e  bgt.b 0x235e
0x00002350   6             243cfff00000  move.l 0xfff00000, d2
0x00002356   2                     5b40  subq.w 0x5, d0
0x00002358   4                 206df6a0  movea.l -0x960(a5), a0
0x0000235c   2                     600c  bra.b 0x236a
0x0000235e   6             243c00100000  move.l 0x100000, d2
0x00002364   2                     5a40  addq.w 0x5, d0
0x00002366   4                 206df6a4  movea.l -0x95c(a5), a0
0x0000236a   6             283c00004000  move.l 0x4000, d4
0x00002370   4                 4ead02d2  jsr 0x2d2(a5)
0x00002374   2                     3f00  move.w d0, -(a7)
0x00002376   4                 303c003a  move.w 0x3a, d0
0x0000237a   4                 4ead0042  jsr 0x42(a5)
0x0000237e   2                     301f  move.w (a7)+, d0
0x00002380   6             3d7c00280010  move.w 0x28, 0x10(a6)
0x00002386   4                 4cdf0007  movem.l (a7)+, d0-d2
0x0000238a   4                 4a6e0004  tst.w 0x4(a6)
0x0000238e   2                     6e10  bgt.b 0x23a0
0x00002390   4                 43edf688  lea.l -0x978(a5), a1
0x00002394   2                     5342  subq.w 0x1, d2
0x00002396   2                     6c16  bge.b 0x23ae
0x00002398   4                 343c0002  move.w 0x2, d2
0x0000239c   2                     5342  subq.w 0x1, d2
0x0000239e   2                     600e  bra.b 0x23ae
0x000023a0   4                 43edf68c  lea.l -0x974(a5), a1
0x000023a4   2                     5342  subq.w 0x1, d2
0x000023a6   2                     6c06  bge.b 0x23ae
0x000023a8   4                 343c0002  move.w 0x2, d2
0x000023ac   2                     5342  subq.w 0x1, d2
0x000023ae   4                 286dff3c  movea.l -0xc4(a5), a4
0x000023b2   2                     3801  move.w d1, d4
0x000023b4   4                 0644fffa  addi.w 0xfffa, d4
0x000023b8   2                     ea44  asr.w 0x5, d4
0x000023ba   4                 3a2c0016  move.w 0x16(a4), d5
0x000023be   4                 06450010  addi.w 0x10, d5
0x000023c2   2                     ea45  asr.w 0x5, d5
0x000023c4   2                     ba44  cmp.w d4, d5
0x000023c6   2                     6602  bne.b 0x23ca
0x000023c8   2                     5089  addq.l 0x8, a1
0x000023ca   2                     2251  movea.l (a1), a1
0x000023cc   4                 206dffa0  movea.l -0x60(a5), a0
0x000023d0   4                 0640000a  addi.w 0xa, d0
0x000023d4   2                     3c80  move.w d0, (a6)
0x000023d6   4                 0440000a  subi.w 0xa, d0
0x000023da   4                 3d42000a  move.w d2, 0xa(a6)
0x000023de   4                 04410018  subi.w 0x18, d1
0x000023e2   4                 4ebadc1c  jsr 0x0(pc)
0x000023e6   4                 41edff1c  lea.l -0xe4(a5), a0
0x000023ea   4                 4eba19fe  jsr 0x3dea(pc)
0x000023ee   2                     673e  beq.b 0x242e
0x000023f0   4                 42a80008  clr.l 0x8(a0)
0x000023f4   6             082d0000ff3a  btst.b 0x0, -0xc6(a5)
0x000023fa   2                     6608  bne.b 0x2404
0x000023fc   6             3d6e0016000a  move.w 0x16(a6), 0xa(a6)
0x00002402   2                     6006  bra.b 0x240a
0x00002404   6             3d7c0014000a  move.w 0x14, 0xa(a6)
0x0000240a   4                 526e000a  addq.w 0x1, 0xa(a6)
0x0000240e   4                 446e000a  neg.w 0xa(a6)
0x00002412   2                     3f00  move.w d0, -(a7)
0x00002414   4                 303c0052  move.w 0x52, d0
0x00002418   4                 4ead0042  jsr 0x42(a5)
0x0000241c   2                     301f  move.w (a7)+, d0
0x0000241e   2                     41d6  lea.l (a6), a0
0x00002420   4                 4eba1a74  jsr 0x3e96(pc)
0x00002424   4                 303c0004  move.w 0x4, d0
0x00002428   4                 4eba1c72  jsr 0x409c(pc)
0x0000242c   2                     6014  bra.b 0x2442
0x0000242e   4                 41edfa14  lea.l -0x5ec(a5), a0
0x00002432   4                 4eba1af8  jsr 0x3f2c(pc)
0x00002436   4                 b0fc0000  cmpa.w 0x0, a0
0x0000243a   2                     6706  beq.b 0x2442
0x0000243c   4                 42aefffc  clr.l -0x4(a6)
0x00002440   2                     60d0  bra.b 0x2412
0x00002442   2                     4e75  rts
0x00002444   2                     3e00  move.w d0, d7
0x00002446   2                     7020  moveq 0x20, d0
0x00002448   2                     a31e  invalid
0x0000244a   4                 43fafdaa  lea.l 0x21f6(pc), a1
0x0000244e   4                 21490004  move.l a1, 0x4(a0)
0x00002452   4                 0647000a  addi.w 0xa, d7
0x00002456   4                 31470008  move.w d7, 0x8(a0)
0x0000245a   4                 06410010  addi.w 0x10, d1
0x0000245e   4                 3141000a  move.w d1, 0xa(a0)
0x00002462   4                 3144000c  move.w d4, 0xc(a0)
0x00002466   4                 3142000e  move.w d2, 0xe(a0)
0x0000246a   4                 31430010  move.w d3, 0x10(a0)
0x0000246e   4                 31460014  move.w d6, 0x14(a0)
0x00002472   4                 42680016  clr.w 0x16(a0)
0x00002476   4                 42680018  clr.w 0x18(a0)
0x0000247a   4                 42680012  clr.w 0x12(a0)
0x0000247e   4                 42a8001a  clr.l 0x1a(a0)
0x00002482   4                 3145001e  move.w d5, 0x1e(a0)
0x00002486   4                 20adfefe  move.l -0x102(a5), (a0)
0x0000248a   4                 2b48fefe  move.l a0, -0x102(a5)
0x0000248e   2                     4e75  rts
0x00002490   2                     3840  movea.w d0, a4
0x00002492   2                     7020  moveq 0x20, d0
0x00002494   2                     a31e  invalid
0x00002496   4                 43fa003c  lea.l 0x24d4(pc), a1
0x0000249a   4                 21490004  move.l a1, 0x4(a0)
0x0000249e   4                 314c0008  move.w a4, 0x8(a0)
0x000024a2   4                 3141000a  move.w d1, 0xa(a0)
0x000024a6   4                 3144000c  move.w d4, 0xc(a0)
0x000024aa   4                 3142000e  move.w d2, 0xe(a0)
0x000024ae   4                 31430010  move.w d3, 0x10(a0)
0x000024b2   4                 42680012  clr.w 0x12(a0)
0x000024b6   4                 11470013  move.b d7, 0x13(a0)
0x000024ba   4                 31460014  move.w d6, 0x14(a0)
0x000024be   4                 31470016  move.w d7, 0x16(a0)
0x000024c2   4                 31450018  move.w d5, 0x18(a0)
0x000024c6   4                 314a001e  move.w a2, 0x1e(a0)
0x000024ca   4                 20adfefe  move.l -0x102(a5), (a0)
0x000024ce   4                 2b48fefe  move.l a0, -0x102(a5)
0x000024d2   2                     4e75  rts
0x000024d4   4                 4a6e000a  tst.w 0xa(a6)
0x000024d8   4                 6b00006a  bmi.w 0x2544
0x000024dc   4                 4a6e0010  tst.w 0x10(a6)
0x000024e0   4                 6f000124  ble.w 0x2606
0x000024e4   4                 536e000a  subq.w 0x1, 0xa(a6)
0x000024e8   4                 6e00011c  bgt.w 0x2606
0x000024ec   4                 226df6a8  movea.l -0x958(a5), a1
0x000024f0   6             3d690002000a  move.w 0x2(a1), 0xa(a6)
0x000024f6   4                 e1ee000a  asl.w 0xa(a6)
0x000024fa   4                 e1ee000a  asl.w 0xa(a6)
0x000024fe   4                 446e000a  neg.w 0xa(a6)
0x00002502   2                     4242  clr.w d2
0x00002504   4                 322e0002  move.w 0x2(a6), d1
0x00002508   2                     5141  subq.w 0x8, d1
0x0000250a   4                 206dffa0  movea.l -0x60(a5), a0
0x0000250e   4                 4a6e0004  tst.w 0x4(a6)
0x00002512   2                     6d12  blt.b 0x2526
0x00002514   4                 226df6a8  movea.l -0x958(a5), a1
0x00002518   4                 0c56001e  cmpi.w 0x1e, (a6)
0x0000251c   2                     6d04  blt.b 0x2522
0x0000251e   2                     3016  move.w (a6), d0
0x00002520   2                     601a  bra.b 0x253c
0x00002522   2                     4240  clr.w d0
0x00002524   2                     6016  bra.b 0x253c
0x00002526   4                 226df6ac  movea.l -0x954(a5), a1
0x0000252a   4                 0c560200  cmpi.w 0x200, (a6)
0x0000252e   2                     6d08  blt.b 0x2538
0x00002530   2                     3016  move.w (a6), d0
0x00002532   4                 04400020  subi.w 0x20, d0
0x00002536   2                     6004  bra.b 0x253c
0x00002538   4                 303c01e0  move.w 0x1e0, d0
0x0000253c   4                 4ebadac2  jsr 0x0(pc)
0x00002540   4                 600000c4  bra.w 0x2606
0x00002544   4                 342e000a  move.w 0xa(a6), d2
0x00002548   2                     5242  addq.w 0x1, d2
0x0000254a   4                 3d42000a  move.w d2, 0xa(a6)
0x0000254e   2                     4442  neg.w d2
0x00002550   4                 322e0002  move.w 0x2(a6), d1
0x00002554   2                     5141  subq.w 0x8, d1
0x00002556   4                 206dffa0  movea.l -0x60(a5), a0
0x0000255a   4                 4a6e0004  tst.w 0x4(a6)
0x0000255e   2                     6d12  blt.b 0x2572
0x00002560   4                 226df6a8  movea.l -0x958(a5), a1
0x00002564   4                 0c56001e  cmpi.w 0x1e, (a6)
0x00002568   2                     6d04  blt.b 0x256e
0x0000256a   2                     3016  move.w (a6), d0
0x0000256c   2                     601a  bra.b 0x2588
0x0000256e   2                     4240  clr.w d0
0x00002570   2                     6016  bra.b 0x2588
0x00002572   4                 226df6ac  movea.l -0x954(a5), a1
0x00002576   4                 0c560200  cmpi.w 0x200, (a6)
0x0000257a   2                     6d08  blt.b 0x2584
0x0000257c   2                     3016  move.w (a6), d0
0x0000257e   4                 04400020  subi.w 0x20, d0
0x00002582   2                     6004  bra.b 0x2588
0x00002584   4                 303c01e0  move.w 0x1e0, d0
0x00002588   2                     e442  asr.w 0x2, d2
0x0000258a   4                 4ebada74  jsr 0x0(pc)
0x0000258e   2                     4a42  tst.w d2
0x00002590   2                     6e74  bgt.b 0x2606
0x00002592   2                     7020  moveq 0x20, d0
0x00002594   2                     a31e  invalid
0x00002596   4                 43fafc5e  lea.l 0x21f6(pc), a1
0x0000259a   4                 21490004  move.l a1, 0x4(a0)
0x0000259e   2                     700b  moveq 0xb, d0
0x000025a0   2                     244e  movea.l a6, a2
0x000025a2   2                     2248  movea.l a0, a1
0x000025a4   2                     5049  addq.w 0x8, a1
0x000025a6   2                     32da  move.w (a2)+, (a1)+
0x000025a8   4                 51c8fffc  dbra d0, 0x25a6
0x000025ac   6             0668000a0008  addi.w 0xa, 0x8(a0)
0x000025b2   6             06680018000a  addi.w 0x18, 0xa(a0)
0x000025b8   4                 42680016  clr.w 0x16(a0)
0x000025bc   4                 42680018  clr.w 0x18(a0)
0x000025c0   4                 42680012  clr.w 0x12(a0)
0x000025c4   4                 214e001a  move.l a6, 0x1a(a0)
0x000025c8   4                 20adfefe  move.l -0x102(a5), (a0)
0x000025cc   4                 2b48fefe  move.l a0, -0x102(a5)
0x000025d0   2                     3f00  move.w d0, -(a7)
0x000025d2   4                 303c003c  move.w 0x3c, d0
0x000025d6   4                 4ead0042  jsr 0x42(a5)
0x000025da   2                     301f  move.w (a7)+, d0
0x000025dc   4                 41e80008  lea.l 0x8(a0), a0
0x000025e0   6             2e3c02000000  move.l 0x2000000, d7
0x000025e6   4                 4eba187c  jsr 0x3e64(pc)
0x000025ea   4                 536e0010  subq.w 0x1, 0x10(a6)
0x000025ee   4                 4eba1b78  jsr 0x4168(pc)
0x000025f2   4                 1c2e000e  move.b 0xe(a6), d6
0x000025f6   2                     4886  ext.w d6
0x000025f8   4                 1e2e000f  move.b 0xf(a6), d7
0x000025fc   2                     4886  ext.w d6
0x000025fe   2                     c046  and.w d6, d0
0x00002600   2                     d047  add.w d7, d0
0x00002602   4                 3d40000a  move.w d0, 0xa(a6)
0x00002606   2                     4e75  rts
0x00002608   2                     2448  movea.l a0, a2
0x0000260a   2                     2649  movea.l a1, a3
0x0000260c   2                     703c  moveq 0x3c, d0
0x0000260e   2                     a31e  invalid
0x00002610   4                 43fa00d0  lea.l 0x26e2(pc), a1
0x00002614   4                 21490004  move.l a1, 0x4(a0)
0x00002618   2                     7005  moveq 0x5, d0
0x0000261a   2                     2248  movea.l a0, a1
0x0000261c   2                     5049  addq.w 0x8, a1
0x0000261e   2                     32da  move.w (a2)+, (a1)+
0x00002620   4                 51c8fffc  dbra d0, 0x261e
0x00002624   4                 42680014  clr.w 0x14(a0)
0x00002628   6             317c00020018  move.w 0x2, 0x18(a0)
0x0000262e   6             31680012003a  move.w 0x12(a0), 0x3a(a0)
0x00002634   4                 214b001e  move.l a3, 0x1e(a0)
0x00002638   6             31680008002a  move.w 0x8(a0), 0x2a(a0)
0x0000263e   6             3168000a002c  move.w 0xa(a0), 0x2c(a0)
0x00002644   4                 4268002e  clr.w 0x2e(a0)
0x00002648   6             317c000a0034  move.w 0xa, 0x34(a0)
0x0000264e   6             317c000f0036  move.w 0xf, 0x36(a0)
0x00002654   2                     2648  movea.l a0, a3
0x00002656   4                 48e700c0  movem.l a0-a1, -(a7)
0x0000265a   4                 41edfa0c  lea.l -0x5f4(a5), a0
0x0000265e   4                 43eb0022  lea.l 0x22(a3), a1
0x00002662   4                 23480004  move.l a0, 0x4(a1)
0x00002666   2                     2290  move.l (a0), (a1)
0x00002668   2                     2089  move.l a1, (a0)
0x0000266a   2                     2051  movea.l (a1), a0
0x0000266c   4                 b0fc0000  cmpa.w 0x0, a0
0x00002670   2                     6704  beq.b 0x2676
0x00002672   4                 21490004  move.l a1, 0x4(a0)
0x00002676   4                 4cdf0300  movem.l (a7)+, a0-a1
0x0000267a   4                 20adfefe  move.l -0x102(a5), (a0)
0x0000267e   4                 2b48fefe  move.l a0, -0x102(a5)
0x00002682   2                     4e75  rts
0x00002684   2                     2448  movea.l a0, a2
0x00002686   2                     701c  moveq 0x1c, d0
0x00002688   2                     a31e  invalid
0x0000268a   4                 43fa002c  lea.l 0x26b8(pc), a1
0x0000268e   4                 21490004  move.l a1, 0x4(a0)
0x00002692   2                     7008  moveq 0x8, d0
0x00002694   2                     2248  movea.l a0, a1
0x00002696   2                     5049  addq.w 0x8, a1
0x00002698   2                     32da  move.w (a2)+, (a1)+
0x0000269a   4                 51c8fffc  dbra d0, 0x2698
0x0000269e   4                 4eba1ac8  jsr 0x4168(pc)
0x000026a2   4                 c0680016  and.w 0x16(a0), d0
0x000026a6   4                 d0680014  add.w 0x14(a0), d0
0x000026aa   4                 3140001a  move.w d0, 0x1a(a0)
0x000026ae   4                 20adfefe  move.l -0x102(a5), (a0)
0x000026b2   4                 2b48fefe  move.l a0, -0x102(a5)
0x000026b6   2                     4e75  rts
0x000026b8   4                 4a6e0010  tst.w 0x10(a6)
0x000026bc   2                     6f22  ble.b 0x26e0
0x000026be   4                 536e0012  subq.w 0x1, 0x12(a6)
0x000026c2   2                     6e1c  bgt.b 0x26e0
0x000026c4   4                 536e0010  subq.w 0x1, 0x10(a6)
0x000026c8   2                     204e  movea.l a6, a0
0x000026ca   2                     224e  movea.l a6, a1
0x000026cc   4                 4ebaff3a  jsr 0x2608(pc)
0x000026d0   4                 4eba1a96  jsr 0x4168(pc)
0x000026d4   4                 c06e000e  and.w 0xe(a6), d0
0x000026d8   4                 d06e000c  add.w 0xc(a6), d0
0x000026dc   4                 3d400012  move.w d0, 0x12(a6)
0x000026e0   2                     4e75  rts
0x000026e2   2                     3016  move.w (a6), d0
0x000026e4   4                 322e0002  move.w 0x2(a6), d1
0x000026e8   4                 206dffa0  movea.l -0x60(a5), a0
0x000026ec   4                 34280012  move.w 0x12(a0), d2
0x000026f0   4                 04420020  subi.w 0x20, d2
0x000026f4   2                     b440  cmp.w d0, d2
0x000026f6   4                 6e0002c4  bgt.w 0x29bc
0x000026fa   4                 06420220  addi.w 0x220, d2
0x000026fe   2                     b440  cmp.w d0, d2
0x00002700   4                 6d0002ba  blt.w 0x29bc
0x00002704   4                 3e2e000c  move.w 0xc(a6), d7
0x00002708   4                 4efb7002  jmp 0x270c(pc, d7.w)
0x0000270c   4                 4efa01f0  jmp 0x28fe(pc)
0x00002710   4                 4efa0174  jmp 0x2886(pc)
0x00002714   4                 4efa01a8  jmp 0x28be(pc)
0x00002718   4                 4efa00b8  jmp 0x27d2(pc)
0x0000271c   2                     3f00  move.w d0, -(a7)
0x0000271e   4                 4eba1a48  jsr 0x4168(pc)
0x00002722   2                     3e00  move.w d0, d7
0x00002724   2                     301f  move.w (a7)+, d0
0x00002726   4                 02477fff  andi.w 0x7fff, d7
0x0000272a   4                 536e0032  subq.w 0x1, 0x32(a6)
0x0000272e   2                     6e68  bgt.b 0x2798
0x00002730   6             3d6e000a0032  move.w 0xa(a6), 0x32(a6)
0x00002736   4                 286dff3c  movea.l -0xc4(a5), a4
0x0000273a   2                     504c  addq.w 0x8, a4
0x0000273c   6             0c6c00380012  cmpi.w 0x38, 0x12(a4)
0x00002742   2                     6654  bne.b 0x2798
0x00002744   6             0c6c013a000e  cmpi.w 0x13a, 0xe(a4)
0x0000274a   2                     6e52  bgt.b 0x279e
0x0000274c   4                 02470001  andi.w 0x1, d7
0x00002750   4                 df6e0032  add.w d7, 0x32(a6)
0x00002754   6             3d7c000c000c  move.w 0xc, 0xc(a6)
0x0000275a   2                     3f00  move.w d0, -(a7)
0x0000275c   4                 303c0044  move.w 0x44, d0
0x00002760   4                 4ead0042  jsr 0x42(a5)
0x00002764   2                     301f  move.w (a7)+, d0
0x00002766   4                 362c000c  move.w 0xc(a4), d3
0x0000276a   2                     9640  sub.w d0, d3
0x0000276c   4                 382c000e  move.w 0xe(a4), d4
0x00002770   2                     9841  sub.w d1, d4
0x00002772   2                     3a03  move.w d3, d5
0x00002774   2                     6e02  bgt.b 0x2778
0x00002776   2                     4445  neg.w d5
0x00002778   2                     3c04  move.w d4, d6
0x0000277a   2                     6e02  bgt.b 0x277e
0x0000277c   2                     4446  neg.w d6
0x0000277e   2                     dc45  add.w d5, d6
0x00002780   2                     eb43  asl.w 0x5, d3
0x00002782   2                     eb44  asl.w 0x5, d4
0x00002784   2                     48c3  ext.l d3
0x00002786   2                     48c4  ext.l d4
0x00002788   2                     87c6  divs.w d6, d3
0x0000278a   2                     89c6  divs.w d6, d4
0x0000278c   4                 3d430012  move.w d3, 0x12(a6)
0x00002790   2                     5d44  subq.w 0x6, d4
0x00002792   4                 3d440014  move.w d4, 0x14(a6)
0x00002796   2                     6032  bra.b 0x27ca
0x00002798   4                 0c474e20  cmpi.w 0x4e20, d7
0x0000279c   2                     6d14  blt.b 0x27b2
0x0000279e   6             3d7c0004000c  move.w 0x4, 0xc(a6)
0x000027a4   2                     3f00  move.w d0, -(a7)
0x000027a6   4                 303c0044  move.w 0x44, d0
0x000027aa   4                 4ead0042  jsr 0x42(a5)
0x000027ae   2                     301f  move.w (a7)+, d0
0x000027b0   2                     6018  bra.b 0x27ca
0x000027b2   4                 0c472710  cmpi.w 0x2710, d7
0x000027b6   2                     6d04  blt.b 0x27bc
0x000027b8   4                 446e0008  neg.w 0x8(a6)
0x000027bc   4                 02470007  andi.w 0x7, d7
0x000027c0   2                     5647  addq.w 0x3, d7
0x000027c2   4                 3d470010  move.w d7, 0x10(a6)
0x000027c6   4                 426e000c  clr.w 0xc(a6)
0x000027ca   4                 426e000e  clr.w 0xe(a6)
0x000027ce   4                 60000188  bra.w 0x2958
0x000027d2   4                 3e2e0012  move.w 0x12(a6), d7
0x000027d6   2                     6e12  bgt.b 0x27ea
0x000027d8   4                 be6e0014  cmp.w 0x14(a6), d7
0x000027dc   2                     6d06  blt.b 0x27e4
0x000027de   4                 45fa008a  lea.l 0x286a(pc), a2
0x000027e2   2                     6018  bra.b 0x27fc
0x000027e4   4                 45fa008b  lea.l 0x2871(pc), a2
0x000027e8   2                     6012  bra.b 0x27fc
0x000027ea   2                     4447  neg.w d7
0x000027ec   4                 be6e0014  cmp.w 0x14(a6), d7
0x000027f0   2                     6d06  blt.b 0x27f8
0x000027f2   4                 45fa0084  lea.l 0x2878(pc), a2
0x000027f6   2                     6004  bra.b 0x27fc
0x000027f8   4                 45fa0085  lea.l 0x287f(pc), a2
0x000027fc   4                 226df7a4  movea.l -0x85c(a5), a1
0x00002800   4                 362e000e  move.w 0xe(a6), d3
0x00002804   4                 14323000  move.b (a2, d3.w), d2
0x00002808   2                     5243  addq.w 0x1, d3
0x0000280a   4                 3d43000e  move.w d3, 0xe(a6)
0x0000280e   2                     4882  ext.w d2
0x00002810   2                     6c0a  bge.b 0x281c
0x00002812   2                     4242  clr.w d2
0x00002814   4                 4ebad7ea  jsr 0x0(pc)
0x00002818   4                 6000ff02  bra.w 0x271c
0x0000281c   4                 0c420040  cmpi.w 0x40, d2
0x00002820   2                     6d40  blt.b 0x2862
0x00002822   4                 0242003f  andi.w 0x3f, d2
0x00002826   4                 48e7e0c0  movem.l d0-d2/a0-a1, -(a7)
0x0000282a   4                 0c420020  cmpi.w 0x20, d2
0x0000282e   2                     6d04  blt.b 0x2834
0x00002830   4                 06400018  addi.w 0x18, d0
0x00002834   4                 342e0012  move.w 0x12(a6), d2
0x00002838   4                 362e0014  move.w 0x14(a6), d3
0x0000283c   2                     d042  add.w d2, d0
0x0000283e   2                     d243  add.w d3, d1
0x00002840   2                     4842  swap d2
0x00002842   2                     4242  clr.w d2
0x00002844   2                     4843  swap d3
0x00002846   2                     4243  clr.w d3
0x00002848   6             283c0000aaaa  move.l 0xaaaa, d4
0x0000284e   4                 206df424  movea.l -0xbdc(a5), a0
0x00002852   4                 43edff14  lea.l -0xec(a5), a1
0x00002856   4                 4ead02d2  jsr 0x2d2(a5)
0x0000285a   4                 4cdf0307  movem.l (a7)+, d0-d2/a0-a1
0x0000285e   4                 0242001f  andi.w 0x1f, d2
0x00002862   4                 4ebad79c  jsr 0x0(pc)
0x00002866   4                 600000f0  bra.w 0x2958
0x0000286a   4                 00000101  ori.b 0x1, d0
0x0000286e   2                     4303  invalid
0x00002870   2                     ff00  invalid
0x00002872   4                 00010142  ori.b 0x42, d1
0x00002876   4                 02ff0000  
0x0000287a   4                 04046606  subi.b 0x6, d4
0x0000287e   2                     ff00  invalid
0x00002880   4                 00040465  ori.b 0x65, d4
0x00002884   4                 05ff362e  
0x00002888   4                 000e143b  
0x0000288c   2                     301e  move.w (a6)+, d0
0x0000288e   2                     4882  ext.w d2
0x00002890   4                 226df79c  movea.l -0x864(a5), a1
0x00002894   4                 4ebad76a  jsr 0x0(pc)
0x00002898   2                     5243  addq.w 0x1, d3
0x0000289a   4                 3d43000e  move.w d3, 0xe(a6)
0x0000289e   4                 143b300a  move.b 0x28aa(pc, d3.w), d2
0x000028a2   4                 6d00fe78  blt.w 0x271c
0x000028a6   4                 600000b0  bra.w 0x2958
0x000028aa   4                 00010001  ori.b 0x1, d1
0x000028ae   4                 00010203  ori.b 0x3, d1
0x000028b2   4                 02010000  andi.b 0x0, d1
0x000028b6   4                 02030201  andi.b 0x1, d3
0x000028ba   4                 0000ff00  ori.b 0x0, d0
0x000028be   4                 362e000e  move.w 0xe(a6), d3
0x000028c2   4                 143b3030  move.b 0x28f4(pc, d3.w), d2
0x000028c6   2                     4882  ext.w d2
0x000028c8   4                 226df79c  movea.l -0x864(a5), a1
0x000028cc   4                 4ebad732  jsr 0x0(pc)
0x000028d0   2                     5243  addq.w 0x1, d3
0x000028d2   4                 3d43000e  move.w d3, 0xe(a6)
0x000028d6   4                 143b301c  move.b 0x28f4(pc, d3.w), d2
0x000028da   4                 6c0000d2  bge.w 0x29ae
0x000028de   4                 206e0016  movea.l 0x16(a6), a0
0x000028e2   4                 b0fc0000  cmpa.w 0x0, a0
0x000028e6   2                     6704  beq.b 0x28ec
0x000028e8   4                 52680010  addq.w 0x1, 0x10(a0)
0x000028ec   4                 42aefffc  clr.l -0x4(a6)
0x000028f0   4                 600000ca  bra.w 0x29bc
0x000028f4   4                 04040505  subi.b 0x5, d4
0x000028f8   4                 06070809  addi.b 0x9, d7
0x000028fc   2                     ff00  invalid
0x000028fe   4                 d06e0008  add.w 0x8(a6), d0
0x00002902   4                 4a6e0008  tst.w 0x8(a6)
0x00002906   2                     6e0c  bgt.b 0x2914
0x00002908   4                 47fa0044  lea.l 0x294e(pc), a3
0x0000290c   4                 b06e0004  cmp.w 0x4(a6), d0
0x00002910   2                     6f36  ble.b 0x2948
0x00002912   2                     600a  bra.b 0x291e
0x00002914   4                 47fa003d  lea.l 0x2953(pc), a3
0x00002918   4                 b06e0006  cmp.w 0x6(a6), d0
0x0000291c   2                     6c2a  bge.b 0x2948
0x0000291e   4                 362e000e  move.w 0xe(a6), d3
0x00002922   4                 14333000  move.b (a3, d3.w), d2
0x00002926   2                     4882  ext.w d2
0x00002928   2                     6c04  bge.b 0x292e
0x0000292a   2                     4243  clr.w d3
0x0000292c   2                     60f4  bra.b 0x2922
0x0000292e   4                 226df7a0  movea.l -0x860(a5), a1
0x00002932   4                 4ebad6cc  jsr 0x0(pc)
0x00002936   2                     5243  addq.w 0x1, d3
0x00002938   4                 3d43000e  move.w d3, 0xe(a6)
0x0000293c   4                 536e0010  subq.w 0x1, 0x10(a6)
0x00002940   4                 6d00fdda  blt.w 0x271c
0x00002944   4                 60000012  bra.w 0x2958
0x00002948   4                 446e0008  neg.w 0x8(a6)
0x0000294c   2                     60b0  bra.b 0x28fe
0x0000294e   4                 00010203  ori.b 0x3, d1
0x00002952   2                     ff04  invalid
0x00002954   2                     0506  btst.l d2, d6
0x00002956   4                 07ff48a7  
0x0000295a   2                     c000  and.b d0, d0
0x0000295c   4                 41edff1c  lea.l -0xe4(a5), a0
0x00002960   4                 4eba1488  jsr 0x3dea(pc)
0x00002964   2                     6740  beq.b 0x29a6
0x00002966   4                 42a80008  clr.l 0x8(a0)
0x0000296a   2                     3f00  move.w d0, -(a7)
0x0000296c   4                 303c0043  move.w 0x43, d0
0x00002970   4                 4ead0042  jsr 0x42(a5)
0x00002974   2                     301f  move.w (a7)+, d0
0x00002976   4                 303c0010  move.w 0x10, d0
0x0000297a   4                 4eba1720  jsr 0x409c(pc)
0x0000297e   4                 48e700c0  movem.l a0-a1, -(a7)
0x00002982   4                 43ee001a  lea.l 0x1a(a6), a1
0x00002986   4                 20690004  movea.l 0x4(a1), a0
0x0000298a   2                     2251  movea.l (a1), a1
0x0000298c   2                     2089  move.l a1, (a0)
0x0000298e   4                 b2fc0000  cmpa.w 0x0, a1
0x00002992   2                     6704  beq.b 0x2998
0x00002994   4                 23480004  move.l a0, 0x4(a1)
0x00002998   4                 4cdf0300  movem.l (a7)+, a0-a1
0x0000299c   6             3d7c0008000c  move.w 0x8, 0xc(a6)
0x000029a2   4                 426e000e  clr.w 0xe(a6)
0x000029a6   4                 4c9f0003  movem.w (a7)+, d0-d1
0x000029aa   4                 60000002  bra.w 0x29ae
0x000029ae   2                     3c80  move.w d0, (a6)
0x000029b0   4                 3d410002  move.w d1, 0x2(a6)
0x000029b4   4                 3d400022  move.w d0, 0x22(a6)
0x000029b8   4                 3d410024  move.w d1, 0x24(a6)
0x000029bc   2                     4e75  rts
0x000029be   4                 48e7fffa  movem.l d0-d7/a0-a4/a6, -(a7)
0x000029c2   4                 4ead0162  jsr 0x162(a5)
0x000029c6   4                 51edff93  sf.b -0x6d(a5)
0x000029ca   4                 4ead0152  jsr 0x152(a5)
0x000029ce   4                 51edfefd  sf.b -0x103(a5)
0x000029d2   4                 426dfefa  clr.w -0x106(a5)
0x000029d6   4                 4a2dff87  tst.b -0x79(a5)
0x000029da   2                     6704  beq.b 0x29e0
0x000029dc   4                 4ead074a  jsr 0x74a(a5)
0x000029e0   4                 47edfefe  lea.l -0x102(a5), a3
0x000029e4   2                     2853  movea.l (a3), a4
0x000029e6   4                 246c0004  movea.l 0x4(a4), a2
0x000029ea   4                 b4fc0000  cmpa.w 0x0, a2
0x000029ee   4                 67000038  beq.w 0x2a28
0x000029f2   4                 4dec0008  lea.l 0x8(a4), a6
0x000029f6   4                 48e70018  movem.l a3-a4, -(a7)
0x000029fa   2                     4e92  jsr (a2)
0x000029fc   4                 4cdf1800  movem.l (a7)+, a3-a4
0x00002a00   2                     264c  movea.l a4, a3
0x00002a02   2                     2854  movea.l (a4), a4
0x00002a04   4                 b8fc0000  cmpa.w 0x0, a4
0x00002a08   2                     66dc  bne.b 0x29e6
0x00002a0a   4                 4ebade1a  jsr 0x826(pc)
0x00002a0e   4                 4a2dfefd  tst.b -0x103(a5)
0x00002a12   2                     67c2  beq.b 0x29d6
0x00002a14   4                 266dfefe  movea.l -0x102(a5), a3
0x00002a18   4                 b6fc0000  cmpa.w 0x0, a3
0x00002a1c   2                     671a  beq.b 0x2a38
0x00002a1e   2                     2853  movea.l (a3), a4
0x00002a20   2                     204b  movea.l a3, a0
0x00002a22   2                     a01f  invalid
0x00002a24   2                     264c  movea.l a4, a3
0x00002a26   2                     60f0  bra.b 0x2a18
0x00002a28   2                     2694  move.l (a4), (a3)
0x00002a2a   2                     244b  movea.l a3, a2
0x00002a2c   2                     264c  movea.l a4, a3
0x00002a2e   2                     2854  movea.l (a4), a4
0x00002a30   2                     204b  movea.l a3, a0
0x00002a32   2                     a01f  invalid
0x00002a34   2                     264a  movea.l a2, a3
0x00002a36   2                     60cc  bra.b 0x2a04
0x00002a38   4                 4ead005a  jsr 0x5a(a5)
0x00002a3c   4                 4ead015a  jsr 0x15a(a5)
0x00002a40   4                 42adfefe  clr.l -0x102(a5)
0x00002a44   4                 4cdf5fff  movem.l (a7)+, d0-d7/a0-a4/a6
0x00002a48   2                     4e75  rts
0x00002a4a   4                 48e71f3a  movem.l d3-d7/a2-a4/a6, -(a7)
0x00002a4e   6             31fcffff0144  move.w 0xffff, 0x144.w
0x00002a54   4                 302dfea6  move.w -0x15a(a5), d0
0x00002a58   4                 6b0000d4  bmi.w 0x2b2e
0x00002a5c   6             0c6d0002fe9c  cmpi.w 0x2, -0x164(a5)
0x00002a62   2                     660c  bne.b 0x2a70
0x00002a64   4                 3e2dfe96  move.w -0x16a(a5), d7
0x00002a68   4                 be6dfe94  cmp.w -0x16c(a5), d7
0x00002a6c   4                 6f0000c0  ble.w 0x2b2e
0x00002a70   4                 b06dfea8  cmp.w -0x158(a5), d0
0x00002a74   4                 56edfeb5  sne.b -0x14b(a5)
0x00002a78   6             3b7cfffffea6  move.w 0xffff, -0x15a(a5)
0x00002a7e   4                 3b40fea8  move.w d0, -0x158(a5)
0x00002a82   4                 302dfea8  move.w -0x158(a5), d0
0x00002a86   2                     e740  asl.w 0x3, d0
0x00002a88   4                 4ebb0028  jsr 0x2ab2(pc, d0.w)
0x00002a8c   2                     2f08  move.l a0, -(a7)
0x00002a8e   2                     4e90  jsr (a0)
0x00002a90   2                     a9f1  invalid
0x00002a92   4                 4a2dfe9f  tst.b -0x161(a5)
0x00002a96   2                     6712  beq.b 0x2aaa
0x00002a98   4                 4a6dfea6  tst.w -0x15a(a5)
0x00002a9c   4                 6b00000c  bmi.w 0x2aaa
0x00002aa0   6             3b6dfea8fea6  move.w -0x158(a5), -0x15a(a5)
0x00002aa6   4                 426dfea4  clr.w -0x15c(a5)
0x00002aaa   2                     60a8  bra.b 0x2a54
0x00002aac   4                 00000000  ori.b 0x0, d0
0x00002ab0   4                 000041ed  ori.b 0xed, d0
0x00002ab4   2                     0712  btst.l d3, (a2)
0x00002ab6   2                     4e75  rts
0x00002ab8   4                 000041ed  ori.b 0xed, d0
0x00002abc   2                     0782  bclr.b d3, d2
0x00002abe   2                     4e75  rts
0x00002ac0   4                 000041ed  ori.b 0xed, d0
0x00002ac4   8         06aa4e75000041ed  addi.l 0x4e750000, 0x41ed(a2)
0x00002acc   4                 06624e75  addi.w 0x4e75, -(a2)
0x00002ad0   4                 000041ed  ori.b 0xed, d0
0x00002ad4   2                     0762  bchg.b d3, -(a2)
0x00002ad6   2                     4e75  rts
0x00002ad8   4                 000041ed  ori.b 0xed, d0
0x00002adc   4                 076a4e75  bchg.b d3, 0x4e75(a2)
0x00002ae0   4                 000041ed  ori.b 0xed, d0
0x00002ae4   2                     0702  btst.l d3, d2
0x00002ae6   2                     4e75  rts
0x00002ae8   4                 000041ed  ori.b 0xed, d0
0x00002aec   4                 07324e75  btst.l d3, 0x75(a2, d4.l)
0x00002af0   4                 000041ed  ori.b 0xed, d0
0x00002af4   2                     075a  bchg.b d3, (a2)+
0x00002af6   2                     4e75  rts
0x00002af8   4                 000041ed  ori.b 0xed, d0
0x00002afc   4                 06ea4e75  
0x00002b00   4                 000041ed  ori.b 0xed, d0
0x00002b04   2                     06c2  invalid
0x00002b06   2                     4e75  rts
0x00002b08   4                 000041ed  ori.b 0xed, d0
0x00002b0c   4                 067a4e75  
0x00002b10   4                 000041ed  ori.b 0xed, d0
0x00002b14   4                 07724e75  bchg.b d3, 0x75(a2, d4.l)
0x00002b18   4                 000041ed  ori.b 0xed, d0
0x00002b1c   4                 077a4e75  
0x00002b20   4                 000041ed  ori.b 0xed, d0
0x00002b24   4                 068a4e75  
0x00002b28   4                 323c000f  move.w 0xf, d1
0x00002b2c   2                     600a  bra.b 0x2b38
0x00002b2e   6             31fcfffe0144  move.w 0xfffe, 0x144.w
0x00002b34   4                 4cdf5cf8  movem.l (a7)+, d3-d7/a2-a4/a6
0x00002b38   2                     4e75  rts
0x00002b3a   4                 3f2dfea8  move.w -0x158(a5), -(a7)
0x00002b3e   4                 4ead0052  jsr 0x52(a5)
0x00002b42   4                 42adfefe  clr.l -0x102(a5)
0x00002b46   4                 4eba00dc  jsr 0x2c24(pc)
0x00002b4a   4                 426dfec6  clr.w -0x13a(a5)
0x00002b4e   4                 42adff14  clr.l -0xec(a5)
0x00002b52   4                 42adff10  clr.l -0xf0(a5)
0x00002b56   4                 303c001e  move.w 0x1e, d0
0x00002b5a   4                 4eba1302  jsr 0x3e5e(pc)
0x00002b5e   4                 426dfeda  clr.w -0x126(a5)
0x00002b62   4                 42adff8e  clr.l -0x72(a5)
0x00002b66   4                 4eba1464  jsr 0x3fcc(pc)
0x00002b6a   4                 4eba02dc  jsr 0x2e48(pc)
0x00002b6e   6             3b7cfff7ff38  move.w 0xfff7, -0xc8(a5)
0x00002b74   6             3b7c01f3ff36  move.w 0x1f3, -0xca(a5)
0x00002b7a   6             3b7cfffffebe  move.w 0xffff, -0x142(a5)
0x00002b80   6             3b7cfffffeb6  move.w 0xffff, -0x14a(a5)
0x00002b86   4                 51edff27  sf.b -0xd9(a5)
0x00002b8a   4                 41edff28  lea.l -0xd8(a5), a0
0x00002b8e   4                 43fa005e  lea.l 0x2bee(pc), a1
0x00002b92   4                 4eba17a8  jsr 0x433c(pc)
0x00002b96   4                 41edff24  lea.l -0xdc(a5), a0
0x00002b9a   4                 43fa0066  lea.l 0x2c02(pc), a1
0x00002b9e   4                 4eba179c  jsr 0x433c(pc)
0x00002ba2   4                 41edfef8  lea.l -0x108(a5), a0
0x00002ba6   4                 43fa003c  lea.l 0x2be4(pc), a1
0x00002baa   4                 4eba1790  jsr 0x433c(pc)
0x00002bae   4                 41edff20  lea.l -0xe0(a5), a0
0x00002bb2   4                 43fa0044  lea.l 0x2bf8(pc), a1
0x00002bb6   4                 4eba1784  jsr 0x433c(pc)
0x00002bba   4                 41edff2a  lea.l -0xd6(a5), a0
0x00002bbe   4                 43fa004c  lea.l 0x2c0c(pc), a1
0x00002bc2   4                 4eba1778  jsr 0x433c(pc)
0x00002bc6   4                 42adfa0c  clr.l -0x5f4(a5)
0x00002bca   4                 42adfa10  clr.l -0x5f0(a5)
0x00002bce   4                 42adfa14  clr.l -0x5ec(a5)
0x00002bd2   4                 42adfa18  clr.l -0x5e8(a5)
0x00002bd6   4                 42adf9f4  clr.l -0x60c(a5)
0x00002bda   4                 4eba1664  jsr 0x4240(pc)
0x00002bde   4                 426dfe90  clr.w -0x170(a5)
0x00002be2   2                     4e75  rts
0x00002be4   4                 0002012a  ori.b 0x2a, d2
0x00002be8   4                 014c0131  movep.l 0x131(a4), d0
0x00002bec   2                     015a  bchg.b d0, (a2)+
0x00002bee   4                 0002013a  ori.b 0x3a, d2
0x00002bf2   4                 014c0141  movep.l 0x141(a4), d0
0x00002bf6   2                     015a  bchg.b d0, (a2)+
0x00002bf8   4                 0002012a  ori.b 0x2a, d2
0x00002bfc   2                     0198  bclr.b d0, (a0)+
0x00002bfe   8         013101a60002013a  btst.l d0, ([0x2], d0.w, 0x13a)
0x00002c06   2                     0198  bclr.b d0, (a0)+
0x00002c08   2                     0141  bchg.b d0, d1
0x00002c0a   2                     01a6  bclr.b d0, -(a6)
0x00002c0c   4                 0002014a  ori.b 0x4a, d2
0x00002c10   2                     0198  bclr.b d0, (a0)+
0x00002c12   2                     0151  bchg.b d0, (a1)
0x00002c14   2                     01a6  bclr.b d0, -(a6)
0x00002c16   6             203c00000100  move.l 0x100, d0
0x00002c1c   2                     a31e  invalid
0x00002c1e   4                 2b48ff0c  move.l a0, -0xf4(a5)
0x00002c22   2                     4e75  rts
0x00002c24   2                     7008  moveq 0x8, d0
0x00002c26   2                     a31e  invalid
0x00002c28   4                 43fa0010  lea.l 0x2c3a(pc), a1
0x00002c2c   4                 21490004  move.l a1, 0x4(a0)
0x00002c30   4                 20adfefe  move.l -0x102(a5), (a0)
0x00002c34   4                 2b48fefe  move.l a0, -0x102(a5)
0x00002c38   2                     4e75  rts
0x00002c3a   4                 4ead014a  jsr 0x14a(a5)
0x00002c3e   4                 4eba007a  jsr 0x2cba(pc)
0x00002c42   4                 42aefffc  clr.l -0x4(a6)
0x00002c46   2                     4e75  rts
0x00002c48   2                     3600  move.w d0, d3
0x00002c4a   2                     3801  move.w d1, d4
0x00002c4c   2                     2649  movea.l a1, a3
0x00002c4e   2                     7012  moveq 0x12, d0
0x00002c50   2                     a31e  invalid
0x00002c52   4                 43fa0020  lea.l 0x2c74(pc), a1
0x00002c56   4                 21490004  move.l a1, 0x4(a0)
0x00002c5a   4                 31430008  move.w d3, 0x8(a0)
0x00002c5e   4                 3144000a  move.w d4, 0xa(a0)
0x00002c62   4                 3142000c  move.w d2, 0xc(a0)
0x00002c66   4                 214b000e  move.l a3, 0xe(a0)
0x00002c6a   4                 20adfefe  move.l -0x102(a5), (a0)
0x00002c6e   4                 2b48fefe  move.l a0, -0x102(a5)
0x00002c72   2                     4e75  rts

0x00002c74   2                     3016  move.w (a6), d0
0x00002c76   4                 322e0002  move.w 0x2(a6), d1
0x00002c7a   4                 342e0004  move.w 0x4(a6), d2
0x00002c7e   4                 226e0006  movea.l 0x6(a6), a1
0x00002c82   4                 206dffa0  movea.l -0x60(a5), a0
0x00002c86   4                 4a2dff87  tst.b -0x79(a5)
0x00002c8a   2                     6728  beq.b 0x2cb4
0x00002c8c   4                 38280012  move.w 0x12(a0), d4
0x00002c90   4                 04440020  subi.w 0x20, d4
0x00002c94   2                     b044  cmp.w d4, d0
0x00002c96   2                     6d20  blt.b 0x2cb8
0x00002c98   4                 06440220  addi.w 0x220, d4
0x00002c9c   2                     b044  cmp.w d4, d0
0x00002c9e   2                     6e18  bgt.b 0x2cb8
0x00002ca0   4                 3a280014  move.w 0x14(a0), d5
0x00002ca4   4                 04450020  subi.w 0x20, d5
0x00002ca8   2                     b245  cmp.w d5, d1
0x00002caa   2                     6d0c  blt.b 0x2cb8
0x00002cac   4                 06450144  addi.w 0x144, d5
0x00002cb0   2                     b245  cmp.w d5, d1
0x00002cb2   2                     6e04  bgt.b 0x2cb8
0x00002cb4   4                 4ebad34a  jsr 0x0(pc)
0x00002cb8   2                     4e75  rts
0x00002cba   6             082d0000ff3a  btst.b 0x0, -0xc6(a5)
0x00002cc0   2                     6706  beq.b 0x2cc8
0x00002cc2   4                 4eba00b6  jsr 0x2d7a(pc)
0x00002cc6   2                     6004  bra.b 0x2ccc
0x00002cc8   4                 4eba00d6  jsr 0x2da0(pc)
0x00002ccc   6             082d0001ff3a  btst.b 0x1, -0xc6(a5)
0x00002cd2   2                     6706  beq.b 0x2cda
0x00002cd4   4                 4eba00f0  jsr 0x2dc6(pc)
0x00002cd8   2                     6004  bra.b 0x2cde
0x00002cda   4                 4eba0112  jsr 0x2dee(pc)
0x00002cde   6             082d0002ff3a  btst.b 0x2, -0xc6(a5)
0x00002ce4   2                     6706  beq.b 0x2cec
0x00002ce6   4                 4eba0046  jsr 0x2d2e(pc)
0x00002cea   2                     6004  bra.b 0x2cf0
0x00002cec   4                 4eba0066  jsr 0x2d54(pc)
0x00002cf0   4                 4eba0124  jsr 0x2e16(pc)
0x00002cf4   2                     4e75  rts
0x00002cf6   4                 01ee0015  bset.b d0, 0x15(a6)
0x00002cfa   4                 01edff3a  bset.b d0, -0xc6(a5)
0x00002cfe   2                     e540  asl.w 0x2, d0
0x00002d00   4                 4efb0002  jmp 0x2d04(pc, d0.w)
0x00002d04   4                 4efa0074  jmp 0x2d7a(pc)
0x00002d08   4                 4efa00bc  jmp 0x2dc6(pc)
0x00002d0c   4                 4efa0020  jmp 0x2d2e(pc)
0x00002d10   2                     4e75  rts
0x00002d12   4                 01ae0015  bclr.b d0, 0x15(a6)
0x00002d16   4                 01adff3a  bclr.b d0, -0xc6(a5)
0x00002d1a   2                     e540  asl.w 0x2, d0
0x00002d1c   4                 4efb0002  jmp 0x2d20(pc, d0.w)
0x00002d20   4                 4efa007e  jmp 0x2da0(pc)
0x00002d24   4                 4efa00c8  jmp 0x2dee(pc)
0x00002d28   4                 4efa002a  jmp 0x2d54(pc)
0x00002d2c   2                     4e75  rts
0x00002d2e   4                 303c01af  move.w 0x1af, d0
0x00002d32   4                 323c0140  move.w 0x140, d1
0x00002d36   2                     4242  clr.w d2
0x00002d38   4                 226df790  movea.l -0x870(a5), a1
0x00002d3c   4                 41edffea  lea.l -0x16(a5), a0
0x00002d40   4                 4ebad4f6  jsr 0x238(pc)
0x00002d44   4                 4a2dffa5  tst.b -0x5b(a5)
0x00002d48   2                     6708  beq.b 0x2d52
0x00002d4a   4                 41edffd4  lea.l -0x2c(a5), a0
0x00002d4e   4                 4ebad4e8  jsr 0x238(pc)
0x00002d52   2                     4e75  rts
0x00002d54   4                 303c01af  move.w 0x1af, d0
0x00002d58   4                 323c0140  move.w 0x140, d1
0x00002d5c   2                     4242  clr.w d2
0x00002d5e   4                 226df790  movea.l -0x870(a5), a1
0x00002d62   4                 41edffea  lea.l -0x16(a5), a0
0x00002d66   4                 4ebad570  jsr 0x2d8(pc)
0x00002d6a   4                 4a2dffa5  tst.b -0x5b(a5)
0x00002d6e   2                     6708  beq.b 0x2d78
0x00002d70   4                 41edffd4  lea.l -0x2c(a5), a0
0x00002d74   4                 4ebad562  jsr 0x2d8(pc)
0x00002d78   2                     4e75  rts
0x00002d7a   4                 303c01cd  move.w 0x1cd, d0
0x00002d7e   4                 323c0141  move.w 0x141, d1
0x00002d82   2                     4242  clr.w d2
0x00002d84   4                 226df78c  movea.l -0x874(a5), a1
0x00002d88   4                 41edffea  lea.l -0x16(a5), a0
0x00002d8c   4                 4ebad4aa  jsr 0x238(pc)
0x00002d90   4                 4a2dffa5  tst.b -0x5b(a5)
0x00002d94   2                     6708  beq.b 0x2d9e
0x00002d96   4                 41edffd4  lea.l -0x2c(a5), a0
0x00002d9a   4                 4ebad49c  jsr 0x238(pc)
0x00002d9e   2                     4e75  rts
0x00002da0   4                 303c01cd  move.w 0x1cd, d0
0x00002da4   4                 323c0141  move.w 0x141, d1
0x00002da8   2                     4242  clr.w d2
0x00002daa   4                 226df78c  movea.l -0x874(a5), a1
0x00002dae   4                 41edffea  lea.l -0x16(a5), a0
0x00002db2   4                 4ebad524  jsr 0x2d8(pc)
0x00002db6   4                 4a2dffa5  tst.b -0x5b(a5)
0x00002dba   2                     6708  beq.b 0x2dc4
0x00002dbc   4                 41edffd4  lea.l -0x2c(a5), a0
0x00002dc0   4                 4ebad516  jsr 0x2d8(pc)
0x00002dc4   2                     4e75  rts
0x00002dc6   4                 303c01ea  move.w 0x1ea, d0
0x00002dca   4                 323c0142  move.w 0x142, d1
0x00002dce   4                 343c0001  move.w 0x1, d2
0x00002dd2   4                 226df78c  movea.l -0x874(a5), a1
0x00002dd6   4                 41edffea  lea.l -0x16(a5), a0
0x00002dda   4                 4ebad45c  jsr 0x238(pc)
0x00002dde   4                 4a2dffa5  tst.b -0x5b(a5)
0x00002de2   2                     6708  beq.b 0x2dec
0x00002de4   4                 41edffd4  lea.l -0x2c(a5), a0
0x00002de8   4                 4ebad44e  jsr 0x238(pc)
0x00002dec   2                     4e75  rts
0x00002dee   4                 303c01ea  move.w 0x1ea, d0
0x00002df2   4                 323c0142  move.w 0x142, d1
0x00002df6   4                 343c0001  move.w 0x1, d2
0x00002dfa   4                 226df78c  movea.l -0x874(a5), a1
0x00002dfe   4                 41edffea  lea.l -0x16(a5), a0
0x00002e02   4                 4ebad4d4  jsr 0x2d8(pc)
0x00002e06   4                 4a2dffa5  tst.b -0x5b(a5)
0x00002e0a   2                     6708  beq.b 0x2e14
0x00002e0c   4                 41edffd4  lea.l -0x2c(a5), a0
0x00002e10   4                 4ebad4c6  jsr 0x2d8(pc)
0x00002e14   2                     4e75  rts
0x00002e16   4                 303c01af  move.w 0x1af, d0
0x00002e1a   4                 323c012d  move.w 0x12d, d1
0x00002e1e   4                 342dfea2  move.w -0x15e(a5), d2
0x00002e22   4                 0c420002  cmpi.w 0x2, d2
0x00002e26   2                     6f04  ble.b 0x2e2c
0x00002e28   4                 343c0002  move.w 0x2, d2
0x00002e2c   4                 226df8c4  movea.l -0x73c(a5), a1
0x00002e30   4                 41edffea  lea.l -0x16(a5), a0
0x00002e34   4                 4ebad402  jsr 0x238(pc)
0x00002e38   4                 4a2dffa5  tst.b -0x5b(a5)
0x00002e3c   2                     6708  beq.b 0x2e46
0x00002e3e   4                 41edffd4  lea.l -0x2c(a5), a0
0x00002e42   4                 4ebad3f4  jsr 0x238(pc)
0x00002e46   2                     4e75  rts
0x00002e48   2                     7008  moveq 0x8, d0
0x00002e4a   2                     a31e  invalid
0x00002e4c   4                 43fa0016  lea.l 0x2e64(pc), a1
0x00002e50   4                 21490004  move.l a1, 0x4(a0)
0x00002e54   4                 20adfefe  move.l -0x102(a5), (a0)
0x00002e58   4                 2b48fefe  move.l a0, -0x102(a5)
0x00002e5c   6             3b7c0002ff2e  move.w 0x2, -0xd2(a5)
0x00002e62   2                     4e75  rts
0x00002e64   4                 4a6dff2e  tst.w -0xd2(a5)
0x00002e68   2                     673a  beq.b 0x2ea4
0x00002e6a   6             0c6d0001ff2e  cmpi.w 0x1, -0xd2(a5)
0x00002e70   2                     672e  beq.b 0x2ea0
0x00002e72   4                 102dff34  move.b -0xcc(a5), d0
0x00002e76   2                     4880  ext.w d0
0x00002e78   2                     48c0  ext.l d0
0x00002e7a   2                     7401  moveq 0x1, d2
0x00002e7c   4                 41edff30  lea.l -0xd0(a5), a0
0x00002e80   4                 10fc0002  move.b 0x2, (a0)+
0x00002e84   4                 10fc00ca  move.b 0xca, (a0)+
0x00002e88   4                 10fc0030  move.b 0x30, (a0)+
0x00002e8c   2                     2200  move.l d0, d1
0x00002e8e   2                     6710  beq.b 0x2ea0
0x00002e90   2                     e888  lsr.l 0x4, d0
0x00002e92   4                 0241000f  andi.w 0xf, d1
0x00002e96   4                 06410030  addi.w 0x30, d1
0x00002e9a   2                     1101  move.b d1, -(a0)
0x00002e9c   4                 51caffee  dbra d2, 0x2e8c
0x00002ea0   4                 4ead01b2  jsr 0x1b2(a5)
0x00002ea4   2                     4e75  rts
0x00002ea6   2                     2848  movea.l a0, a4
0x00002ea8   2                     700c  moveq 0xc, d0
0x00002eaa   2                     a31e  invalid
0x00002eac   4                 43fa0032  lea.l 0x2ee0(pc), a1
0x00002eb0   4                 21490004  move.l a1, 0x4(a0)
0x00002eb4   4                 214c0008  move.l a4, 0x8(a0)
0x00002eb8   4                 20adfefe  move.l -0x102(a5), (a0)
0x00002ebc   4                 2b48fefe  move.l a0, -0x102(a5)
0x00002ec0   2                     3014  move.w (a4), d0
0x00002ec2   4                 6e00000c  bgt.w 0x2ed0
0x00002ec6   4                 065403e8  addi.w 0x3e8, (a4)
0x00002eca   6             066c03e80002  addi.w 0x3e8, 0x2(a4)
0x00002ed0   4                 366c000e  movea.w 0xe(a4), a3
0x00002ed4   4                 b6fc0000  cmpa.w 0x0, a3
0x00002ed8   2                     6704  beq.b 0x2ede
0x00002eda   2                     d8cb  adda.w a3, a4
0x00002edc   2                     60e2  bra.b 0x2ec0
0x00002ede   2                     4e75  rts
0x00002ee0   2                     2856  movea.l (a6), a4
0x00002ee2   4                 206dffa0  movea.l -0x60(a5), a0
0x00002ee6   6             0c6d0004fea8  cmpi.w 0x4, -0x158(a5)
0x00002eec   2                     6606  bne.b 0x2ef4
0x00002eee   4                 226df7b8  movea.l -0x848(a5), a1
0x00002ef2   2                     6004  bra.b 0x2ef8
0x00002ef4   4                 226df5d0  movea.l -0xa30(a5), a1
0x00002ef8   2                     3014  move.w (a4), d0
0x00002efa   4                 6f00003c  ble.w 0x2f38
0x00002efe   4                 322c000a  move.w 0xa(a4), d1
0x00002f02   4                 06410028  addi.w 0x28, d1
0x00002f06   4                 342c0010  move.w 0x10(a4), d2
0x00002f0a   4                 4a6c000c  tst.w 0xc(a4)
0x00002f0e   2                     6e08  bgt.b 0x2f18
0x00002f10   4                 b06c0006  cmp.w 0x6(a4), d0
0x00002f14   2                     6e0c  bgt.b 0x2f22
0x00002f16   2                     6006  bra.b 0x2f1e
0x00002f18   4                 b06c0008  cmp.w 0x8(a4), d0
0x00002f1c   2                     6d04  blt.b 0x2f22
0x00002f1e   4                 446c000c  neg.w 0xc(a4)
0x00002f22   4                 362c000c  move.w 0xc(a4), d3
0x00002f26   2                     d043  add.w d3, d0
0x00002f28   2                     3880  move.w d0, (a4)
0x00002f2a   4                 d76c0002  add.w d3, 0x2(a4)
0x00002f2e   4                 0640000e  addi.w 0xe, d0
0x00002f32   2                     9043  sub.w d3, d0
0x00002f34   4                 4ebad0ca  jsr 0x0(pc)
0x00002f38   4                 366c000e  movea.w 0xe(a4), a3
0x00002f3c   4                 b6fc0000  cmpa.w 0x0, a3
0x00002f40   2                     6704  beq.b 0x2f46
0x00002f42   2                     d8cb  adda.w a3, a4
0x00002f44   2                     60b2  bra.b 0x2ef8
0x00002f46   2                     4e75  rts
0x00002f48   2                     2448  movea.l a0, a2
0x00002f4a   2                     7010  moveq 0x10, d0
0x00002f4c   2                     a11e  invalid
0x00002f4e   4                 43fa0018  lea.l 0x2f68(pc), a1
0x00002f52   4                 21490004  move.l a1, 0x4(a0)
0x00002f56   4                 214a0008  move.l a2, 0x8(a0)
0x00002f5a   4                 4268000c  clr.w 0xc(a0)
0x00002f5e   4                 20adfefe  move.l -0x102(a5), (a0)
0x00002f62   4                 2b48fefe  move.l a0, -0x102(a5)
0x00002f66   2                     4e75  rts
0x00002f68   2                     2456  movea.l (a6), a2
0x00002f6a   4                 302a0008  move.w 0x8(a2), d0
0x00002f6e   4                 322a000a  move.w 0xa(a2), d1
0x00002f72   4                 206dffa0  movea.l -0x60(a5), a0
0x00002f76   4                 362e0004  move.w 0x4(a6), d3
0x00002f7a   4                 4efb3002  jmp 0x2f7e(pc, d3.w)
0x00002f7e   4                 4efa0006  jmp 0x2f86(pc)
0x00002f82   4                 4efa0026  jmp 0x2faa(pc)
0x00002f86   4                 226df5d4  movea.l -0xa2c(a5), a1
0x00002f8a   4                 342a000c  move.w 0xc(a2), d2
0x00002f8e   4                 4ebad070  jsr 0x0(pc)
0x00002f92   4                 4a6a0006  tst.w 0x6(a2)
0x00002f96   4                 67000054  beq.w 0x2fec
0x00002f9a   6             3d7c00040004  move.w 0x4, 0x4(a6)
0x00002fa0   6             3d7c00020006  move.w 0x2, 0x6(a6)
0x00002fa6   4                 60000044  bra.w 0x2fec
0x00002faa   4                 226df5d8  movea.l -0xa28(a5), a1
0x00002fae   4                 342e0006  move.w 0x6(a6), d2
0x00002fb2   2                     5342  subq.w 0x1, d2
0x00002fb4   2                     6c26  bge.b 0x2fdc
0x00002fb6   2                     2456  movea.l (a6), a2
0x00002fb8   6             357c00010004  move.w 0x1, 0x4(a2)
0x00002fbe   4                 42aefffc  clr.l -0x4(a6)
0x00002fc2   4                 303c0024  move.w 0x24, d0
0x00002fc6   4                 4eba10d4  jsr 0x409c(pc)
0x00002fca   4                 3e2dfeaa  move.w -0x156(a5), d7
0x00002fce   4                 3c2a000e  move.w 0xe(a2), d6
0x00002fd2   2                     0dc7  bset.b d6, d7
0x00002fd4   4                 3b47feaa  move.w d7, -0x156(a5)
0x00002fd8   4                 60000012  bra.w 0x2fec
0x00002fdc   4                 3d420006  move.w d2, 0x6(a6)
0x00002fe0   4                 0440000a  subi.w 0xa, d0
0x00002fe4   4                 4ebad01a  jsr 0x0(pc)
0x00002fe8   4                 60000002  bra.w 0x2fec
0x00002fec   2                     4e75  rts

0x00002fee   2                     3c00  move.w d0, d6
0x00002ff0   2                     3e01  move.w d1, d7
0x00002ff2   6             203c000000ca  move.l 0xca, d0
0x00002ff8   2                     a31e  invalid
0x00002ffa   4                 43fa0068  lea.l 0x3064(pc), a1
0x00002ffe   4                 21490004  move.l a1, 0x4(a0)
0x00003002   4                 214a0008  move.l a2, 0x8(a0)
0x00003006   4                 42680010  clr.w 0x10(a0)
0x0000300a   4                 31460014  move.w d6, 0x14(a0)
0x0000300e   4                 31470016  move.w d7, 0x16(a0)
0x00003012   4                 3142000c  move.w d2, 0xc(a0)
0x00003016   4                 3143000e  move.w d3, 0xe(a0)
0x0000301a   4                 20adfefe  move.l -0x102(a5), (a0)
0x0000301e   4                 2b48fefe  move.l a0, -0x102(a5)
0x00003022   4                 50edff27  st.b -0xd9(a5)
0x00003026   2                     4e75  rts

0x00003028   2                     3c00  move.w d0, d6
0x0000302a   2                     3e01  move.w d1, d7
0x0000302c   6             203c000000ca  move.l 0xca, d0
0x00003032   2                     a31e  invalid
0x00003034   4                 43fa002e  lea.l 0x3064(pc), a1
0x00003038   4                 21490004  move.l a1, 0x4(a0)
0x0000303c   4                 214a0008  move.l a2, 0x8(a0)
0x00003040   6             317c000c0010  move.w 0xc, 0x10(a0)
0x00003046   4                 31460014  move.w d6, 0x14(a0)
0x0000304a   4                 31470016  move.w d7, 0x16(a0)
0x0000304e   4                 3142000c  move.w d2, 0xc(a0)
0x00003052   4                 3143000e  move.w d3, 0xe(a0)
0x00003056   4                 20adfefe  move.l -0x102(a5), (a0)
0x0000305a   4                 2b48fefe  move.l a0, -0x102(a5)
0x0000305e   4                 50edff27  st.b -0xd9(a5)
0x00003062   2                     4e75  rts

0x00003064   4                 302e000c  move.w 0xc(a6), d0
0x00003068   4                 322e000e  move.w 0xe(a6), d1
0x0000306c   4                 206dffa0  movea.l -0x60(a5), a0
0x00003070   4                 362e0008  move.w 0x8(a6), d3
0x00003074   4                 4efb3002  jmp 0x3078(pc, d3.w)

0x00003078   4                 4efa000e  jmp 0x3088(pc)
0x0000307c   4                 4efa001a  jmp 0x3098(pc)
0x00003080   4                 4efa02d6  jmp 0x3358(pc)
0x00003084   4                 4efa0026  jmp 0x30ac(pc)

0x00003088   6             3d7c00040008  move.w 0x4, 0x8(a6)
0x0000308e   6             3d7c0019000a  move.w 0x19, 0xa(a6)
0x00003094   4                 600004d0  bra.w 0x3566
0x00003098   4                 226df5c8  movea.l -0xa38(a5), a1
0x0000309c   4                 343c0005  move.w 0x5, d2
0x000030a0   4                 4ebacf5e  jsr 0x0(pc)
0x000030a4   4                 536e000a  subq.w 0x1, 0xa(a6)
0x000030a8   4                 6c0004bc  bge.w 0x3566
0x000030ac   2                     3f00  move.w d0, -(a7)
0x000030ae   4                 303c0011  move.w 0x11, d0
0x000030b2   4                 4ead0042  jsr 0x42(a5)
0x000030b6   2                     301f  move.w (a7)+, d0
0x000030b8   6             3d7c00080008  move.w 0x8, 0x8(a6)
0x000030be   4                 426e000a  clr.w 0xa(a6)
0x000030c2   4                 50ee00c0  st.b 0xc0(a6)
0x000030c6   6             3d7c00090010  move.w 0x9, 0x10(a6)
0x000030cc   6             3d7c0009001c  move.w 0x9, 0x1c(a6)
0x000030d2   6             3d7c00090028  move.w 0x9, 0x28(a6)
0x000030d8   4                 06400013  addi.w 0x13, d0
0x000030dc   4                 48e700c0  movem.l a0-a1, -(a7)
0x000030e0   4                 41edfa0c  lea.l -0x5f4(a5), a0
0x000030e4   4                 43ee0030  lea.l 0x30(a6), a1
0x000030e8   4                 23480004  move.l a0, 0x4(a1)
0x000030ec   2                     2290  move.l (a0), (a1)
0x000030ee   2                     2089  move.l a1, (a0)
0x000030f0   2                     2051  movea.l (a1), a0
0x000030f2   4                 b0fc0000  cmpa.w 0x0, a0
0x000030f6   2                     6704  beq.b 0x30fc
0x000030f8   4                 21490004  move.l a1, 0x4(a0)
0x000030fc   4                 4cdf0300  movem.l (a7)+, a0-a1
0x00003100   4                 3d400038  move.w d0, 0x38(a6)
0x00003104   6             046e000a0038  subi.w 0xa, 0x38(a6)
0x0000310a   4                 3d41003a  move.w d1, 0x3a(a6)
0x0000310e   6             046e000a003a  subi.w 0xa, 0x3a(a6)
0x00003114   6             3d7c00140042  move.w 0x14, 0x42(a6)
0x0000311a   6             3d7c00140044  move.w 0x14, 0x44(a6)
0x00003120   6             3d7c0001003c  move.w 0x1, 0x3c(a6)
0x00003126   6             3d7cffff0040  move.w 0xffff, 0x40(a6)
0x0000312c   4                 48e700c0  movem.l a0-a1, -(a7)
0x00003130   4                 41edfa0c  lea.l -0x5f4(a5), a0
0x00003134   4                 43ee0048  lea.l 0x48(a6), a1
0x00003138   4                 23480004  move.l a0, 0x4(a1)
0x0000313c   2                     2290  move.l (a0), (a1)
0x0000313e   2                     2089  move.l a1, (a0)
0x00003140   2                     2051  movea.l (a1), a0
0x00003142   4                 b0fc0000  cmpa.w 0x0, a0
0x00003146   2                     6704  beq.b 0x314c
0x00003148   4                 21490004  move.l a1, 0x4(a0)
0x0000314c   4                 4cdf0300  movem.l (a7)+, a0-a1
0x00003150   4                 3d400050  move.w d0, 0x50(a6)
0x00003154   6             046e00140050  subi.w 0x14, 0x50(a6)
0x0000315a   4                 3d410052  move.w d1, 0x52(a6)
0x0000315e   6             3d7c0014005a  move.w 0x14, 0x5a(a6)
0x00003164   6             3d7c0017005c  move.w 0x17, 0x5c(a6)
0x0000316a   6             3d7c00010054  move.w 0x1, 0x54(a6)
0x00003170   6             3d7cffff0056  move.w 0xffff, 0x56(a6)
0x00003176   4                 48e700c0  movem.l a0-a1, -(a7)
0x0000317a   4                 41edfa0c  lea.l -0x5f4(a5), a0
0x0000317e   4                 43ee0060  lea.l 0x60(a6), a1
0x00003182   4                 23480004  move.l a0, 0x4(a1)
0x00003186   2                     2290  move.l (a0), (a1)
0x00003188   2                     2089  move.l a1, (a0)
0x0000318a   2                     2051  movea.l (a1), a0
0x0000318c   4                 b0fc0000  cmpa.w 0x0, a0
0x00003190   2                     6704  beq.b 0x3196
0x00003192   4                 21490004  move.l a1, 0x4(a0)
0x00003196   4                 4cdf0300  movem.l (a7)+, a0-a1
0x0000319a   4                 3d400068  move.w d0, 0x68(a6)
0x0000319e   4                 3d41006a  move.w d1, 0x6a(a6)
0x000031a2   6             3d7c00140072  move.w 0x14, 0x72(a6)
0x000031a8   6             3d7c00170074  move.w 0x17, 0x74(a6)
0x000031ae   6             3d7c0001006c  move.w 0x1, 0x6c(a6)
0x000031b4   6             3d7c0001006e  move.w 0x1, 0x6e(a6)
0x000031ba   4                 48e700c0  movem.l a0-a1, -(a7)
0x000031be   4                 41edfa14  lea.l -0x5ec(a5), a0
0x000031c2   4                 43ee0078  lea.l 0x78(a6), a1
0x000031c6   4                 23480004  move.l a0, 0x4(a1)
0x000031ca   2                     2290  move.l (a0), (a1)
0x000031cc   2                     2089  move.l a1, (a0)
0x000031ce   2                     2051  movea.l (a1), a0
0x000031d0   4                 b0fc0000  cmpa.w 0x0, a0
0x000031d4   2                     6704  beq.b 0x31da
0x000031d6   4                 21490004  move.l a1, 0x4(a0)
0x000031da   4                 4cdf0300  movem.l (a7)+, a0-a1
0x000031de   4                 3d400080  move.w d0, 0x80(a6)
0x000031e2   6             046e000a0080  subi.w 0xa, 0x80(a6)
0x000031e8   4                 3d410082  move.w d1, 0x82(a6)
0x000031ec   6             046e000a0082  subi.w 0xa, 0x82(a6)
0x000031f2   6             3d7c0014008a  move.w 0x14, 0x8a(a6)
0x000031f8   6             3d7c0014008c  move.w 0x14, 0x8c(a6)
0x000031fe   6             3d7c00010084  move.w 0x1, 0x84(a6)
0x00003204   6             3d7cffff0088  move.w 0xffff, 0x88(a6)
0x0000320a   4                 48e700c0  movem.l a0-a1, -(a7)
0x0000320e   4                 41edfa14  lea.l -0x5ec(a5), a0
0x00003212   4                 43ee0090  lea.l 0x90(a6), a1
0x00003216   4                 23480004  move.l a0, 0x4(a1)
0x0000321a   2                     2290  move.l (a0), (a1)
0x0000321c   2                     2089  move.l a1, (a0)
0x0000321e   2                     2051  movea.l (a1), a0
0x00003220   4                 b0fc0000  cmpa.w 0x0, a0
0x00003224   2                     6704  beq.b 0x322a
0x00003226   4                 21490004  move.l a1, 0x4(a0)
0x0000322a   4                 4cdf0300  movem.l (a7)+, a0-a1
0x0000322e   4                 3d400098  move.w d0, 0x98(a6)
0x00003232   6             046e00140098  subi.w 0x14, 0x98(a6)
0x00003238   4                 3d41009a  move.w d1, 0x9a(a6)
0x0000323c   6             3d7c001400a2  move.w 0x14, 0xa2(a6)
0x00003242   6             3d7c001700a4  move.w 0x17, 0xa4(a6)
0x00003248   6             3d7c0001009c  move.w 0x1, 0x9c(a6)
0x0000324e   6             3d7cffff009e  move.w 0xffff, 0x9e(a6)
0x00003254   4                 48e700c0  movem.l a0-a1, -(a7)
0x00003258   4                 41edfa14  lea.l -0x5ec(a5), a0
0x0000325c   4                 43ee00a8  lea.l 0xa8(a6), a1
0x00003260   4                 23480004  move.l a0, 0x4(a1)
0x00003264   2                     2290  move.l (a0), (a1)
0x00003266   2                     2089  move.l a1, (a0)
0x00003268   2                     2051  movea.l (a1), a0
0x0000326a   4                 b0fc0000  cmpa.w 0x0, a0
0x0000326e   2                     6704  beq.b 0x3274
0x00003270   4                 21490004  move.l a1, 0x4(a0)
0x00003274   4                 4cdf0300  movem.l (a7)+, a0-a1
0x00003278   4                 3d4000b0  move.w d0, 0xb0(a6)
0x0000327c   4                 3d4100b2  move.w d1, 0xb2(a6)
0x00003280   6             3d7c001400ba  move.w 0x14, 0xba(a6)
0x00003286   6             3d7c001700bc  move.w 0x17, 0xbc(a6)
0x0000328c   6             3d7c000100b4  move.w 0x1, 0xb4(a6)
0x00003292   6             3d7c000100b6  move.w 0x1, 0xb6(a6)
0x00003298   4                 600002cc  bra.w 0x3566

0x0000329c   4                 48e78820  movem.l d0/d4/a2, -(a7)
0x000032a0   2                     2456  movea.l (a6), a2
0x000032a2   4                 382e0004  move.w 0x4(a6), d4
0x000032a6   4                 0440000f  subi.w 0xf, d0
0x000032aa   2                     4a40  tst.w d0
0x000032ac   2                     6e04  bgt.b 0x32b2
0x000032ae   4                 303c0001  move.w 0x1, d0
0x000032b2   4                 04440012  subi.w 0x12, d4
0x000032b6   4                 b0724002  cmp.w 0x2(a2, d4.w), d0
0x000032ba   2                     6c14  bge.b 0x32d0
0x000032bc   6             0c72001b4004  cmpi.w 0x1b, 0x4(a2, d4.w)
0x000032c2   2                     66ee  bne.b 0x32b2
0x000032c4   6             35bc00014006  move.w 0x1, 0x6(a2, d4.w)
0x000032ca   4                 023c000b  andi.b 0xb, ccr
0x000032ce   2                     6004  bra.b 0x32d4

0x000032d0   4                 003c0004  ori.b 0x4, ccr
0x000032d4   4                 4cdf0411  movem.l (a7)+, d0/d4/a2
0x000032d8   2                     4e75  rts

0x000032da   4                 48e78820  movem.l d0/d4/a2, -(a7)
0x000032de   2                     2456  movea.l (a6), a2
0x000032e0   4                 382e0004  move.w 0x4(a6), d4
0x000032e4   4                 0640000f  addi.w 0xf, d0
0x000032e8   4                 06440012  addi.w 0x12, d4
0x000032ec   4                 b0724000  cmp.w (a2, d4.w), d0
0x000032f0   2                     6d14  blt.b 0x3306
0x000032f2   6             0c72001b4004  cmpi.w 0x1b, 0x4(a2, d4.w)
0x000032f8   2                     66ee  bne.b 0x32e8
0x000032fa   6             35bc00014006  move.w 0x1, 0x6(a2, d4.w)
0x00003300   4                 023c000b  andi.b 0xb, ccr
0x00003304   2                     6004  bra.b 0x330a
0x00003306   4                 003c0004  ori.b 0x4, ccr
0x0000330a   4                 4cdf0411  movem.l (a7)+, d0/d4/a2
0x0000330e   2                     4e75  rts

0x00003310   4                 48e75820  movem.l d1/d3-d4/a2, -(a7)
0x00003314   2                     2456  movea.l (a6), a2
0x00003316   4                 362e0006  move.w 0x6(a6), d3
0x0000331a   4                 04410036  subi.w 0x36, d1
0x0000331e   2                     5943  subq.w 0x4, d3
0x00003320   4                 b2723000  cmp.w (a2, d3.w), d1
0x00003324   2                     6e28  bgt.b 0x334e
0x00003326   4                 4ab23000  tst.l (a2, d3.w)
0x0000332a   2                     6722  beq.b 0x334e
0x0000332c   4                 38323002  move.w 0x2(a2, d3.w), d4
0x00003330   4                 06440012  addi.w 0x12, d4
0x00003334   4                 b0724000  cmp.w (a2, d4.w), d0
0x00003338   2                     6de4  blt.b 0x331e
0x0000333a   4                 b0724002  cmp.w 0x2(a2, d4.w), d0
0x0000333e   2                     6ef0  bgt.b 0x3330
0x00003340   6             0c7202004004  cmpi.w 0x200, 0x4(a2, d4.w)
0x00003346   2                     6cd6  bge.b 0x331e
0x00003348   4                 023c000b  andi.b 0xb, ccr
0x0000334c   2                     6004  bra.b 0x3352
0x0000334e   4                 003c0004  ori.b 0x4, ccr
0x00003352   4                 4cdf041a  movem.l (a7)+, d1/d3-d4/a2
0x00003356   2                     4e75  rts

0x00003358   4                 4a2e00c0  tst.b 0xc0(a6)
0x0000335c   4                 6600000e  bne.w 0x336c
0x00003360   4                 42aefffc  clr.l -0x4(a6)
0x00003364   4                 51edff27  sf.b -0xd9(a5)
0x00003368   4                 600001fc  bra.w 0x3566
0x0000336c   4                 51ee00c0  sf.b 0xc0(a6)
0x00003370   2                     3c00  move.w d0, d6
0x00003372   2                     3e01  move.w d1, d7
0x00003374   4                 342e000a  move.w 0xa(a6), d2
0x00003378   4                 526e000a  addq.w 0x1, 0xa(a6)
0x0000337c   4                 0c420004  cmpi.w 0x4, d2
0x00003380   2                     6e1e  bgt.b 0x33a0
0x00003382   4                 143b2016  move.b 0x339a(pc, d2.w), d2
0x00003386   2                     4882  ext.w d2
0x00003388   4                 226df5c4  movea.l -0xa3c(a5), a1
0x0000338c   4                 04400016  subi.w 0x16, d0
0x00003390   4                 04410009  subi.w 0x9, d1
0x00003394   4                 4ebacc6a  jsr 0x0(pc)
0x00003398   2                     6006  bra.b 0x33a0

0x0000339a   4                 00 01 02 01 
0x0000339e   4                 00 00

0x000033a0   4                 226df5c8  movea.l -0xa38(a5), a1
0x000033a4   2                     3006  move.w d6, d0
0x000033a6   2                     3207  move.w d7, d1
0x000033a8   4                 47ee0010  lea.l 0x10(a6), a3
0x000033ac   4                 3e3c0005  move.w 0x5, d7
0x000033b0   2                     5347  subq.w 0x1, d7
0x000033b2   4                 6d00008a  blt.w 0x343e
0x000033b6   4                 04400014  subi.w 0x14, d0
0x000033ba   2                     535b  subq.w 0x1, (a3)+
0x000033bc   2                     6df2  blt.b 0x33b0
0x000033be   4                 362bfffe  move.w -0x2(a3), d3
0x000033c2   4                 49fa0100  lea.l 0x34c4(pc), a4
0x000033c6   2                     d8c3  adda.w d3, a4
0x000033c8   2                     1414  move.b (a4), d2
0x000033ca   2                     4882  ext.w d2
0x000033cc   2                     6c64  bge.b 0x3432
0x000033ce   2                     4442  neg.w d2
0x000033d0   4                 4ebafeca  jsr 0x329c(pc)
0x000033d4   2                     6620  bne.b 0x33f6
0x000033d6   4                 36bc0009  move.w 0x9, (a3)
0x000033da   6             046e00140050  subi.w 0x14, 0x50(a6)
0x000033e0   6             066e0014005a  addi.w 0x14, 0x5a(a6)
0x000033e6   6             046e00140098  subi.w 0x14, 0x98(a6)
0x000033ec   6             066e001400a2  addi.w 0x14, 0xa2(a6)
0x000033f2   2                     4a47  tst.w d7
0x000033f4   2                     6e3c  bgt.b 0x3432
0x000033f6   4                 48e700c0  movem.l a0-a1, -(a7)
0x000033fa   4                 43ee0048  lea.l 0x48(a6), a1
0x000033fe   4                 20690004  movea.l 0x4(a1), a0
0x00003402   2                     2251  movea.l (a1), a1
0x00003404   2                     2089  move.l a1, (a0)
0x00003406   4                 b2fc0000  cmpa.w 0x0, a1
0x0000340a   2                     6704  beq.b 0x3410
0x0000340c   4                 23480004  move.l a0, 0x4(a1)
0x00003410   4                 4cdf0300  movem.l (a7)+, a0-a1
0x00003414   4                 48e700c0  movem.l a0-a1, -(a7)
0x00003418   4                 43ee0090  lea.l 0x90(a6), a1
0x0000341c   4                 20690004  movea.l 0x4(a1), a0
0x00003420   2                     2251  movea.l (a1), a1
0x00003422   2                     2089  move.l a1, (a0)
0x00003424   4                 b2fc0000  cmpa.w 0x0, a1
0x00003428   2                     6704  beq.b 0x342e
0x0000342a   4                 23480004  move.l a0, 0x4(a1)
0x0000342e   4                 4cdf0300  movem.l (a7)+, a0-a1
0x00003432   4                 4ebacbcc  jsr 0x0(pc)
0x00003436   4                 50ee00c0  st.b 0xc0(a6)
0x0000343a   4                 6000ff74  bra.w 0x33b0

0x0000343e   2                     3006  move.w d6, d0
0x00003440   4                 47ee001c  lea.l 0x1c(a6), a3
0x00003444   4                 3e3c0005  move.w 0x5, d7
0x00003448   2                     5347  subq.w 0x1, d7
0x0000344a   4                 6d000082  blt.w 0x34ce
0x0000344e   4                 06400014  addi.w 0x14, d0
0x00003452   2                     535b  subq.w 0x1, (a3)+
0x00003454   2                     6df2  blt.b 0x3448
0x00003456   4                 362bfffe  move.w -0x2(a3), d3
0x0000345a   4                 143b3068  move.b 0x34c4(pc, d3.w), d2
0x0000345e   2                     4882  ext.w d2
0x00003460   2                     6c58  bge.b 0x34ba
0x00003462   2                     4442  neg.w d2
0x00003464   4                 4ebafe74  jsr 0x32da(pc)
0x00003468   2                     6614  bne.b 0x347e
0x0000346a   4                 36bc0009  move.w 0x9, (a3)
0x0000346e   6             066e00140072  addi.w 0x14, 0x72(a6)
0x00003474   6             066e001400ba  addi.w 0x14, 0xba(a6)
0x0000347a   2                     4a47  tst.w d7
0x0000347c   2                     6e3c  bgt.b 0x34ba
0x0000347e   4                 48e700c0  movem.l a0-a1, -(a7)
0x00003482   4                 43ee0060  lea.l 0x60(a6), a1
0x00003486   4                 20690004  movea.l 0x4(a1), a0
0x0000348a   2                     2251  movea.l (a1), a1
0x0000348c   2                     2089  move.l a1, (a0)
0x0000348e   4                 b2fc0000  cmpa.w 0x0, a1
0x00003492   2                     6704  beq.b 0x3498
0x00003494   4                 23480004  move.l a0, 0x4(a1)
0x00003498   4                 4cdf0300  movem.l (a7)+, a0-a1
0x0000349c   4                 48e700c0  movem.l a0-a1, -(a7)
0x000034a0   4                 43ee00a8  lea.l 0xa8(a6), a1
0x000034a4   4                 20690004  movea.l 0x4(a1), a0
0x000034a8   2                     2251  movea.l (a1), a1
0x000034aa   2                     2089  move.l a1, (a0)
0x000034ac   4                 b2fc0000  cmpa.w 0x0, a1
0x000034b0   2                     6704  beq.b 0x34b6
0x000034b2   4                 23480004  move.l a0, 0x4(a1)
0x000034b6   4                 4cdf0300  movem.l (a7)+, a0-a1
0x000034ba   4                 4ebacb44  jsr 0x0(pc)
0x000034be   4                 50ee00c0  st.b 0xc0(a6)
0x000034c2   2                     6084  bra.b 0x3448

0x000034c4   4                 04 03 02 01  subi.b 0x1, d3
0x000034c8   4                 00 01 fe 03  ori.b 0x3, d1
0x000034cc   4                 04 00

0x000034ce   2                     3006  move.w d6, d0
0x000034d0   4                 47ee0028  lea.l 0x28(a6), a3
0x000034d4   4                 3e3c0003  move.w 0x3, d7
0x000034d8   2                     5347  subq.w 0x1, d7
0x000034da   4                 6d000086  blt.w 0x3562
0x000034de   4                 04410014  subi.w 0x14, d1
0x000034e2   2                     535b  subq.w 0x1, (a3)+
0x000034e4   2                     6df2  blt.b 0x34d8
0x000034e6   4                 362bfffe  move.w -0x2(a3), d3
0x000034ea   4                 143b30d8  move.b 0x34c4(pc, d3.w), d2
0x000034ee   2                     4882  ext.w d2
0x000034f0   2                     6c64  bge.b 0x3556
0x000034f2   2                     4442  neg.w d2
0x000034f4   4                 4ebafe1a  jsr 0x3310(pc)
0x000034f8   2                     6620  bne.b 0x351a
0x000034fa   4                 36bc0009  move.w 0x9, (a3)
0x000034fe   6             046e0014003a  subi.w 0x14, 0x3a(a6)
0x00003504   6             066e00140044  addi.w 0x14, 0x44(a6)
0x0000350a   6             046e00140082  subi.w 0x14, 0x82(a6)
0x00003510   6             066e0014008c  addi.w 0x14, 0x8c(a6)
0x00003516   2                     4a47  tst.w d7
0x00003518   2                     6e3c  bgt.b 0x3556
0x0000351a   4                 48e700c0  movem.l a0-a1, -(a7)
0x0000351e   4                 43ee0030  lea.l 0x30(a6), a1
0x00003522   4                 20690004  movea.l 0x4(a1), a0
0x00003526   2                     2251  movea.l (a1), a1
0x00003528   2                     2089  move.l a1, (a0)
0x0000352a   4                 b2fc0000  cmpa.w 0x0, a1
0x0000352e   2                     6704  beq.b 0x3534
0x00003530   4                 23480004  move.l a0, 0x4(a1)
0x00003534   4                 4cdf0300  movem.l (a7)+, a0-a1
0x00003538   4                 48e700c0  movem.l a0-a1, -(a7)
0x0000353c   4                 43ee0078  lea.l 0x78(a6), a1
0x00003540   4                 20690004  movea.l 0x4(a1), a0
0x00003544   2                     2251  movea.l (a1), a1
0x00003546   2                     2089  move.l a1, (a0)
0x00003548   4                 b2fc0000  cmpa.w 0x0, a1
0x0000354c   2                     6704  beq.b 0x3552
0x0000354e   4                 23480004  move.l a0, 0x4(a1)
0x00003552   4                 4cdf0300  movem.l (a7)+, a0-a1
0x00003556   4                 4ebacaa8  jsr 0x0(pc)
0x0000355a   4                 50ee00c0  st.b 0xc0(a6)
0x0000355e   4                 6000ff78  bra.w 0x34d8
0x00003562   4                 60000002  bra.w 0x3566
0x00003566   2                     4e75  rts

0x00003568   2                     3c00  move.w d0, d6
0x0000356a   2                     3e01  move.w d1, d7
0x0000356c   2                     7030  moveq 0x30, d0
0x0000356e   2                     a11e  invalid
0x00003570   4                 43fa0044  lea.l 0x35b6(pc), a1
0x00003574   4                 21490004  move.l a1, 0x4(a0)
0x00003578   4                 31460008  move.w d6, 0x8(a0)
0x0000357c   4                 3147000a  move.w d7, 0xa(a0)
0x00003580   4                 04420020  subi.w 0x20, d2
0x00003584   4                 3142000c  move.w d2, 0xc(a0)
0x00003588   4                 3143000e  move.w d3, 0xe(a0)
0x0000358c   4                 31440010  move.w d4, 0x10(a0)
0x00003590   4                 42680016  clr.w 0x16(a0)
0x00003594   6             3168000a0022  move.w 0xa(a0), 0x22(a0)
0x0000359a   6             317c00030024  move.w 0x3, 0x24(a0)
0x000035a0   6             317c00010026  move.w 0x1, 0x26(a0)
0x000035a6   6             317c0003002c  move.w 0x3, 0x2c(a0)
0x000035ac   4                 20adfefe  move.l -0x102(a5), (a0)
0x000035b0   4                 2b48fefe  move.l a0, -0x102(a5)
0x000035b4   2                     4e75  rts
0x000035b6   4                 536e0008  subq.w 0x1, 0x8(a6)
0x000035ba   4                 362e000e  move.w 0xe(a6), d3
0x000035be   4                 4efb3002  jmp 0x35c2(pc, d3.w)
0x000035c2   4                 4efa000a  jmp 0x35ce(pc)
0x000035c6   4                 4efa0064  jmp 0x362c(pc)
0x000035ca   4                 4efa007e  jmp 0x364a(pc)
0x000035ce   4                 4a6e0008  tst.w 0x8(a6)
0x000035d2   4                 6e0000ec  bgt.w 0x36c0
0x000035d6   6             3d6e00060008  move.w 0x6(a6), 0x8(a6)
0x000035dc   4                 3d56000a  move.w (a6), 0xa(a6)
0x000035e0   4                 3d56000c  move.w (a6), 0xc(a6)
0x000035e4   4                 536e000c  subq.w 0x1, 0xc(a6)
0x000035e8   6             3d7c0004000e  move.w 0x4, 0xe(a6)
0x000035ee   4                 48e700c0  movem.l a0-a1, -(a7)
0x000035f2   4                 41edfa0c  lea.l -0x5f4(a5), a0
0x000035f6   4                 43ee0010  lea.l 0x10(a6), a1
0x000035fa   4                 23480004  move.l a0, 0x4(a1)
0x000035fe   2                     2290  move.l (a0), (a1)
0x00003600   2                     2089  move.l a1, (a0)
0x00003602   2                     2051  movea.l (a1), a0
0x00003604   4                 b0fc0000  cmpa.w 0x0, a0
0x00003608   2                     6704  beq.b 0x360e
0x0000360a   4                 21490004  move.l a1, 0x4(a0)
0x0000360e   4                 4cdf0300  movem.l (a7)+, a0-a1
0x00003612   6             3d6e000a0018  move.w 0xa(a6), 0x18(a6)
0x00003618   4                 426e0022  clr.w 0x22(a6)
0x0000361c   2                     3f00  move.w d0, -(a7)
0x0000361e   4                 303c002c  move.w 0x2c, d0
0x00003622   4                 4ead0042  jsr 0x42(a5)
0x00003626   2                     301f  move.w (a7)+, d0
0x00003628   4                 60000096  bra.w 0x36c0
0x0000362c   6             066e0020000c  addi.w 0x20, 0xc(a6)
0x00003632   4                 302e0004  move.w 0x4(a6), d0
0x00003636   4                 b06e000c  cmp.w 0xc(a6), d0
0x0000363a   2                     6e42  bgt.b 0x367e
0x0000363c   6             3d7c0008000e  move.w 0x8, 0xe(a6)
0x00003642   6             3d6e0004000c  move.w 0x4(a6), 0xc(a6)
0x00003648   2                     6034  bra.b 0x367e
0x0000364a   6             066e0020000a  addi.w 0x20, 0xa(a6)
0x00003650   4                 302e0004  move.w 0x4(a6), d0
0x00003654   4                 b06e000a  cmp.w 0xa(a6), d0
0x00003658   2                     6e24  bgt.b 0x367e
0x0000365a   4                 426e000e  clr.w 0xe(a6)
0x0000365e   4                 48e700c0  movem.l a0-a1, -(a7)
0x00003662   4                 43ee0010  lea.l 0x10(a6), a1
0x00003666   4                 20690004  movea.l 0x4(a1), a0
0x0000366a   2                     2251  movea.l (a1), a1
0x0000366c   2                     2089  move.l a1, (a0)
0x0000366e   4                 b2fc0000  cmpa.w 0x0, a1
0x00003672   2                     6704  beq.b 0x3678
0x00003674   4                 23480004  move.l a0, 0x4(a1)
0x00003678   4                 4cdf0300  movem.l (a7)+, a0-a1
0x0000367c   2                     4e71  nop
0x0000367e   4                 302e000a  move.w 0xa(a6), d0
0x00003682   4                 322e0002  move.w 0x2(a6), d1
0x00003686   2                     4242  clr.w d2
0x00003688   4                 226df63c  movea.l -0x9c4(a5), a1
0x0000368c   4                 206dffa0  movea.l -0x60(a5), a0
0x00003690   4                 b06e000c  cmp.w 0xc(a6), d0
0x00003694   2                     6c0a  bge.b 0x36a0
0x00003696   4                 4ebac968  jsr 0x0(pc)
0x0000369a   4                 06400020  addi.w 0x20, d0
0x0000369e   2                     60f0  bra.b 0x3690
0x000036a0   4                 302e000c  move.w 0xc(a6), d0
0x000036a4   4                 4ebac95a  jsr 0x0(pc)
0x000036a8   4                 302e000a  move.w 0xa(a6), d0
0x000036ac   4                 3d400018  move.w d0, 0x18(a6)
0x000036b0   4                 906e000c  sub.w 0xc(a6), d0
0x000036b4   2                     4440  neg.w d0
0x000036b6   4                 06400021  addi.w 0x21, d0
0x000036ba   4                 3d400022  move.w d0, 0x22(a6)
0x000036be   2                     4e71  nop
0x000036c0   2                     4e75  rts
0x000036c2   2                     2848  movea.l a0, a4
0x000036c4   2                     2449  movea.l a1, a2
0x000036c6   2                     3a12  move.w (a2), d5
0x000036c8   4                 303c0004  move.w 0x4, d0
0x000036cc   2                     c0c5  mulu.w d5, d0
0x000036ce   6             06800000000e  addi.l 0xe, d0
0x000036d4   2                     a31e  invalid
0x000036d6   4                 43fa0048  lea.l 0x3720(pc), a1
0x000036da   4                 21490004  move.l a1, 0x4(a0)
0x000036de   4                 214c0008  move.l a4, 0x8(a0)
0x000036e2   2                     5345  subq.w 0x1, d5
0x000036e4   4                 4268000c  clr.w 0xc(a0)
0x000036e8   4                 47e8000e  lea.l 0xe(a0), a3
0x000036ec   2                     544a  addq.w 0x2, a2
0x000036ee   2                     361a  move.w (a2)+, d3
0x000036f0   2                     3c1a  move.w (a2)+, d6
0x000036f2   4                 4eba0a74  jsr 0x4168(pc)
0x000036f6   4                 02407fff  andi.w 0x7fff, d0
0x000036fa   2                     bc40  cmp.w d0, d6
0x000036fc   2                     6d0e  blt.b 0x370c
0x000036fe   2                     36c3  move.w d3, (a3)+
0x00003700   6             39bc00313004  move.w 0x31, 0x4(a4, d3.w)
0x00003706   4                 5268000c  addq.w 0x1, 0xc(a0)
0x0000370a   2                     6006  bra.b 0x3712
0x0000370c   6             39bc00013004  move.w 0x1, 0x4(a4, d3.w)
0x00003712   4                 51cdffda  dbra d5, 0x36ee
0x00003716   4                 20adfefe  move.l -0x102(a5), (a0)
0x0000371a   4                 2b48fefe  move.l a0, -0x102(a5)
0x0000371e   2                     4e75  rts
0x00003720   4                 3e2e0004  move.w 0x4(a6), d7
0x00003724   4                 67000152  beq.w 0x3878
0x00003728   2                     2456  movea.l (a6), a2
0x0000372a   4                 49ee0006  lea.l 0x6(a6), a4
0x0000372e   2                     4246  clr.w d6
0x00003730   4                 206dffa0  movea.l -0x60(a5), a0
0x00003734   4                 60000136  bra.w 0x386c
0x00003738   2                     361c  move.w (a4)+, d3
0x0000373a   6             0c7200313004  cmpi.w 0x31, 0x4(a2, d3.w)
0x00003740   4                 6600012a  bne.w 0x386c
0x00003744   4                 30323000  move.w (a2, d3.w), d0
0x00003748   4                 32323006  move.w 0x6(a2, d3.w), d1
0x0000374c   4                 4a2dff87  tst.b -0x79(a5)
0x00003750   2                     6730  beq.b 0x3782
0x00003752   4                 38280012  move.w 0x12(a0), d4
0x00003756   4                 04440028  subi.w 0x28, d4
0x0000375a   2                     b044  cmp.w d4, d0
0x0000375c   4                 6d00010c  blt.w 0x386a
0x00003760   4                 06440228  addi.w 0x228, d4
0x00003764   2                     b044  cmp.w d4, d0
0x00003766   4                 6e000102  bgt.w 0x386a
0x0000376a   4                 3a280014  move.w 0x14(a0), d5
0x0000376e   4                 04450028  subi.w 0x28, d5
0x00003772   2                     b245  cmp.w d5, d1
0x00003774   4                 6d0000f4  blt.w 0x386a
0x00003778   4                 06450136  addi.w 0x136, d5
0x0000377c   2                     b245  cmp.w d5, d1
0x0000377e   4                 6e0000ea  bgt.w 0x386a
0x00003782   4                 38323008  move.w 0x8(a2, d3.w), d4
0x00003786   4                 4efb4002  jmp 0x378a(pc, d4.w)
0x0000378a   4                 4efa0026  jmp 0x37b2(pc)
0x0000378e   4                 4efa0034  jmp 0x37c4(pc)
0x00003792   4                 4efa0044  jmp 0x37d8(pc)
0x00003796   4                 4efa0052  jmp 0x37ea(pc)
0x0000379a   4                 4efa005e  jmp 0x37fa(pc)
0x0000379e   4                 4efa006c  jmp 0x380c(pc)
0x000037a2   4                 4efa007a  jmp 0x381e(pc)
0x000037a6   4                 4efa0088  jmp 0x3830(pc)
0x000037aa   4                 4efa0096  jmp 0x3842(pc)
0x000037ae   4                 4efa00a4  jmp 0x3854(pc)
0x000037b2   2                     4242  clr.w d2
0x000037b4   4                 226df670  movea.l -0x990(a5), a1
0x000037b8   4                 0640000c  addi.w 0xc, d0
0x000037bc   4                 0641001c  addi.w 0x1c, d1
0x000037c0   4                 600000a4  bra.w 0x3866
0x000037c4   4                 343c0001  move.w 0x1, d2
0x000037c8   4                 226df670  movea.l -0x990(a5), a1
0x000037cc   4                 0640000c  addi.w 0xc, d0
0x000037d0   4                 0641001c  addi.w 0x1c, d1
0x000037d4   4                 60000090  bra.w 0x3866
0x000037d8   4                 226df670  movea.l -0x990(a5), a1
0x000037dc   4                 343c0002  move.w 0x2, d2
0x000037e0   4                 0640000c  addi.w 0xc, d0
0x000037e4   4                 0641001c  addi.w 0x1c, d1
0x000037e8   2                     607c  bra.b 0x3866
0x000037ea   4                 226df6ec  movea.l -0x914(a5), a1
0x000037ee   2                     4242  clr.w d2
0x000037f0   4                 0640000c  addi.w 0xc, d0
0x000037f4   4                 06410017  addi.w 0x17, d1
0x000037f8   2                     606c  bra.b 0x3866
0x000037fa   4                 226df6ec  movea.l -0x914(a5), a1
0x000037fe   4                 343c0001  move.w 0x1, d2
0x00003802   4                 0640000c  addi.w 0xc, d0
0x00003806   4                 06410017  addi.w 0x17, d1
0x0000380a   2                     605a  bra.b 0x3866
0x0000380c   4                 226df6ec  movea.l -0x914(a5), a1
0x00003810   4                 343c0002  move.w 0x2, d2
0x00003814   4                 0640000c  addi.w 0xc, d0
0x00003818   4                 06410017  addi.w 0x17, d1
0x0000381c   2                     6048  bra.b 0x3866
0x0000381e   4                 226df6ec  movea.l -0x914(a5), a1
0x00003822   4                 343c0003  move.w 0x3, d2
0x00003826   4                 0640000c  addi.w 0xc, d0
0x0000382a   4                 06410017  addi.w 0x17, d1
0x0000382e   2                     6036  bra.b 0x3866
0x00003830   4                 226df6ec  movea.l -0x914(a5), a1
0x00003834   4                 343c0004  move.w 0x4, d2
0x00003838   4                 0640000c  addi.w 0xc, d0
0x0000383c   4                 0641fff5  addi.w 0xfff5, d1
0x00003840   2                     6024  bra.b 0x3866
0x00003842   4                 226df6ec  movea.l -0x914(a5), a1
0x00003846   4                 343c0006  move.w 0x6, d2
0x0000384a   4                 0640000c  addi.w 0xc, d0
0x0000384e   4                 0641fff5  addi.w 0xfff5, d1
0x00003852   2                     6012  bra.b 0x3866
0x00003854   4                 226df6ec  movea.l -0x914(a5), a1
0x00003858   4                 343c0005  move.w 0x5, d2
0x0000385c   4                 0640000c  addi.w 0xc, d0
0x00003860   4                 0641fff5  addi.w 0xfff5, d1
0x00003864   2                     4e71  nop
0x00003866   4                 4ebac798  jsr 0x0(pc)
0x0000386a   2                     5246  addq.w 0x1, d6
0x0000386c   4                 51cffeca  dbra d7, 0x3738
0x00003870   2                     4a46  tst.w d6
0x00003872   2                     6704  beq.b 0x3878
0x00003874   4                 60000008  bra.w 0x387e
0x00003878   4                 42aefffc  clr.l -0x4(a6)
0x0000387c   2                     60f6  bra.b 0x3874
0x0000387e   2                     4e75  rts
0x00003880   2                     2848  movea.l a0, a4
0x00003882   2                     700c  moveq 0xc, d0
0x00003884   2                     a31e  invalid
0x00003886   4                 43fa001c  lea.l 0x38a4(pc), a1
0x0000388a   4                 21490004  move.l a1, 0x4(a0)
0x0000388e   4                 214c0008  move.l a4, 0x8(a0)
0x00003892   4                 426c0006  clr.w 0x6(a4)
0x00003896   4                 426dfeb2  clr.w -0x14e(a5)
0x0000389a   4                 20adfefe  move.l -0x102(a5), (a0)
0x0000389e   4                 2b48fefe  move.l a0, -0x102(a5)
0x000038a2   2                     4e75  rts
0x000038a4   2                     2856  movea.l (a6), a4
0x000038a6   4                 302c000a  move.w 0xa(a4), d0
0x000038aa   4                 322c000c  move.w 0xc(a4), d1
0x000038ae   4                 206dffa0  movea.l -0x60(a5), a0
0x000038b2   4                 4a6c000e  tst.w 0xe(a4)
0x000038b6   2                     6e06  bgt.b 0x38be
0x000038b8   4                 226df6b8  movea.l -0x948(a5), a1
0x000038bc   2                     6004  bra.b 0x38c2
0x000038be   4                 226df7bc  movea.l -0x844(a5), a1
0x000038c2   4                 342c0006  move.w 0x6(a4), d2
0x000038c6   2                     6e14  bgt.b 0x38dc
0x000038c8   2                     6d08  blt.b 0x38d2
0x000038ca   2                     4242  clr.w d2
0x000038cc   4                 4ebac732  jsr 0x0(pc)
0x000038d0   2                     6046  bra.b 0x3918
0x000038d2   4                 343c0004  move.w 0x4, d2
0x000038d6   4                 4ebac728  jsr 0x0(pc)
0x000038da   2                     603c  bra.b 0x3918
0x000038dc   4                 526c0006  addq.w 0x1, 0x6(a4)
0x000038e0   2                     5342  subq.w 0x1, d2
0x000038e2   2                     660c  bne.b 0x38f0
0x000038e4   2                     3f00  move.w d0, -(a7)
0x000038e6   4                 303c001d  move.w 0x1d, d0
0x000038ea   4                 4ead0042  jsr 0x42(a5)
0x000038ee   2                     301f  move.w (a7)+, d0
0x000038f0   4                 0c420004  cmpi.w 0x4, d2
0x000038f4   2                     6f1e  ble.b 0x3914
0x000038f6   4                 0c420009  cmpi.w 0x9, d2
0x000038fa   2                     6f14  ble.b 0x3910
0x000038fc   6             397cffff0006  move.w 0xffff, 0x6(a4)
0x00003902   4                 3e2c0008  move.w 0x8(a4), d7
0x00003906   4                 3c2dfeb2  move.w -0x14e(a5), d6
0x0000390a   2                     0fc6  bset.b d7, d6
0x0000390c   4                 3b46feb2  move.w d6, -0x14e(a5)
0x00003910   4                 343c0004  move.w 0x4, d2
0x00003914   4                 4ebac6ea  jsr 0x0(pc)
0x00003918   2                     4e75  rts
0x0000391a   2                     3600  move.w d0, d3
0x0000391c   2                     3801  move.w d1, d4
0x0000391e   2                     2649  movea.l a1, a3
0x00003920   2                     2848  movea.l a0, a4
0x00003922   2                     7016  moveq 0x16, d0
0x00003924   2                     a31e  invalid
0x00003926   4                 43fa0024  lea.l 0x394c(pc), a1
0x0000392a   4                 21490004  move.l a1, 0x4(a0)
0x0000392e   4                 31430008  move.w d3, 0x8(a0)
0x00003932   4                 3144000a  move.w d4, 0xa(a0)
0x00003936   4                 3142000c  move.w d2, 0xc(a0)
0x0000393a   4                 214b000e  move.l a3, 0xe(a0)
0x0000393e   4                 214c0012  move.l a4, 0x12(a0)
0x00003942   4                 20adfefe  move.l -0x102(a5), (a0)
0x00003946   4                 2b48fefe  move.l a0, -0x102(a5)
0x0000394a   2                     4e75  rts
0x0000394c   2                     3016  move.w (a6), d0
0x0000394e   4                 322e0002  move.w 0x2(a6), d1
0x00003952   4                 226e0006  movea.l 0x6(a6), a1
0x00003956   4                 206dffa0  movea.l -0x60(a5), a0
0x0000395a   4                 4a2dff87  tst.b -0x79(a5)
0x0000395e   2                     6728  beq.b 0x3988
0x00003960   4                 38280012  move.w 0x12(a0), d4
0x00003964   4                 04440020  subi.w 0x20, d4
0x00003968   2                     b044  cmp.w d4, d0
0x0000396a   2                     6d3c  blt.b 0x39a8
0x0000396c   4                 06440220  addi.w 0x220, d4
0x00003970   2                     b044  cmp.w d4, d0
0x00003972   2                     6e34  bgt.b 0x39a8
0x00003974   4                 3a280014  move.w 0x14(a0), d5
0x00003978   4                 04450020  subi.w 0x20, d5
0x0000397c   2                     b245  cmp.w d5, d1
0x0000397e   2                     6d28  blt.b 0x39a8
0x00003980   4                 06450144  addi.w 0x144, d5
0x00003984   2                     b245  cmp.w d5, d1
0x00003986   2                     6e20  bgt.b 0x39a8
0x00003988   4                 342e0004  move.w 0x4(a6), d2
0x0000398c   4                 246e000a  movea.l 0xa(a6), a2
0x00003990   4                 14322000  move.b (a2, d2.w), d2
0x00003994   2                     4882  ext.w d2
0x00003996   2                     6c08  bge.b 0x39a0
0x00003998   2                     4242  clr.w d2
0x0000399a   4                 426e0004  clr.w 0x4(a6)
0x0000399e   2                     60f0  bra.b 0x3990
0x000039a0   4                 526e0004  addq.w 0x1, 0x4(a6)
0x000039a4   4                 4ebac65a  jsr 0x0(pc)
0x000039a8   2                     4e75  rts
0x000039aa   2                     2848  movea.l a0, a4
0x000039ac   2                     3e1c  move.w (a4)+, d7
0x000039ae   2                     5347  subq.w 0x1, d7
0x000039b0   2                     7028  moveq 0x28, d0
0x000039b2   2                     a31e  invalid
0x000039b4   4                 43fa005c  lea.l 0x3a12(pc), a1
0x000039b8   4                 21490004  move.l a1, 0x4(a0)
0x000039bc   6             317c00040008  move.w 0x4, 0x8(a0)
0x000039c2   4                 102c0004  move.b 0x4(a4), d0
0x000039c6   2                     4880  ext.w d0
0x000039c8   4                 3140000a  move.w d0, 0xa(a0)
0x000039cc   4                 102c0005  move.b 0x5(a4), d0
0x000039d0   2                     4880  ext.w d0
0x000039d2   4                 3140000e  move.w d0, 0xe(a0)
0x000039d6   4                 102c0006  move.b 0x6(a4), d0
0x000039da   2                     4880  ext.w d0
0x000039dc   4                 3140000c  move.w d0, 0xc(a0)
0x000039e0   4                 31540018  move.w (a4), 0x18(a0)
0x000039e4   4                 5c680018  addq.w 0x6, 0x18(a0)
0x000039e8   6             316c0002001a  move.w 0x2(a4), 0x1a(a0)
0x000039ee   4                 5a68001a  addq.w 0x5, 0x1a(a0)
0x000039f2   4                 4268001c  clr.w 0x1c(a0)
0x000039f6   6             317c000a0022  move.w 0xa, 0x22(a0)
0x000039fc   6             317c00020024  move.w 0x2, 0x24(a0)
0x00003a02   4                 20adfefe  move.l -0x102(a5), (a0)
0x00003a06   4                 2b48fefe  move.l a0, -0x102(a5)
0x00003a0a   2                     504c  addq.w 0x8, a4
0x00003a0c   4                 51cfffa2  dbra d7, 0x39b0
0x00003a10   2                     4e75  rts
0x00003a12   2                     3616  move.w (a6), d3
0x00003a14   4                 4efb3002  jmp 0x3a18(pc, d3.w)
0x00003a18   4                 4efa000e  jmp 0x3a28(pc)
0x00003a1c   4                 4efa0024  jmp 0x3a42(pc)
0x00003a20   4                 4efa0038  jmp 0x3a5a(pc)
0x00003a24   4                 4efa0070  jmp 0x3a96(pc)
0x00003a28   4                 343c0002  move.w 0x2, d2
0x00003a2c   4                 536e0002  subq.w 0x1, 0x2(a6)
0x00003a30   4                 6e00009c  bgt.w 0x3ace
0x00003a34   4                 3cbc000c  move.w 0xc, (a6)
0x00003a38   6             3d7c00020002  move.w 0x2, 0x2(a6)
0x00003a3e   4                 6000008e  bra.w 0x3ace
0x00003a42   2                     4242  clr.w d2
0x00003a44   4                 536e0002  subq.w 0x1, 0x2(a6)
0x00003a48   4                 6e000084  bgt.w 0x3ace
0x00003a4c   4                 3cbc0008  move.w 0x8, (a6)
0x00003a50   6             3d7c00020002  move.w 0x2, 0x2(a6)
0x00003a56   4                 60000076  bra.w 0x3ace
0x00003a5a   4                 343c0001  move.w 0x1, d2
0x00003a5e   4                 536e0002  subq.w 0x1, 0x2(a6)
0x00003a62   4                 6e00006a  bgt.w 0x3ace
0x00003a66   2                     4256  clr.w (a6)
0x00003a68   6             3d6e00040002  move.w 0x4(a6), 0x2(a6)
0x00003a6e   4                 48e700c0  movem.l a0-a1, -(a7)
0x00003a72   4                 41edfa0c  lea.l -0x5f4(a5), a0
0x00003a76   4                 43ee0008  lea.l 0x8(a6), a1
0x00003a7a   4                 23480004  move.l a0, 0x4(a1)
0x00003a7e   2                     2290  move.l (a0), (a1)
0x00003a80   2                     2089  move.l a1, (a0)
0x00003a82   2                     2051  movea.l (a1), a0
0x00003a84   4                 b0fc0000  cmpa.w 0x0, a0
0x00003a88   2                     6704  beq.b 0x3a8e
0x00003a8a   4                 21490004  move.l a1, 0x4(a0)
0x00003a8e   4                 4cdf0300  movem.l (a7)+, a0-a1
0x00003a92   4                 6000003a  bra.w 0x3ace
0x00003a96   4                 343c0001  move.w 0x1, d2
0x00003a9a   4                 536e0002  subq.w 0x1, 0x2(a6)
0x00003a9e   4                 6e00002e  bgt.w 0x3ace
0x00003aa2   4                 3cbc0004  move.w 0x4, (a6)
0x00003aa6   6             3d6e00060002  move.w 0x6(a6), 0x2(a6)
0x00003aac   4                 48e700c0  movem.l a0-a1, -(a7)
0x00003ab0   4                 43ee0008  lea.l 0x8(a6), a1
0x00003ab4   4                 20690004  movea.l 0x4(a1), a0
0x00003ab8   2                     2251  movea.l (a1), a1
0x00003aba   2                     2089  move.l a1, (a0)
0x00003abc   4                 b2fc0000  cmpa.w 0x0, a1
0x00003ac0   2                     6704  beq.b 0x3ac6
0x00003ac2   4                 23480004  move.l a0, 0x4(a1)
0x00003ac6   4                 4cdf0300  movem.l (a7)+, a0-a1
0x00003aca   4                 60000002  bra.w 0x3ace
0x00003ace   4                 206dffa0  movea.l -0x60(a5), a0
0x00003ad2   4                 302e0010  move.w 0x10(a6), d0
0x00003ad6   2                     5d40  subq.w 0x6, d0
0x00003ad8   4                 322e0012  move.w 0x12(a6), d1
0x00003adc   2                     5b41  subq.w 0x5, d1
0x00003ade   4                 38280012  move.w 0x12(a0), d4
0x00003ae2   4                 04440020  subi.w 0x20, d4
0x00003ae6   2                     b044  cmp.w d4, d0
0x00003ae8   2                     6d24  blt.b 0x3b0e
0x00003aea   4                 06440220  addi.w 0x220, d4
0x00003aee   2                     b044  cmp.w d4, d0
0x00003af0   2                     6e1c  bgt.b 0x3b0e
0x00003af2   4                 3a280014  move.w 0x14(a0), d5
0x00003af6   4                 0445000a  subi.w 0xa, d5
0x00003afa   2                     b245  cmp.w d5, d1
0x00003afc   2                     6d10  blt.b 0x3b0e
0x00003afe   4                 0645012e  addi.w 0x12e, d5
0x00003b02   2                     b245  cmp.w d5, d1
0x00003b04   2                     6e08  bgt.b 0x3b0e
0x00003b06   4                 226df7b0  movea.l -0x850(a5), a1
0x00003b0a   4                 4ebac4f4  jsr 0x0(pc)
0x00003b0e   2                     4e75  rts
0x00003b10   2                     2848  movea.l a0, a4
0x00003b12   2                     3e1c  move.w (a4)+, d7
0x00003b14   2                     5347  subq.w 0x1, d7
0x00003b16   2                     701c  moveq 0x1c, d0
0x00003b18   2                     a31e  invalid
0x00003b1a   4                 43fa006a  lea.l 0x3b86(pc), a1
0x00003b1e   4                 21490004  move.l a1, 0x4(a0)
0x00003b22   4                 4268001a  clr.w 0x1a(a0)
0x00003b26   4                 315c0008  move.w (a4)+, 0x8(a0)
0x00003b2a   4                 315c000a  move.w (a4)+, 0xa(a0)
0x00003b2e   2                     224a  movea.l a2, a1
0x00003b30   2                     d2dc  adda.w (a4)+, a1
0x00003b32   4                 2149000c  move.l a1, 0xc(a0)
0x00003b36   4                 33510002  move.w (a1), 0x2(a1)
0x00003b3a   6             0669001e0002  addi.w 0x1e, 0x2(a1)
0x00003b40   2                     101c  move.b (a4)+, d0
0x00003b42   2                     4880  ext.w d0
0x00003b44   4                 31400010  move.w d0, 0x10(a0)
0x00003b48   2                     101c  move.b (a4)+, d0
0x00003b4a   2                     4880  ext.w d0
0x00003b4c   2                     6c16  bge.b 0x3b64
0x00003b4e   6             317c0010001a  move.w 0x10, 0x1a(a0)
0x00003b54   6             317c00010018  move.w 0x1, 0x18(a0)
0x00003b5a   2                     4440  neg.w d0
0x00003b5c   4                 33510002  move.w (a1), 0x2(a1)
0x00003b60   4                 53690002  subq.w 0x1, 0x2(a1)
0x00003b64   4                 31400012  move.w d0, 0x12(a0)
0x00003b68   2                     101c  move.b (a4)+, d0
0x00003b6a   2                     4880  ext.w d0
0x00003b6c   4                 31400014  move.w d0, 0x14(a0)
0x00003b70   2                     101c  move.b (a4)+, d0
0x00003b72   2                     4880  ext.w d0
0x00003b74   4                 31400016  move.w d0, 0x16(a0)
0x00003b78   4                 20adfefe  move.l -0x102(a5), (a0)
0x00003b7c   4                 2b48fefe  move.l a0, -0x102(a5)
0x00003b80   4                 51cfff94  dbra d7, 0x3b16
0x00003b84   2                     4e75  rts
0x00003b86   4                 362e0012  move.w 0x12(a6), d3
0x00003b8a   4                 4efb3002  jmp 0x3b8e(pc, d3.w)
0x00003b8e   4                 4efa0012  jmp 0x3ba2(pc)
0x00003b92   4                 4efa007c  jmp 0x3c10(pc)
0x00003b96   4                 4efa0090  jmp 0x3c28(pc)
0x00003b9a   4                 4efa00b2  jmp 0x3c4e(pc)
0x00003b9e   4                 4efa00c8  jmp 0x3c68(pc)
0x00003ba2   4                 343c0001  move.w 0x1, d2
0x00003ba6   4                 536e000a  subq.w 0x1, 0xa(a6)
0x00003baa   4                 6e0000d8  bgt.w 0x3c84
0x00003bae   6             0c6e00010010  cmpi.w 0x1, 0x10(a6)
0x00003bb4   4                 670000ce  beq.w 0x3c84
0x00003bb8   6             3d7c000c0012  move.w 0xc, 0x12(a6)
0x00003bbe   6             3d7c0002000a  move.w 0x2, 0xa(a6)
0x00003bc4   4                 246e0004  movea.l 0x4(a6), a2
0x00003bc8   4                 35520002  move.w (a2), 0x2(a2)
0x00003bcc   4                 536a0002  subq.w 0x1, 0x2(a2)
0x00003bd0   4                 206dff3c  movea.l -0xc4(a5), a0
0x00003bd4   4                 3228000c  move.w 0xc(a0), d1
0x00003bd8   2                     48c1  ext.l d1
0x00003bda   4                 d2a80008  add.l 0x8(a0), d1
0x00003bde   4                 b2ae0004  cmp.l 0x4(a6), d1
0x00003be2   4                 660000a0  bne.w 0x3c84
0x00003be6   4                 3028001a  move.w 0x1a(a0), d0
0x00003bea   4                 0c400000  cmpi.w 0x0, d0
0x00003bee   2                     6710  beq.b 0x3c00
0x00003bf0   4                 0c40003f  cmpi.w 0x3f, d0
0x00003bf4   2                     670a  beq.b 0x3c00
0x00003bf6   4                 0c40000c  cmpi.w 0xc, d0
0x00003bfa   2                     6704  beq.b 0x3c00
0x00003bfc   4                 60000086  bra.w 0x3c84
0x00003c00   2                     2f0e  move.l a6, -(a7)
0x00003c02   2                     2c48  movea.l a0, a6
0x00003c04   2                     504e  addq.w 0x8, a6
0x00003c06   4                 4ead02b2  jsr 0x2b2(a5)
0x00003c0a   2                     2c5f  movea.l (a7)+, a6
0x00003c0c   4                 60000076  bra.w 0x3c84
0x00003c10   4                 536e000a  subq.w 0x1, 0xa(a6)
0x00003c14   4                 6e000084  bgt.w 0x3c9a
0x00003c18   6             3d7c00080012  move.w 0x8, 0x12(a6)
0x00003c1e   6             3d7c0002000a  move.w 0x2, 0xa(a6)
0x00003c24   4                 60000074  bra.w 0x3c9a
0x00003c28   2                     4242  clr.w d2
0x00003c2a   4                 536e000a  subq.w 0x1, 0xa(a6)
0x00003c2e   4                 6e000054  bgt.w 0x3c84
0x00003c32   4                 426e0012  clr.w 0x12(a6)
0x00003c36   6             3d6e000c000a  move.w 0xc(a6), 0xa(a6)
0x00003c3c   4                 246e0004  movea.l 0x4(a6), a2
0x00003c40   4                 35520002  move.w (a2), 0x2(a2)
0x00003c44   6             066a001e0002  addi.w 0x1e, 0x2(a2)
0x00003c4a   4                 60000038  bra.w 0x3c84
0x00003c4e   2                     4242  clr.w d2
0x00003c50   4                 536e000a  subq.w 0x1, 0xa(a6)
0x00003c54   4                 6e00002e  bgt.w 0x3c84
0x00003c58   6             3d7c00040012  move.w 0x4, 0x12(a6)
0x00003c5e   6             3d6e000e000a  move.w 0xe(a6), 0xa(a6)
0x00003c64   4                 6000001e  bra.w 0x3c84
0x00003c68   4                 362e000a  move.w 0xa(a6), d3
0x00003c6c   4                 072dfeb0  btst.l d3, -0x150(a5)
0x00003c70   4                 67000028  beq.w 0x3c9a
0x00003c74   6             3d7c00080012  move.w 0x8, 0x12(a6)
0x00003c7a   6             3d7c0002000a  move.w 0x2, 0xa(a6)
0x00003c80   4                 60000018  bra.w 0x3c9a
0x00003c84   4                 206dffa0  movea.l -0x60(a5), a0
0x00003c88   4                 d46e0008  add.w 0x8(a6), d2
0x00003c8c   2                     3016  move.w (a6), d0
0x00003c8e   4                 322e0002  move.w 0x2(a6), d1
0x00003c92   4                 226df7b4  movea.l -0x84c(a5), a1
0x00003c96   4                 4ebac368  jsr 0x0(pc)
0x00003c9a   2                     4e75  rts
0x00003c9c   4                 4e560000  link.w a6, 0x0
0x00003ca0   4                 48e73c20  movem.l d2-d5/a2, -(a7)
0x00003ca4   4                 3a2e0008  move.w 0x8(a6), d5
0x00003ca8   4                 302e000a  move.w 0xa(a6), d0
0x00003cac   4                 226e000c  movea.l 0xc(a6), a1
0x00003cb0   4                 206e0010  movea.l 0x10(a6), a0
0x00003cb4   2                     e245  asr.w 0x1, d5
0x00003cb6   2                     2449  movea.l a1, a2
0x00003cb8   2                     425a  clr.w (a2)+
0x00003cba   4                 51cdfffc  dbra d5, 0x3cb8
0x00003cbe   4                 323c0007  move.w 0x7, d1
0x00003cc2   2                     1418  move.b (a0)+, d2
0x00003cc4   2                     6a64  bpl.b 0x3d2a
0x00003cc6   4                 0242007f  andi.w 0x7f, d2
0x00003cca   2                     6604  bne.b 0x3cd0
0x00003ccc   4                 6000007a  bra.w 0x3d48
0x00003cd0   4                 08020006  btst.b 0x6, d2
0x00003cd4   2                     6736  beq.b 0x3d0c
0x00003cd6   4                 0242003f  andi.w 0x3f, d2
0x00003cda   2                     5e42  addq.w 0x7, d2
0x00003cdc   2                     9441  sub.w d1, d2
0x00003cde   2                     5342  subq.w 0x1, d2
0x00003ce0   2                     76ff  moveq 0xff, d3
0x00003ce2   2                     7807  moveq 0x7, d4
0x00003ce4   2                     9841  sub.w d1, d4
0x00003ce6   2                     e82b  lsr.b d4, d3
0x00003ce8   2                     8719  or.b d3, (a1)+
0x00003cea   2                     3602  move.w d2, d3
0x00003cec   2                     e643  asr.w 0x3, d3
0x00003cee   2                     6004  bra.b 0x3cf4
0x00003cf0   4                 12fc00ff  move.b 0xff, (a1)+
0x00003cf4   4                 51cbfffa  dbra d3, 0x3cf0
0x00003cf8   4                 323c0007  move.w 0x7, d1
0x00003cfc   4                 02420007  andi.w 0x7, d2
0x00003d00   4                 363cff00  move.w 0xff00, d3
0x00003d04   2                     e463  asr.w d2, d3
0x00003d06   2                     8711  or.b d3, (a1)
0x00003d08   2                     9242  sub.w d2, d1
0x00003d0a   2                     60b6  bra.b 0x3cc2
0x00003d0c   4                 0242003f  andi.w 0x3f, d2
0x00003d10   2                     5e42  addq.w 0x7, d2
0x00003d12   2                     9441  sub.w d1, d2
0x00003d14   2                     5342  subq.w 0x1, d2
0x00003d16   2                     5249  addq.w 0x1, a1
0x00003d18   2                     3602  move.w d2, d3
0x00003d1a   2                     e643  asr.w 0x3, d3
0x00003d1c   2                     d2c3  adda.w d3, a1
0x00003d1e   4                 323c0007  move.w 0x7, d1
0x00003d22   4                 02420007  andi.w 0x7, d2
0x00003d26   2                     9242  sub.w d2, d1
0x00003d28   2                     6098  bra.b 0x3cc2
0x00003d2a   4                 0242007f  andi.w 0x7f, d2
0x00003d2e   2                     3601  move.w d1, d3
0x00003d30   2                     5443  addq.w 0x2, d3
0x00003d32   2                     e76a  lsl.w d3, d2
0x00003d34   4                 85290001  or.b d2, 0x1(a1)
0x00003d38   2                     e04a  lsr.w 0x8, d2
0x00003d3a   2                     8511  or.b d2, (a1)
0x00003d3c   2                     5f41  subq.w 0x7, d1
0x00003d3e   2                     6c04  bge.b 0x3d44
0x00003d40   2                     5041  addq.w 0x8, d1
0x00003d42   2                     5249  addq.w 0x1, a1
0x00003d44   4                 6000ff7c  bra.w 0x3cc2
0x00003d48   4                 4cdf043c  movem.l (a7)+, d2-d5/a2
0x00003d4c   2                     4e5e  unlk a6
0x00003d4e   2                     205f  movea.l (a7)+, a0
0x00003d50   4                 defc000c  adda.w 0xc, a7
0x00003d54   2                     4ed0  jmp (a0)
0x00003d56   4                 4e560000  link.w a6, 0x0
0x00003d5a   4                 48e7f830  movem.l d0-d4/a2-a3, -(a7)
0x00003d5e   4                 206e0008  movea.l 0x8(a6), a0
0x00003d62   4                 246e000c  movea.l 0xc(a6), a2
0x00003d66   2                     3018  move.w (a0)+, d0
0x00003d68   2                     2248  movea.l a0, a1
0x00003d6a   2                     5089  addq.l 0x8, a1
0x00003d6c   2                     2649  movea.l a1, a3
0x00003d6e   2                     d6c0  adda.w d0, a3
0x00003d70   2                     1819  move.b (a1)+, d4
0x00003d72   4                 6d000022  blt.w 0x3d96
0x00003d76   4                 08040006  btst.b 0x6, d4
0x00003d7a   4                 67000052  beq.w 0x3dce
0x00003d7e   4                 08040005  btst.b 0x5, d4
0x00003d82   4                 6600002c  bne.w 0x3db0
0x00003d86   2                     1219  move.b (a1)+, d1
0x00003d88   4                 0244001f  andi.w 0x1f, d4
0x00003d8c   2                     14c1  move.b d1, (a2)+
0x00003d8e   4                 51ccfffc  dbra d4, 0x3d8c
0x00003d92   4                 60000046  bra.w 0x3dda
0x00003d96   2                     1604  move.b d4, d3
0x00003d98   4                 02430007  andi.w 0x7, d3
0x00003d9c   4                 12303000  move.b (a0, d3.w), d1
0x00003da0   2                     e61c  ror.b 0x3, d4
0x00003da2   4                 0244000f  andi.w 0xf, d4
0x00003da6   2                     14c1  move.b d1, (a2)+
0x00003da8   4                 51ccfffc  dbra d4, 0x3da6
0x00003dac   4                 6000002c  bra.w 0x3dda
0x00003db0   2                     1604  move.b d4, d3
0x00003db2   2                     e41b  ror.b 0x2, d3
0x00003db4   4                 02430007  andi.w 0x7, d3
0x00003db8   4                 12303000  move.b (a0, d3.w), d1
0x00003dbc   4                 02440003  andi.w 0x3, d4
0x00003dc0   2                     e15c  rol.w 0x8, d4
0x00003dc2   2                     8819  or.b (a1)+, d4
0x00003dc4   2                     14c1  move.b d1, (a2)+
0x00003dc6   4                 51ccfffc  dbra d4, 0x3dc4
0x00003dca   4                 6000000e  bra.w 0x3dda
0x00003dce   2                     4884  ext.w d4
0x00003dd0   2                     14d9  move.b (a1)+, (a2)+
0x00003dd2   4                 51ccfffc  dbra d4, 0x3dd0
0x00003dd6   4                 60000002  bra.w 0x3dda
0x00003dda   2                     b7c9  cmpa.l a1, a3
0x00003ddc   2                     6e92  bgt.b 0x3d70
0x00003dde   4                 4cdf0c1f  movem.l (a7)+, d0-d4/a2-a3
0x00003de2   2                     4e5e  unlk a6
0x00003de4   2                     205f  movea.l (a7)+, a0
0x00003de6   2                     504f  addq.w 0x8, a7
0x00003de8   2                     4ed0  jmp (a0)

0x00003dea   4                 48e73e00  movem.l d2-d6, -(a7)
0x00003dee   2                     3400  move.w d0, d2
0x00003df0   4                 d469000a  add.w 0xa(a1), d2
0x00003df4   2                     3601  move.w d1, d3
0x00003df6   4                 d669000c  add.w 0xc(a1), d3
0x00003dfa   2                     2050  movea.l (a0), a0
0x00003dfc   4                 b0fc0000  cmpa.w 0x0, a0
0x00003e00   2                     6750  beq.b 0x3e52
0x00003e02   4                 38280008  move.w 0x8(a0), d4
0x00003e06   2                     67f2  beq.b 0x3dfa
0x00003e08   4                 3a28000c  move.w 0xc(a0), d5
0x00003e0c   4                 3c280010  move.w 0x10(a0), d6
0x00003e10   2                     6d0c  blt.b 0x3e1e
0x00003e12   2                     b444  cmp.w d4, d2
0x00003e14   2                     6de4  blt.b 0x3dfa
0x00003e16   2                     d846  add.w d6, d4
0x00003e18   2                     b044  cmp.w d4, d0
0x00003e1a   2                     6ede  bgt.b 0x3dfa
0x00003e1c   2                     600a  bra.b 0x3e28
0x00003e1e   2                     b044  cmp.w d4, d0
0x00003e20   2                     6ed8  bgt.b 0x3dfa
0x00003e22   2                     d846  add.w d6, d4
0x00003e24   2                     b444  cmp.w d4, d2
0x00003e26   2                     6dd2  blt.b 0x3dfa
0x00003e28   4                 3c280014  move.w 0x14(a0), d6
0x00003e2c   2                     6d0e  blt.b 0x3e3c
0x00003e2e   2                     b645  cmp.w d5, d3
0x00003e30   2                     6dc8  blt.b 0x3dfa
0x00003e32   4                 da680014  add.w 0x14(a0), d5
0x00003e36   2                     b245  cmp.w d5, d1
0x00003e38   2                     6ec0  bgt.b 0x3dfa
0x00003e3a   2                     600c  bra.b 0x3e48
0x00003e3c   2                     b245  cmp.w d5, d1
0x00003e3e   2                     6eba  bgt.b 0x3dfa
0x00003e40   4                 da680014  add.w 0x14(a0), d5
0x00003e44   2                     b645  cmp.w d5, d3
0x00003e46   2                     6db2  blt.b 0x3dfa
0x00003e48   4                 30280010  move.w 0x10(a0), d0
0x00003e4c   4                 32280014  move.w 0x14(a0), d1
0x00003e50   2                     6002  bra.b 0x3e54
0x00003e52   2                     91c8  suba.l a0, a0
0x00003e54   4                 b0fc0000  cmpa.w 0x0, a0
0x00003e58   4                 4cdf007c  movem.l (a7)+, d2-d6
0x00003e5c   2                     4e75  rts
0x00003e5e   4                 426dff0a  clr.w -0xf6(a5)
0x00003e62   2                     4e75  rts
0x00003e64   4                 48e74040  movem.l d1/a1, -(a7)
0x00003e68   2                     2208  move.l a0, d1
0x00003e6a   2                     8287  or.l d7, d1
0x00003e6c   2                     2041  movea.l d1, a0
0x00003e6e   4                 226dff0c  movea.l -0xf4(a5), a1
0x00003e72   4                 322dff0a  move.w -0xf6(a5), d1
0x00003e76   4                 44fc0000  move.w 0x0, ccr
0x00003e7a   2                     6002  bra.b 0x3e7e
0x00003e7c   2                     4a99  tst.l (a1)+
0x00003e7e   4                 57c9fffc  dbeq d1, 0x3e7c
0x00003e82   2                     4a41  tst.w d1
0x00003e84   2                     6c08  bge.b 0x3e8e
0x00003e86   4                 526dff0a  addq.w 0x1, -0xf6(a5)
0x00003e8a   2                     2288  move.l a0, (a1)
0x00003e8c   2                     6002  bra.b 0x3e90
0x00003e8e   2                     2308  move.l a0, -(a1)
0x00003e90   4                 4cdf0202  movem.l (a7)+, d1/a1
0x00003e94   2                     4e75  rts
0x00003e96   4                 48e7c040  movem.l d0-d1/a1, -(a7)
0x00003e9a   4                 226dff0c  movea.l -0xf4(a5), a1
0x00003e9e   4                 302dff0a  move.w -0xf6(a5), d0
0x00003ea2   2                     2208  move.l a0, d1
0x00003ea4   6             028100ffffff  andi.l 0xffffff, d1
0x00003eaa   2                     2041  movea.l d1, a0
0x00003eac   2                     2219  move.l (a1)+, d1
0x00003eae   6             028100ffffff  andi.l 0xffffff, d1
0x00003eb4   2                     b1c1  cmpa.l d1, a0
0x00003eb6   4                 57c8fff4  dbeq d0, 0x3eac
0x00003eba   2                     4a40  tst.w d0
0x00003ebc   2                     6d02  blt.b 0x3ec0
0x00003ebe   2                     42a1  clr.l -(a1)
0x00003ec0   4                 4cdf0203  movem.l (a7)+, d0-d1/a1
0x00003ec4   2                     4e75  rts
0x00003ec6   4                 48e73e30  movem.l d2-d6/a2-a3, -(a7)
0x00003eca   4                 246dff0c  movea.l -0xf4(a5), a2
0x00003ece   4                 3c2dff0a  move.w -0xf6(a5), d6
0x00003ed2   2                     3400  move.w d0, d2
0x00003ed4   4                 d469000a  add.w 0xa(a1), d2
0x00003ed8   2                     3601  move.w d1, d3
0x00003eda   4                 d669000c  add.w 0xc(a1), d3
0x00003ede   2                     603e  bra.b 0x3f1e
0x00003ee0   2                     265a  movea.l (a2)+, a3
0x00003ee2   4                 b6fc0000  cmpa.w 0x0, a3
0x00003ee6   2                     6736  beq.b 0x3f1e
0x00003ee8   2                     3813  move.w (a3), d4
0x00003eea   4                 3a2b0002  move.w 0x2(a3), d5
0x00003eee   2                     b840  cmp.w d0, d4
0x00003ef0   2                     6d28  blt.b 0x3f1a
0x00003ef2   2                     ba41  cmp.w d1, d5
0x00003ef4   2                     6d24  blt.b 0x3f1a
0x00003ef6   2                     b842  cmp.w d2, d4
0x00003ef8   2                     6e20  bgt.b 0x3f1a
0x00003efa   2                     ba43  cmp.w d3, d5
0x00003efc   2                     6e1c  bgt.b 0x3f1a
0x00003efe   4                 986a0080  sub.w 0x80(a2), d4
0x00003f02   2                     3004  move.w d4, d0
0x00003f04   4                 9a6a0082  sub.w 0x82(a2), d5
0x00003f08   2                     3205  move.w d5, d1
0x00003f0a   2                     240b  move.l a3, d2
0x00003f0c   6             0282ff000000  andi.l 0xff000000, d2
0x00003f12   2                     2042  movea.l d2, a0
0x00003f14   4                 44fc0000  move.w 0x0, ccr
0x00003f18   2                     600c  bra.b 0x3f26
0x00003f1a   4                 25530080  move.l (a3), 0x80(a2)
0x00003f1e   4                 51ceffc0  dbra d6, 0x3ee0
0x00003f22   4                 44fc0004  move.w 0x4, ccr
0x00003f26   4                 4cdf0c7c  movem.l (a7)+, d2-d6/a2-a3
0x00003f2a   2                     4e75  rts
0x00003f2c   4                 48e73800  movem.l d2-d4, -(a7)
0x00003f30   2                     3400  move.w d0, d2
0x00003f32   4                 d469000a  add.w 0xa(a1), d2
0x00003f36   2                     3601  move.w d1, d3
0x00003f38   4                 d669000c  add.w 0xc(a1), d3
0x00003f3c   2                     2050  movea.l (a0), a0
0x00003f3e   4                 b0fc0000  cmpa.w 0x0, a0
0x00003f42   4                 67000022  beq.w 0x3f66
0x00003f46   4                 38280008  move.w 0x8(a0), d4
0x00003f4a   2                     b842  cmp.w d2, d4
0x00003f4c   2                     6eee  bgt.b 0x3f3c
0x00003f4e   4                 d8680012  add.w 0x12(a0), d4
0x00003f52   2                     b840  cmp.w d0, d4
0x00003f54   2                     6de6  blt.b 0x3f3c
0x00003f56   4                 3828000a  move.w 0xa(a0), d4
0x00003f5a   2                     b843  cmp.w d3, d4
0x00003f5c   2                     6ede  bgt.b 0x3f3c
0x00003f5e   4                 d8680014  add.w 0x14(a0), d4
0x00003f62   2                     b841  cmp.w d1, d4
0x00003f64   2                     6dd6  blt.b 0x3f3c
0x00003f66   4                 4cdf001c  movem.l (a7)+, d2-d4
0x00003f6a   2                     4e75  rts
0x00003f6c   4                 48e71c00  movem.l d3-d5, -(a7)
0x00003f70   2                     4243  clr.w d3
0x00003f72   2                     3a01  move.w d1, d5
0x00003f74   2                     e465  asr.w d2, d5
0x00003f76   4                 3e323000  move.w (a2, d3.w), d7
0x00003f7a   2                     6740  beq.b 0x3fbc
0x00003f7c   2                     e467  asr.w d2, d7
0x00003f7e   2                     be45  cmp.w d5, d7
0x00003f80   2                     6c04  bge.b 0x3f86
0x00003f82   2                     5843  addq.w 0x4, d3
0x00003f84   2                     60f0  bra.b 0x3f76
0x00003f86   4                 6e00003a  bgt.w 0x3fc2
0x00003f8a   4                 38323002  move.w 0x2(a2, d3.w), d4
0x00003f8e   4                 b0724002  cmp.w 0x2(a2, d4.w), d0
0x00003f92   2                     6e1c  bgt.b 0x3fb0
0x00003f94   4                 b0724000  cmp.w (a2, d4.w), d0
0x00003f98   2                     6de8  blt.b 0x3f82
0x00003f9a   6             0c7202004004  cmpi.w 0x200, 0x4(a2, d4.w)
0x00003fa0   2                     6c0e  bge.b 0x3fb0
0x00003fa2   4                 32323000  move.w (a2, d3.w), d1
0x00003fa6   2                     3e04  move.w d4, d7
0x00003fa8   2                     4847  swap d7
0x00003faa   2                     3e03  move.w d3, d7
0x00003fac   4                 60000016  bra.w 0x3fc4
0x00003fb0   4                 06440012  addi.w 0x12, d4
0x00003fb4   4                 4a724000  tst.w (a2, d4.w)
0x00003fb8   2                     67c8  beq.b 0x3f82
0x00003fba   2                     60d2  bra.b 0x3f8e
0x00003fbc   4                 3e3cffff  move.w 0xffff, d7
0x00003fc0   2                     6002  bra.b 0x3fc4
0x00003fc2   2                     4247  clr.w d7
0x00003fc4   2                     4a47  tst.w d7
0x00003fc6   4                 4cdf0038  movem.l (a7)+, d3-d5
0x00003fca   2                     4e75  rts
0x00003fcc   2                     700a  moveq 0xa, d0
0x00003fce   2                     a31e  invalid
0x00003fd0   4                 43fa0030  lea.l 0x4002(pc), a1
0x00003fd4   4                 21490004  move.l a1, 0x4(a0)
0x00003fd8   4                 42680008  clr.w 0x8(a0)
0x00003fdc   4                 20adfefe  move.l -0x102(a5), (a0)
0x00003fe0   4                 2b48fefe  move.l a0, -0x102(a5)
0x00003fe4   6             3b7c0002fef2  move.w 0x2, -0x10e(a5)
0x00003fea   8         0cad7ffffffffede  cmpi.l 0x7fffffff, -0x122(a5)
0x00003ff2   2                     660c  bne.b 0x4000
0x00003ff4   4                 206dfee2  movea.l -0x11e(a5), a0
0x00003ff8   2                     2050  movea.l (a0), a0
0x00003ffa   6             2b68002cfede  move.l 0x2c(a0), -0x122(a5)
0x00004000   2                     4e75  rts
0x00004002   2                     4a56  tst.w (a6)
0x00004004   2                     6f10  ble.b 0x4016
0x00004006   2                     5356  subq.w 0x1, (a6)
0x00004008   2                     660c  bne.b 0x4016
0x0000400a   2                     3f00  move.w d0, -(a7)
0x0000400c   4                 303c0008  move.w 0x8, d0
0x00004010   4                 4ead0042  jsr 0x42(a5)
0x00004014   2                     301f  move.w (a7)+, d0
0x00004016   4                 61000004  bsr.w 0x401c
0x0000401a   2                     4e75  rts
0x0000401c   4                 4a6dfef2  tst.w -0x10e(a5)
0x00004020   4                 67000054  beq.w 0x4076
0x00004024   6             0c6d0001fef2  cmpi.w 0x1, -0x10e(a5)
0x0000402a   4                 67000046  beq.w 0x4072
0x0000402e   4                 202dfef4  move.l -0x10c(a5), d0
0x00004032   4                 b0adfede  cmp.l -0x122(a5), d0
0x00004036   2                     6d36  blt.b 0x406e
0x00004038   4                 526dfef8  addq.w 0x1, -0x108(a5)
0x0000403c   4                 206dfee2  movea.l -0x11e(a5), a0
0x00004040   2                     2050  movea.l (a0), a0
0x00004042   4                 d0fc0030  adda.w 0x30, a0
0x00004046   4                 43edfede  lea.l -0x122(a5), a1
0x0000404a   2                     5889  addq.l 0x4, a1
0x0000404c   4                 023c0007  andi.b 0x7, ccr
0x00004050   2                     7203  moveq 0x3, d1
0x00004052   2                     c308  abcd.b -(a0), -(a1)
0x00004054   4                 51c9fffc  dbra d1, 0x4052
0x00004058   4                 b0adfede  cmp.l -0x122(a5), d0
0x0000405c   2                     6cda  bge.b 0x4038
0x0000405e   4                 3cbc000d  move.w 0xd, (a6)
0x00004062   2                     3f00  move.w d0, -(a7)
0x00004064   4                 303c0008  move.w 0x8, d0
0x00004068   4                 4ead0042  jsr 0x42(a5)
0x0000406c   2                     301f  move.w (a7)+, d0
0x0000406e   4                 4eba0042  jsr 0x40b2(pc)
0x00004072   4                 4ead01aa  jsr 0x1aa(a5)
0x00004076   2                     4e75  rts
0x00004078   4                 307c09fa  movea.w 0x9fa, a0
0x0000407c   2                     4298  clr.l (a0)+
0x0000407e   4                 43edfef4  lea.l -0x10c(a5), a1
0x00004082   2                     5889  addq.l 0x4, a1
0x00004084   4                 3140fffe  move.w d0, -0x2(a0)
0x00004088   4                 023c0007  andi.b 0x7, ccr
0x0000408c   2                     7203  moveq 0x3, d1
0x0000408e   2                     c308  abcd.b -(a0), -(a1)
0x00004090   4                 51c9fffc  dbra d1, 0x408e
0x00004094   6             3b7c0002fef2  move.w 0x2, -0x10e(a5)
0x0000409a   2                     4e75  rts
0x0000409c   4                 48e740c0  movem.l d1/a0-a1, -(a7)
0x000040a0   4                 206dfee2  movea.l -0x11e(a5), a0
0x000040a4   2                     2050  movea.l (a0), a0
0x000040a6   4                 30300000  move.w (a0, d0.w), d0
0x000040aa   2                     61cc  bsr.b 0x4078
0x000040ac   4                 4cdf0302  movem.l (a7)+, d1/a0-a1
0x000040b0   2                     4e75  rts
0x000040b2   4                 202dfef4  move.l -0x10c(a5), d0
0x000040b6   4                 41edfee6  lea.l -0x11a(a5), a0
0x000040ba   6             20fc0acacaca  move.l 0xacacaca, (a0)+
0x000040c0   6             20fccacacaca  move.l 0xcacacaca, (a0)+
0x000040c6   4                 30fccaca  move.w 0xcaca, (a0)+
0x000040ca   4                 10fc0030  move.b 0x30, (a0)+
0x000040ce   4                 343c0003  move.w 0x3, d2
0x000040d2   2                     2200  move.l d0, d1
0x000040d4   2                     e888  lsr.l 0x4, d0
0x000040d6   4                 0241000f  andi.w 0xf, d1
0x000040da   4                 06410030  addi.w 0x30, d1
0x000040de   2                     1101  move.b d1, -(a0)
0x000040e0   2                     2200  move.l d0, d1
0x000040e2   2                     670e  beq.b 0x40f2
0x000040e4   2                     5342  subq.w 0x1, d2
0x000040e6   2                     6eec  bgt.b 0x40d4
0x000040e8   4                 343c0003  move.w 0x3, d2
0x000040ec   4                 113c002c  move.b 0x2c, -(a0)
0x000040f0   2                     60e2  bra.b 0x40d4
0x000040f2   2                     4e75  rts
0x000040f4   4                 206dfee2  movea.l -0x11e(a5), a0
0x000040f8   2                     2050  movea.l (a0), a0
0x000040fa   4                 48e78080  movem.l d0/a0, -(a7)
0x000040fe   4                 30300000  move.w (a0, d0.w), d0
0x00004102   4                 4ebaff74  jsr 0x4078(pc)
0x00004106   4                 4cdf0101  movem.l (a7)+, d0/a0
0x0000410a   4                 30300002  move.w 0x2(a0, d0.w), d0
0x0000410e   4                 322dff22  move.w -0xde(a5), d1
0x00004112   2                     e041  asr.w 0x8, d1
0x00004114   2                     c0c1  mulu.w d1, d0
0x00004116   6             0c800009ffff  cmpi.l 0x9ffff, d0
0x0000411c   2                     6f06  ble.b 0x4124
0x0000411e   6             203c0009ffff  move.l 0x9ffff, d0
0x00004124   2                     7400  moveq 0x0, d2
0x00004126   2                     7200  moveq 0x0, d1
0x00004128   4                 80fc000a  divu.w 0xa, d0
0x0000412c   2                     4840  swap d0
0x0000412e   2                     7600  moveq 0x0, d3
0x00004130   2                     3600  move.w d0, d3
0x00004132   2                     e3ab  lsl.l d1, d3
0x00004134   2                     8483  or.l d3, d2
0x00004136   2                     5841  addq.w 0x4, d1
0x00004138   2                     4240  clr.w d0
0x0000413a   2                     4840  swap d0
0x0000413c   2                     66ea  bne.b 0x4128
0x0000413e   4                 307c09fa  movea.w 0x9fa, a0
0x00004142   2                     20c2  move.l d2, (a0)+
0x00004144   4                 43edfef4  lea.l -0x10c(a5), a1
0x00004148   2                     5889  addq.l 0x4, a1
0x0000414a   4                 023c0007  andi.b 0x7, ccr
0x0000414e   2                     7203  moveq 0x3, d1
0x00004150   2                     c308  abcd.b -(a0), -(a1)
0x00004152   4                 51c9fffc  dbra d1, 0x4150
0x00004156   4                 6000000e  bra.w 0x4166
0x0000415a   2                     205f  movea.l (a7)+, a0
0x0000415c   2                     201f  move.l (a7)+, d0
0x0000415e   2                     2f08  move.l a0, -(a7)
0x00004160   2                     2f03  move.l d3, -(a7)
0x00004162   2                     61b2  bsr.b 0x4116
0x00004164   2                     261f  move.l (a7)+, d3
0x00004166   2                     4e75  rts
0x00004168   4                 4a6dfe9c  tst.w -0x164(a5)
0x0000416c   2                     671a  beq.b 0x4188
0x0000416e   4                 302dfe90  move.w -0x170(a5), d0
0x00004172   4                 546dfe90  addq.w 0x2, -0x170(a5)
0x00004176   6             026d000efe90  andi.w 0xe, -0x170(a5)
0x0000417c   4                 303b001a  move.w 0x4198(pc, d0.w), d0
0x00004180   2                     4640  not.w d0
0x00004182   4                 0a40abcd  eori.w 0xabcd, d0
0x00004186   2                     4e75  rts
0x00004188   4                 48e760e0  movem.l d1-d2/a0-a2, -(a7)
0x0000418c   2                     4267  clr.w -(a7)
0x0000418e   2                     a861  invalid
0x00004190   2                     544f  addq.w 0x2, a7
0x00004192   4                 4cdf0706  movem.l (a7)+, d1-d2/a0-a2
0x00004196   2                     4e75  rts
0x00004198   2                     8510  or.b d2, (a0)
0x0000419a   2                     4058  negx.w (a0)+
0x0000419c   4                 08d00476  
0x000041a0   2                     c121  and.b d0, -(a1)
0x000041a2   2                     4195  chk.w (a5), d0
0x000041a4   2                     b717  eor.b d3, (a7)
0x000041a6  10     399141fa000e21c80a6c  move.w (a1), ([0xe21c8], 0xa6c)
0x000041b0   2                     4e75  rts
0x000041b2   4                 42b80a6c  clr.l 0xa6c.w
0x000041b6   2                     4e75  rts
0x000041b8   2                     4a40  tst.w d0
0x000041ba   4                 6600000e  bne.w 0x41ca
0x000041be   4                 48e7e0e0  movem.l d0-d2/a0-a2, -(a7)
0x000041c2   4                 4ead013a  jsr 0x13a(a5)
0x000041c6   4                 4cdf0707  movem.l (a7)+, d0-d2/a0-a2
0x000041ca   2                     4e75  rts
0x000041cc   2                     221f  move.l (a7)+, d1
0x000041ce   2                     301f  move.w (a7)+, d0
0x000041d0   2                     2f01  move.l d1, -(a7)
0x000041d2   2                     3200  move.w d0, d1
0x000041d4   4                 04410064  subi.w 0x64, d1
0x000041d8   2                     e541  asl.w 0x2, d1
0x000041da   4                 41edf3f0  lea.l -0xc10(a5), a0
0x000041de   2                     d0c1  adda.w d1, a0
0x000041e0   2                     2f08  move.l a0, -(a7)
0x000041e2   2                     3f00  move.w d0, -(a7)
0x000041e4   4                 4ead01ba  jsr 0x1ba(a5)
0x000041e8   2                     4e75  rts
0x000041ea   2                     221f  move.l (a7)+, d1
0x000041ec   2                     301f  move.w (a7)+, d0
0x000041ee   2                     2f01  move.l d1, -(a7)
0x000041f0   2                     3200  move.w d0, d1
0x000041f2   4                 04410064  subi.w 0x64, d1
0x000041f6   2                     e541  asl.w 0x2, d1
0x000041f8   4                 41edf3f0  lea.l -0xc10(a5), a0
0x000041fc   2                     d0c1  adda.w d1, a0
0x000041fe   2                     2f08  move.l a0, -(a7)
0x00004200   4                 4ead01c2  jsr 0x1c2(a5)
0x00004204   2                     4e75  rts
0x00004206   2                     221f  move.l (a7)+, d1
0x00004208   2                     301f  move.w (a7)+, d0
0x0000420a   2                     2f01  move.l d1, -(a7)
0x0000420c   2                     3200  move.w d0, d1
0x0000420e   4                 044107d0  subi.w 0x7d0, d1
0x00004212   2                     e541  asl.w 0x2, d1
0x00004214   4                 41edf8cc  lea.l -0x734(a5), a0
0x00004218   2                     d0c1  adda.w d1, a0
0x0000421a   2                     2f08  move.l a0, -(a7)
0x0000421c   2                     3f00  move.w d0, -(a7)
0x0000421e   4                 4ead01e2  jsr 0x1e2(a5)
0x00004222   2                     4e75  rts
0x00004224   2                     221f  move.l (a7)+, d1
0x00004226   2                     301f  move.w (a7)+, d0
0x00004228   2                     2f01  move.l d1, -(a7)
0x0000422a   2                     3200  move.w d0, d1
0x0000422c   4                 044107d0  subi.w 0x7d0, d1
0x00004230   2                     e541  asl.w 0x2, d1
0x00004232   4                 41edf8cc  lea.l -0x734(a5), a0
0x00004236   2                     d0c1  adda.w d1, a0
0x00004238   2                     2f08  move.l a0, -(a7)
0x0000423a   4                 4ead01c2  jsr 0x1c2(a5)
0x0000423e   2                     4e75  rts
0x00004240   2                     700c  moveq 0xc, d0
0x00004242   2                     a11e  invalid
0x00004244   4                 43fa0022  lea.l 0x4268(pc), a1
0x00004248   4                 21490004  move.l a1, 0x4(a0)
0x0000424c   8         217c0000ffff0008  move.l 0xffff, 0x8(a0)
0x00004254   4                 4268000a  clr.w 0xa(a0)
0x00004258   4                 20adfefe  move.l -0x102(a5), (a0)
0x0000425c   4                 2b48fefe  move.l a0, -0x102(a5)
0x00004260   6             3b7c6400ff22  move.w 0x6400, -0xde(a5)
0x00004266   2                     4e75  rts
0x00004268   4                 4a6dff22  tst.w -0xde(a5)
0x0000426c   2                     672c  beq.b 0x429a
0x0000426e   4                 5d6dff22  subq.w 0x6, -0xde(a5)
0x00004272   6             0c6d0f00ff22  cmpi.w 0xf00, -0xde(a5)
0x00004278   4                 6e000020  bgt.w 0x429a
0x0000427c   4                 536df9f8  subq.w 0x1, -0x608(a5)
0x00004280   2                     6e18  bgt.b 0x429a
0x00004282   4                 102dff22  move.b -0xde(a5), d0
0x00004286   2                     4880  ext.w d0
0x00004288   2                     5640  addq.w 0x3, d0
0x0000428a   4                 3b40f9f8  move.w d0, -0x608(a5)
0x0000428e   2                     3f00  move.w d0, -(a7)
0x00004290   4                 303c0018  move.w 0x18, d0
0x00004294   4                 4ead0042  jsr 0x42(a5)
0x00004298   2                     301f  move.w (a7)+, d0
0x0000429a   4                 536e0002  subq.w 0x1, 0x2(a6)
0x0000429e   2                     6e3e  bgt.b 0x42de
0x000042a0   4                 426e0002  clr.w 0x2(a6)
0x000042a4   4                 102dff22  move.b -0xde(a5), d0
0x000042a8   2                     4880  ext.w d0
0x000042aa   2                     b016  cmp.b (a6), d0
0x000042ac   4                 6700008c  beq.w 0x433a
0x000042b0   2                     1c80  move.b d0, (a6)
0x000042b2   6             3d7c00020002  move.w 0x2, 0x2(a6)
0x000042b8   2                     4a40  tst.w d0
0x000042ba   2                     6c02  bge.b 0x42be
0x000042bc   2                     4240  clr.w d0
0x000042be   4                 41fa0062  lea.l 0x4322(pc), a0
0x000042c2   4                 32280002  move.w 0x2(a0), d1
0x000042c6   2                     d240  add.w d0, d1
0x000042c8   4                 31410006  move.w d1, 0x6(a0)
0x000042cc   4                 41fa004c  lea.l 0x431a(pc), a0
0x000042d0   4                 32280006  move.w 0x6(a0), d1
0x000042d4   4                 04400064  subi.w 0x64, d0
0x000042d8   2                     d240  add.w d0, d1
0x000042da   4                 31410002  move.w d1, 0x2(a0)
0x000042de   6             0c6e00020002  cmpi.w 0x2, 0x2(a6)
0x000042e4   2                     6f06  ble.b 0x42ec
0x000042e6   6             3d7c00010002  move.w 0x1, 0x2(a6)
0x000042ec   4                 41edffea  lea.l -0x16(a5), a0
0x000042f0   4                 b1edffa0  cmpa.l -0x60(a5), a0
0x000042f4   2                     6606  bne.b 0x42fc
0x000042f6   4                 486dffc6  pea.l -0x3a(a5)
0x000042fa   2                     6004  bra.b 0x4300
0x000042fc   4                 486dffb8  pea.l -0x48(a5)
0x00004300   2                     a875  invalid
0x00004302   4                 487a0016  pea.l 0x431a(pc)
0x00004306   4                 487a002a  pea.l 0x4332(pc)
0x0000430a   2                     a8a5  invalid
0x0000430c   4                 487a0014  pea.l 0x4322(pc)
0x00004310   4                 487a0018  pea.l 0x432a(pc)
0x00004314   2                     a8a5  invalid
0x00004316   4                 60000022  bra.w 0x433a
0x0000431a   4                 014a0000  movep.l 0x0(a2), d0
0x0000431e   2                     0151  bchg.b d0, (a1)
0x00004320   2                     0150  bchg.b d0, (a0)
0x00004322   4                 014a00ec  movep.l 0xec(a2), d0
0x00004326   2                     0151  bchg.b d0, (a1)
0x00004328   4                 000055aa  ori.b 0xaa, d0
0x0000432c   4                 55aa55aa  subq.l 0x2, 0x55aa(a2)
0x00004330   4                 55aa0000  subq.l 0x2, 0x0(a2)
0x00004334   4                 00000000  ori.b 0x0, d0
0x00004338   4                 00004e75  ori.b 0x75, d0
0x0000433c   2                     2648  movea.l a0, a3
0x0000433e   2                     2849  movea.l a1, a4
0x00004340   2                     7018  moveq 0x18, d0
0x00004342   2                     a11e  invalid
0x00004344   4                 43fa0022  lea.l 0x4368(pc), a1
0x00004348   4                 21490004  move.l a1, 0x4(a0)
0x0000434c   4                 214b0008  move.l a3, 0x8(a0)
0x00004350   4                 214c0010  move.l a4, 0x10(a0)
0x00004354   6             317c7fff000c  move.w 0x7fff, 0xc(a0)
0x0000435a   4                 4268000e  clr.w 0xe(a0)
0x0000435e   4                 20adfefe  move.l -0x102(a5), (a0)
0x00004362   4                 2b48fefe  move.l a0, -0x102(a5)
0x00004366   2                     4e75  rts
0x00004368   2                     2056  movea.l (a6), a0
0x0000436a   2                     3010  move.w (a0), d0
0x0000436c   4                 536e0006  subq.w 0x1, 0x6(a6)
0x00004370   2                     6e48  bgt.b 0x43ba
0x00004372   4                 426e0006  clr.w 0x6(a6)
0x00004376   4                 b06e0004  cmp.w 0x4(a6), d0
0x0000437a   4                 6700007e  beq.w 0x43fa
0x0000437e   4                 3d400004  move.w d0, 0x4(a6)
0x00004382   2                     6c02  bge.b 0x4386
0x00004384   2                     4240  clr.w d0
0x00004386   4                 0c400063  cmpi.w 0x63, d0
0x0000438a   2                     6f04  ble.b 0x4390
0x0000438c   4                 303c0063  move.w 0x63, d0
0x00004390   6             3d7c00020006  move.w 0x2, 0x6(a6)
0x00004396   4                 41ee000c  lea.l 0xc(a6), a0
0x0000439a   4                 30fc02ca  move.w 0x2ca, (a0)+
0x0000439e   4                 10fc0030  move.b 0x30, (a0)+
0x000043a2   2                     4840  swap d0
0x000043a4   2                     4240  clr.w d0
0x000043a6   2                     4840  swap d0
0x000043a8   4                 80fc000a  divu.w 0xa, d0
0x000043ac   2                     4840  swap d0
0x000043ae   4                 06400030  addi.w 0x30, d0
0x000043b2   2                     1100  move.b d0, -(a0)
0x000043b4   2                     4240  clr.w d0
0x000043b6   2                     4840  swap d0
0x000043b8   2                     66ee  bne.b 0x43a8
0x000043ba   6             0c6e00020006  cmpi.w 0x2, 0x6(a6)
0x000043c0   2                     6f06  ble.b 0x43c8
0x000043c2   6             3d7c00010006  move.w 0x1, 0x6(a6)
0x000043c8   4                 41edffea  lea.l -0x16(a5), a0
0x000043cc   4                 b1edffa0  cmpa.l -0x60(a5), a0
0x000043d0   2                     6606  bne.b 0x43d8
0x000043d2   4                 486dffc6  pea.l -0x3a(a5)
0x000043d6   2                     6004  bra.b 0x43dc
0x000043d8   4                 486dffb8  pea.l -0x48(a5)
0x000043dc   2                     a875  invalid
0x000043de   4                 286e0008  movea.l 0x8(a6), a4
0x000043e2   4                 486c0002  pea.l 0x2(a4)
0x000043e6   2                     a8a2  invalid
0x000043e8   4                 3f2c0004  move.w 0x4(a4), -(a7)
0x000043ec   4                 3f2c0002  move.w 0x2(a4), -(a7)
0x000043f0   2                     5e57  addq.w 0x7, (a7)
0x000043f2   2                     a893  invalid
0x000043f4   4                 486e000c  pea.l 0xc(a6)
0x000043f8   2                     a884  invalid
0x000043fa   2                     4e75  rts

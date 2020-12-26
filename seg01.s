; vi: syntax=asm68k

0x00000000   4                 22780a78  movea.l 0xa78.w, a1
0x00000004   4                 41e90012  lea.l 0x12(a1), a0
0x00000008   2                     7001  moveq 0x1, d0
0x0000000a   4                 31400004  move.w d0, 0x4(a0)
0x0000000e   4                 43fa0492  lea.l 0x4a2(pc), a1
0x00000012   4                 21490006  move.l a1, 0x6(a0)
0x00000016   4                 3140000a  move.w d0, 0xa(a0)
0x0000001a   2                     a033  invalid
0x0000001c   2                     4e75  rts
0x0000001e   4                 4ead04da  jsr 0x4da(a5)
0x00000022   2                     205f  movea.l (a7)+, a0
0x00000024   2                     301f  move.w (a7)+, d0
0x00000026   2                     2f08  move.l a0, -(a7)
0x00000028   4                 4efa0094  jmp 0xbe(pc)
0x0000002c   2                     2f08  move.l a0, -(a7)
0x0000002e   4                 20780a78  movea.l 0xa78.w, a0
0x00000032   2                     40e7  move.w sr, -(a7)
0x00000034   4                 007c0300  ori.w 0x300, sr
0x00000038   4                 21500004  move.l (a0), 0x4(a0)
0x0000003c   2                     4290  clr.l (a0)
0x0000003e   2                     46df  move.w (a7)+, sr
0x00000040   2                     205f  movea.l (a7)+, a0
0x00000042   2                     4e75  rts
0x00000044   2                     2f08  move.l a0, -(a7)
0x00000046   4                 20780a78  movea.l 0xa78.w, a0
0x0000004a   4                 20a80004  move.l 0x4(a0), (a0)
0x0000004e   2                     205f  movea.l (a7)+, a0
0x00000050   2                     4e75  rts
0x00000052   4                 4e560000  link.w a6, 0x0
0x00000056   4                 48e71020  movem.l d3/a2, -(a7)
0x0000005a   4                 206e0014  movea.l 0x14(a6), a0
0x0000005e   4                 226e0010  movea.l 0x10(a6), a1
0x00000062   4                 202e000c  move.l 0xc(a6), d0
0x00000066   4                 246e0008  movea.l 0x8(a6), a2
0x0000006a   4                 363c0080  move.w 0x80, d3
0x0000006e   2                     5380  subq.l 0x1, d0
0x00000070   2                     1218  move.b (a0)+, d1
0x00000072   2                     1401  move.b d1, d2
0x00000074   2                     e809  lsr.b 0x4, d1
0x00000076   4                 0241000f  andi.w 0xf, d1
0x0000007a   4                 d6321000  add.b (a2, d1.w), d3
0x0000007e   2                     12c3  move.b d3, (a1)+
0x00000080   4                 0242000f  andi.w 0xf, d2
0x00000084   4                 d6322000  add.b (a2, d2.w), d3
0x00000088   2                     12c3  move.b d3, (a1)+
0x0000008a   4                 51c8ffe4  dbra d0, 0x70
0x0000008e   4                 4cdf0408  movem.l (a7)+, d3/a2
0x00000092   2                     4e5e  unlk a6
0x00000094   2                     205f  movea.l (a7)+, a0
0x00000096   4                 defc0010  adda.w 0x10, a7
0x0000009a   2                     4ed0  jmp (a0)
0x0000009c   4                 207801d4  movea.l 0x1d4.w, a0
0x000000a0   4                 08100007  btst.b 0x7, (a0)
0x000000a4   2                     6604  bne.b 0xaa
0x000000a6   4                 08d00007  bset.b 0x7, (a0)
0x000000aa   2                     4e75  rts
0x000000ac   4                 4ebaffee  jsr 0x9c(pc)
0x000000b0   2                     4e75  rts
0x000000b2   4                 22780a78  movea.l 0xa78.w, a1
0x000000b6   4                 41e90012  lea.l 0x12(a1), a0
0x000000ba   2                     a034  invalid
0x000000bc   2                     4e75  rts
0x000000be   2                     4a40  tst.w d0
0x000000c0   2                     6d36  blt.b 0xf8
0x000000c2   4                 48e760c0  movem.l d1-d2/a0-a1, -(a7)
0x000000c6   4                 22780a78  movea.l 0xa78.w, a1
0x000000ca   4                 41e90220  lea.l 0x220(a1), a0
0x000000ce   4                 12300000  move.b (a0, d0.w), d1
0x000000d2   2                     4881  ext.w d1
0x000000d4   2                     6d1e  blt.b 0xf4
0x000000d6   2                     3401  move.w d1, d2
0x000000d8   2                     e94a  lsl.w 0x4, d2
0x000000da   4                 41e90020  lea.l 0x20(a1), a0
0x000000de   2                     d0c2  adda.w d2, a0
0x000000e0   4                 20a8000c  move.l 0xc(a0), (a0)
0x000000e4   2                     670e  beq.b 0xf4
0x000000e6   2                     40e7  move.w sr, -(a7)
0x000000e8   4                 007c0300  ori.w 0x300, sr
0x000000ec   2                     2411  move.l (a1), d2
0x000000ee   2                     03c2  bset.b d1, d2
0x000000f0   2                     2282  move.l d2, (a1)
0x000000f2   2                     46df  move.w (a7)+, sr
0x000000f4   4                 4cdf0306  movem.l (a7)+, d1-d2/a0-a1
0x000000f8   2                     4e75  rts
0x000000fa   2                     4a40  tst.w d0
0x000000fc   2                     6d24  blt.b 0x122
0x000000fe   4                 48e760c0  movem.l d1-d2/a0-a1, -(a7)
0x00000102   4                 22780a78  movea.l 0xa78.w, a1
0x00000106   4                 41e90220  lea.l 0x220(a1), a0
0x0000010a   4                 12300000  move.b (a0, d0.w), d1
0x0000010e   2                     6d0e  blt.b 0x11e
0x00000110   2                     40e7  move.w sr, -(a7)
0x00000112   4                 007c0300  ori.w 0x300, sr
0x00000116   2                     2411  move.l (a1), d2
0x00000118   2                     0382  bclr.b d1, d2
0x0000011a   2                     2282  move.l d2, (a1)
0x0000011c   2                     46df  move.w (a7)+, sr
0x0000011e   4                 4cdf0306  movem.l (a7)+, d1-d2/a0-a1
0x00000122   2                     4e75  rts
0x00000124   4                 4e56fc3e  link.w a6, 0xfc3e
0x00000128   4                 48e70f18  movem.l d4-d7/a3-a4, -(a7)
0x0000012c   2                     42a7  clr.l -(a7)
0x0000012e   6             2f3c00000bb8  move.l 0xbb8, -(a7)
0x00000134   4                 4eba0c06  jsr 0xd3c(pc)
0x00000138   4                 2d5fffc6  move.l (a7)+, -0x3a(a6)
0x0000013c   8         2d7c00000a78ffd0  move.l 0xa78, -0x30(a6)
0x00000144   4                 206effd0  movea.l -0x30(a6), a0
0x00000148   4                 2d50ffcc  move.l (a0), -0x34(a6)
0x0000014c   2                     4247  clr.w d7
0x0000014e   2                     6010  bra.b 0x160
0x00000150   2                     3007  move.w d7, d0
0x00000152   2                     e540  asl.w 0x2, d0
0x00000154   4                 41eeff46  lea.l -0xba(a6), a0
0x00000158   2                     7200  moveq 0x0, d1
0x0000015a   4                 21810000  move.l d1, (a0, d0.w)
0x0000015e   2                     5247  addq.w 0x1, d7
0x00000160   2                     701f  moveq 0x1f, d0
0x00000162   2                     b047  cmp.w d7, d0
0x00000164   2                     6cea  bge.b 0x150
0x00000166   2                     42a7  clr.l -(a7)
0x00000168   4                 2f3a0296  move.l 0x400(pc), -(a7)
0x0000016c   4                 3f2e0008  move.w 0x8(a6), -(a7)
0x00000170   2                     a9a0  invalid
0x00000172   4                 2d5ffffa  move.l (a7)+, -0x6(a6)
0x00000176   2                     6634  bne.b 0x1ac
0x00000178   4                 487a0280  pea.l 0x3fa(pc)
0x0000017c   4                 486efd46  pea.l -0x2ba(a6)
0x00000180   4                 3f2e0008  move.w 0x8(a6), -(a7)
0x00000184   4                 4eba180e  jsr 0x1994(pc)
0x00000188   4                 487a026e  pea.l 0x3f8(pc)
0x0000018c   4                 486efc46  pea.l -0x3ba(a6)
0x00000190   2                     4267  clr.w -(a7)
0x00000192   2                     a9af  invalid
0x00000194   4                 4eba17fe  jsr 0x1994(pc)
0x00000198   4                 486efe46  pea.l -0x1ba(a6)
0x0000019c   4                 3f3c0004  move.w 0x4, -(a7)
0x000001a0   4                 4eba10fc  jsr 0x129e(pc)
0x000001a4   4                 486efe46  pea.l -0x1ba(a6)
0x000001a8   4                 4eba1688  jsr 0x1832(pc)
0x000001ac   4                 2f2efffa  move.l -0x6(a6), -(a7)
0x000001b0   4                 4eba0c16  jsr 0xdc8(pc)
0x000001b4   4                 206efffa  movea.l -0x6(a6), a0
0x000001b8   2                     2050  movea.l (a0), a0
0x000001ba   4                 3d50fff4  move.w (a0), -0xc(a6)
0x000001be   4                 4a6efff4  tst.w -0xc(a6)
0x000001c2   4                 6f000206  ble.w 0x3ca
0x000001c6   4                 286effcc  movea.l -0x34(a6), a4
0x000001ca   4                 302efff4  move.w -0xc(a6), d0
0x000001ce   2                     5340  subq.w 0x1, d0
0x000001d0   4                 3d40fc44  move.w d0, -0x3bc(a6)
0x000001d4   4                 426efff2  clr.w -0xe(a6)
0x000001d8   4                 60000170  bra.w 0x34a
0x000001dc   2                     7a01  moveq 0x1, d5
0x000001de   4                 383c001f  move.w 0x1f, d4
0x000001e2   4                 986efff2  sub.w -0xe(a6), d4
0x000001e6   4                 206efffa  movea.l -0x6(a6), a0
0x000001ea   2                     2050  movea.l (a0), a0
0x000001ec   4                 302efff2  move.w -0xe(a6), d0
0x000001f0   2                     d040  add.w d0, d0
0x000001f2   6             3d700002fff6  move.w 0x2(a0, d0.w), -0xa(a6)
0x000001f8   4                 302efff6  move.w -0xa(a6), d0
0x000001fc   2                     e540  asl.w 0x2, d0
0x000001fe   4                 41ec0284  lea.l 0x284(a4), a0
0x00000202   4                 26700000  movea.l (a0, d0.w), a3
0x00000206   2                     200b  move.l a3, d0
0x00000208   2                     6606  bne.b 0x210
0x0000020a   4                 422effff  clr.b -0x1(a6)
0x0000020e   2                     6012  bra.b 0x222
0x00000210   2                     4a93  tst.l (a3)
0x00000212   2                     6608  bne.b 0x21c
0x00000214   6             1d7c0001ffff  move.b 0x1, -0x1(a6)
0x0000021a   2                     6006  bra.b 0x222
0x0000021c   6             1d7c0002ffff  move.b 0x2, -0x1(a6)
0x00000222   2                     7002  moveq 0x2, d0
0x00000224   4                 b02effff  cmp.b -0x1(a6), d0
0x00000228   2                     6616  bne.b 0x240
0x0000022a   2                     42a7  clr.l -(a7)
0x0000022c   2                     2f0b  move.l a3, -(a7)
0x0000022e   4                 4eba0b38  jsr 0xd68(pc)
0x00000232   4                 2d5fffe4  move.l (a7)+, -0x1c(a6)
0x00000236   2                     2f0b  move.l a3, -(a7)
0x00000238   4                 4eba0b8e  jsr 0xdc8(pc)
0x0000023c   4                 600000bc  bra.w 0x2fa
0x00000240   2                     42a7  clr.l -(a7)
0x00000242   4                 2f3a01b0  move.l 0x3f4(pc), -(a7)
0x00000246   4                 3f2efff6  move.w -0xa(a6), -(a7)
0x0000024a   2                     a9a0  invalid
0x0000024c   2                     2c1f  move.l (a7)+, d6
0x0000024e   2                     6602  bne.b 0x252
0x00000250   2                     4205  clr.b d5
0x00000252   2                     1005  move.b d5, d0
0x00000254   4                 670000a4  beq.w 0x2fa
0x00000258   2                     2f06  move.l d6, -(a7)
0x0000025a   2                     a992  invalid
0x0000025c   2                     2f06  move.l d6, -(a7)
0x0000025e   4                 4eba0b68  jsr 0xdc8(pc)
0x00000262   2                     42a7  clr.l -(a7)
0x00000264   2                     2f06  move.l d6, -(a7)
0x00000266   4                 4eba0b00  jsr 0xd68(pc)
0x0000026a   2                     201f  move.l (a7)+, d0
0x0000026c   2                     7216  moveq 0x16, d1
0x0000026e   2                     9081  sub.l d1, d0
0x00000270   4                 2d40ffe0  move.l d0, -0x20(a6)
0x00000274   2                     e380  asl.l 0x1, d0
0x00000276   4                 2d40ffe4  move.l d0, -0x1c(a6)
0x0000027a   4                 2f2effe4  move.l -0x1c(a6), -(a7)
0x0000027e   4                 4eba0860  jsr 0xae0(pc)
0x00000282   4                 4a2effff  tst.b -0x1(a6)
0x00000286   2                     660e  bne.b 0x296
0x00000288   2                     42a7  clr.l -(a7)
0x0000028a   4                 2f2effe4  move.l -0x1c(a6), -(a7)
0x0000028e   4                 4eba0ac2  jsr 0xd52(pc)
0x00000292   2                     265f  movea.l (a7)+, a3
0x00000294   2                     600a  bra.b 0x2a0
0x00000296   2                     2f0b  move.l a3, -(a7)
0x00000298   4                 2f2effe4  move.l -0x1c(a6), -(a7)
0x0000029c   4                 4eba0b00  jsr 0xd9e(pc)
0x000002a0   2                     200b  move.l a3, d0
0x000002a2   2                     57c0  seq.b d0
0x000002a4   2                     2f00  move.l d0, -(a7)
0x000002a6   2                     4267  clr.w -(a7)
0x000002a8   4                 3eb80220  move.w 0x220.w, (a7)
0x000002ac   2                     321f  move.w (a7)+, d1
0x000002ae   2                     201f  move.l (a7)+, d0
0x000002b0   2                     4a41  tst.w d1
0x000002b2   2                     56c1  sne.b d1
0x000002b4   2                     8001  or.b d1, d0
0x000002b6   2                     6704  beq.b 0x2bc
0x000002b8   2                     4205  clr.b d5
0x000002ba   2                     6006  bra.b 0x2c2
0x000002bc   2                     4a93  tst.l (a3)
0x000002be   2                     6602  bne.b 0x2c2
0x000002c0   2                     4205  clr.b d5
0x000002c2   2                     1005  move.b d5, d0
0x000002c4   2                     672e  beq.b 0x2f4
0x000002c6   2                     2f0b  move.l a3, -(a7)
0x000002c8   4                 4eba0afe  jsr 0xdc8(pc)
0x000002cc   2                     2046  movea.l d6, a0
0x000002ce   2                     2010  move.l (a0), d0
0x000002d0   2                     7216  moveq 0x16, d1
0x000002d2   2                     d081  add.l d1, d0
0x000002d4   4                 2d40ffd8  move.l d0, -0x28(a6)
0x000002d8   2                     2046  movea.l d6, a0
0x000002da   2                     2010  move.l (a0), d0
0x000002dc   2                     5c80  addq.l 0x6, d0
0x000002de   4                 2d40ffdc  move.l d0, -0x24(a6)
0x000002e2   4                 2f2effd8  move.l -0x28(a6), -(a7)
0x000002e6   2                     2f13  move.l (a3), -(a7)
0x000002e8   4                 2f2effe0  move.l -0x20(a6), -(a7)
0x000002ec   4                 2f2effdc  move.l -0x24(a6), -(a7)
0x000002f0   4                 4ebafd60  jsr 0x52(pc)
0x000002f4   2                     2f06  move.l d6, -(a7)
0x000002f6   4                 4eba0a66  jsr 0xd5e(pc)
0x000002fa   2                     1005  move.b d5, d0
0x000002fc   2                     6746  beq.b 0x344
0x000002fe   4                 302efff6  move.w -0xa(a6), d0
0x00000302   2                     e540  asl.w 0x2, d0
0x00000304   4                 41ec0284  lea.l 0x284(a4), a0
0x00000308   4                 218b0000  move.l a3, (a0, d0.w)
0x0000030c   2                     3004  move.w d4, d0
0x0000030e   2                     e540  asl.w 0x2, d0
0x00000310   4                 41eeff46  lea.l -0xba(a6), a0
0x00000314   4                 218b0000  move.l a3, (a0, d0.w)
0x00000318   2                     705f  moveq 0x5f, d0
0x0000031a   4                 b06efff6  cmp.w -0xa(a6), d0
0x0000031e   2                     5fc0  sle.b d0
0x00000320   2                     7263  moveq 0x63, d1
0x00000322   4                 b26efff6  cmp.w -0xa(a6), d1
0x00000326   2                     5cc1  sge.b d1
0x00000328   2                     c001  and.b d1, d0
0x0000032a   2                     670c  beq.b 0x338
0x0000032c   4                 202c0008  move.l 0x8(a4), d0
0x00000330   2                     3204  move.w d4, d1
0x00000332   2                     03c0  bset.b d1, d0
0x00000334   4                 29400008  move.l d0, 0x8(a4)
0x00000338   4                 302efff6  move.w -0xa(a6), d0
0x0000033c   4                 41ec0220  lea.l 0x220(a4), a0
0x00000340   4                 11840000  move.b d4, (a0, d0.w)
0x00000344   4                 526efff2  addq.w 0x1, -0xe(a6)
0x00000348   2                     690c  bvs.b 0x356
0x0000034a   4                 302efff2  move.w -0xe(a6), d0
0x0000034e   4                 b06efc44  cmp.w -0x3bc(a6), d0
0x00000352   4                 6f00fe88  ble.w 0x1dc
0x00000356   4                 302efff4  move.w -0xc(a6), d0
0x0000035a   2                     5340  subq.w 0x1, d0
0x0000035c   4                 3d40fc42  move.w d0, -0x3be(a6)
0x00000360   2                     4247  clr.w d7
0x00000362   2                     6060  bra.b 0x3c4
0x00000364   4                 383c001f  move.w 0x1f, d4
0x00000368   2                     9847  sub.w d7, d4
0x0000036a   2                     3004  move.w d4, d0
0x0000036c   2                     e540  asl.w 0x2, d0
0x0000036e   4                 41eeff46  lea.l -0xba(a6), a0
0x00000372   4                 26700000  movea.l (a0, d0.w), a3
0x00000376   2                     200b  move.l a3, d0
0x00000378   2                     6746  beq.b 0x3c0
0x0000037a   2                     2f0b  move.l a3, -(a7)
0x0000037c   4                 4eba0a2c  jsr 0xdaa(pc)
0x00000380   4                 2d53ffd4  move.l (a3), -0x2c(a6)
0x00000384   4                 206effcc  movea.l -0x34(a6), a0
0x00000388   2                     3004  move.w d4, d0
0x0000038a   2                     e940  asl.w 0x4, d0
0x0000038c   4                 41f00020  lea.l 0x20(a0, d0.w), a0
0x00000390   4                 2d48fc3e  move.l a0, -0x3c2(a6)
0x00000394   6             216effd40008  move.l -0x2c(a6), 0x8(a0)
0x0000039a   4                 206efc3e  movea.l -0x3c2(a6), a0
0x0000039e   6             216effd4000c  move.l -0x2c(a6), 0xc(a0)
0x000003a4   4                 206efc3e  movea.l -0x3c2(a6), a0
0x000003a8   2                     2f08  move.l a0, -(a7)
0x000003aa   2                     42a7  clr.l -(a7)
0x000003ac   2                     2f0b  move.l a3, -(a7)
0x000003ae   4                 4eba09b8  jsr 0xd68(pc)
0x000003b2   2                     201f  move.l (a7)+, d0
0x000003b4   2                     205f  movea.l (a7)+, a0
0x000003b6   4                 d0aeffd4  add.l -0x2c(a6), d0
0x000003ba   2                     5980  subq.l 0x4, d0
0x000003bc   4                 21400004  move.l d0, 0x4(a0)
0x000003c0   2                     5247  addq.w 0x1, d7
0x000003c2   2                     6906  bvs.b 0x3ca
0x000003c4   4                 be6efc42  cmp.w -0x3be(a6), d7
0x000003c8   2                     6f9a  ble.b 0x364
0x000003ca   4                 2f2efffa  move.l -0x6(a6), -(a7)
0x000003ce   4                 4eba09ee  jsr 0xdbe(pc)
0x000003d2   4                 2f2effc6  move.l -0x3a(a6), -(a7)
0x000003d6   4                 4eba0970  jsr 0xd48(pc)
0x000003da   4                 4eba01e2  jsr 0x5be(pc)
0x000003de   4                 206effcc  movea.l -0x34(a6), a0
0x000003e2   6             317c00010414  move.w 0x1, 0x414(a0)
0x000003e8   4                 4cdf18f0  movem.l (a7)+, d4-d7/a3-a4
0x000003ec   2                     4e5e  unlk a6
0x000003ee   2                     205f  movea.l (a7)+, a0
0x000003f0   2                     544f  addq.w 0x2, a7
0x000003f2   2                     4ed0  jmp (a0)
0x000003f4   2                     534f  subq.w 0x1, a7
0x000003f6   2                     554e  subq.w 0x2, a6
0x000003f8   4                 012f0553  btst.l d0, 0x553(a7)
0x000003fc   2                     4654  not.w (a4)
0x000003fe   4                 523a5346  
0x00000402   2                     5452  addq.w 0x2, (a2)
0x00000404   4                 4e56ffee  link.w a6, 0xffee
0x00000408   4                 48e70718  movem.l d5-d7/a3-a4, -(a7)
0x0000040c   6             2a3c00000a78  move.l 0xa78, d5
0x00000412   2                     2045  movea.l d5, a0
0x00000414   2                     2c10  move.l (a0), d6
0x00000416   2                     2846  movea.l d6, a4
0x00000418   2                     7000  moveq 0x0, d0
0x0000041a   2                     2880  move.l d0, (a4)
0x0000041c   2                     7000  moveq 0x0, d0
0x0000041e   4                 29400008  move.l d0, 0x8(a4)
0x00000422   2                     7002  moveq 0x2, d0
0x00000424   2                     2f00  move.l d0, -(a7)
0x00000426   4                 486efffa  pea.l -0x6(a6)
0x0000042a   4                 4eba0a12  jsr 0xe3e(pc)
0x0000042e   2                     4247  clr.w d7
0x00000430   2                     603c  bra.b 0x46e
0x00000432   2                     3007  move.w d7, d0
0x00000434   2                     e540  asl.w 0x2, d0
0x00000436   4                 41ec0284  lea.l 0x284(a4), a0
0x0000043a   4                 26700000  movea.l (a0, d0.w), a3
0x0000043e   2                     200b  move.l a3, d0
0x00000440   2                     6720  beq.b 0x462
0x00000442   2                     4a93  tst.l (a3)
0x00000444   2                     671c  beq.b 0x462
0x00000446   2                     2f0b  move.l a3, -(a7)
0x00000448   4                 4eba096a  jsr 0xdb4(pc)
0x0000044c   2                     70ff  moveq 0xff, d0
0x0000044e   2                     b047  cmp.w d7, d0
0x00000450   2                     5dc0  slt.b d0
0x00000452   2                     7263  moveq 0x63, d1
0x00000454   2                     b247  cmp.w d7, d1
0x00000456   2                     5ec1  sgt.b d1
0x00000458   2                     c001  and.b d1, d0
0x0000045a   2                     6706  beq.b 0x462
0x0000045c   2                     2f0b  move.l a3, -(a7)
0x0000045e   4                 4eba095e  jsr 0xdbe(pc)
0x00000462   4                 41ec0220  lea.l 0x220(a4), a0
0x00000466   6             11bc00ff7000  move.b 0xff, (a0, d7.w)
0x0000046c   2                     5247  addq.w 0x1, d7
0x0000046e   2                     7063  moveq 0x63, d0
0x00000470   2                     b047  cmp.w d7, d0
0x00000472   2                     6cbe  bge.b 0x432
0x00000474   2                     4247  clr.w d7
0x00000476   2                     6016  bra.b 0x48e
0x00000478   2                     2046  movea.l d6, a0
0x0000047a   2                     3007  move.w d7, d0
0x0000047c   2                     e940  asl.w 0x4, d0
0x0000047e   4                 49f00020  lea.l 0x20(a0, d0.w), a4
0x00000482   2                     7000  moveq 0x0, d0
0x00000484   2                     2880  move.l d0, (a4)
0x00000486   2                     7000  moveq 0x0, d0
0x00000488   4                 2940000c  move.l d0, 0xc(a4)
0x0000048c   2                     5247  addq.w 0x1, d7
0x0000048e   2                     701f  moveq 0x1f, d0
0x00000490   2                     b047  cmp.w d7, d0
0x00000492   2                     6ce4  bge.b 0x478
0x00000494   2                     2046  movea.l d6, a0
0x00000496   4                 42680414  clr.w 0x414(a0)
0x0000049a   4                 4cdf18e0  movem.l (a7)+, d5-d7/a3-a4
0x0000049e   2                     4e5e  unlk a6
0x000004a0   2                     4e75  rts
0x000004a2   4                 48e70804  movem.l d4/a5, -(a7)
0x000004a6   4                 2a780a78  movea.l 0xa78.w, a5
0x000004aa   4                 4a6d0414  tst.w 0x414(a5)
0x000004ae   4                 67000094  beq.w 0x544
0x000004b2   2                     7807  moveq 0x7, d4
0x000004b4   2                     701f  moveq 0x1f, d0
0x000004b6   2                     2215  move.l (a5), d1
0x000004b8   4                 242d0008  move.l 0x8(a5), d2
0x000004bc   2                     204d  movea.l a5, a0
0x000004be   4                 d0fc0210  adda.w 0x210, a0
0x000004c2   2                     0101  btst.l d0, d1
0x000004c4   2                     660e  bne.b 0x4d4
0x000004c6   4                 90fc0010  suba.w 0x10, a0
0x000004ca   4                 51c8fff6  dbra d0, 0x4c2
0x000004ce   4                 47fa009e  lea.l 0x56e(pc), a3
0x000004d2   2                     6036  bra.b 0x50a
0x000004d4   2                     2250  movea.l (a0), a1
0x000004d6   4                 61000078  bsr.w 0x550
0x000004da   2                     6004  bra.b 0x4e0
0x000004dc   2                     0101  btst.l d0, d1
0x000004de   2                     6610  bne.b 0x4f0
0x000004e0   4                 90fc0010  suba.w 0x10, a0
0x000004e4   4                 51c8fff6  dbra d0, 0x4dc
0x000004e8   4                 47fa0098  lea.l 0x582(pc), a3
0x000004ec   2                     2a81  move.l d1, (a5)
0x000004ee   2                     601a  bra.b 0x50a
0x000004f0   2                     2450  movea.l (a0), a2
0x000004f2   2                     615c  bsr.b 0x550
0x000004f4   2                     6006  bra.b 0x4fc
0x000004f6   2                     0101  btst.l d0, d1
0x000004f8   2                     6702  beq.b 0x4fc
0x000004fa   2                     6154  bsr.b 0x550
0x000004fc   4                 90fc0010  suba.w 0x10, a0
0x00000500   4                 51c8fff4  dbra d0, 0x4f6
0x00000504   4                 47fa009e  lea.l 0x5a4(pc), a3
0x00000508   2                     2a81  move.l d1, (a5)
0x0000050a   4                 162d0010  move.b 0x10(a5), d3
0x0000050e   4                 10380260  move.b 0x260.w, d0
0x00000512   4                 02400007  andi.w 0x7, d0
0x00000516   2                     6604  bne.b 0x51c
0x00000518   4                 47fa0054  lea.l 0x56e(pc), a3
0x0000051c   4                 20780266  movea.l 0x266.w, a0
0x00000520   4                 d0ed000e  adda.w 0xe(a5), a0
0x00000524   4                 303c0172  move.w 0x172, d0
0x00000528   4                 906d000c  sub.w 0xc(a5), d0
0x0000052c   2                     e248  lsr.w 0x1, d0
0x0000052e   2                     5340  subq.w 0x1, d0
0x00000530   2                     4e93  jsr (a3)
0x00000532   4                 20780266  movea.l 0x266.w, a0
0x00000536   4                 302d000c  move.w 0xc(a5), d0
0x0000053a   2                     e248  lsr.w 0x1, d0
0x0000053c   2                     5340  subq.w 0x1, d0
0x0000053e   2                     4e93  jsr (a3)
0x00000540   4                 1b430010  move.b d3, 0x10(a5)
0x00000544   6             3b7c0001001c  move.w 0x1, 0x1c(a5)
0x0000054a   4                 4cdf2010  movem.l (a7)+, d4/a5
0x0000054e   2                     4e75  rts
0x00000550   2                     2650  movea.l (a0), a3
0x00000552   4                 d6fc00b9  adda.w 0xb9, a3
0x00000556   4                 b7e80004  cmpa.l 0x4(a0), a3
0x0000055a   2                     6d0e  blt.b 0x56a
0x0000055c   2                     0102  btst.l d0, d2
0x0000055e   2                     6604  bne.b 0x564
0x00000560   2                     0181  bclr.b d0, d1
0x00000562   2                     6008  bra.b 0x56c
0x00000564   4                 20a80008  move.l 0x8(a0), (a0)
0x00000568   2                     6002  bra.b 0x56c
0x0000056a   2                     208b  move.l a3, (a0)
0x0000056c   2                     4e75  rts
0x0000056e   4                 123c0080  move.b 0x80, d1
0x00000572   2                     1081  move.b d1, (a0)
0x00000574   4                 11410002  move.b d1, 0x2(a0)
0x00000578   2                     5888  addq.l 0x4, a0
0x0000057a   4                 51c8fff6  dbra d0, 0x572
0x0000057e   2                     1601  move.b d1, d3
0x00000580   2                     4e75  rts
0x00000582   2                     1219  move.b (a1)+, d1
0x00000584   2                     0941  bchg.b d4, d1
0x00000586   2                     e201  asr.b 0x1, d1
0x00000588   2                     1401  move.b d1, d2
0x0000058a   2                     e201  asr.b 0x1, d1
0x0000058c   2                     d202  add.b d2, d1
0x0000058e   2                     0941  bchg.b d4, d1
0x00000590   4                 11410002  move.b d1, 0x2(a0)
0x00000594   2                     d601  add.b d1, d3
0x00000596   2                     e213  roxr.b 0x1, d3
0x00000598   2                     1083  move.b d3, (a0)
0x0000059a   2                     5888  addq.l 0x4, a0
0x0000059c   2                     1601  move.b d1, d3
0x0000059e   4                 51c8ffe2  dbra d0, 0x582
0x000005a2   2                     4e75  rts
0x000005a4   2                     1219  move.b (a1)+, d1
0x000005a6   2                     d21a  add.b (a2)+, d1
0x000005a8   2                     e211  roxr.b 0x1, d1
0x000005aa   4                 11410002  move.b d1, 0x2(a0)
0x000005ae   2                     d601  add.b d1, d3
0x000005b0   2                     e213  roxr.b 0x1, d3
0x000005b2   2                     1083  move.b d3, (a0)
0x000005b4   2                     5888  addq.l 0x4, a0
0x000005b6   2                     1601  move.b d1, d3
0x000005b8   4                 51c8ffea  dbra d0, 0x5a4
0x000005bc   2                     4e75  rts
0x000005be   6             0c787fff028e  cmpi.w 0x7fff, 0x28e.w
0x000005c4   2                     661a  bne.b 0x5e0
0x000005c6   4                 20780134  movea.l 0x134.w, a0
0x000005ca   4                 4a280019  tst.b 0x19(a0)
0x000005ce   2                     670a  beq.b 0x5da
0x000005d0   2                     4a10  tst.b (a0)
0x000005d2   2                     66fc  bne.b 0x5d0
0x000005d4   4                 307c001e  movea.w 0x1e, a0
0x000005d8   2                     a03b  invalid
0x000005da   4                 307c001e  movea.w 0x1e, a0
0x000005de   2                     a03b  invalid
0x000005e0   4                 4ead04da  jsr 0x4da(a5)
0x000005e4   2                     4e75  rts
0x000005e6   4                 4e56fffc  link.w a6, 0xfffc
0x000005ea   4                 48e70318  movem.l d6-d7/a3-a4, -(a7)
0x000005ee   4                 4aadfb3e  tst.l -0x4c2(a5)
0x000005f2   4                 66000092  bne.w 0x686
0x000005f6   2                     598f  subq.l 0x4, a7
0x000005f8   6             2f3c434f4445  move.l 0x434f4445, -(a7)
0x000005fe   4                 486dfaea  pea.l -0x516(a5)
0x00000602   2                     a9a1  invalid
0x00000604   2                     285f  movea.l (a7)+, a4
0x00000606   2                     200c  move.l a4, d0
0x00000608   2                     677c  beq.b 0x686
0x0000060a   2                     558f  subq.l 0x2, a7
0x0000060c   2                     a994  invalid
0x0000060e   2                     558f  subq.l 0x2, a7
0x00000610   2                     2f0c  move.l a4, -(a7)
0x00000612   2                     a9a4  invalid
0x00000614   2                     301f  move.w (a7)+, d0
0x00000616   2                     48c0  ext.l d0
0x00000618   2                     321f  move.w (a7)+, d1
0x0000061a   2                     48c1  ext.l d1
0x0000061c   2                     b081  cmp.l d1, d0
0x0000061e   2                     6666  bne.b 0x686
0x00000620   4                 41ed0062  lea.l 0x62(a5), a0
0x00000624   4                 226dfb5c  movea.l -0x4a4(a5), a1
0x00000628   4                 2348000c  move.l a0, 0xc(a1)
0x0000062c   4                 2d4cfffc  move.l a4, -0x4(a6)
0x00000630   2                     598f  subq.l 0x4, a7
0x00000632   2                     2f0c  move.l a4, -(a7)
0x00000634   4                 4eba0732  jsr 0xd68(pc)
0x00000638   2                     201f  move.l (a7)+, d0
0x0000063a   2                     5980  subq.l 0x4, d0
0x0000063c   2                     7204  moveq 0x4, d1
0x0000063e   4                 4eba0382  jsr 0x9c2(pc)
0x00000642   2                     2c00  move.l d0, d6
0x00000644   2                     7000  moveq 0x0, d0
0x00000646   2                     2640  movea.l d0, a3
0x00000648   2                     602a  bra.b 0x674
0x0000064a   2                     2f0c  move.l a4, -(a7)
0x0000064c   2                     a9a2  invalid
0x0000064e   4                 206efffc  movea.l -0x4(a6), a0
0x00000652   2                     2050  movea.l (a0), a0
0x00000654   4                 202dfb3e  move.l -0x4c2(a5), d0
0x00000658   2                     e580  asl.l 0x2, d0
0x0000065a   4                 30300804  move.w 0x4(a0, d0.l), d0
0x0000065e   2                     48c0  ext.l d0
0x00000660   2                     2e00  move.l d0, d7
0x00000662   2                     6708  beq.b 0x66c
0x00000664   2                     200d  move.l a5, d0
0x00000666   2                     2640  movea.l d0, a3
0x00000668   2                     d7c7  adda.l d7, a3
0x0000066a   2                     4e93  jsr (a3)
0x0000066c   4                 202dfb3e  move.l -0x4c2(a5), d0
0x00000670   4                 52adfb3e  addq.l 0x1, -0x4c2(a5)
0x00000674   4                 bcadfb3e  cmp.l -0x4c2(a5), d6
0x00000678   2                     6ed0  bgt.b 0x64a
0x0000067a   2                     200b  move.l a3, d0
0x0000067c   2                     6704  beq.b 0x682
0x0000067e   2                     2f0b  move.l a3, -(a7)
0x00000680   2                     a9f1  invalid
0x00000682   2                     2f0c  move.l a4, -(a7)
0x00000684   2                     a9a3  invalid
0x00000686   6             4cee18c0ffec  movem.l -0x14(a6), d6-d7/a3-a4
0x0000068c   2                     4e5e  unlk a6
0x0000068e   2                     4e75  rts
0x00000690   2                     8b5f  or.w d5, (a7)+
0x00000692   2                     5f43  subq.w 0x7, d3
0x00000694   2                     706c  moveq 0x6c, d0
0x00000696   4                 7573496e  
0x0000069a   2                     6974  bvs.b 0x710
0x0000069c   4                 00004e56  ori.b 0x56, d0
0x000006a0   2                     fffc  invalid
0x000006a2   4                 48e70118  movem.l d7/a3-a4, -(a7)
0x000006a6   4                 4aadfb3e  tst.l -0x4c2(a5)
0x000006aa   2                     6762  beq.b 0x70e
0x000006ac   2                     598f  subq.l 0x4, a7
0x000006ae   6             2f3c434f4445  move.l 0x434f4445, -(a7)
0x000006b4   4                 486dfb14  pea.l -0x4ec(a5)
0x000006b8   2                     a9a1  invalid
0x000006ba   2                     285f  movea.l (a7)+, a4
0x000006bc   2                     200c  move.l a4, d0
0x000006be   2                     674e  beq.b 0x70e
0x000006c0   2                     558f  subq.l 0x2, a7
0x000006c2   2                     a994  invalid
0x000006c4   2                     558f  subq.l 0x2, a7
0x000006c6   2                     2f0c  move.l a4, -(a7)
0x000006c8   2                     a9a4  invalid
0x000006ca   2                     301f  move.w (a7)+, d0
0x000006cc   2                     48c0  ext.l d0
0x000006ce   2                     321f  move.w (a7)+, d1
0x000006d0   2                     48c1  ext.l d1
0x000006d2   2                     b081  cmp.l d1, d0
0x000006d4   2                     6638  bne.b 0x70e
0x000006d6   4                 2d4cfffc  move.l a4, -0x4(a6)
0x000006da   2                     6028  bra.b 0x704
0x000006dc   2                     2f0c  move.l a4, -(a7)
0x000006de   2                     a9a2  invalid
0x000006e0   4                 206efffc  movea.l -0x4(a6), a0
0x000006e4   2                     2050  movea.l (a0), a0
0x000006e6   4                 53adfb3e  subq.l 0x1, -0x4c2(a5)
0x000006ea   4                 202dfb3e  move.l -0x4c2(a5), d0
0x000006ee   2                     e580  asl.l 0x2, d0
0x000006f0   4                 30300806  move.w 0x6(a0, d0.l), d0
0x000006f4   2                     48c0  ext.l d0
0x000006f6   2                     2e00  move.l d0, d7
0x000006f8   2                     200d  move.l a5, d0
0x000006fa   2                     2640  movea.l d0, a3
0x000006fc   2                     d7c7  adda.l d7, a3
0x000006fe   2                     4a87  tst.l d7
0x00000700   2                     6702  beq.b 0x704
0x00000702   2                     4e93  jsr (a3)
0x00000704   4                 4aadfb3e  tst.l -0x4c2(a5)
0x00000708   2                     6ed2  bgt.b 0x6dc
0x0000070a   2                     2f0c  move.l a4, -(a7)
0x0000070c   2                     a9a3  invalid
0x0000070e   6             4cee1880fff0  movem.l -0x10(a6), d7/a3-a4
0x00000714   2                     4e5e  unlk a6
0x00000716   2                     4e75  rts
0x00000718   2                     8964  or.w d4, -(a4)
0x0000071a   2                     746f  moveq 0x6f, d2
0x0000071c   2                     7273  moveq 0x73, d1
0x0000071e   2                     5f5f  subq.w 0x7, (a7)+
0x00000720   4                 46760000  not.w (a6, d0.w)
0x00000724   4                 4e560000  link.w a6, 0x0
0x00000728   4                 48e73318  movem.l d2-d3/d6-d7/a3-a4, -(a7)
0x0000072c   4                 2c2e0018  move.l 0x18(a6), d6
0x00000730   4                 4ead04e2  jsr 0x4e2(a5)
0x00000734   4                 206dfb5c  movea.l -0x4a4(a5), a0
0x00000738   4                 20ae0008  move.l 0x8(a6), (a0)
0x0000073c   2                     7001  moveq 0x1, d0
0x0000073e   4                 4ab80316  tst.l 0x316.w
0x00000742   2                     672e  beq.b 0x772
0x00000744   2                     7201  moveq 0x1, d1
0x00000746   4                 c2b80316  and.l 0x316.w, d1
0x0000074a   2                     6626  bne.b 0x772
0x0000074c   4                 20780316  movea.l 0x316.w, a0
0x00000750   6             0c904d50474d  cmpi.l 0x4d50474d, (a0)
0x00000756   2                     661a  bne.b 0x772
0x00000758   4                 20780316  movea.l 0x316.w, a0
0x0000075c   4                 4aa80004  tst.l 0x4(a0)
0x00000760   2                     6710  beq.b 0x772
0x00000762   4                 20780316  movea.l 0x316.w, a0
0x00000766   4                 20680004  movea.l 0x4(a0), a0
0x0000076a   2                     3210  move.w (a0), d1
0x0000076c   2                     48c1  ext.l d1
0x0000076e   2                     6702  beq.b 0x772
0x00000770   2                     7000  moveq 0x0, d0
0x00000772   4                 2b40fb42  move.l d0, -0x4be(a5)
0x00000776   2                     6764  beq.b 0x7dc
0x00000778   4                 41edfc16  lea.l -0x3ea(a5), a0
0x0000077c   4                 43f80910  lea.l 0x910.w, a1
0x00000780   2                     7007  moveq 0x7, d0
0x00000782   2                     20d9  move.l (a1)+, (a0)+
0x00000784   4                 51c8fffc  dbra d0, 0x782
0x00000788   2                     30d9  move.w (a1)+, (a0)+
0x0000078a   4                 41edfc16  lea.l -0x3ea(a5), a0
0x0000078e   4                 226dfb4c  movea.l -0x4b4(a5), a1
0x00000792   2                     2288  move.l a0, (a1)
0x00000794   2                     4a86  tst.l d6
0x00000796   2                     660c  bne.b 0x7a4
0x00000798   4                 206dfb4c  movea.l -0x4b4(a5), a0
0x0000079c   2                     2f10  move.l (a0), -(a7)
0x0000079e   4                 4eba0300  jsr 0xaa0(pc)
0x000007a2   2                     588f  addq.l 0x4, a7
0x000007a4   4                 4aae000c  tst.l 0xc(a6)
0x000007a8   2                     6708  beq.b 0x7b2
0x000007aa   4                 206e000c  movea.l 0xc(a6), a0
0x000007ae   2                     7001  moveq 0x1, d0
0x000007b0   2                     2080  move.l d0, (a0)
0x000007b2   4                 4aae0010  tst.l 0x10(a6)
0x000007b6   2                     6708  beq.b 0x7c0
0x000007b8   4                 206e0010  movea.l 0x10(a6), a0
0x000007bc   4                 20adfb4c  move.l -0x4b4(a5), (a0)
0x000007c0   4                 4aae0014  tst.l 0x14(a6)
0x000007c4   2                     6708  beq.b 0x7ce
0x000007c6   4                 206e0014  movea.l 0x14(a6), a0
0x000007ca   4                 20adfb50  move.l -0x4b0(a5), (a0)
0x000007ce   4                 4ebafe16  jsr 0x5e6(pc)
0x000007d2   2                     7001  moveq 0x1, d0
0x000007d4   4                 2b40fb42  move.l d0, -0x4be(a5)
0x000007d8   4                 60000148  bra.w 0x922
0x000007dc   4                 20780316  movea.l 0x316.w, a0
0x000007e0   4                 20680004  movea.l 0x4(a0), a0
0x000007e4   2                     3010  move.w (a0), d0
0x000007e6   2                     48c0  ext.l d0
0x000007e8   4                 322dfb46  move.w -0x4ba(a5), d1
0x000007ec   2                     48c1  ext.l d1
0x000007ee   2                     b081  cmp.l d1, d0
0x000007f0   2                     670c  beq.b 0x7fe
0x000007f2   6             2f3c80000000  move.l 0x80000000, -(a7)
0x000007f8   4                 4eba015c  jsr 0x956(pc)
0x000007fc   2                     588f  addq.l 0x4, a7
0x000007fe   4                 41edfb46  lea.l -0x4ba(a5), a0
0x00000802   4                 22780316  movea.l 0x316.w, a1
0x00000806   4                 22690004  movea.l 0x4(a1), a1
0x0000080a   4                 23480024  move.l a0, 0x24(a1)
0x0000080e   4                 20780316  movea.l 0x316.w, a0
0x00000812   6             2b680004fb6a  move.l 0x4(a0), -0x496(a5)
0x00000818   4                 20780316  movea.l 0x316.w, a0
0x0000081c   4                 20680004  movea.l 0x4(a0), a0
0x00000820   6             2b680002fb48  move.l 0x2(a0), -0x4b8(a5)
0x00000826   4                 20780316  movea.l 0x316.w, a0
0x0000082a   4                 20680004  movea.l 0x4(a0), a0
0x0000082e   6             2b680006fb4c  move.l 0x6(a0), -0x4b4(a5)
0x00000834   4                 20780316  movea.l 0x316.w, a0
0x00000838   4                 20680004  movea.l 0x4(a0), a0
0x0000083c   6             2b68000afb50  move.l 0xa(a0), -0x4b0(a5)
0x00000842   2                     4a86  tst.l d6
0x00000844   2                     672c  beq.b 0x872
0x00000846   4                 266dfb4c  movea.l -0x4b4(a5), a3
0x0000084a   2                     600c  bra.b 0x858
0x0000084c   2                     2f13  move.l (a3), -(a7)
0x0000084e   4                 4eba021e  jsr 0xa6e(pc)
0x00000852   2                     588f  addq.l 0x4, a7
0x00000854   4                 d6fc0004  adda.w 0x4, a3
0x00000858   2                     4a93  tst.l (a3)
0x0000085a   2                     66f0  bne.b 0x84c
0x0000085c   4                 266dfb50  movea.l -0x4b0(a5), a3
0x00000860   2                     600c  bra.b 0x86e
0x00000862   2                     2f13  move.l (a3), -(a7)
0x00000864   4                 4eba0208  jsr 0xa6e(pc)
0x00000868   2                     588f  addq.l 0x4, a7
0x0000086a   4                 d6fc0004  adda.w 0x4, a3
0x0000086e   2                     4a93  tst.l (a3)
0x00000870   2                     66f0  bne.b 0x862
0x00000872   4                 4aae000c  tst.l 0xc(a6)
0x00000876   2                     6708  beq.b 0x880
0x00000878   4                 206e000c  movea.l 0xc(a6), a0
0x0000087c   4                 20adfb48  move.l -0x4b8(a5), (a0)
0x00000880   4                 4aae0010  tst.l 0x10(a6)
0x00000884   2                     6708  beq.b 0x88e
0x00000886   4                 206e0010  movea.l 0x10(a6), a0
0x0000088a   4                 20adfb4c  move.l -0x4b4(a5), (a0)
0x0000088e   4                 4aae0014  tst.l 0x14(a6)
0x00000892   2                     6708  beq.b 0x89c
0x00000894   4                 206e0014  movea.l 0x14(a6), a0
0x00000898   4                 20adfb50  move.l -0x4b0(a5), (a0)
0x0000089c   4                 20780316  movea.l 0x316.w, a0
0x000008a0   4                 20680004  movea.l 0x4(a0), a0
0x000008a4   4                 4aa80020  tst.l 0x20(a0)
0x000008a8   2                     676e  beq.b 0x918
0x000008aa   2                     598f  subq.l 0x4, a7
0x000008ac   2                     7078  moveq 0x78, d0
0x000008ae   2                     2f00  move.l d0, -(a7)
0x000008b0   4                 4eba048a  jsr 0xd3c(pc)
0x000008b4   4                 2b5ffb66  move.l (a7)+, -0x49a(a5)
0x000008b8   2                     660c  bne.b 0x8c6
0x000008ba   6             2f3c85000000  move.l 0x85000000, -(a7)
0x000008c0   4                 4eba0094  jsr 0x956(pc)
0x000008c4   2                     588f  addq.l 0x4, a7
0x000008c6   4                 20780316  movea.l 0x316.w, a0
0x000008ca   4                 20680004  movea.l 0x4(a0), a0
0x000008ce   4                 28680020  movea.l 0x20(a0), a4
0x000008d2   2                     7e00  moveq 0x0, d7
0x000008d4   2                     7605  moveq 0x5, d3
0x000008d6   2                     2007  move.l d7, d0
0x000008d8   2                     2200  move.l d0, d1
0x000008da   4                 c0fc0018  mulu.w 0x18, d0
0x000008de   2                     4841  swap d1
0x000008e0   4                 c2fc0018  mulu.w 0x18, d1
0x000008e4   2                     4841  swap d1
0x000008e6   2                     4241  clr.w d1
0x000008e8   2                     d081  add.l d1, d0
0x000008ea   4                 206dfb66  movea.l -0x49a(a5), a0
0x000008ee   2                     2207  move.l d7, d1
0x000008f0   2                     2401  move.l d1, d2
0x000008f2   4                 c2fc0018  mulu.w 0x18, d1
0x000008f6   2                     4842  swap d2
0x000008f8   4                 c4fc0018  mulu.w 0x18, d2
0x000008fc   2                     4842  swap d2
0x000008fe   2                     4242  clr.w d2
0x00000900   2                     d282  add.l d2, d1
0x00000902   4                 41f01800  lea.l (a0, d1.l), a0
0x00000906   4                 43f40800  lea.l (a4, d0.l), a1
0x0000090a   2                     7005  moveq 0x5, d0
0x0000090c   2                     20d9  move.l (a1)+, (a0)+
0x0000090e   4                 51c8fffc  dbra d0, 0x90c
0x00000912   2                     5287  addq.l 0x1, d7
0x00000914   2                     b687  cmp.l d7, d3
0x00000916   2                     6ebe  bgt.b 0x8d6
0x00000918   4                 4ebafccc  jsr 0x5e6(pc)
0x0000091c   2                     7000  moveq 0x0, d0
0x0000091e   4                 2b40fb42  move.l d0, -0x4be(a5)
0x00000922   6             4cee18ccffe8  movem.l -0x18(a6), d2-d3/d6-d7/a3-a4
0x00000928   2                     4e5e  unlk a6
0x0000092a   2                     4e75  rts
0x0000092c   2                     875f  or.w d3, (a7)+
0x0000092e   2                     5254  addq.w 0x1, (a4)
0x00000930   4                 496e6974  
0x00000934   4                 00004e56  ori.b 0x56, d0
0x00000938   4                 0000203c  ori.b 0x3c, d0
0x0000093c   4                 00ffffff  
0x00000940   4                 c0ae0008  and.l 0x8(a6), d0
0x00000944   2                     2f00  move.l d0, -(a7)
0x00000946   4                 4eba000e  jsr 0x956(pc)
0x0000094a   2                     4e5e  unlk a6
0x0000094c   2                     4e75  rts
0x0000094e   2                     8465  or.w -(a5), d2
0x00000950   2                     7869  moveq 0x69, d4
0x00000952   2                     7400  moveq 0x0, d2
0x00000954   4                 00004e56  ori.b 0x56, d0
0x00000958   4                 00002f0b  ori.b 0xb, d0
0x0000095c   4                 206dfb5c  movea.l -0x4a4(a5), a0
0x00000960   4                 47e8008c  lea.l 0x8c(a0), a3
0x00000964   2                     600c  bra.b 0x972
0x00000966   2                     4a93  tst.l (a3)
0x00000968   2                     6704  beq.b 0x96e
0x0000096a   2                     2053  movea.l (a3), a0
0x0000096c   2                     4e90  jsr (a0)
0x0000096e   4                 d6fcfffc  adda.w 0xfffc, a3
0x00000972   4                 206dfb5c  movea.l -0x4a4(a5), a0
0x00000976   2                     b1cb  cmpa.l a3, a0
0x00000978   2                     65ec  bcs.b 0x966
0x0000097a   4                 4aadfb6a  tst.l -0x496(a5)
0x0000097e   2                     670a  beq.b 0x98a
0x00000980   4                 206dfb6a  movea.l -0x496(a5), a0
0x00000984   6             216e0008000e  move.l 0x8(a6), 0xe(a0)
0x0000098a   4                 4aadfc50  tst.l -0x3b0(a5)
0x0000098e   2                     660a  bne.b 0x99a
0x00000990   4                 206dfb5c  movea.l -0x4a4(a5), a0
0x00000994   2                     2050  movea.l (a0), a0
0x00000996   2                     4e90  jsr (a0)
0x00000998   2                     600e  bra.b 0x9a8
0x0000099a   2                     7001  moveq 0x1, d0
0x0000099c   2                     2f00  move.l d0, -(a7)
0x0000099e   4                 486dfc38  pea.l -0x3c8(a5)
0x000009a2   4                 4eba00b8  jsr 0xa5c(pc)
0x000009a6   2                     508f  addq.l 0x8, a7
0x000009a8   4                 266efffc  movea.l -0x4(a6), a3
0x000009ac   2                     4e5e  unlk a6
0x000009ae   2                     4e75  rts
0x000009b0   2                     875f  or.w d3, (a7)+
0x000009b2   2                     5254  addq.w 0x1, (a4)
0x000009b4   4                 45786974  
0x000009b8   4                 0000222f  ori.b 0x2f, d0
0x000009bc   4                 0004202f  ori.b 0x2f, d4
0x000009c0   4                 00084eba  
0x000009c4   4                 000e2001  
0x000009c8   2                     4e75  rts
0x000009ca   4                 222f0004  move.l 0x4(a7), d1
0x000009ce   4                 202f0008  move.l 0x8(a7), d0
0x000009d2   4                 48e70600  movem.l d5-d6, -(a7)
0x000009d6   2                     2a00  move.l d0, d5
0x000009d8   2                     6a02  bpl.b 0x9dc
0x000009da   2                     4480  neg.l d0
0x000009dc   2                     2c01  move.l d1, d6
0x000009de   2                     6a02  bpl.b 0x9e2
0x000009e0   2                     4481  neg.l d1
0x000009e2   4                 4eba001c  jsr 0xa00(pc)
0x000009e6   2                     4a85  tst.l d5
0x000009e8   2                     6a02  bpl.b 0x9ec
0x000009ea   2                     4480  neg.l d0
0x000009ec   2                     bb86  eor.l d5, d6
0x000009ee   2                     6a02  bpl.b 0x9f2
0x000009f0   2                     4481  neg.l d1
0x000009f2   4                 4cdf0060  movem.l (a7)+, d5-d6
0x000009f6   2                     4e75  rts
0x000009f8   4                 222f0004  move.l 0x4(a7), d1
0x000009fc   4                 202f0008  move.l 0x8(a7), d0
0x00000a00   4                 48e73800  movem.l d2-d4, -(a7)
0x00000a04   2                     2401  move.l d1, d2
0x00000a06   2                     4842  swap d2
0x00000a08   2                     4a42  tst.w d2
0x00000a0a   2                     661c  bne.b 0xa28
0x00000a0c   2                     3600  move.w d0, d3
0x00000a0e   2                     4240  clr.w d0
0x00000a10   2                     4840  swap d0
0x00000a12   2                     6704  beq.b 0xa18
0x00000a14   2                     80c1  divu.w d1, d0
0x00000a16   2                     3400  move.w d0, d2
0x00000a18   2                     4842  swap d2
0x00000a1a   2                     3003  move.w d3, d0
0x00000a1c   2                     80c1  divu.w d1, d0
0x00000a1e   2                     3400  move.w d0, d2
0x00000a20   2                     2202  move.l d2, d1
0x00000a22   2                     4240  clr.w d0
0x00000a24   2                     4840  swap d0
0x00000a26   2                     6022  bra.b 0xa4a
0x00000a28   2                     2400  move.l d0, d2
0x00000a2a   2                     4240  clr.w d0
0x00000a2c   2                     4840  swap d0
0x00000a2e   2                     4842  swap d2
0x00000a30   2                     4242  clr.w d2
0x00000a32   2                     2601  move.l d1, d3
0x00000a34   2                     7200  moveq 0x0, d1
0x00000a36   2                     780f  moveq 0xf, d4
0x00000a38   2                     d482  add.l d2, d2
0x00000a3a   2                     d180  addx.l d0, d0
0x00000a3c   2                     d281  add.l d1, d1
0x00000a3e   2                     b083  cmp.l d3, d0
0x00000a40   2                     6504  bcs.b 0xa46
0x00000a42   2                     9083  sub.l d3, d0
0x00000a44   2                     5201  addq.b 0x1, d1
0x00000a46   4                 51ccfff0  dbra d4, 0xa38
0x00000a4a   4                 4cdf001c  movem.l (a7)+, d2-d4
0x00000a4e   2                     4e75  rts
0x00000a50   2                     225f  movea.l (a7)+, a1
0x00000a52   2                     2057  movea.l (a7), a0
0x00000a54   4                 48d0defc  movem.l d2-d7/a1-a4/a6-a7, (a0)
0x00000a58   2                     7000  moveq 0x0, d0
0x00000a5a   2                     4ed1  jmp (a1)
0x00000a5c   4                 202f0008  move.l 0x8(a7), d0
0x00000a60   2                     6602  bne.b 0xa64
0x00000a62   2                     7001  moveq 0x1, d0
0x00000a64   4                 206f0004  movea.l 0x4(a7), a0
0x00000a68   4                 4cd0defc  movem.l (a0), d2-d7/a1-a4/a6-a7
0x00000a6c   2                     4ed1  jmp (a1)
0x00000a6e   4                 202f0004  move.l 0x4(a7), d0
0x00000a72   2                     672a  beq.b 0xa9e
0x00000a74   2                     2040  movea.l d0, a0
0x00000a76   2                     2248  movea.l a0, a1
0x00000a78   2                     1019  move.b (a1)+, d0
0x00000a7a   2                     671e  beq.b 0xa9a
0x00000a7c   2                     1211  move.b (a1), d1
0x00000a7e   2                     12c0  move.b d0, (a1)+
0x00000a80   2                     1001  move.b d1, d0
0x00000a82   2                     66f8  bne.b 0xa7c
0x00000a84   2                     93c8  suba.l a0, a1
0x00000a86   2                     2009  move.l a1, d0
0x00000a88   2                     5340  subq.w 0x1, d0
0x00000a8a   6             0c80000000ff  cmpi.l 0xff, d0
0x00000a90   2                     6f06  ble.b 0xa98
0x00000a92   6             203c000000ff  move.l 0xff, d0
0x00000a98   2                     1080  move.b d0, (a0)
0x00000a9a   4                 202f0004  move.l 0x4(a7), d0
0x00000a9e   2                     4e75  rts
0x00000aa0   4                 202f0004  move.l 0x4(a7), d0
0x00000aa4   2                     6712  beq.b 0xab8
0x00000aa6   2                     2040  movea.l d0, a0
0x00000aa8   2                     7000  moveq 0x0, d0
0x00000aaa   2                     1010  move.b (a0), d0
0x00000aac   2                     6004  bra.b 0xab2
0x00000aae   4                 10e80001  move.b 0x1(a0), (a0)+
0x00000ab2   4                 51c8fffa  dbra d0, 0xaae
0x00000ab6   2                     4210  clr.b (a0)
0x00000ab8   4                 202f0004  move.l 0x4(a7), d0
0x00000abc   2                     4e75  rts
0x00000abe   2                     225f  movea.l (a7)+, a1
0x00000ac0   2                     201f  move.l (a7)+, d0
0x00000ac2   2                     a04c  invalid
0x00000ac4   2                     2e80  move.l d0, (a7)
0x00000ac6   2                     4e71  nop
0x00000ac8   2                     7000  moveq 0x0, d0
0x00000aca   2                     2f09  move.l a1, -(a7)
0x00000acc   4                 31c00220  move.w d0, 0x220.w
0x00000ad0   2                     4e75  rts
0x00000ad2   2                     7000  moveq 0x0, d0
0x00000ad4   2                     60f6  bra.b 0xacc
0x00000ad6   2                     a01c  invalid
0x00000ad8   4                 2f400004  move.l d0, 0x4(a7)
0x00000adc   4                 4efafff4  jmp 0xad2(pc)
0x00000ae0   2                     225f  movea.l (a7)+, a1
0x00000ae2   2                     201f  move.l (a7)+, d0
0x00000ae4   2                     a040  invalid
0x00000ae6   4                 4efaffe2  jmp 0xaca(pc)
0x00000aea   4                 4a78028e  tst.w 0x28e.w
0x00000aee   2                     6a2a  bpl.b 0xb1a
0x00000af0   4                 20780130  movea.l 0x130.w, a0
0x00000af4   4                 43f80114  lea.l 0x114.w, a1
0x00000af8   2                     2008  move.l a0, d0
0x00000afa   2                     9091  sub.l (a1), d0
0x00000afc   2                     740c  moveq 0xc, d2
0x00000afe   2                     b082  cmp.l d2, d0
0x00000b00   2                     6516  bcs.b 0xb18
0x00000b02   2                     2251  movea.l (a1), a1
0x00000b04   4                 21c80114  move.l a0, 0x114.w
0x00000b08   2                     2280  move.l d0, (a1)
0x00000b0a   2                     4211  clr.b (a1)
0x00000b0c   4                 227802aa  movea.l 0x2aa.w, a1
0x00000b10   2                     2288  move.l a0, (a1)
0x00000b12   2                     2082  move.l d2, (a0)
0x00000b14   4                 d1a9000c  add.l d0, 0xc(a1)
0x00000b18   2                     4e75  rts
0x00000b1a   2                     a063  invalid
0x00000b1c   2                     4e75  rts
0x00000b1e   2                     225f  movea.l (a7)+, a1
0x00000b20   2                     205f  movea.l (a7)+, a0
0x00000b22   2                     a064  invalid
0x00000b24   2                     4ed1  jmp (a1)
0x00000b26   4                 4a78028e  tst.w 0x28e.w
0x00000b2a   2                     6af2  bpl.b 0xb1e
0x00000b2c   4                 226f0004  movea.l 0x4(a7), a1
0x00000b30   4                 48e71f3e  movem.l d3-d7/a2-a6, -(a7)
0x00000b34   2                     2009  move.l a1, d0
0x00000b36   4                 c0b8031a  and.l 0x31a.w, d0
0x00000b3a   2                     670c  beq.b 0xb48
0x00000b3c   2                     2240  movea.l d0, a1
0x00000b3e   2                     2011  move.l (a1), d0
0x00000b40   4                 c0b8031a  and.l 0x31a.w, d0
0x00000b44   2                     2040  movea.l d0, a0
0x00000b46   2                     6606  bne.b 0xb4e
0x00000b48   2                     7093  moveq 0x93, d0
0x00000b4a   4                 60000162  bra.w 0xcae
0x00000b4e   2                     2849  movea.l a1, a4
0x00000b50   2                     4a14  tst.b (a4)
0x00000b52   2                     6a04  bpl.b 0xb58
0x00000b54   2                     708b  moveq 0x8b, d0
0x00000b56   2                     60f2  bra.b 0xb4a
0x00000b58   2                     2c49  movea.l a1, a6
0x00000b5a   4                 2028fffc  move.l -0x4(a0), d0
0x00000b5e   4                 c0b8031a  and.l 0x31a.w, d0
0x00000b62   2                     9dc0  suba.l d0, a6
0x00000b64   2                     2656  movea.l (a6), a3
0x00000b66   2                     5188  subq.l 0x8, a0
0x00000b68   2                     2210  move.l (a0), d1
0x00000b6a   4                 c2b8031a  and.l 0x31a.w, d1
0x00000b6e   2                     2e01  move.l d1, d7
0x00000b70   2                     5187  subq.l 0x8, d7
0x00000b72   2                     7000  moveq 0x0, d0
0x00000b74   2                     d1c1  adda.l d1, a0
0x00000b76   2                     b1cb  cmpa.l a3, a0
0x00000b78   4                 64000134  bcc.w 0xcae
0x00000b7c   2                     4a10  tst.b (a0)
0x00000b7e   2                     6710  beq.b 0xb90
0x00000b80   4                 6a00012c  bpl.w 0xcae
0x00000b84   4                 20680004  movea.l 0x4(a0), a0
0x00000b88   2                     d1ce  adda.l a6, a0
0x00000b8a   2                     4a10  tst.b (a0)
0x00000b8c   4                 6b000120  bmi.w 0xcae
0x00000b90   2                     220f  move.l a7, d1
0x00000b92   4                 c2b8031a  and.l 0x31a.w, d1
0x00000b96   4                 207802aa  movea.l 0x2aa.w, a0
0x00000b9a   2                     9290  sub.l (a0), d1
0x00000b9c   6             243c00000400  move.l 0x400, d2
0x00000ba2   2                     2002  move.l d2, d0
0x00000ba4   2                     d087  add.l d7, d0
0x00000ba6   2                     b280  cmp.l d0, d1
0x00000ba8   2                     6d02  blt.b 0xbac
0x00000baa   2                     2200  move.l d0, d1
0x00000bac   2                     70ff  moveq 0xff, d0
0x00000bae   2                     b282  cmp.l d2, d1
0x00000bb0   4                 6d0000fc  blt.w 0xcae
0x00000bb4   6             048200000080  subi.l 0x80, d2
0x00000bba   2                     9282  sub.l d2, d1
0x00000bbc   2                     9fc1  suba.l d1, a7
0x00000bbe   4                 9efc0016  suba.w 0x16, a7
0x00000bc2   2                     2a4f  movea.l a7, a5
0x00000bc4   4                 2b410008  move.l d1, 0x8(a5)
0x00000bc8   6             2b7801180012  move.l 0x118.w, 0x12(a5)
0x00000bce   4                 21ce0118  move.l a6, 0x118.w
0x00000bd2   2                     2054  movea.l (a4), a0
0x00000bd4   2                     5148  subq.w 0x8, a0
0x00000bd6   2                     2a90  move.l (a0), (a5)
0x00000bd8   2                     2014  move.l (a4), d0
0x00000bda   4                 c0b8031a  and.l 0x31a.w, d0
0x00000bde   4                 2b40000c  move.l d0, 0xc(a5)
0x00000be2   4                 1b540010  move.b (a4), 0x10(a5)
0x00000be6   4                 610000d2  bsr.w 0xcba
0x00000bea   2                     4a12  tst.b (a2)
0x00000bec   2                     662a  bne.b 0xc18
0x00000bee   2                     2212  move.l (a2), d1
0x00000bf0   2                     2001  move.l d1, d0
0x00000bf2   2                     5180  subq.l 0x8, d0
0x00000bf4   2                     be80  cmp.l d0, d7
0x00000bf6   2                     6220  bhi.b 0xc18
0x00000bf8   2                     9087  sub.l d7, d0
0x00000bfa   2                     6706  beq.b 0xc02
0x00000bfc   2                     740c  moveq 0xc, d2
0x00000bfe   2                     b082  cmp.l d2, d0
0x00000c00   2                     6516  bcs.b 0xc18
0x00000c02   2                     2054  movea.l (a4), a0
0x00000c04   2                     224a  movea.l a2, a1
0x00000c06   2                     d3c1  adda.l d1, a1
0x00000c08   2                     2007  move.l d7, d0
0x00000c0a   2                     93c0  suba.l d0, a1
0x00000c0c   4                 91ae000c  sub.l d0, 0xc(a6)
0x00000c10   2                     a02e  invalid
0x00000c12   2                     204c  movea.l a4, a0
0x00000c14   2                     a02b  invalid
0x00000c16   2                     6068  bra.b 0xc80
0x00000c18   2                     7c00  moveq 0x0, d6
0x00000c1a   4                 610000d8  bsr.w 0xcf4
0x00000c1e   4                 61000112  bsr.w 0xd32
0x00000c22   4                 61000096  bsr.w 0xcba
0x00000c26   2                     2212  move.l (a2), d1
0x00000c28   4                 202d0004  move.l 0x4(a5), d0
0x00000c2c   4                 41ed0016  lea.l 0x16(a5), a0
0x00000c30   2                     224a  movea.l a2, a1
0x00000c32   2                     d3c1  adda.l d1, a1
0x00000c34   2                     93c0  suba.l d0, a1
0x00000c36   2                     dc80  add.l d0, d6
0x00000c38   4                 91ae000c  sub.l d0, 0xc(a6)
0x00000c3c   2                     a02e  invalid
0x00000c3e   2                     4a87  tst.l d7
0x00000c40   2                     673e  beq.b 0xc80
0x00000c42   2                     2009  move.l a1, d0
0x00000c44   2                     908a  sub.l a2, d0
0x00000c46   2                     6716  beq.b 0xc5e
0x00000c48   2                     2200  move.l d0, d1
0x00000c4a   2                     5181  subq.l 0x8, d1
0x00000c4c   2                     9287  sub.l d7, d1
0x00000c4e   2                     650c  bcs.b 0xc5c
0x00000c50   2                     6706  beq.b 0xc58
0x00000c52   2                     740c  moveq 0xc, d2
0x00000c54   2                     b481  cmp.l d1, d2
0x00000c56   2                     6504  bcs.b 0xc5c
0x00000c58   2                     2054  movea.l (a4), a0
0x00000c5a   2                     60ac  bra.b 0xc08
0x00000c5c   2                     2480  move.l d0, (a2)
0x00000c5e   4                 4cd10030  movem.l (a1), d4-d5
0x00000c62   4                 234e0004  move.l a6, 0x4(a1)
0x00000c66   2                     2286  move.l d6, (a1)
0x00000c68   4                 12bc0040  move.b 0x40, (a1)
0x00000c6c   2                     2f09  move.l a1, -(a7)
0x00000c6e   4                 61000084  bsr.w 0xcf4
0x00000c72   4                 610000be  bsr.w 0xd32
0x00000c76   2                     6142  bsr.b 0xcba
0x00000c78   2                     225f  movea.l (a7)+, a1
0x00000c7a   4                 48d10030  movem.l d4-d5, (a1)
0x00000c7e   2                     60a6  bra.b 0xc26
0x00000c80   2                     5189  subq.l 0x8, a1
0x00000c82   4                 51ae000c  subq.l 0x8, 0xc(a6)
0x00000c86   2                     2009  move.l a1, d0
0x00000c88   2                     908a  sub.l a2, d0
0x00000c8a   2                     6702  beq.b 0xc8e
0x00000c8c   2                     2480  move.l d0, (a2)
0x00000c8e   2                     2449  movea.l a1, a2
0x00000c90   2                     24d5  move.l (a5), (a2)+
0x00000c92   2                     204c  movea.l a4, a0
0x00000c94   2                     91ce  suba.l a6, a0
0x00000c96   2                     24c8  move.l a0, (a2)+
0x00000c98   2                     288a  move.l a2, (a4)
0x00000c9a   4                 18ad0010  move.b 0x10(a5), (a4)
0x00000c9e   6             21ed00120118  move.l 0x12(a5), 0x118.w
0x00000ca4   2                     7000  moveq 0x0, d0
0x00000ca6   4                 dfed0008  adda.l 0x8(a5), a7
0x00000caa   4                 defc0016  adda.w 0x16, a7
0x00000cae   4                 4cdf7cf8  movem.l (a7)+, d3-d7/a2-a6
0x00000cb2   2                     2e9f  move.l (a7)+, (a7)
0x00000cb4   4                 31c00220  move.w d0, 0x220.w
0x00000cb8   2                     4e75  rts
0x00000cba   2                     2014  move.l (a4), d0
0x00000cbc   2                     670a  beq.b 0xcc8
0x00000cbe   4                 c0b8031a  and.l 0x31a.w, d0
0x00000cc2   2                     2040  movea.l d0, a0
0x00000cc4   2                     5148  subq.w 0x8, a0
0x00000cc6   2                     6004  bra.b 0xccc
0x00000cc8   4                 41ee0034  lea.l 0x34(a6), a0
0x00000ccc   2                     2210  move.l (a0), d1
0x00000cce   4                 c2b8031a  and.l 0x31a.w, d1
0x00000cd2   2                     4a10  tst.b (a0)
0x00000cd4   2                     670c  beq.b 0xce2
0x00000cd6   2                     6a14  bpl.b 0xcec
0x00000cd8   4                 22680004  movea.l 0x4(a0), a1
0x00000cdc   2                     d3ce  adda.l a6, a1
0x00000cde   2                     4a11  tst.b (a1)
0x00000ce0   2                     6b0a  bmi.b 0xcec
0x00000ce2   2                     2448  movea.l a0, a2
0x00000ce4   2                     d1c1  adda.l d1, a0
0x00000ce6   2                     b1cb  cmpa.l a3, a0
0x00000ce8   2                     65e2  bcs.b 0xccc
0x00000cea   2                     6006  bra.b 0xcf2
0x00000cec   4                 b1ed000c  cmpa.l 0xc(a5), a0
0x00000cf0   2                     63f0  bls.b 0xce2
0x00000cf2   2                     4e75  rts
0x00000cf4   4                 202d0008  move.l 0x8(a5), d0
0x00000cf8   2                     b087  cmp.l d7, d0
0x00000cfa   2                     6d02  blt.b 0xcfe
0x00000cfc   2                     2007  move.l d7, d0
0x00000cfe   4                 43ed0016  lea.l 0x16(a5), a1
0x00000d02   2                     2054  movea.l (a4), a0
0x00000d04   2                     d1c7  adda.l d7, a0
0x00000d06   2                     91c0  suba.l d0, a0
0x00000d08   2                     9e80  sub.l d0, d7
0x00000d0a   4                 2b400004  move.l d0, 0x4(a5)
0x00000d0e   2                     2200  move.l d0, d1
0x00000d10   2                     a02e  invalid
0x00000d12   2                     204c  movea.l a4, a0
0x00000d14   2                     2007  move.l d7, d0
0x00000d16   2                     6604  bne.b 0xd1c
0x00000d18   2                     a02b  invalid
0x00000d1a   2                     4e75  rts
0x00000d1c   2                     2050  movea.l (a0), a0
0x00000d1e   2                     5148  subq.w 0x8, a0
0x00000d20   2                     1410  move.b (a0), d2
0x00000d22   2                     5080  addq.l 0x8, d0
0x00000d24   2                     2080  move.l d0, (a0)
0x00000d26   2                     1082  move.b d2, (a0)
0x00000d28   2                     d1c0  adda.l d0, a0
0x00000d2a   2                     2081  move.l d1, (a0)
0x00000d2c   4                 d3ae000c  add.l d1, 0xc(a6)
0x00000d30   2                     4e75  rts
0x00000d32   6             203c00800000  move.l 0x800000, d0
0x00000d38   2                     a04c  invalid
0x00000d3a   2                     4e75  rts
0x00000d3c   2                     225f  movea.l (a7)+, a1
0x00000d3e   2                     201f  move.l (a7)+, d0
0x00000d40   2                     a11e  invalid
0x00000d42   2                     2e88  move.l a0, (a7)
0x00000d44   4                 4efafd84  jmp 0xaca(pc)
0x00000d48   2                     225f  movea.l (a7)+, a1
0x00000d4a   2                     205f  movea.l (a7)+, a0
0x00000d4c   2                     a01f  invalid
0x00000d4e   4                 4efafd7a  jmp 0xaca(pc)
0x00000d52   2                     225f  movea.l (a7)+, a1
0x00000d54   2                     201f  move.l (a7)+, d0
0x00000d56   2                     a122  invalid
0x00000d58   2                     2e88  move.l a0, (a7)
0x00000d5a   4                 4efafd6e  jmp 0xaca(pc)
0x00000d5e   2                     225f  movea.l (a7)+, a1
0x00000d60   2                     205f  movea.l (a7)+, a0
0x00000d62   2                     a023  invalid
0x00000d64   4                 4efafd64  jmp 0xaca(pc)
0x00000d68   2                     225f  movea.l (a7)+, a1
0x00000d6a   2                     205f  movea.l (a7)+, a0
0x00000d6c   2                     a025  invalid
0x00000d6e   2                     2e80  move.l d0, (a7)
0x00000d70   2                     6a06  bpl.b 0xd78
0x00000d72   2                     4297  clr.l (a7)
0x00000d74   4                 4efafd54  jmp 0xaca(pc)
0x00000d78   4                 4efafd4e  jmp 0xac8(pc)
0x00000d7c   2                     225f  movea.l (a7)+, a1
0x00000d7e   2                     201f  move.l (a7)+, d0
0x00000d80   2                     205f  movea.l (a7)+, a0
0x00000d82   2                     a024  invalid
0x00000d84   4                 4efafd44  jmp 0xaca(pc)
0x00000d88   2                     225f  movea.l (a7)+, a1
0x00000d8a   2                     205f  movea.l (a7)+, a0
0x00000d8c   2                     a128  invalid
0x00000d8e   2                     2e88  move.l a0, (a7)
0x00000d90   4                 4efafd36  jmp 0xac8(pc)
0x00000d94   2                     225f  movea.l (a7)+, a1
0x00000d96   2                     205f  movea.l (a7)+, a0
0x00000d98   2                     a02b  invalid
0x00000d9a   4                 4efafd2e  jmp 0xaca(pc)
0x00000d9e   2                     225f  movea.l (a7)+, a1
0x00000da0   2                     201f  move.l (a7)+, d0
0x00000da2   2                     205f  movea.l (a7)+, a0
0x00000da4   2                     a027  invalid
0x00000da6   4                 4efafd22  jmp 0xaca(pc)
0x00000daa   2                     225f  movea.l (a7)+, a1
0x00000dac   2                     205f  movea.l (a7)+, a0
0x00000dae   2                     a029  invalid
0x00000db0   4                 4efafd18  jmp 0xaca(pc)
0x00000db4   2                     225f  movea.l (a7)+, a1
0x00000db6   2                     205f  movea.l (a7)+, a0
0x00000db8   2                     a02a  invalid
0x00000dba   4                 4efafd0e  jmp 0xaca(pc)
0x00000dbe   2                     225f  movea.l (a7)+, a1
0x00000dc0   2                     205f  movea.l (a7)+, a0
0x00000dc2   2                     a049  invalid
0x00000dc4   4                 4efafd04  jmp 0xaca(pc)
0x00000dc8   2                     225f  movea.l (a7)+, a1
0x00000dca   2                     205f  movea.l (a7)+, a0
0x00000dcc   2                     a04a  invalid
0x00000dce   4                 4efafcfa  jmp 0xaca(pc)
0x00000dd2   2                     a036  invalid
0x00000dd4   4                 4efafcf6  jmp 0xacc(pc)
0x00000dd8   2                     221f  move.l (a7)+, d1
0x00000dda   2                     201f  move.l (a7)+, d0
0x00000ddc   2                     225f  movea.l (a7)+, a1
0x00000dde   2                     205f  movea.l (a7)+, a0
0x00000de0   2                     a02e  invalid
0x00000de2   2                     2241  movea.l d1, a1
0x00000de4   4                 4efafce4  jmp 0xaca(pc)
0x00000de8   2                     225f  movea.l (a7)+, a1
0x00000dea   2                     205f  movea.l (a7)+, a0
0x00000dec   2                     a033  invalid
0x00000dee   2                     3e80  move.w d0, (a7)
0x00000df0   2                     4ed1  jmp (a1)
0x00000df2   2                     225f  movea.l (a7)+, a1
0x00000df4   2                     205f  movea.l (a7)+, a0
0x00000df6   2                     a034  invalid
0x00000df8   2                     3e80  move.w d0, (a7)
0x00000dfa   2                     4ed1  jmp (a1)
0x00000dfc   4                 4e56ffce  link.w a6, 0xffce
0x00000e00   4                 41eeffce  lea.l -0x32(a6), a0
0x00000e04   6             317cfffb0018  move.w 0xfffb, 0x18(a0)
0x00000e0a   6             317c0007001a  move.w 0x7, 0x1a(a0)
0x00000e10   6             316e00080016  move.w 0x8(a6), 0x16(a0)
0x00000e16   2                     a004  invalid
0x00000e18   4                 3d40000a  move.w d0, 0xa(a6)
0x00000e1c   2                     4e5e  unlk a6
0x00000e1e   2                     225f  movea.l (a7)+, a1
0x00000e20   2                     544f  addq.w 0x2, a7
0x00000e22   2                     4ed1  jmp (a1)
0x00000e24   2                     225f  movea.l (a7)+, a1
0x00000e26   2                     205f  movea.l (a7)+, a0
0x00000e28   4                 20b8020c  move.l 0x20c.w, (a0)
0x00000e2c   2                     4ed1  jmp (a1)
0x00000e2e   2                     7000  moveq 0x0, d0
0x00000e30   4                 206f0004  movea.l 0x4(a7), a0
0x00000e34   4                 2038020c  move.l 0x20c.w, d0
0x00000e38   2                     a9c6  invalid
0x00000e3a   2                     2e9f  move.l (a7)+, (a7)
0x00000e3c   2                     4e75  rts
0x00000e3e   2                     201f  move.l (a7)+, d0
0x00000e40   2                     225f  movea.l (a7)+, a1
0x00000e42   2                     205f  movea.l (a7)+, a0
0x00000e44   2                     2f00  move.l d0, -(a7)
0x00000e46   2                     a03b  invalid
0x00000e48   2                     2280  move.l d0, (a1)
0x00000e4a   2                     4e75  rts
0x00000e4c   4                 4e560000  link.w a6, 0x0
0x00000e50   4                 206e0010  movea.l 0x10(a6), a0
0x00000e54   4                 226e000c  movea.l 0xc(a6), a1
0x00000e58   2                     7000  moveq 0x0, d0
0x00000e5a   2                     1018  move.b (a0)+, d0
0x00000e5c   2                     4840  swap d0
0x00000e5e   2                     1019  move.b (a1)+, d0
0x00000e60   4                 4a2e0008  tst.b 0x8(a6)
0x00000e64   2                     670e  beq.b 0xe74
0x00000e66   4                 4a2e000a  tst.b 0xa(a6)
0x00000e6a   2                     6704  beq.b 0xe70
0x00000e6c   2                     a43c  invalid
0x00000e6e   2                     6010  bra.b 0xe80
0x00000e70   2                     a03c  invalid
0x00000e72   2                     600c  bra.b 0xe80
0x00000e74   4                 4a2e000a  tst.b 0xa(a6)
0x00000e78   2                     6704  beq.b 0xe7e
0x00000e7a   2                     a63c  invalid
0x00000e7c   2                     6002  bra.b 0xe80
0x00000e7e   2                     a23c  invalid
0x00000e80   4                 0a000001  eori.b 0x1, d0
0x00000e84   4                 1d400014  move.b d0, 0x14(a6)
0x00000e88   2                     4e5e  unlk a6
0x00000e8a   2                     205f  movea.l (a7)+, a0
0x00000e8c   4                 defc000c  adda.w 0xc, a7
0x00000e90   2                     4ed0  jmp (a0)
0x00000e92   4                 207802ae  movea.l 0x2ae.w, a0
0x00000e96   4                 d0fc000a  adda.w 0xa, a0
0x00000e9a   2                     4ed0  jmp (a0)
0x00000e9c   2                     225f  movea.l (a7)+, a1
0x00000e9e   2                     101f  move.b (a7)+, d0
0x00000ea0   2                     205f  movea.l (a7)+, a0
0x00000ea2   2                     6604  bne.b 0xea8
0x00000ea4   2                     a007  invalid
0x00000ea6   2                     6002  bra.b 0xeaa
0x00000ea8   2                     a407  invalid
0x00000eaa   2                     3e80  move.w d0, (a7)
0x00000eac   2                     4ed1  jmp (a1)
0x00000eae   2                     225f  movea.l (a7)+, a1
0x00000eb0   2                     205f  movea.l (a7)+, a0
0x00000eb2   2                     a00e  invalid
0x00000eb4   2                     3e80  move.w d0, (a7)
0x00000eb6   2                     4ed1  jmp (a1)
0x00000eb8   2                     225f  movea.l (a7)+, a1
0x00000eba   2                     205f  movea.l (a7)+, a0
0x00000ebc   2                     a017  invalid
0x00000ebe   2                     3e80  move.w d0, (a7)
0x00000ec0   2                     4ed1  jmp (a1)
0x00000ec2   4                 4e56ff86  link.w a6, 0xff86
0x00000ec6   4                 41eeff86  lea.l -0x7a(a6), a0
0x00000eca   6             216e00100012  move.l 0x10(a6), 0x12(a0)
0x00000ed0   6             316e00140016  move.w 0x14(a6), 0x16(a0)
0x00000ed6   4                 4268001c  clr.w 0x1c(a0)
0x00000eda   2                     a207  invalid
0x00000edc   4                 3d400016  move.w d0, 0x16(a6)
0x00000ee0   4                 226e000c  movea.l 0xc(a6), a1
0x00000ee4   4                 32a80016  move.w 0x16(a0), (a1)
0x00000ee8   4                 20280030  move.l 0x30(a0), d0
0x00000eec   2                     e080  asr.l 0x8, d0
0x00000eee   2                     e280  asr.l 0x1, d0
0x00000ef0   4                 c0e8003e  mulu.w 0x3e(a0), d0
0x00000ef4   2                     e380  asl.l 0x1, d0
0x00000ef6   2                     e180  asl.l 0x8, d0
0x00000ef8   4                 226e0008  movea.l 0x8(a6), a1
0x00000efc   2                     2280  move.l d0, (a1)
0x00000efe   2                     4e5e  unlk a6
0x00000f00   2                     225f  movea.l (a7)+, a1
0x00000f02   4                 defc000e  adda.w 0xe, a7
0x00000f06   2                     4ed1  jmp (a1)
0x00000f08   4                 4e56ffc0  link.w a6, 0xffc0
0x00000f0c   4                 41eeffc0  lea.l -0x40(a6), a0
0x00000f10   6             316e00080016  move.w 0x8(a6), 0x16(a0)
0x00000f16   6             216e000a0012  move.l 0xa(a6), 0x12(a0)
0x00000f1c   2                     a017  invalid
0x00000f1e   4                 3d40000e  move.w d0, 0xe(a6)
0x00000f22   2                     4e5e  unlk a6
0x00000f24   2                     225f  movea.l (a7)+, a1
0x00000f26   2                     5c8f  addq.l 0x6, a7
0x00000f28   2                     4ed1  jmp (a1)
0x00000f2a   4                 4a78028e  tst.w 0x28e.w
0x00000f2e   2                     6b24  bmi.b 0xf54
0x00000f30   2                     205f  movea.l (a7)+, a0
0x00000f32   2                     301f  move.w (a7)+, d0
0x00000f34   2                     2f08  move.l a0, -(a7)
0x00000f36   4                 4e56ffe0  link.w a6, 0xffe0
0x00000f3a   4                 41eeffe0  lea.l -0x20(a6), a0
0x00000f3e   6             317cfffc0018  move.w 0xfffc, 0x18(a0)
0x00000f44   6             317c0002001a  move.w 0x2, 0x1a(a0)
0x00000f4a   4                 3140001c  move.w d0, 0x1c(a0)
0x00000f4e   2                     a204  invalid
0x00000f50   2                     4e5e  unlk a6
0x00000f52   2                     4e75  rts
0x00000f54   2                     205f  movea.l (a7)+, a0
0x00000f56   2                     301f  move.w (a7)+, d0
0x00000f58   2                     2f08  move.l a0, -(a7)
0x00000f5a   8         0c3900ff00400009  cmpi.b 0xff, 0x400009.l
0x00000f62   2                     6724  beq.b 0xf88
0x00000f64   2                     40e7  move.w sr, -(a7)
0x00000f66   4                 007c0300  ori.w 0x300, sr
0x00000f6a   6             123900effffe  move.b 0xeffffe.l, d1
0x00000f70   4                 024100f8  andi.w 0xf8, d1
0x00000f74   4                 02400007  andi.w 0x7, d0
0x00000f78   4                 11c00260  move.b d0, 0x260.w
0x00000f7c   2                     8240  or.w d0, d1
0x00000f7e   6             13c100effffe  move.b d1, 0xeffffe.l
0x00000f84   2                     46df  move.w (a7)+, sr
0x00000f86   2                     4e75  rts
0x00000f88   4                 02400007  andi.w 0x7, d0
0x00000f8c   4                 11c00260  move.b d0, 0x260.w
0x00000f90   2                     e348  lsl.w 0x1, d0
0x00000f92   6             123900fcdd81  move.b 0xfcdd81.l, d1
0x00000f98   4                 020100f1  andi.b 0xf1, d1
0x00000f9c   2                     8200  or.b d0, d1
0x00000f9e   6             13c100fcdd81  move.b d1, 0xfcdd81.l
0x00000fa4   2                     4e75  rts
0x00000fa6   2                     205f  movea.l (a7)+, a0
0x00000fa8   2                     225f  movea.l (a7)+, a1
0x00000faa   2                     4219  clr.b (a1)+
0x00000fac   4                 12b80260  move.b 0x260.w, (a1)
0x00000fb0   2                     4ed0  jmp (a0)
0x00000fb2   2                     205f  movea.l (a7)+, a0
0x00000fb4   4                 31df0afa  move.w (a7)+, 0xafa.w
0x00000fb8   2                     4ed0  jmp (a0)
0x00000fba   4                 4a78028e  tst.w 0x28e.w
0x00000fbe   2                     6b22  bmi.b 0xfe2
0x00000fc0   4                 303c0090  move.w 0x90, d0
0x00000fc4   2                     a346  invalid
0x00000fc6   2                     2248  movea.l a0, a1
0x00000fc8   4                 303c009f  move.w 0x9f, d0
0x00000fcc   2                     a746  invalid
0x00000fce   2                     b3c8  cmpa.l a0, a1
0x00000fd0   2                     6710  beq.b 0xfe2
0x00000fd2   2                     225f  movea.l (a7)+, a1
0x00000fd4   2                     205f  movea.l (a7)+, a0
0x00000fd6   2                     301f  move.w (a7)+, d0
0x00000fd8   2                     2f09  move.l a1, -(a7)
0x00000fda   2                     a090  invalid
0x00000fdc   4                 3f400004  move.w d0, 0x4(a7)
0x00000fe0   2                     4e75  rts
0x00000fe2   4                 206f0004  movea.l 0x4(a7), a0
0x00000fe6   4                 303c0001  move.w 0x1, d0
0x00000fea   2                     2248  movea.l a0, a1
0x00000fec   2                     6006  bra.b 0xff4
0x00000fee   2                     0313  btst.l d1, (a3)
0x00000ff0   2                     0b02  btst.l d5, d2
0x00000ff2   2                     0100  btst.l d0, d0
0x00000ff4   4                 303c0010  move.w 0x10, d0
0x00000ff8   2                     e240  asr.w 0x1, d0
0x00000ffa   2                     5340  subq.w 0x1, d0
0x00000ffc   2                     4258  clr.w (a0)+
0x00000ffe   4                 51c8fffc  dbra d0, 0xffc
0x00001002   4                 32bc0001  move.w 0x1, (a1)
0x00001006   4                 207802ae  movea.l 0x2ae.w, a0
0x0000100a   6             337cfffe0002  move.w 0xfffe, 0x2(a1)
0x00001010   6             0c2800ff0009  cmpi.b 0xff, 0x9(a0)
0x00001016   2                     6742  beq.b 0x105a
0x00001018   4                 4a280008  tst.b 0x8(a0)
0x0000101c   2                     6e20  bgt.b 0x103e
0x0000101e   6             337cffff0002  move.w 0xffff, 0x2(a1)
0x00001024   4                 4a78028e  tst.w 0x28e.w
0x00001028   2                     6b30  bmi.b 0x105a
0x0000102a   6             337c00010002  move.w 0x1, 0x2(a1)
0x00001030   4                 4a780b22  tst.w 0xb22.w
0x00001034   2                     6a24  bpl.b 0x105a
0x00001036   6             337c00020002  move.w 0x2, 0x2(a1)
0x0000103c   2                     601c  bra.b 0x105a
0x0000103e   4                 42690002  clr.w 0x2(a1)
0x00001042   6             0c2800020008  cmpi.b 0x2, 0x8(a0)
0x00001048   2                     6e10  bgt.b 0x105a
0x0000104a   2                     6708  beq.b 0x1054
0x0000104c   6             337c00040002  move.w 0x4, 0x2(a1)
0x00001052   2                     6006  bra.b 0x105a
0x00001054   6             337c00030002  move.w 0x3, 0x2(a1)
0x0000105a   4                 42690004  clr.w 0x4(a1)
0x0000105e   6             0c380002012f  cmpi.b 0x2, 0x12f.w
0x00001064   2                     6e0a  bgt.b 0x1070
0x00001066   4                 1038012f  move.b 0x12f.w, d0
0x0000106a   2                     5240  addq.w 0x1, d0
0x0000106c   4                 13400007  move.b d0, 0x7(a1)
0x00001070   4                 4a78028e  tst.w 0x28e.w
0x00001074   2                     6b0e  bmi.b 0x1084
0x00001076   6             083800040b22  btst.b 0x4, 0xb22.w
0x0000107c   2                     6706  beq.b 0x1084
0x0000107e   6             137c00010008  move.b 0x1, 0x8(a1)
0x00001084   6             0c783fff028e  cmpi.w 0x3fff, 0x28e.w
0x0000108a   2                     6206  bhi.b 0x1092
0x0000108c   6             137c00010009  move.b 0x1, 0x9(a1)
0x00001092   4                 1038021e  move.b 0x21e.w, d0
0x00001096   4                 41faff5b  lea.l 0xff3(pc), a0
0x0000109a   4                 323c0004  move.w 0x4, d1
0x0000109e   2                     b020  cmp.b -(a0), d0
0x000010a0   4                 57c9fffc  dbeq d1, 0x109e
0x000010a4   2                     5241  addq.w 0x1, d1
0x000010a6   4                 3341000a  move.w d1, 0xa(a1)
0x000010aa   4                 4a380291  tst.b 0x291.w
0x000010ae   2                     6b18  bmi.b 0x10c8
0x000010b0   4                 123801fb  move.b 0x1fb.w, d1
0x000010b4   4                 0201000f  andi.b 0xf, d1
0x000010b8   4                 0c010001  cmpi.b 0x1, d1
0x000010bc   2                     660a  bne.b 0x10c8
0x000010be   4                 207802dc  movea.l 0x2dc.w, a0
0x000010c2   6             13680007000d  move.b 0x7(a0), 0xd(a1)
0x000010c8   6             33780210000e  move.w 0x210.w, 0xe(a1)
0x000010ce   4                 4a7803f6  tst.w 0x3f6.w
0x000010d2   2                     6d44  blt.b 0x1118
0x000010d4   4                 4269000e  clr.w 0xe(a1)
0x000010d8   4                 323c003c  move.w 0x3c, d1
0x000010dc   2                     4267  clr.w -(a7)
0x000010de   4                 51c9fffc  dbra d1, 0x10dc
0x000010e2   2                     204f  movea.l a7, a0
0x000010e4   6             31780a580018  move.w 0xa58.w, 0x18(a0)
0x000010ea   2                     7008  moveq 0x8, d0
0x000010ec   2                     a260  invalid
0x000010ee   2                     6624  bne.b 0x1114
0x000010f0   6             316800340016  move.w 0x34(a0), 0x16(a0)
0x000010f6   2                     a207  invalid
0x000010f8   2                     661a  bne.b 0x1114
0x000010fa   6             2168005a0030  move.l 0x5a(a0), 0x30(a0)
0x00001100   8         217c4552494b001c  move.l 0x4552494b, 0x1c(a0)
0x00001108   2                     7001  moveq 0x1, d0
0x0000110a   2                     a260  invalid
0x0000110c   2                     6606  bne.b 0x1114
0x0000110e   6             33680016000e  move.w 0x16(a0), 0xe(a1)
0x00001114   4                 defc007a  adda.w 0x7a, a7
0x00001118   2                     2049  movea.l a1, a0
0x0000111a   2                     225f  movea.l (a7)+, a1
0x0000111c   2                     5c4f  addq.w 0x6, a7
0x0000111e   4                 3ebcea84  move.w 0xea84, (a7)
0x00001122   2                     4ed1  jmp (a1)
0x00001124   2                     4e75  rts
0x00001126   4                 226f0004  movea.l 0x4(a7), a1
0x0000112a   4                 48780001  pea.l 0x1.w
0x0000112e   4                 486dfc70  pea.l -0x390(a5)
0x00001132   4                 486dfc6c  pea.l -0x394(a5)
0x00001136   4                 486dfc68  pea.l -0x398(a5)
0x0000113a   2                     2f09  move.l a1, -(a7)
0x0000113c   4                 4ebaf5e6  jsr 0x724(pc)
0x00001140   4                 4fef0014  lea.l 0x14(a7), a7
0x00001144   4                 486dfc38  pea.l -0x3c8(a5)
0x00001148   4                 4ebaf906  jsr 0xa50(pc)
0x0000114c   2                     584f  addq.w 0x4, a7
0x0000114e   2                     4a80  tst.l d0
0x00001150   2                     6606  bne.b 0x1158
0x00001152   4                 4eba0014  jsr 0x1168(pc)
0x00001156   2                     4e75  rts
0x00001158   2                     584f  addq.w 0x4, a7
0x0000115a   2                     4e75  rts
0x0000115c   2                     42a7  clr.l -(a7)
0x0000115e   4                 4ebaf7d6  jsr 0x936(pc)
0x00001162   2                     42a7  clr.l -(a7)
0x00001164   4                 4ebaf7d0  jsr 0x936(pc)
0x00001168   4                 4e560000  link.w a6, 0x0
0x0000116c   8         2b7c00001388fc9e  move.l 0x1388, -0x362(a5)
0x00001174   4                 422dfc99  clr.b -0x367(a5)
0x00001178   4                 422dfc98  clr.b -0x368(a5)
0x0000117c   2                     7000  moveq 0x0, d0
0x0000117e   4                 2b40fc92  move.l d0, -0x36e(a5)
0x00001182   2                     7000  moveq 0x0, d0
0x00001184   4                 2b40fc8e  move.l d0, -0x372(a5)
0x00001188   2                     7000  moveq 0x0, d0
0x0000118a   4                 2b40fc82  move.l d0, -0x37e(a5)
0x0000118e   2                     7000  moveq 0x0, d0
0x00001190   4                 2b40fc7e  move.l d0, -0x382(a5)
0x00001194   6             1b7c0001fc7d  move.b 0x1, -0x383(a5)
0x0000119a   2                     7000  moveq 0x0, d0
0x0000119c   4                 2b40fc9a  move.l d0, -0x366(a5)
0x000011a0   2                     7000  moveq 0x0, d0
0x000011a2   4                 2b40fc78  move.l d0, -0x388(a5)
0x000011a6   2                     4e5e  unlk a6
0x000011a8   2                     4e75  rts
0x000011aa   2                     8925  or.b d4, -(a5)
0x000011ac   4                 494e4954  
0x000011b0   2                     4845  swap d5
0x000011b2   4                 41500000  
0x000011b6   2                     2f00  move.l d0, -(a7)
0x000011b8   2                     2f01  move.l d1, -(a7)
0x000011ba   4                 302f0010  move.w 0x10(a7), d0
0x000011be   4                 c1ef000e  muls.w 0xe(a7), d0
0x000011c2   4                 322f000c  move.w 0xc(a7), d1
0x000011c6   4                 c3ef0012  muls.w 0x12(a7), d1
0x000011ca   2                     d041  add.w d1, d0
0x000011cc   2                     4840  swap d0
0x000011ce   2                     4240  clr.w d0
0x000011d0   4                 322f0012  move.w 0x12(a7), d1
0x000011d4   4                 c2ef000e  mulu.w 0xe(a7), d1
0x000011d8   2                     d081  add.l d1, d0
0x000011da   4                 2f400010  move.l d0, 0x10(a7)
0x000011de   2                     221f  move.l (a7)+, d1
0x000011e0   2                     201f  move.l (a7)+, d0
0x000011e2   4                 2f570004  move.l (a7), 0x4(a7)
0x000011e6   2                     588f  addq.l 0x4, a7
0x000011e8   2                     4e75  rts
0x000011ea   4                 4e560000  link.w a6, 0x0
0x000011ee   2                     2f00  move.l d0, -(a7)
0x000011f0   2                     2f01  move.l d1, -(a7)
0x000011f2   4                 202f0014  move.l 0x14(a7), d0
0x000011f6   4                 222f0010  move.l 0x10(a7), d1
0x000011fa   4                 4eba003a  jsr 0x1236(pc)
0x000011fe   4                 2f410014  move.l d1, 0x14(a7)
0x00001202   2                     221f  move.l (a7)+, d1
0x00001204   2                     201f  move.l (a7)+, d0
0x00001206   2                     4e5e  unlk a6
0x00001208   4                 2f570004  move.l (a7), 0x4(a7)
0x0000120c   2                     588f  addq.l 0x4, a7
0x0000120e   2                     4e75  rts
0x00001210   4                 4e560000  link.w a6, 0x0
0x00001214   2                     2f00  move.l d0, -(a7)
0x00001216   2                     2f01  move.l d1, -(a7)
0x00001218   4                 202f0014  move.l 0x14(a7), d0
0x0000121c   4                 222f0010  move.l 0x10(a7), d1
0x00001220   4                 4eba0014  jsr 0x1236(pc)
0x00001224   4                 2f400014  move.l d0, 0x14(a7)
0x00001228   2                     221f  move.l (a7)+, d1
0x0000122a   2                     201f  move.l (a7)+, d0
0x0000122c   2                     4e5e  unlk a6
0x0000122e   4                 2f570004  move.l (a7), 0x4(a7)
0x00001232   2                     588f  addq.l 0x4, a7
0x00001234   2                     4e75  rts
0x00001236   4                 48e73e00  movem.l d2-d6, -(a7)
0x0000123a   2                     2a00  move.l d0, d5
0x0000123c   2                     6a02  bpl.b 0x1240
0x0000123e   2                     4480  neg.l d0
0x00001240   2                     2c01  move.l d1, d6
0x00001242   2                     6a02  bpl.b 0x1246
0x00001244   2                     4481  neg.l d1
0x00001246   2                     2401  move.l d1, d2
0x00001248   2                     4842  swap d2
0x0000124a   2                     4a42  tst.w d2
0x0000124c   2                     661c  bne.b 0x126a
0x0000124e   2                     3600  move.w d0, d3
0x00001250   2                     4240  clr.w d0
0x00001252   2                     4840  swap d0
0x00001254   2                     6704  beq.b 0x125a
0x00001256   2                     80c1  divu.w d1, d0
0x00001258   2                     3400  move.w d0, d2
0x0000125a   2                     4842  swap d2
0x0000125c   2                     3003  move.w d3, d0
0x0000125e   2                     80c1  divu.w d1, d0
0x00001260   2                     3400  move.w d0, d2
0x00001262   2                     2202  move.l d2, d1
0x00001264   2                     4240  clr.w d0
0x00001266   2                     4840  swap d0
0x00001268   2                     6022  bra.b 0x128c
0x0000126a   2                     2400  move.l d0, d2
0x0000126c   2                     4240  clr.w d0
0x0000126e   2                     4840  swap d0
0x00001270   2                     4842  swap d2
0x00001272   2                     4242  clr.w d2
0x00001274   2                     2601  move.l d1, d3
0x00001276   2                     7200  moveq 0x0, d1
0x00001278   2                     780f  moveq 0xf, d4
0x0000127a   2                     d482  add.l d2, d2
0x0000127c   2                     d180  addx.l d0, d0
0x0000127e   2                     d281  add.l d1, d1
0x00001280   2                     b083  cmp.l d3, d0
0x00001282   2                     6d04  blt.b 0x1288
0x00001284   2                     9083  sub.l d3, d0
0x00001286   2                     5201  addq.b 0x1, d1
0x00001288   4                 51ccfff0  dbra d4, 0x127a
0x0000128c   2                     4a85  tst.l d5
0x0000128e   2                     6a02  bpl.b 0x1292
0x00001290   2                     4480  neg.l d0
0x00001292   2                     bb86  eor.l d5, d6
0x00001294   2                     6a02  bpl.b 0x1298
0x00001296   2                     4481  neg.l d1
0x00001298   4                 4cdf007c  movem.l (a7)+, d2-d6
0x0000129c   2                     4e75  rts
0x0000129e   4                 48e7e0e0  movem.l d0-d2/a0-a2, -(a7)
0x000012a2   4                 43ef001c  lea.l 0x1c(a7), a1
0x000012a6   2                     3019  move.w (a1)+, d0
0x000012a8   2                     2059  movea.l (a1)+, a0
0x000012aa   2                     3400  move.w d0, d2
0x000012ac   2                     d442  add.w d2, d2
0x000012ae   2                     d442  add.w d2, d2
0x000012b0   2                     d2c2  adda.w d2, a1
0x000012b2   2                     4241  clr.w d1
0x000012b4   2                     5248  addq.w 0x1, a0
0x000012b6   2                     6020  bra.b 0x12d8
0x000012b8   2                     2461  movea.l -(a1), a2
0x000012ba   2                     4242  clr.w d2
0x000012bc   2                     141a  move.b (a2)+, d2
0x000012be   2                     d242  add.w d2, d1
0x000012c0   4                 0c4100ff  cmpi.w 0xff, d1
0x000012c4   2                     6f0e  ble.b 0x12d4
0x000012c6   4                 044100ff  subi.w 0xff, d1
0x000012ca   2                     9441  sub.w d1, d2
0x000012cc   4                 323c00ff  move.w 0xff, d1
0x000012d0   2                     6002  bra.b 0x12d4
0x000012d2   2                     10da  move.b (a2)+, (a0)+
0x000012d4   4                 51cafffc  dbra d2, 0x12d2
0x000012d8   4                 51c8ffde  dbra d0, 0x12b8
0x000012dc   2                     2061  movea.l -(a1), a0
0x000012de   2                     1081  move.b d1, (a0)
0x000012e0   2                     3021  move.w -(a1), d0
0x000012e2   2                     2049  movea.l a1, a0
0x000012e4   2                     d040  add.w d0, d0
0x000012e6   2                     d040  add.w d0, d0
0x000012e8   2                     d0c0  adda.w d0, a0
0x000012ea   2                     5448  addq.w 0x2, a0
0x000012ec   2                     20a1  move.l -(a1), (a0)
0x000012ee   2                     2288  move.l a0, (a1)
0x000012f0   4                 4cdf0707  movem.l (a7)+, d0-d2/a0-a2
0x000012f4   2                     2e5f  movea.l (a7)+, a7
0x000012f6   2                     4e75  rts
0x000012f8   2                     225f  movea.l (a7)+, a1
0x000012fa   2                     301f  move.w (a7)+, d0
0x000012fc   2                     321f  move.w (a7)+, d1
0x000012fe   2                     205f  movea.l (a7)+, a0
0x00001300   2                     6f0c  ble.b 0x130e
0x00001302   2                     4a40  tst.w d0
0x00001304   2                     6f08  ble.b 0x130e
0x00001306   2                     4242  clr.w d2
0x00001308   2                     1410  move.b (a0), d2
0x0000130a   2                     b441  cmp.w d1, d2
0x0000130c   2                     6c02  bge.b 0x1310
0x0000130e   2                     4ed1  jmp (a1)
0x00001310   2                     9441  sub.w d1, d2
0x00001312   2                     9440  sub.w d0, d2
0x00001314   2                     6c06  bge.b 0x131c
0x00001316   2                     5341  subq.w 0x1, d1
0x00001318   2                     1081  move.b d1, (a0)
0x0000131a   2                     4ed1  jmp (a1)
0x0000131c   2                     2f09  move.l a1, -(a7)
0x0000131e   2                     9110  sub.b d0, (a0)
0x00001320   2                     d0c1  adda.w d1, a0
0x00001322   2                     2248  movea.l a0, a1
0x00001324   2                     d2c0  adda.w d0, a1
0x00001326   2                     10d9  move.b (a1)+, (a0)+
0x00001328   4                 51cafffc  dbra d2, 0x1326
0x0000132c   2                     4e75  rts
0x0000132e   4                 48e7c0c0  movem.l d0-d1/a0-a1, -(a7)
0x00001332   2                     7201  moveq 0x1, d1
0x00001334   2                     6006  bra.b 0x133c
0x00001336   4                 48e7c0c0  movem.l d0-d1/a0-a1, -(a7)
0x0000133a   2                     4241  clr.w d1
0x0000133c   4                 206f0018  movea.l 0x18(a7), a0
0x00001340   4                 226f0014  movea.l 0x14(a7), a1
0x00001344   2                     4240  clr.w d0
0x00001346   2                     1010  move.b (a0), d0
0x00001348   2                     b308  cmpm.b (a0)+, (a1)+
0x0000134a   4                 56c8fffc  dbne d0, 0x1348
0x0000134e   2                     6604  bne.b 0x1354
0x00001350   4                 0a410001  eori.w 0x1, d1
0x00001354   4                 1f41001a  move.b d1, 0x1a(a7)
0x00001358   6             2f6f00100016  move.l 0x10(a7), 0x16(a7)
0x0000135e   4                 4cdf0303  movem.l (a7)+, d0-d1/a0-a1
0x00001362   2                     5c4f  addq.w 0x6, a7
0x00001364   2                     4e75  rts
0x00001366   4                 48e7f0c0  movem.l d0-d3/a0-a1, -(a7)
0x0000136a   4                 226f0020  movea.l 0x20(a7), a1
0x0000136e   4                 206f001c  movea.l 0x1c(a7), a0
0x00001372   2                     7601  moveq 0x1, d3
0x00001374   4                 4efa0010  jmp 0x1386(pc)
0x00001378   4                 48e7f0c0  movem.l d0-d3/a0-a1, -(a7)
0x0000137c   4                 206f0020  movea.l 0x20(a7), a0
0x00001380   4                 226f001c  movea.l 0x1c(a7), a1
0x00001384   2                     4243  clr.w d3
0x00001386   2                     4240  clr.w d0
0x00001388   2                     1018  move.b (a0)+, d0
0x0000138a   2                     4241  clr.w d1
0x0000138c   2                     1219  move.b (a1)+, d1
0x0000138e   2                     b240  cmp.w d0, d1
0x00001390   2                     6d06  blt.b 0x1398
0x00001392   2                     3400  move.w d0, d2
0x00001394   2                     6714  beq.b 0x13aa
0x00001396   2                     6004  bra.b 0x139c
0x00001398   2                     3401  move.w d1, d2
0x0000139a   2                     670e  beq.b 0x13aa
0x0000139c   2                     5342  subq.w 0x1, d2
0x0000139e   2                     b308  cmpm.b (a0)+, (a1)+
0x000013a0   4                 56cafffc  dbne d2, 0x139e
0x000013a4   2                     6704  beq.b 0x13aa
0x000013a6   2                     6306  bls.b 0x13ae
0x000013a8   2                     6008  bra.b 0x13b2
0x000013aa   2                     b240  cmp.w d0, d1
0x000013ac   2                     6e04  bgt.b 0x13b2
0x000013ae   4                 0a430001  eori.w 0x1, d3
0x000013b2   4                 1f430022  move.b d3, 0x22(a7)
0x000013b6   4                 4cdf030f  movem.l (a7)+, d0-d3/a0-a1
0x000013ba   4                 2f570006  move.l (a7), 0x6(a7)
0x000013be   2                     5c4f  addq.w 0x6, a7
0x000013c0   2                     4e75  rts
0x000013c2   4                 4e560000  link.w a6, 0x0
0x000013c6   4                 486dffb8  pea.l -0x48(a5)
0x000013ca   4                 486dfa6c  pea.l -0x594(a5)
0x000013ce   4                 486dffbe  pea.l -0x42(a5)
0x000013d2   4                 486dfa72  pea.l -0x58e(a5)
0x000013d6   2                     4267  clr.w -(a7)
0x000013d8   2                     42a7  clr.l -(a7)
0x000013da   2                     a8ec  invalid
0x000013dc   2                     4e5e  unlk a6
0x000013de   2                     4e75  rts
0x000013e0   4                 4e56fff2  link.w a6, 0xfff2
0x000013e4   4                 48e70108  movem.l d7/a4, -(a7)
0x000013e8   4                 286e0008  movea.l 0x8(a6), a4
0x000013ec   2                     7e01  moveq 0x1, d7
0x000013ee   2                     6040  bra.b 0x1430
0x000013f0   2                     42a7  clr.l -(a7)
0x000013f2   2                     a975  invalid
0x000013f4   4                 295ffff8  move.l (a7)+, -0x8(a4)
0x000013f8   4                 486efff2  pea.l -0xe(a6)
0x000013fc   2                     4267  clr.w -(a7)
0x000013fe   2                     3007  move.w d7, d0
0x00001400   2                     5340  subq.w 0x1, d0
0x00001402   4                 c1fc0039  muls.w 0x39, d0
0x00001406   2                     3f00  move.w d0, -(a7)
0x00001408   4                 3f3c0200  move.w 0x200, -(a7)
0x0000140c   2                     3007  move.w d7, d0
0x0000140e   4                 c1fc0039  muls.w 0x39, d0
0x00001412   2                     3f00  move.w d0, -(a7)
0x00001414   2                     a8a7  invalid
0x00001416   4                 486efff2  pea.l -0xe(a6)
0x0000141a   2                     a8a2  invalid
0x0000141c   2                     42a7  clr.l -(a7)
0x0000141e   2                     a975  invalid
0x00001420   2                     201f  move.l (a7)+, d0
0x00001422   4                 90acfff8  sub.l -0x8(a4), d0
0x00001426   2                     7201  moveq 0x1, d1
0x00001428   2                     b280  cmp.l d0, d1
0x0000142a   2                     6f02  ble.b 0x142e
0x0000142c   2                     60ee  bra.b 0x141c
0x0000142e   2                     5247  addq.w 0x1, d7
0x00001430   2                     7007  moveq 0x7, d0
0x00001432   2                     b047  cmp.w d7, d0
0x00001434   2                     6cba  bge.b 0x13f0
0x00001436   4                 4cdf1080  movem.l (a7)+, d7/a4
0x0000143a   2                     4e5e  unlk a6
0x0000143c   2                     2e9f  move.l (a7)+, (a7)
0x0000143e   2                     4e75  rts
0x00001440   4                 4e56fff8  link.w a6, 0xfff8
0x00001444   4                 486efffc  pea.l -0x4(a6)
0x00001448   2                     a874  invalid
0x0000144a   4                 102dfca7  move.b -0x359(a5), d0
0x0000144e   2                     6722  beq.b 0x1472
0x00001450   4                 2f2dfca2  move.l -0x35e(a5), -(a7)
0x00001454   2                     a873  invalid
0x00001456   4                 486dfade  pea.l -0x522(a5)
0x0000145a   2                     a89d  invalid
0x0000145c   2                     2f0e  move.l a6, -(a7)
0x0000145e   4                 4ebaff80  jsr 0x13e0(pc)
0x00001462   4                 486dfad6  pea.l -0x52a(a5)
0x00001466   2                     a89d  invalid
0x00001468   4                 41edffea  lea.l -0x16(a5), a0
0x0000146c   4                 2b48ffa0  move.l a0, -0x60(a5)
0x00001470   2                     6062  bra.b 0x14d4
0x00001472   4                 486dfd3c  pea.l -0x2c4(a5)
0x00001476   2                     a873  invalid
0x00001478   4                 102dffa5  move.b -0x5b(a5), d0
0x0000147c   2                     674a  beq.b 0x14c8
0x0000147e   4                 41edffea  lea.l -0x16(a5), a0
0x00001482   4                 b1edffa0  cmpa.l -0x60(a5), a0
0x00001486   2                     661a  bne.b 0x14a2
0x00001488   4                 486dffb8  pea.l -0x48(a5)
0x0000148c   2                     a875  invalid
0x0000148e   2                     2f0e  move.l a6, -(a7)
0x00001490   4                 4ebaff4e  jsr 0x13e0(pc)
0x00001494   4                 486dffc6  pea.l -0x3a(a5)
0x00001498   2                     a875  invalid
0x0000149a   4                 486dfa72  pea.l -0x58e(a5)
0x0000149e   2                     a8a2  invalid
0x000014a0   2                     6018  bra.b 0x14ba
0x000014a2   4                 486dffc6  pea.l -0x3a(a5)
0x000014a6   2                     a875  invalid
0x000014a8   2                     2f0e  move.l a6, -(a7)
0x000014aa   4                 4ebaff34  jsr 0x13e0(pc)
0x000014ae   4                 486dffb8  pea.l -0x48(a5)
0x000014b2   2                     a875  invalid
0x000014b4   4                 486dfa72  pea.l -0x58e(a5)
0x000014b8   2                     a8a2  invalid
0x000014ba   4                 4ead0352  jsr 0x352(a5)
0x000014be   4                 41edffea  lea.l -0x16(a5), a0
0x000014c2   4                 2b48ffa0  move.l a0, -0x60(a5)
0x000014c6   2                     600c  bra.b 0x14d4
0x000014c8   4                 486dffc6  pea.l -0x3a(a5)
0x000014cc   2                     a875  invalid
0x000014ce   4                 486dfa72  pea.l -0x58e(a5)
0x000014d2   2                     a8a2  invalid
0x000014d4   4                 2f2efffc  move.l -0x4(a6), -(a7)
0x000014d8   2                     a873  invalid
0x000014da   2                     4e5e  unlk a6
0x000014dc   2                     4e75  rts
0x000014de   4                 4e56fffc  link.w a6, 0xfffc
0x000014e2   4                 102dffa5  move.b -0x5b(a5), d0
0x000014e6   2                     671c  beq.b 0x1504
0x000014e8   2                     42a7  clr.l -(a7)
0x000014ea   2                     a975  invalid
0x000014ec   4                 2d5ffffc  move.l (a7)+, -0x4(a6)
0x000014f0   2                     42a7  clr.l -(a7)
0x000014f2   2                     a975  invalid
0x000014f4   2                     201f  move.l (a7)+, d0
0x000014f6   2                     5380  subq.l 0x1, d0
0x000014f8   4                 b0aefffc  cmp.l -0x4(a6), d0
0x000014fc   2                     6e02  bgt.b 0x1500
0x000014fe   2                     60f0  bra.b 0x14f0
0x00001500   4                 4ead034a  jsr 0x34a(a5)
0x00001504   2                     4e5e  unlk a6
0x00001506   2                     4e75  rts
0x00001508   4                 4e56fff4  link.w a6, 0xfff4
0x0000150c   4                 48e70118  movem.l d7/a3-a4, -(a7)
0x00001510   4                 2e2dfe84  move.l -0x17c(a5), d7
0x00001514   4                 9eadfe80  sub.l -0x180(a5), d7
0x00001518   4                 286dffde  movea.l -0x22(a5), a4
0x0000151c   2                     200c  move.l a4, d0
0x0000151e   2                     6714  beq.b 0x1534
0x00001520   2                     264c  movea.l a4, a3
0x00001522   6             97fc00000004  suba.l 0x4, a3
0x00001528   2                     4a93  tst.l (a3)
0x0000152a   2                     6704  beq.b 0x1530
0x0000152c   2                     2007  move.l d7, d0
0x0000152e   2                     d193  add.l d0, (a3)
0x00001530   2                     2853  movea.l (a3), a4
0x00001532   2                     60e8  bra.b 0x151c
0x00001534   4                 4cdf1880  movem.l (a7)+, d7/a3-a4
0x00001538   2                     4e5e  unlk a6
0x0000153a   2                     2e9f  move.l (a7)+, (a7)
0x0000153c   2                     4e75  rts
0x0000153e   4                 4e56ffee  link.w a6, 0xffee
0x00001542   4                 48e70f08  movem.l d4-d7/a4, -(a7)
0x00001546   4                 102dffa5  move.b -0x5b(a5), d0
0x0000154a   4                 67000110  beq.w 0x165c
0x0000154e   4                 102dff8a  move.b -0x76(a5), d0
0x00001552   4                 660000c2  bne.w 0x1616
0x00001556   2                     42a7  clr.l -(a7)
0x00001558   2                     a8d8  invalid
0x0000155a   2                     285f  movea.l (a7)+, a4
0x0000155c   2                     7e10  moveq 0x10, d7
0x0000155e   4                 6000008e  bra.w 0x15ee
0x00001562   2                     42a7  clr.l -(a7)
0x00001564   2                     a975  invalid
0x00001566   4                 2d5ffff2  move.l (a7)+, -0xe(a6)
0x0000156a   4                 303c0200  move.w 0x200, d0
0x0000156e   2                     48c0  ext.l d0
0x00001570   2                     81c7  divs.w d7, d0
0x00001572   2                     3c00  move.w d0, d6
0x00001574   4                 303c0156  move.w 0x156, d0
0x00001578   2                     48c0  ext.l d0
0x0000157a   2                     81c7  divs.w d7, d0
0x0000157c   2                     3a00  move.w d0, d5
0x0000157e   2                     2f0c  move.l a4, -(a7)
0x00001580   4                 303c0100  move.w 0x100, d0
0x00001584   2                     9046  sub.w d6, d0
0x00001586   2                     3f00  move.w d0, -(a7)
0x00001588   4                 303c00ab  move.w 0xab, d0
0x0000158c   2                     9045  sub.w d5, d0
0x0000158e   2                     3f00  move.w d0, -(a7)
0x00001590   2                     3006  move.w d6, d0
0x00001592   4                 d07c0100  add.w 0x100, d0
0x00001596   2                     3f00  move.w d0, -(a7)
0x00001598   2                     3005  move.w d5, d0
0x0000159a   4                 d07c00ab  add.w 0xab, d0
0x0000159e   2                     3f00  move.w d0, -(a7)
0x000015a0   2                     a8de  invalid
0x000015a2   4                 102dfca7  move.b -0x359(a5), d0
0x000015a6   2                     671c  beq.b 0x15c4
0x000015a8   4                 486dffc6  pea.l -0x3a(a5)
0x000015ac   4                 206dfca2  movea.l -0x35e(a5), a0
0x000015b0   4                 48680002  pea.l 0x2(a0)
0x000015b4   4                 486dffcc  pea.l -0x34(a5)
0x000015b8   4                 486dffbe  pea.l -0x42(a5)
0x000015bc   2                     4267  clr.w -(a7)
0x000015be   2                     2f0c  move.l a4, -(a7)
0x000015c0   2                     a8ec  invalid
0x000015c2   2                     6016  bra.b 0x15da
0x000015c4   4                 486dffc6  pea.l -0x3a(a5)
0x000015c8   4                 486dffb8  pea.l -0x48(a5)
0x000015cc   4                 486dffcc  pea.l -0x34(a5)
0x000015d0   4                 486dffbe  pea.l -0x42(a5)
0x000015d4   2                     4267  clr.w -(a7)
0x000015d6   2                     2f0c  move.l a4, -(a7)
0x000015d8   2                     a8ec  invalid
0x000015da   2                     42a7  clr.l -(a7)
0x000015dc   2                     a975  invalid
0x000015de   2                     201f  move.l (a7)+, d0
0x000015e0   4                 90aefff2  sub.l -0xe(a6), d0
0x000015e4   2                     7201  moveq 0x1, d1
0x000015e6   2                     b280  cmp.l d0, d1
0x000015e8   2                     6f02  ble.b 0x15ec
0x000015ea   2                     60ee  bra.b 0x15da
0x000015ec   2                     5347  subq.w 0x1, d7
0x000015ee   2                     7002  moveq 0x2, d0
0x000015f0   2                     b047  cmp.w d7, d0
0x000015f2   4                 6f00ff6e  ble.w 0x1562
0x000015f6   4                 102dfca7  move.b -0x359(a5), d0
0x000015fa   2                     6716  beq.b 0x1612
0x000015fc   4                 486dffc6  pea.l -0x3a(a5)
0x00001600   4                 486dffb8  pea.l -0x48(a5)
0x00001604   4                 486dffcc  pea.l -0x34(a5)
0x00001608   4                 486dffbe  pea.l -0x42(a5)
0x0000160c   2                     4267  clr.w -(a7)
0x0000160e   2                     42a7  clr.l -(a7)
0x00001610   2                     a8ec  invalid
0x00001612   2                     2f0c  move.l a4, -(a7)
0x00001614   2                     a8d9  invalid
0x00001616   4                 282dfff4  move.l -0xc(a5), d4
0x0000161a   4                 98adfe80  sub.l -0x180(a5), d4
0x0000161e   4                 2f2dfe80  move.l -0x180(a5), -(a7)
0x00001622   4                 2f2dfe84  move.l -0x17c(a5), -(a7)
0x00001626   2                     2f04  move.l d4, -(a7)
0x00001628   4                 4ebaf7ae  jsr 0xdd8(pc)
0x0000162c   2                     2004  move.l d4, d0
0x0000162e   4                 d0adfe84  add.l -0x17c(a5), d0
0x00001632   4                 2b40ffde  move.l d0, -0x22(a5)
0x00001636   2                     2f0e  move.l a6, -(a7)
0x00001638   4                 4ebafece  jsr 0x1508(pc)
0x0000163c   4                 102dff8a  move.b -0x76(a5), d0
0x00001640   2                     671a  beq.b 0x165c
0x00001642   4                 4ead034a  jsr 0x34a(a5)
0x00001646   4                 486dffc6  pea.l -0x3a(a5)
0x0000164a   4                 486dffb8  pea.l -0x48(a5)
0x0000164e   4                 486dffcc  pea.l -0x34(a5)
0x00001652   4                 486dffbe  pea.l -0x42(a5)
0x00001656   2                     4267  clr.w -(a7)
0x00001658   2                     42a7  clr.l -(a7)
0x0000165a   2                     a8ec  invalid
0x0000165c   4                 4cdf10f0  movem.l (a7)+, d4-d7/a4
0x00001660   2                     4e5e  unlk a6
0x00001662   2                     4e75  rts
0x00001664   4                 4e56fffe  link.w a6, 0xfffe
0x00001668   4                 422dff8b  clr.b -0x75(a5)
0x0000166c   2                     4267  clr.w -(a7)
0x0000166e   4                 2f2dff9c  move.l -0x64(a5), -(a7)
0x00001672   4                 4ebaf774  jsr 0xde8(pc)
0x00001676   4                 3d5ffffe  move.w (a7)+, -0x2(a6)
0x0000167a   4                 4ebae984  jsr 0x0(pc)
0x0000167e   4                 102dfca7  move.b -0x359(a5), d0
0x00001682   2                     660e  bne.b 0x1692
0x00001684   2                     4267  clr.w -(a7)
0x00001686   4                 2f2dff98  move.l -0x68(a5), -(a7)
0x0000168a   4                 4ebaf75c  jsr 0xde8(pc)
0x0000168e   4                 3d5ffffe  move.w (a7)+, -0x2(a6)
0x00001692   4                 422dff93  clr.b -0x6d(a5)
0x00001696   2                     7000  moveq 0x0, d0
0x00001698   4                 2b40ff94  move.l d0, -0x6c(a5)
0x0000169c   2                     4e5e  unlk a6
0x0000169e   2                     4e75  rts
0x000016a0   4                 4e56fffe  link.w a6, 0xfffe
0x000016a4   2                     4267  clr.w -(a7)
0x000016a6   4                 2f2dff9c  move.l -0x64(a5), -(a7)
0x000016aa   4                 4ebaf746  jsr 0xdf2(pc)
0x000016ae   4                 3d5ffffe  move.w (a7)+, -0x2(a6)
0x000016b2   4                 4ebae9fe  jsr 0xb2(pc)
0x000016b6   4                 102dfca7  move.b -0x359(a5), d0
0x000016ba   2                     660e  bne.b 0x16ca
0x000016bc   2                     4267  clr.w -(a7)
0x000016be   4                 2f2dff98  move.l -0x68(a5), -(a7)
0x000016c2   4                 4ebaf72e  jsr 0xdf2(pc)
0x000016c6   4                 3d5ffffe  move.w (a7)+, -0x2(a6)
0x000016ca   2                     4e5e  unlk a6
0x000016cc   2                     4e75  rts
0x000016ce   4                 4e560000  link.w a6, 0x0
0x000016d2   4                 486dfe14  pea.l -0x1ec(a5)
0x000016d6   2                     a873  invalid
0x000016d8   2                     4e5e  unlk a6
0x000016da   2                     4e75  rts
0x000016dc   4                 4e56ff66  link.w a6, 0xff66
0x000016e0   4                 48e70f00  movem.l d4-d7, -(a7)
0x000016e4   4                 102dfd10  move.b -0x2f0(a5), d0
0x000016e8   2                     670c  beq.b 0x16f6
0x000016ea   4                 4ebae9c0  jsr 0xac(pc)
0x000016ee   4                 3f2dfd38  move.w -0x2c8(a5), -(a7)
0x000016f2   4                 4ebaf836  jsr 0xf2a(pc)
0x000016f6   4                 102dfd11  move.b -0x2ef(a5), d0
0x000016fa   2                     6704  beq.b 0x1700
0x000016fc   4                 4ead04d2  jsr 0x4d2(a5)
0x00001700   2                     4247  clr.w d7
0x00001702   2                     4205  clr.b d5
0x00001704   2                     5247  addq.w 0x1, d7
0x00001706   2                     7000  moveq 0x0, d0
0x00001708   4                 2d40ffb4  move.l d0, -0x4c(a6)
0x0000170c   2                     7000  moveq 0x0, d0
0x0000170e   4                 2d40ffba  move.l d0, -0x46(a6)
0x00001712   4                 426effbe  clr.w -0x42(a6)
0x00001716   4                 3d47ffc4  move.w d7, -0x3c(a6)
0x0000171a   2                     4267  clr.w -(a7)
0x0000171c   4                 486effa8  pea.l -0x58(a6)
0x00001720   2                     4267  clr.w -(a7)
0x00001722   4                 4ebaf778  jsr 0xe9c(pc)
0x00001726   2                     4a5f  tst.w (a7)+
0x00001728   2                     56c5  sne.b d5
0x0000172a   2                     4405  neg.b d5
0x0000172c   2                     3007  move.w d7, d0
0x0000172e   2                     d040  add.w d0, d0
0x00001730   4                 41eeff66  lea.l -0x9a(a6), a0
0x00001734   6             31aeffbe0000  move.w -0x42(a6), (a0, d0.w)
0x0000173a   2                     1005  move.b d5, d0
0x0000173c   2                     67c6  beq.b 0x1704
0x0000173e   2                     3007  move.w d7, d0
0x00001740   2                     5340  subq.w 0x1, d0
0x00001742   4                 3d40ff66  move.w d0, -0x9a(a6)
0x00001746   2                     7c01  moveq 0x1, d6
0x00001748   2                     603a  bra.b 0x1784
0x0000174a   2                     7000  moveq 0x0, d0
0x0000174c   4                 2d40ffb4  move.l d0, -0x4c(a6)
0x00001750   2                     7000  moveq 0x0, d0
0x00001752   4                 2d40ffba  move.l d0, -0x46(a6)
0x00001756   2                     3006  move.w d6, d0
0x00001758   2                     d040  add.w d0, d0
0x0000175a   4                 41eeff66  lea.l -0x9a(a6), a0
0x0000175e   6             3d700000ffbe  move.w (a0, d0.w), -0x42(a6)
0x00001764   4                 426effc4  clr.w -0x3c(a6)
0x00001768   2                     4267  clr.w -(a7)
0x0000176a   4                 486effa8  pea.l -0x58(a6)
0x0000176e   4                 4ebaf748  jsr 0xeb8(pc)
0x00001772   2                     381f  move.w (a7)+, d4
0x00001774   2                     4267  clr.w -(a7)
0x00001776   4                 486effa8  pea.l -0x58(a6)
0x0000177a   4                 4ebaf732  jsr 0xeae(pc)
0x0000177e   2                     381f  move.w (a7)+, d4
0x00001780   2                     5246  addq.w 0x1, d6
0x00001782   2                     6906  bvs.b 0x178a
0x00001784   4                 bc6eff66  cmp.w -0x9a(a6), d6
0x00001788   2                     6fc0  ble.b 0x174a
0x0000178a   4                 4ebaf706  jsr 0xe92(pc)
0x0000178e   4                 4cdf00f0  movem.l (a7)+, d4-d7
0x00001792   2                     4e5e  unlk a6
0x00001794   2                     4e75  rts
0x00001796   4                 4e560000  link.w a6, 0x0
0x0000179a   4                 102dfd10  move.b -0x2f0(a5), d0
0x0000179e   2                     670c  beq.b 0x17ac
0x000017a0   4                 4ebae90a  jsr 0xac(pc)
0x000017a4   4                 3f2dfd38  move.w -0x2c8(a5), -(a7)
0x000017a8   4                 4ebaf780  jsr 0xf2a(pc)
0x000017ac   4                 102dfd11  move.b -0x2ef(a5), d0
0x000017b0   2                     6704  beq.b 0x17b6
0x000017b2   4                 4ead04d2  jsr 0x4d2(a5)
0x000017b6   4                 4ead034a  jsr 0x34a(a5)
0x000017ba   2                     a9f4  invalid
0x000017bc   2                     4e5e  unlk a6
0x000017be   2                     4e75  rts
0x000017c0   4                 4e56ffec  link.w a6, 0xffec
0x000017c4   2                     2f0c  move.l a4, -(a7)
0x000017c6   2                     4267  clr.w -(a7)
0x000017c8   4                 4ebaf7e8  jsr 0xfb2(pc)
0x000017cc   2                     42a7  clr.l -(a7)
0x000017ce   4                 3f2e0008  move.w 0x8(a6), -(a7)
0x000017d2   2                     42a7  clr.l -(a7)
0x000017d4   2                     42a7  clr.l -(a7)
0x000017d6   2                     a97c  invalid
0x000017d8   2                     285f  movea.l (a7)+, a4
0x000017da   4                 102dfd3a  move.b -0x2c6(a5), d0
0x000017de   2                     6720  beq.b 0x1800
0x000017e0   2                     2f0c  move.l a4, -(a7)
0x000017e2   4                 3f3c0002  move.w 0x2, -(a7)
0x000017e6   4                 486efff8  pea.l -0x8(a6)
0x000017ea   4                 486efff4  pea.l -0xc(a6)
0x000017ee   4                 486effec  pea.l -0x14(a6)
0x000017f2   2                     a98d  invalid
0x000017f4   4                 2f2efff4  move.l -0xc(a6), -(a7)
0x000017f8   6             2f3c01900000  move.l 0x1900000, -(a7)
0x000017fe   2                     a959  invalid
0x00001800   2                     2f0c  move.l a4, -(a7)
0x00001802   2                     a915  invalid
0x00001804   2                     2f0c  move.l a4, -(a7)
0x00001806   2                     a91f  invalid
0x00001808   2                     42a7  clr.l -(a7)
0x0000180a   4                 486efffa  pea.l -0x6(a6)
0x0000180e   2                     a991  invalid
0x00001810   4                 302efffa  move.w -0x6(a6), d0
0x00001814   2                     5340  subq.w 0x1, d0
0x00001816   2                     6706  beq.b 0x181e
0x00001818   2                     5340  subq.w 0x1, d0
0x0000181a   2                     6708  beq.b 0x1824
0x0000181c   2                     600a  bra.b 0x1828
0x0000181e   4                 4ebaff76  jsr 0x1796(pc)
0x00001822   2                     6004  bra.b 0x1828
0x00001824   4                 4ebafeb6  jsr 0x16dc(pc)
0x00001828   2                     285f  movea.l (a7)+, a4
0x0000182a   2                     4e5e  unlk a6
0x0000182c   2                     205f  movea.l (a7)+, a0
0x0000182e   2                     544f  addq.w 0x2, a7
0x00001830   2                     4ed0  jmp (a0)
0x00001832   4                 4e56ff00  link.w a6, 0xff00
0x00001836   4                 206e0008  movea.l 0x8(a6), a0
0x0000183a   4                 43eeff00  lea.l -0x100(a6), a1
0x0000183e   2                     703f  moveq 0x3f, d0
0x00001840   2                     22d8  move.l (a0)+, (a1)+
0x00001842   4                 51c8fffc  dbra d0, 0x1840
0x00001846   2                     a853  invalid
0x00001848   2                     a853  invalid
0x0000184a   2                     a853  invalid
0x0000184c   4                 4ead034a  jsr 0x34a(a5)
0x00001850   4                 422dff8b  clr.b -0x75(a5)
0x00001854   4                 4aadffa6  tst.l -0x5a(a5)
0x00001858   2                     6708  beq.b 0x1862
0x0000185a   4                 2f2dffa6  move.l -0x5a(a5), -(a7)
0x0000185e   4                 4ebaf4e8  jsr 0xd48(pc)
0x00001862   4                 486eff00  pea.l -0x100(a6)
0x00001866   4                 487a001a  pea.l 0x1882(pc)
0x0000186a   4                 487a0016  pea.l 0x1882(pc)
0x0000186e   4                 487a0012  pea.l 0x1882(pc)
0x00001872   2                     a98b  invalid
0x00001874   4                 3f3c07e4  move.w 0x7e4, -(a7)
0x00001878   4                 4ebaff46  jsr 0x17c0(pc)
0x0000187c   2                     4e5e  unlk a6
0x0000187e   2                     2e9f  move.l (a7)+, (a7)
0x00001880   2                     4e75  rts
0x00001882   4                 00004e56  ori.b 0x56, d0
0x00001886   4                 0000206d  ori.b 0x6d, d0
0x0000188a   2                     fe80  invalid
0x0000188c   2                     7000  moveq 0x0, d0
0x0000188e   2                     2080  move.l d0, (a0)
0x00001890   4                 202dfe80  move.l -0x180(a5), d0
0x00001894   2                     5880  addq.l 0x4, d0
0x00001896   4                 2b40fff4  move.l d0, -0xc(a5)
0x0000189a   4                 102dffa5  move.b -0x5b(a5), d0
0x0000189e   2                     6712  beq.b 0x18b2
0x000018a0   4                 206dfe84  movea.l -0x17c(a5), a0
0x000018a4   2                     7000  moveq 0x0, d0
0x000018a6   2                     2080  move.l d0, (a0)
0x000018a8   4                 202dfe84  move.l -0x17c(a5), d0
0x000018ac   2                     5880  addq.l 0x4, d0
0x000018ae   4                 2b40ffde  move.l d0, -0x22(a5)
0x000018b2   2                     4e5e  unlk a6
0x000018b4   2                     4e75  rts
0x000018b6   4                 4e560000  link.w a6, 0x0
0x000018ba   4                 41edffea  lea.l -0x16(a5), a0
0x000018be   4                 b1edffa0  cmpa.l -0x60(a5), a0
0x000018c2   2                     6614  bne.b 0x18d8
0x000018c4   4                 206dfe80  movea.l -0x180(a5), a0
0x000018c8   2                     7000  moveq 0x0, d0
0x000018ca   2                     2080  move.l d0, (a0)
0x000018cc   4                 202dfe80  move.l -0x180(a5), d0
0x000018d0   2                     5880  addq.l 0x4, d0
0x000018d2   4                 2b40fff4  move.l d0, -0xc(a5)
0x000018d6   2                     6012  bra.b 0x18ea
0x000018d8   4                 206dfe84  movea.l -0x17c(a5), a0
0x000018dc   2                     7000  moveq 0x0, d0
0x000018de   2                     2080  move.l d0, (a0)
0x000018e0   4                 202dfe84  move.l -0x17c(a5), d0
0x000018e4   2                     5880  addq.l 0x4, d0
0x000018e6   4                 2b40ffde  move.l d0, -0x22(a5)
0x000018ea   2                     4e5e  unlk a6
0x000018ec   2                     4e75  rts
0x000018ee   4                 4e56ffe0  link.w a6, 0xffe0
0x000018f2   4                 48e70300  movem.l d6-d7, -(a7)
0x000018f6   4                 2e2e0008  move.l 0x8(a6), d7
0x000018fa   2                     2c07  move.l d7, d6
0x000018fc   2                     2007  move.l d7, d0
0x000018fe   2                     6a02  bpl.b 0x1902
0x00001900   2                     4480  neg.l d0
0x00001902   2                     2e00  move.l d0, d7
0x00001904   4                 422efff4  clr.b -0xc(a6)
0x00001908   6             3d7c0120fff2  move.w 0x120, -0xe(a6)
0x0000190e   2                     2f07  move.l d7, -(a7)
0x00001910   2                     700a  moveq 0xa, d0
0x00001912   2                     2f00  move.l d0, -(a7)
0x00001914   4                 4ebaf8fa  jsr 0x1210(pc)
0x00001918   2                     201f  move.l (a7)+, d0
0x0000191a   2                     7230  moveq 0x30, d1
0x0000191c   2                     d081  add.l d1, d0
0x0000191e   4                 1d40fff3  move.b d0, -0xd(a6)
0x00001922   2                     2f07  move.l d7, -(a7)
0x00001924   2                     700a  moveq 0xa, d0
0x00001926   2                     2f00  move.l d0, -(a7)
0x00001928   4                 4ebaf8c0  jsr 0x11ea(pc)
0x0000192c   2                     2e1f  move.l (a7)+, d7
0x0000192e   4                 486efff2  pea.l -0xe(a6)
0x00001932   4                 486efff4  pea.l -0xc(a6)
0x00001936   4                 486effe0  pea.l -0x20(a6)
0x0000193a   4                 3f3c0002  move.w 0x2, -(a7)
0x0000193e   4                 4ebaf95e  jsr 0x129e(pc)
0x00001942   4                 41eefff4  lea.l -0xc(a6), a0
0x00001946   4                 43eeffe0  lea.l -0x20(a6), a1
0x0000194a   2                     20d9  move.l (a1)+, (a0)+
0x0000194c   2                     20d9  move.l (a1)+, (a0)+
0x0000194e   2                     20d9  move.l (a1)+, (a0)+
0x00001950   2                     4a87  tst.l d7
0x00001952   2                     66ba  bne.b 0x190e
0x00001954   2                     4a86  tst.l d6
0x00001956   2                     6c22  bge.b 0x197a
0x00001958   4                 487a0038  pea.l 0x1992(pc)
0x0000195c   4                 486efff4  pea.l -0xc(a6)
0x00001960   4                 486effe0  pea.l -0x20(a6)
0x00001964   4                 3f3c0002  move.w 0x2, -(a7)
0x00001968   4                 4ebaf934  jsr 0x129e(pc)
0x0000196c   4                 41eefff4  lea.l -0xc(a6), a0
0x00001970   4                 43eeffe0  lea.l -0x20(a6), a1
0x00001974   2                     20d9  move.l (a1)+, (a0)+
0x00001976   2                     20d9  move.l (a1)+, (a0)+
0x00001978   2                     20d9  move.l (a1)+, (a0)+
0x0000197a   4                 206e000c  movea.l 0xc(a6), a0
0x0000197e   4                 43eefff4  lea.l -0xc(a6), a1
0x00001982   2                     20d9  move.l (a1)+, (a0)+
0x00001984   2                     20d9  move.l (a1)+, (a0)+
0x00001986   2                     20d9  move.l (a1)+, (a0)+
0x00001988   4                 4cdf00c0  movem.l (a7)+, d6-d7
0x0000198c   2                     4e5e  unlk a6
0x0000198e   2                     2e9f  move.l (a7)+, (a7)
0x00001990   2                     4e75  rts
0x00001992   4                 012d4e56  btst.l d0, 0x4e56(a5)
0x00001996   2                     ff00  invalid
0x00001998   4                 206e000a  movea.l 0xa(a6), a0
0x0000199c   2                     2f08  move.l a0, -(a7)
0x0000199e   4                 486eff00  pea.l -0x100(a6)
0x000019a2   4                 302e0008  move.w 0x8(a6), d0
0x000019a6   2                     48c0  ext.l d0
0x000019a8   2                     2f00  move.l d0, -(a7)
0x000019aa   4                 4ebaff42  jsr 0x18ee(pc)
0x000019ae   2                     201f  move.l (a7)+, d0
0x000019b0   2                     205f  movea.l (a7)+, a0
0x000019b2   2                     2240  movea.l d0, a1
0x000019b4   2                     703f  moveq 0x3f, d0
0x000019b6   2                     20d9  move.l (a1)+, (a0)+
0x000019b8   4                 51c8fffc  dbra d0, 0x19b6
0x000019bc   2                     4e5e  unlk a6
0x000019be   2                     205f  movea.l (a7)+, a0
0x000019c0   2                     544f  addq.w 0x2, a7
0x000019c2   2                     4ed0  jmp (a0)
0x000019c4   4                 4e56fff0  link.w a6, 0xfff0
0x000019c8   6             2f3c00800000  move.l 0x800000, -(a7)
0x000019ce   4                 486efff0  pea.l -0x10(a6)
0x000019d2   2                     a970  invalid
0x000019d4   2                     101f  move.b (a7)+, d0
0x000019d6   2                     6722  beq.b 0x19fa
0x000019d8   4                 206e0008  movea.l 0x8(a6), a0
0x000019dc   2                     2f08  move.l a0, -(a7)
0x000019de   2                     42a7  clr.l -(a7)
0x000019e0   4                 2f2efff2  move.l -0xe(a6), -(a7)
0x000019e4   6             2f3c0000ffff  move.l 0xffff, -(a7)
0x000019ea   2                     a858  invalid
0x000019ec   2                     201f  move.l (a7)+, d0
0x000019ee   2                     205f  movea.l (a7)+, a0
0x000019f0   2                     3080  move.w d0, (a0)
0x000019f2   6             1d7c00010014  move.b 0x1, 0x14(a6)
0x000019f8   2                     6004  bra.b 0x19fe
0x000019fa   4                 422e0014  clr.b 0x14(a6)
0x000019fe   2                     4e5e  unlk a6
0x00001a00   2                     205f  movea.l (a7)+, a0
0x00001a02   4                 defc000c  adda.w 0xc, a7
0x00001a06   2                     4ed0  jmp (a0)
0x00001a08   4                 4e56fba0  link.w a6, 0xfba0
0x00001a0c   4                 48e70318  movem.l d6-d7/a3-a4, -(a7)
0x00001a10   4                 206e0008  movea.l 0x8(a6), a0
0x00001a14   4                 43eeff00  lea.l -0x100(a6), a1
0x00001a18   2                     703f  moveq 0x3f, d0
0x00001a1a   2                     22d8  move.l (a0)+, (a1)+
0x00001a1c   4                 51c8fffc  dbra d0, 0x1a1a
0x00001a20   4                 486eff00  pea.l -0x100(a6)
0x00001a24   4                 487a014e  pea.l 0x1b74(pc)
0x00001a28   4                 486efba0  pea.l -0x460(a6)
0x00001a2c   4                 3f3c0002  move.w 0x2, -(a7)
0x00001a30   4                 4ebaf86c  jsr 0x129e(pc)
0x00001a34   4                 41eefca0  lea.l -0x360(a6), a0
0x00001a38   4                 43eefba0  lea.l -0x460(a6), a1
0x00001a3c   2                     703f  moveq 0x3f, d0
0x00001a3e   2                     20d9  move.l (a1)+, (a0)+
0x00001a40   4                 51c8fffc  dbra d0, 0x1a3e
0x00001a44   2                     7000  moveq 0x0, d0
0x00001a46   4                 2d40fdac  move.l d0, -0x254(a6)
0x00001a4a   4                 41eefca0  lea.l -0x360(a6), a0
0x00001a4e   4                 2d48fdb2  move.l a0, -0x24e(a6)
0x00001a52   6             3d7c7ffffdb6  move.w 0x7fff, -0x24a(a6)
0x00001a58   6             3d7cfffffdbc  move.w 0xffff, -0x244(a6)
0x00001a5e   2                     4267  clr.w -(a7)
0x00001a60   4                 486efda0  pea.l -0x260(a6)
0x00001a64   2                     4267  clr.w -(a7)
0x00001a66   4                 4ebaf434  jsr 0xe9c(pc)
0x00001a6a   2                     4a5f  tst.w (a7)+
0x00001a6c   2                     57c0  seq.b d0
0x00001a6e   2                     4a00  tst.b d0
0x00001a70   2                     670e  beq.b 0x1a80
0x00001a72   4                 4a6efdb0  tst.w -0x250(a6)
0x00001a76   2                     57c1  seq.b d1
0x00001a78   2                     c001  and.b d1, d0
0x00001a7a   2                     6704  beq.b 0x1a80
0x00001a7c   4                 600000ea  bra.w 0x1b68
0x00001a80   4                 4ead034a  jsr 0x34a(a5)
0x00001a84   4                 1c2dff8b  move.b -0x75(a5), d6
0x00001a88   4                 422dff8b  clr.b -0x75(a5)
0x00001a8c   2                     4267  clr.w -(a7)
0x00001a8e   4                 4ebaf522  jsr 0xfb2(pc)
0x00001a92   2                     42a7  clr.l -(a7)
0x00001a94   4                 3f3c07d0  move.w 0x7d0, -(a7)
0x00001a98   2                     42a7  clr.l -(a7)
0x00001a9a   2                     42a7  clr.l -(a7)
0x00001a9c   2                     a97c  invalid
0x00001a9e   2                     265f  movea.l (a7)+, a3
0x00001aa0   4                 486eff00  pea.l -0x100(a6)
0x00001aa4   4                 487a00cc  pea.l 0x1b72(pc)
0x00001aa8   4                 487a00c8  pea.l 0x1b72(pc)
0x00001aac   4                 487a00c4  pea.l 0x1b72(pc)
0x00001ab0   2                     a98b  invalid
0x00001ab2   4                 102dfca7  move.b -0x359(a5), d0
0x00001ab6   2                     6724  beq.b 0x1adc
0x00001ab8   4                 206dfca2  movea.l -0x35e(a5), a0
0x00001abc   4                 49e80008  lea.l 0x8(a0), a4
0x00001ac0   2                     2f0b  move.l a3, -(a7)
0x00001ac2   4                 302c0002  move.w 0x2(a4), d0
0x00001ac6   2                     4440  neg.w d0
0x00001ac8   4                 906b000a  sub.w 0xa(a3), d0
0x00001acc   2                     3f00  move.w d0, -(a7)
0x00001ace   2                     3014  move.w (a4), d0
0x00001ad0   2                     4440  neg.w d0
0x00001ad2   4                 906b0008  sub.w 0x8(a3), d0
0x00001ad6   2                     3f00  move.w d0, -(a7)
0x00001ad8   2                     4267  clr.w -(a7)
0x00001ada   2                     a91b  invalid
0x00001adc   2                     2f0b  move.l a3, -(a7)
0x00001ade   2                     a915  invalid
0x00001ae0   2                     2f0b  move.l a3, -(a7)
0x00001ae2   2                     a91f  invalid
0x00001ae4   2                     2f0b  move.l a3, -(a7)
0x00001ae6   2                     a981  invalid
0x00001ae8   6             3d7c0001fefa  move.w 0x1, -0x106(a6)
0x00001aee   2                     4267  clr.w -(a7)
0x00001af0   4                 3f2efefa  move.w -0x106(a6), -(a7)
0x00001af4   4                 486efdfa  pea.l -0x206(a6)
0x00001af8   4                 486efdf8  pea.l -0x208(a6)
0x00001afc   4                 486efdf4  pea.l -0x20c(a6)
0x00001b00   4                 4ebaf3c0  jsr 0xec2(pc)
0x00001b04   2                     3e1f  move.w (a7)+, d7
0x00001b06   2                     4267  clr.w -(a7)
0x00001b08   2                     42a7  clr.l -(a7)
0x00001b0a   4                 3f2efdf8  move.w -0x208(a6), -(a7)
0x00001b0e   4                 4ebaf3f8  jsr 0xf08(pc)
0x00001b12   2                     3e1f  move.w (a7)+, d7
0x00001b14   2                     4267  clr.w -(a7)
0x00001b16   4                 3f2efefa  move.w -0x106(a6), -(a7)
0x00001b1a   4                 4ebaf2e0  jsr 0xdfc(pc)
0x00001b1e   2                     3e1f  move.w (a7)+, d7
0x00001b20   4                 487afea2  pea.l 0x19c4(pc)
0x00001b24   4                 486efefa  pea.l -0x106(a6)
0x00001b28   2                     a991  invalid
0x00001b2a   2                     4267  clr.w -(a7)
0x00001b2c   4                 3f2efefa  move.w -0x106(a6), -(a7)
0x00001b30   4                 486efdfa  pea.l -0x206(a6)
0x00001b34   4                 486efdf8  pea.l -0x208(a6)
0x00001b38   4                 486efdf4  pea.l -0x20c(a6)
0x00001b3c   4                 4ebaf384  jsr 0xec2(pc)
0x00001b40   2                     4a5f  tst.w (a7)+
0x00001b42   2                     66d0  bne.b 0x1b14
0x00001b44   2                     4267  clr.w -(a7)
0x00001b46   4                 486efdfa  pea.l -0x206(a6)
0x00001b4a   4                 486eff00  pea.l -0x100(a6)
0x00001b4e   2                     42a7  clr.l -(a7)
0x00001b50   4                 4ebaf2fa  jsr 0xe4c(pc)
0x00001b54   2                     101f  move.b (a7)+, d0
0x00001b56   2                     67ae  beq.b 0x1b06
0x00001b58   2                     2f0b  move.l a3, -(a7)
0x00001b5a   2                     a983  invalid
0x00001b5c   4                 1b46ff8b  move.b d6, -0x75(a5)
0x00001b60   4                 3f3c00e6  move.w 0xe6, -(a7)
0x00001b64   4                 4ebaf44c  jsr 0xfb2(pc)
0x00001b68   4                 4cdf18c0  movem.l (a7)+, d6-d7/a3-a4
0x00001b6c   2                     4e5e  unlk a6
0x00001b6e   2                     2e9f  move.l (a7)+, (a7)
0x00001b70   2                     4e75  rts
0x00001b72   4                 0000013a  ori.b 0x3a, d0
0x00001b76   4                 4e56fdf0  link.w a6, 0xfdf0
0x00001b7a   4                 206e000c  movea.l 0xc(a6), a0
0x00001b7e   4                 43eeff00  lea.l -0x100(a6), a1
0x00001b82   2                     703f  moveq 0x3f, d0
0x00001b84   2                     22d8  move.l (a0)+, (a1)+
0x00001b86   4                 51c8fffc  dbra d0, 0x1b84
0x00001b8a   6             2f3c00800000  move.l 0x800000, -(a7)
0x00001b90   4                 486efef0  pea.l -0x110(a6)
0x00001b94   2                     a970  invalid
0x00001b96   2                     101f  move.b (a7)+, d0
0x00001b98   2                     6702  beq.b 0x1b9c
0x00001b9a   2                     60ee  bra.b 0x1b8a
0x00001b9c   4                 206e0008  movea.l 0x8(a6), a0
0x00001ba0   2                     4a50  tst.w (a0)
0x00001ba2   2                     6e3c  bgt.b 0x1be0
0x00001ba4   4                 206e0008  movea.l 0x8(a6), a0
0x00001ba8   2                     2f08  move.l a0, -(a7)
0x00001baa   2                     4267  clr.w -(a7)
0x00001bac   4                 486eff00  pea.l -0x100(a6)
0x00001bb0   2                     a997  invalid
0x00001bb2   2                     301f  move.w (a7)+, d0
0x00001bb4   2                     205f  movea.l (a7)+, a0
0x00001bb6   2                     3080  move.w d0, (a0)
0x00001bb8   4                 206e0008  movea.l 0x8(a6), a0
0x00001bbc   2                     4a50  tst.w (a0)
0x00001bbe   2                     6c20  bge.b 0x1be0
0x00001bc0   4                 487a0034  pea.l 0x1bf6(pc)
0x00001bc4   4                 486eff00  pea.l -0x100(a6)
0x00001bc8   4                 487a001e  pea.l 0x1be8(pc)
0x00001bcc   4                 486efdf0  pea.l -0x210(a6)
0x00001bd0   4                 3f3c0003  move.w 0x3, -(a7)
0x00001bd4   4                 4ebaf6c8  jsr 0x129e(pc)
0x00001bd8   4                 486efdf0  pea.l -0x210(a6)
0x00001bdc   4                 4ebafc54  jsr 0x1832(pc)
0x00001be0   2                     4e5e  unlk a6
0x00001be2   2                     205f  movea.l (a7)+, a0
0x00001be4   2                     504f  addq.w 0x8, a7
0x00001be6   2                     4ed0  jmp (a0)
0x00001be8   4                 0c27206e  cmpi.b 0x6e, -(a7)
0x00001bec   2                     6f74  ble.b 0x1c62
0x00001bee   2                     2066  movea.l -(a6), a0
0x00001bf0   2                     6f75  ble.b 0x1c67
0x00001bf2   2                     6e64  bgt.b 0x1c58
0x00001bf4   2                     2e00  move.l d0, d7
0x00001bf6   2                     0127  btst.l d0, -(a7)
0x00001bf8   4                 4e56fdf0  link.w a6, 0xfdf0
0x00001bfc   2                     2f0c  move.l a4, -(a7)
0x00001bfe   4                 206e000c  movea.l 0xc(a6), a0
0x00001c02   4                 43eeff00  lea.l -0x100(a6), a1
0x00001c06   2                     703f  moveq 0x3f, d0
0x00001c08   2                     22d8  move.l (a0)+, (a1)+
0x00001c0a   4                 51c8fffc  dbra d0, 0x1c08
0x00001c0e   4                 286e0008  movea.l 0x8(a6), a4
0x00001c12   6             2f3c00800000  move.l 0x800000, -(a7)
0x00001c18   4                 486efef0  pea.l -0x110(a6)
0x00001c1c   2                     a970  invalid
0x00001c1e   2                     101f  move.b (a7)+, d0
0x00001c20   2                     6702  beq.b 0x1c24
0x00001c22   2                     60ee  bra.b 0x1c12
0x00001c24   2                     4a54  tst.w (a4)
0x00001c26   4                 6e000084  bgt.w 0x1cac
0x00001c2a   2                     4267  clr.w -(a7)
0x00001c2c   4                 486eff00  pea.l -0x100(a6)
0x00001c30   2                     a997  invalid
0x00001c32   2                     389f  move.w (a7)+, (a4)
0x00001c34   2                     4a54  tst.w (a4)
0x00001c36   2                     6c22  bge.b 0x1c5a
0x00001c38   2                     4267  clr.w -(a7)
0x00001c3a   4                 487a008c  pea.l 0x1cc8(pc)
0x00001c3e   4                 487a0086  pea.l 0x1cc6(pc)
0x00001c42   4                 486eff00  pea.l -0x100(a6)
0x00001c46   4                 486efdf0  pea.l -0x210(a6)
0x00001c4a   4                 3f3c0003  move.w 0x3, -(a7)
0x00001c4e   4                 4ebaf64e  jsr 0x129e(pc)
0x00001c52   4                 486efdf0  pea.l -0x210(a6)
0x00001c56   2                     a997  invalid
0x00001c58   2                     389f  move.w (a7)+, (a4)
0x00001c5a   2                     4a54  tst.w (a4)
0x00001c5c   2                     6c4e  bge.b 0x1cac
0x00001c5e   4                 487a0068  pea.l 0x1cc8(pc)
0x00001c62   4                 4ebafda4  jsr 0x1a08(pc)
0x00001c66   2                     4267  clr.w -(a7)
0x00001c68   4                 487a005e  pea.l 0x1cc8(pc)
0x00001c6c   4                 487a0058  pea.l 0x1cc6(pc)
0x00001c70   4                 486eff00  pea.l -0x100(a6)
0x00001c74   4                 486efdf0  pea.l -0x210(a6)
0x00001c78   4                 3f3c0003  move.w 0x3, -(a7)
0x00001c7c   4                 4ebaf620  jsr 0x129e(pc)
0x00001c80   4                 486efdf0  pea.l -0x210(a6)
0x00001c84   2                     a997  invalid
0x00001c86   2                     389f  move.w (a7)+, (a4)
0x00001c88   2                     4a54  tst.w (a4)
0x00001c8a   2                     6c20  bge.b 0x1cac
0x00001c8c   4                 487a0036  pea.l 0x1cc4(pc)
0x00001c90   4                 486eff00  pea.l -0x100(a6)
0x00001c94   4                 487a0020  pea.l 0x1cb6(pc)
0x00001c98   4                 486efdf0  pea.l -0x210(a6)
0x00001c9c   4                 3f3c0003  move.w 0x3, -(a7)
0x00001ca0   4                 4ebaf5fc  jsr 0x129e(pc)
0x00001ca4   4                 486efdf0  pea.l -0x210(a6)
0x00001ca8   4                 4ebafb88  jsr 0x1832(pc)
0x00001cac   2                     285f  movea.l (a7)+, a4
0x00001cae   2                     4e5e  unlk a6
0x00001cb0   2                     205f  movea.l (a7)+, a0
0x00001cb2   2                     504f  addq.w 0x8, a7
0x00001cb4   2                     4ed0  jmp (a0)
0x00001cb6   4                 0c27206e  cmpi.b 0x6e, -(a7)
0x00001cba   2                     6f74  ble.b 0x1d30
0x00001cbc   2                     2066  movea.l -(a6), a0
0x00001cbe   2                     6f75  ble.b 0x1d35
0x00001cc0   2                     6e64  bgt.b 0x1d26
0x00001cc2   2                     2e00  move.l d0, d7
0x00001cc4   2                     0127  btst.l d0, -(a7)
0x00001cc6   4                 013a0542  btst.l d0, 0x220a(pc)
0x00001cca   2                     4443  neg.w d3
0x00001ccc   4                 20324e56  move.l 0x56(a2, d4.l), d0
0x00001cd0   4                 000041ed  ori.b 0xed, d0
0x00001cd4   2                     ffea  invalid
0x00001cd6   4                 b1edffa0  cmpa.l -0x60(a5), a0
0x00001cda   2                     6608  bne.b 0x1ce4
0x00001cdc   4                 486dffc6  pea.l -0x3a(a5)
0x00001ce0   2                     a875  invalid
0x00001ce2   2                     6006  bra.b 0x1cea
0x00001ce4   4                 486dffb8  pea.l -0x48(a5)
0x00001ce8   2                     a875  invalid
0x00001cea   4                 486dfd26  pea.l -0x2da(a5)
0x00001cee   2                     a8a2  invalid
0x00001cf0   6             2f3c013100d7  move.l 0x13100d7, -(a7)
0x00001cf6   2                     a893  invalid
0x00001cf8   4                 486dfee6  pea.l -0x11a(a5)
0x00001cfc   2                     a884  invalid
0x00001cfe   4                 536dfef2  subq.w 0x1, -0x10e(a5)
0x00001d02   2                     4e5e  unlk a6
0x00001d04   2                     4e75  rts
0x00001d06   4                 4e560000  link.w a6, 0x0
0x00001d0a   4                 41edffea  lea.l -0x16(a5), a0
0x00001d0e   4                 b1edffa0  cmpa.l -0x60(a5), a0
0x00001d12   2                     6608  bne.b 0x1d1c
0x00001d14   4                 486dffc6  pea.l -0x3a(a5)
0x00001d18   2                     a875  invalid
0x00001d1a   2                     6006  bra.b 0x1d22
0x00001d1c   4                 486dffb8  pea.l -0x48(a5)
0x00001d20   2                     a875  invalid
0x00001d22   4                 486dfd1e  pea.l -0x2e2(a5)
0x00001d26   2                     a8a2  invalid
0x00001d28   6             2f3c014100ed  move.l 0x14100ed, -(a7)
0x00001d2e   2                     a893  invalid
0x00001d30   4                 486dff30  pea.l -0xd0(a5)
0x00001d34   2                     a884  invalid
0x00001d36   4                 536dff2e  subq.w 0x1, -0xd2(a5)
0x00001d3a   2                     4e5e  unlk a6
0x00001d3c   2                     4e75  rts
0x00001d3e   4                 4e56fcd0  link.w a6, 0xfcd0
0x00001d42   4                 48e70f18  movem.l d4-d7/a3-a4, -(a7)
0x00001d46   4                 266e000a  movea.l 0xa(a6), a3
0x00001d4a   2                     2853  movea.l (a3), a4
0x00001d4c   2                     200c  move.l a4, d0
0x00001d4e   2                     56c0  sne.b d0
0x00001d50   2                     4a00  tst.b d0
0x00001d52   2                     671a  beq.b 0x1d6e
0x00001d54   2                     4a94  tst.l (a4)
0x00001d56   2                     56c1  sne.b d1
0x00001d58   2                     c001  and.b d1, d0
0x00001d5a   2                     6712  beq.b 0x1d6e
0x00001d5c   2                     2f0c  move.l a4, -(a7)
0x00001d5e   4                 4ebaedc6  jsr 0xb26(pc)
0x00001d62   2                     2f0c  move.l a4, -(a7)
0x00001d64   4                 4ebaf044  jsr 0xdaa(pc)
0x00001d68   2                     2694  move.l (a4), (a3)
0x00001d6a   4                 600002de  bra.w 0x204a
0x00001d6e   2                     42a7  clr.l -(a7)
0x00001d70   4                 2f3a0304  move.l 0x2076(pc), -(a7)
0x00001d74   4                 3f2e0008  move.w 0x8(a6), -(a7)
0x00001d78   2                     a9a0  invalid
0x00001d7a   2                     2e1f  move.l (a7)+, d7
0x00001d7c   2                     56c0  sne.b d0
0x00001d7e   2                     4400  neg.b d0
0x00001d80   4                 1d40ffd9  move.b d0, -0x27(a6)
0x00001d84   2                     660e  bne.b 0x1d94
0x00001d86   2                     42a7  clr.l -(a7)
0x00001d88   4                 2f3a02e8  move.l 0x2072(pc), -(a7)
0x00001d8c   4                 3f2e0008  move.w 0x8(a6), -(a7)
0x00001d90   2                     a9a0  invalid
0x00001d92   2                     2e1f  move.l (a7)+, d7
0x00001d94   2                     4a87  tst.l d7
0x00001d96   4                 6700027a  beq.w 0x2012
0x00001d9a   2                     2f07  move.l d7, -(a7)
0x00001d9c   4                 4ebaf02a  jsr 0xdc8(pc)
0x00001da0   2                     2047  movea.l d7, a0
0x00001da2   2                     2050  movea.l (a0), a0
0x00001da4   4                 2d48fed0  move.l a0, -0x130(a6)
0x00001da8   2                     3010  move.w (a0), d0
0x00001daa   2                     48c0  ext.l d0
0x00001dac   4                 81fc03e8  divs.w 0x3e8, d0
0x00001db0   2                     4840  swap d0
0x00001db2   2                     4a40  tst.w d0
0x00001db4   2                     6b54  bmi.b 0x1e0a
0x00001db6   4                 0c400009  cmpi.w 0x9, d0
0x00001dba   2                     6e4e  bgt.b 0x1e0a
0x00001dbc   2                     d040  add.w d0, d0
0x00001dbe   4                 303b0006  move.w 0x1dc6(pc, d0.w), d0
0x00001dc2   4                 4efb0000  jmp 0x1dc4(pc,d0.w)
0x00001dc6   4                 00160030  ori.b 0x30, (a6)
0x00001dca   6             003000160030  ori.b 0x16, 0x30(a0, d0.w)
0x00001dd0   6             003000300030  ori.b 0x30, 0x30(a0, d0.w)
0x00001dd6   6             00300016206e  ori.b 0x16, 0x6e(a0, d2.w)
0x00001ddc   2                     fed0  invalid
0x00001dde   4                 226efed0  movea.l -0x130(a6), a1
0x00001de2   4                 30290002  move.w 0x2(a1), d0
0x00001de6   4                 c1e80008  muls.w 0x8(a0), d0
0x00001dea   2                     e340  asl.w 0x1, d0
0x00001dec   2                     3a00  move.w d0, d5
0x00001dee   4                 da7c000e  add.w 0xe, d5
0x00001df2   2                     6016  bra.b 0x1e0a
0x00001df4   4                 206efed0  movea.l -0x130(a6), a0
0x00001df8   4                 226efed0  movea.l -0x130(a6), a1
0x00001dfc   4                 30290002  move.w 0x2(a1), d0
0x00001e00   4                 c1e80008  muls.w 0x8(a0), d0
0x00001e04   2                     3a00  move.w d0, d5
0x00001e06   4                 da7c000e  add.w 0xe, d5
0x00001e0a   2                     200c  move.l a4, d0
0x00001e0c   2                     6612  bne.b 0x1e20
0x00001e0e   2                     42a7  clr.l -(a7)
0x00001e10   2                     3005  move.w d5, d0
0x00001e12   2                     5440  addq.w 0x2, d0
0x00001e14   2                     48c0  ext.l d0
0x00001e16   2                     2f00  move.l d0, -(a7)
0x00001e18   4                 4ebaef38  jsr 0xd52(pc)
0x00001e1c   2                     285f  movea.l (a7)+, a4
0x00001e1e   2                     600e  bra.b 0x1e2e
0x00001e20   2                     2f0c  move.l a4, -(a7)
0x00001e22   2                     3005  move.w d5, d0
0x00001e24   2                     5440  addq.w 0x2, d0
0x00001e26   2                     48c0  ext.l d0
0x00001e28   2                     2f00  move.l d0, -(a7)
0x00001e2a   4                 4ebaef72  jsr 0xd9e(pc)
0x00001e2e   2                     200c  move.l a4, d0
0x00001e30   2                     57c0  seq.b d0
0x00001e32   2                     4a00  tst.b d0
0x00001e34   2                     6608  bne.b 0x1e3e
0x00001e36   2                     4a94  tst.l (a4)
0x00001e38   2                     57c1  seq.b d1
0x00001e3a   2                     8001  or.b d1, d0
0x00001e3c   2                     6724  beq.b 0x1e62
0x00001e3e   4                 487a022c  pea.l 0x206c(pc)
0x00001e42   4                 486efdd0  pea.l -0x230(a6)
0x00001e46   4                 3f2e0008  move.w 0x8(a6), -(a7)
0x00001e4a   4                 4ebafb48  jsr 0x1994(pc)
0x00001e4e   4                 486efed4  pea.l -0x12c(a6)
0x00001e52   4                 3f3c0002  move.w 0x2, -(a7)
0x00001e56   4                 4ebaf446  jsr 0x129e(pc)
0x00001e5a   4                 486efed4  pea.l -0x12c(a6)
0x00001e5e   4                 4ebaf9d2  jsr 0x1832(pc)
0x00001e62   2                     2f0c  move.l a4, -(a7)
0x00001e64   4                 4ebaecc0  jsr 0xb26(pc)
0x00001e68   2                     2f0c  move.l a4, -(a7)
0x00001e6a   4                 4ebaef3e  jsr 0xdaa(pc)
0x00001e6e   2                     2694  move.l (a4), (a3)
0x00001e70   2                     2047  movea.l d7, a0
0x00001e72   2                     2050  movea.l (a0), a0
0x00001e74   2                     2253  movea.l (a3), a1
0x00001e76   2                     22d8  move.l (a0)+, (a1)+
0x00001e78   2                     22d8  move.l (a0)+, (a1)+
0x00001e7a   2                     22d8  move.l (a0)+, (a1)+
0x00001e7c   2                     22d8  move.l (a0)+, (a1)+
0x00001e7e   2                     2053  movea.l (a3), a0
0x00001e80   4                 41e8000e  lea.l 0xe(a0), a0
0x00001e84   4                 2d48ffee  move.l a0, -0x12(a6)
0x00001e88   2                     2053  movea.l (a3), a0
0x00001e8a   4                 30280004  move.w 0x4(a0), d0
0x00001e8e   2                     e340  asl.w 0x1, d0
0x00001e90   4                 3d40fff2  move.w d0, -0xe(a6)
0x00001e94   2                     2053  movea.l (a3), a0
0x00001e96   2                     3010  move.w (a0), d0
0x00001e98   2                     48c0  ext.l d0
0x00001e9a   4                 81fc03e8  divs.w 0x3e8, d0
0x00001e9e   2                     4840  swap d0
0x00001ea0   2                     4a40  tst.w d0
0x00001ea2   2                     6b68  bmi.b 0x1f0c
0x00001ea4   4                 0c400009  cmpi.w 0x9, d0
0x00001ea8   2                     6e62  bgt.b 0x1f0c
0x00001eaa   2                     d040  add.w d0, d0
0x00001eac   4                 303b0006  move.w 0x1eb4(pc, d0.w), d0
0x00001eb0   4                 4efb0000  jmp 0x1eb2(pc,d0.w)
0x00001eb4   4                 0016003a  ori.b 0x3a, (a6)
0x00001eb8   4                 003a0016  
0x00001ebc   4                 003a003a  
0x00001ec0   4                 003a003a  
0x00001ec4   4                 003a0016  
0x00001ec8   4                 486efff4  pea.l -0xc(a6)
0x00001ecc   2                     42a7  clr.l -(a7)
0x00001ece   2                     2053  movea.l (a3), a0
0x00001ed0   4                 30280004  move.w 0x4(a0), d0
0x00001ed4   2                     e940  asl.w 0x4, d0
0x00001ed6   2                     3f00  move.w d0, -(a7)
0x00001ed8   2                     2053  movea.l (a3), a0
0x00001eda   2                     2253  movea.l (a3), a1
0x00001edc   4                 30290002  move.w 0x2(a1), d0
0x00001ee0   4                 c1e80006  muls.w 0x6(a0), d0
0x00001ee4   2                     e340  asl.w 0x1, d0
0x00001ee6   2                     3f00  move.w d0, -(a7)
0x00001ee8   2                     a8a7  invalid
0x00001eea   2                     6020  bra.b 0x1f0c
0x00001eec   4                 486efff4  pea.l -0xc(a6)
0x00001ef0   2                     42a7  clr.l -(a7)
0x00001ef2   2                     2053  movea.l (a3), a0
0x00001ef4   4                 30280004  move.w 0x4(a0), d0
0x00001ef8   2                     e940  asl.w 0x4, d0
0x00001efa   2                     3f00  move.w d0, -(a7)
0x00001efc   2                     2053  movea.l (a3), a0
0x00001efe   2                     2253  movea.l (a3), a1
0x00001f00   4                 30290002  move.w 0x2(a1), d0
0x00001f04   4                 c1e80006  muls.w 0x6(a0), d0
0x00001f08   2                     3f00  move.w d0, -(a7)
0x00001f0a   2                     a8a7  invalid
0x00001f0c   4                 102effd9  move.b -0x27(a6), d0
0x00001f10   2                     6750  beq.b 0x1f62
0x00001f12   2                     2053  movea.l (a3), a0
0x00001f14   2                     7005  moveq 0x5, d0
0x00001f16   2                     b050  cmp.w (a0), d0
0x00001f18   2                     57c0  seq.b d0
0x00001f1a   2                     2053  movea.l (a3), a0
0x00001f1c   4                 0c5003e8  cmpi.w 0x3e8, (a0)
0x00001f20   2                     5cc1  sge.b d1
0x00001f22   2                     8001  or.b d1, d0
0x00001f24   2                     6712  beq.b 0x1f38
0x00001f26   4                 2f2effee  move.l -0x12(a6), -(a7)
0x00001f2a   2                     2047  movea.l d7, a0
0x00001f2c   2                     2050  movea.l (a0), a0
0x00001f2e   4                 4868000e  pea.l 0xe(a0)
0x00001f32   4                 4ead044a  jsr 0x44a(a5)
0x00001f36   2                     6026  bra.b 0x1f5e
0x00001f38   2                     2047  movea.l d7, a0
0x00001f3a   2                     2050  movea.l (a0), a0
0x00001f3c   4                 4868000e  pea.l 0xe(a0)
0x00001f40   4                 2f2effee  move.l -0x12(a6), -(a7)
0x00001f44   2                     42a7  clr.l -(a7)
0x00001f46   2                     2f07  move.l d7, -(a7)
0x00001f48   2                     a9a5  invalid
0x00001f4a   2                     201f  move.l (a7)+, d0
0x00001f4c   2                     720e  moveq 0xe, d1
0x00001f4e   2                     9081  sub.l d1, d0
0x00001f50   2                     3f00  move.w d0, -(a7)
0x00001f52   2                     3005  move.w d5, d0
0x00001f54   4                 907c000e  sub.w 0xe, d0
0x00001f58   2                     3f00  move.w d0, -(a7)
0x00001f5a   4                 4ead0442  jsr 0x442(a5)
0x00001f5e   4                 600000a4  bra.w 0x2004
0x00001f62   2                     2047  movea.l d7, a0
0x00001f64   2                     2050  movea.l (a0), a0
0x00001f66   4                 3828000e  move.w 0xe(a0), d4
0x00001f6a   4                 486dfda8  pea.l -0x258(a5)
0x00001f6e   2                     a86d  invalid
0x00001f70   4                 486effee  pea.l -0x12(a6)
0x00001f74   2                     a875  invalid
0x00001f76   4                 2f2dfdc0  move.l -0x240(a5), -(a7)
0x00001f7a   4                 486efff4  pea.l -0xc(a6)
0x00001f7e   2                     a8df  invalid
0x00001f80   2                     42a7  clr.l -(a7)
0x00001f82   4                 2f3a00e4  move.l 0x2068(pc), -(a7)
0x00001f86   2                     3f04  move.w d4, -(a7)
0x00001f88   2                     a9a0  invalid
0x00001f8a   2                     2c1f  move.l (a7)+, d6
0x00001f8c   2                     6650  bne.b 0x1fde
0x00001f8e   2                     42a7  clr.l -(a7)
0x00001f90   4                 2f3a00d2  move.l 0x2064(pc), -(a7)
0x00001f94   2                     3f04  move.w d4, -(a7)
0x00001f96   2                     a9a0  invalid
0x00001f98   2                     2c1f  move.l (a7)+, d6
0x00001f9a   2                     6634  bne.b 0x1fd0
0x00001f9c   4                 487a00c0  pea.l 0x205e(pc)
0x00001fa0   4                 486efdd0  pea.l -0x230(a6)
0x00001fa4   2                     3f04  move.w d4, -(a7)
0x00001fa6   4                 4ebaf9ec  jsr 0x1994(pc)
0x00001faa   4                 487a00aa  pea.l 0x2056(pc)
0x00001fae   4                 486efcd0  pea.l -0x330(a6)
0x00001fb2   2                     4267  clr.w -(a7)
0x00001fb4   2                     a9af  invalid
0x00001fb6   4                 4ebaf9dc  jsr 0x1994(pc)
0x00001fba   4                 486efed4  pea.l -0x12c(a6)
0x00001fbe   4                 3f3c0004  move.w 0x4, -(a7)
0x00001fc2   4                 4ebaf2da  jsr 0x129e(pc)
0x00001fc6   4                 486efed4  pea.l -0x12c(a6)
0x00001fca   4                 4ebaf866  jsr 0x1832(pc)
0x00001fce   2                     6022  bra.b 0x1ff2
0x00001fd0   4                 2f2effee  move.l -0x12(a6), -(a7)
0x00001fd4   2                     2046  movea.l d6, a0
0x00001fd6   2                     2f10  move.l (a0), -(a7)
0x00001fd8   4                 4ead044a  jsr 0x44a(a5)
0x00001fdc   2                     6014  bra.b 0x1ff2
0x00001fde   2                     2f06  move.l d6, -(a7)
0x00001fe0   4                 4ebaedc8  jsr 0xdaa(pc)
0x00001fe4   4                 486efff4  pea.l -0xc(a6)
0x00001fe8   2                     a8a3  invalid
0x00001fea   2                     2f06  move.l d6, -(a7)
0x00001fec   4                 486efff4  pea.l -0xc(a6)
0x00001ff0   2                     a8f6  invalid
0x00001ff2   2                     2f06  move.l d6, -(a7)
0x00001ff4   4                 4ebaedbe  jsr 0xdb4(pc)
0x00001ff8   2                     2f06  move.l d6, -(a7)
0x00001ffa   4                 4ebaedc2  jsr 0xdbe(pc)
0x00001ffe   2                     2f06  move.l d6, -(a7)
0x00002000   4                 4ebaed92  jsr 0xd94(pc)
0x00002004   2                     2f07  move.l d7, -(a7)
0x00002006   4                 4ebaedb6  jsr 0xdbe(pc)
0x0000200a   2                     2f07  move.l d7, -(a7)
0x0000200c   4                 4ebaed86  jsr 0xd94(pc)
0x00002010   2                     6038  bra.b 0x204a
0x00002012   4                 487a0044  pea.l 0x2058(pc)
0x00002016   4                 486efdd0  pea.l -0x230(a6)
0x0000201a   4                 3f2e0008  move.w 0x8(a6), -(a7)
0x0000201e   4                 4ebaf974  jsr 0x1994(pc)
0x00002022   4                 487a0032  pea.l 0x2056(pc)
0x00002026   4                 486efcd0  pea.l -0x330(a6)
0x0000202a   2                     4267  clr.w -(a7)
0x0000202c   2                     a9af  invalid
0x0000202e   4                 4ebaf964  jsr 0x1994(pc)
0x00002032   4                 486efed4  pea.l -0x12c(a6)
0x00002036   4                 3f3c0004  move.w 0x4, -(a7)
0x0000203a   4                 4ebaf262  jsr 0x129e(pc)
0x0000203e   4                 486efed4  pea.l -0x12c(a6)
0x00002042   4                 4ebaf7ee  jsr 0x1832(pc)
0x00002046   2                     7000  moveq 0x0, d0
0x00002048   2                     2680  move.l d0, (a3)
0x0000204a   4                 4cdf18f0  movem.l (a7)+, d4-d7/a3-a4
0x0000204e   2                     4e5e  unlk a6
0x00002050   2                     205f  movea.l (a7)+, a0
0x00002052   2                     5c4f  addq.w 0x6, a7
0x00002054   2                     4ed0  jmp (a0)
0x00002056   4                 012f0549  btst.l d0, 0x549(a7)
0x0000205a   2                     4e46  trap 0x6
0x0000205c   4                 443a0550  
0x00002060   2                     4e46  trap 0x6
0x00002062   4                 443a5053  
0x00002066   4                 43525049  
0x0000206a   4                 43540549  
0x0000206e   4                 4d454d3a  
0x00002072   4                 494d4147  
0x00002076   2                     5050  addq.w 0x8, (a0)
0x00002078   4                 43544e56  
0x0000207c   4                 00002f0c  ori.b 0xc, d0
0x00002080   4                 286e0008  movea.l 0x8(a6), a4
0x00002084   2                     4a94  tst.l (a4)
0x00002086   2                     6716  beq.b 0x209e
0x00002088   2                     42a7  clr.l -(a7)
0x0000208a   2                     2f14  move.l (a4), -(a7)
0x0000208c   4                 4ebaecfa  jsr 0xd88(pc)
0x00002090   2                     289f  move.l (a7)+, (a4)
0x00002092   2                     2f14  move.l (a4), -(a7)
0x00002094   4                 4ebaed1e  jsr 0xdb4(pc)
0x00002098   2                     2f14  move.l (a4), -(a7)
0x0000209a   4                 4ebaed22  jsr 0xdbe(pc)
0x0000209e   2                     285f  movea.l (a7)+, a4
0x000020a0   2                     4e5e  unlk a6
0x000020a2   2                     2e9f  move.l (a7)+, (a7)
0x000020a4   2                     4e75  rts
0x000020a6   4                 4e56fcda  link.w a6, 0xfcda
0x000020aa   4                 48e70318  movem.l d6-d7/a3-a4, -(a7)
0x000020ae   4                 3c2e0008  move.w 0x8(a6), d6
0x000020b2   4                 486dfda8  pea.l -0x258(a5)
0x000020b6   2                     a86d  invalid
0x000020b8   4                 102dff8a  move.b -0x76(a5), d0
0x000020bc   2                     6604  bne.b 0x20c2
0x000020be   4                 4ebaf380  jsr 0x1440(pc)
0x000020c2   4                 4ebaf7c0  jsr 0x1884(pc)
0x000020c6   4                 486dffc6  pea.l -0x3a(a5)
0x000020ca   2                     a875  invalid
0x000020cc   2                     42a7  clr.l -(a7)
0x000020ce   4                 2f3a0144  move.l 0x2214(pc), -(a7)
0x000020d2   2                     3f06  move.w d6, -(a7)
0x000020d4   2                     a9a0  invalid
0x000020d6   2                     265f  movea.l (a7)+, a3
0x000020d8   2                     200b  move.l a3, d0
0x000020da   2                     6652  bne.b 0x212e
0x000020dc   2                     42a7  clr.l -(a7)
0x000020de   4                 2f3a0130  move.l 0x2210(pc), -(a7)
0x000020e2   2                     3f06  move.w d6, -(a7)
0x000020e4   2                     a9a0  invalid
0x000020e6   2                     265f  movea.l (a7)+, a3
0x000020e8   2                     200b  move.l a3, d0
0x000020ea   2                     6632  bne.b 0x211e
0x000020ec   4                 487a0132  pea.l 0x2220(pc)
0x000020f0   4                 486efdda  pea.l -0x226(a6)
0x000020f4   2                     3f06  move.w d6, -(a7)
0x000020f6   4                 4ebaf89c  jsr 0x1994(pc)
0x000020fa   4                 487a0122  pea.l 0x221e(pc)
0x000020fe   4                 486efcda  pea.l -0x326(a6)
0x00002102   2                     4267  clr.w -(a7)
0x00002104   2                     a9af  invalid
0x00002106   4                 4ebaf88c  jsr 0x1994(pc)
0x0000210a   4                 486efeda  pea.l -0x126(a6)
0x0000210e   4                 3f3c0004  move.w 0x4, -(a7)
0x00002112   4                 4ebaf18a  jsr 0x129e(pc)
0x00002116   4                 486efeda  pea.l -0x126(a6)
0x0000211a   4                 4ebaf716  jsr 0x1832(pc)
0x0000211e   2                     2f0b  move.l a3, -(a7)
0x00002120   4                 4ebaec88  jsr 0xdaa(pc)
0x00002124   2                     2f0b  move.l a3, -(a7)
0x00002126   4                 486dffcc  pea.l -0x34(a5)
0x0000212a   2                     a8f6  invalid
0x0000212c   2                     600a  bra.b 0x2138
0x0000212e   4                 2f2dffc6  move.l -0x3a(a5), -(a7)
0x00002132   2                     2f13  move.l (a3), -(a7)
0x00002134   4                 4ead044a  jsr 0x44a(a5)
0x00002138   2                     2f0b  move.l a3, -(a7)
0x0000213a   4                 4ebaec82  jsr 0xdbe(pc)
0x0000213e   2                     2f0b  move.l a3, -(a7)
0x00002140   4                 4ebaec72  jsr 0xdb4(pc)
0x00002144   4                 0c462710  cmpi.w 0x2710, d6
0x00002148   2                     6e3e  bgt.b 0x2188
0x0000214a   2                     42a7  clr.l -(a7)
0x0000214c   4                 2f3a00c2  move.l 0x2210(pc), -(a7)
0x00002150   4                 3f3c3e80  move.w 0x3e80, -(a7)
0x00002154   2                     a9a0  invalid
0x00002156   2                     2e1f  move.l (a7)+, d7
0x00002158   2                     6608  bne.b 0x2162
0x0000215a   4                 487a00bc  pea.l 0x2218(pc)
0x0000215e   4                 4ebaf6d2  jsr 0x1832(pc)
0x00002162   2                     2f07  move.l d7, -(a7)
0x00002164   4                 4ebaec44  jsr 0xdaa(pc)
0x00002168   4                 486effda  pea.l -0x26(a6)
0x0000216c   6             2f3c01250000  move.l 0x1250000, -(a7)
0x00002172   6             2f3c01560200  move.l 0x1560200, -(a7)
0x00002178   2                     a8a7  invalid
0x0000217a   2                     2f07  move.l d7, -(a7)
0x0000217c   4                 486effda  pea.l -0x26(a6)
0x00002180   2                     a8f6  invalid
0x00002182   2                     2f07  move.l d7, -(a7)
0x00002184   4                 4ebaec2e  jsr 0xdb4(pc)
0x00002188   4                 486dffaa  pea.l -0x56(a5)
0x0000218c   2                     a875  invalid
0x0000218e   2                     42a7  clr.l -(a7)
0x00002190   4                 2f3a0082  move.l 0x2214(pc), -(a7)
0x00002194   2                     3006  move.w d6, d0
0x00002196   2                     5440  addq.w 0x2, d0
0x00002198   2                     3f00  move.w d0, -(a7)
0x0000219a   2                     a9a0  invalid
0x0000219c   2                     285f  movea.l (a7)+, a4
0x0000219e   2                     200c  move.l a4, d0
0x000021a0   2                     662c  bne.b 0x21ce
0x000021a2   2                     42a7  clr.l -(a7)
0x000021a4   4                 2f3a006a  move.l 0x2210(pc), -(a7)
0x000021a8   2                     3006  move.w d6, d0
0x000021aa   2                     5440  addq.w 0x2, d0
0x000021ac   2                     3f00  move.w d0, -(a7)
0x000021ae   2                     a9a0  invalid
0x000021b0   2                     285f  movea.l (a7)+, a4
0x000021b2   2                     200c  move.l a4, d0
0x000021b4   2                     6608  bne.b 0x21be
0x000021b6   4                 486dffb0  pea.l -0x50(a5)
0x000021ba   2                     a8a2  invalid
0x000021bc   2                     601a  bra.b 0x21d8
0x000021be   2                     2f0c  move.l a4, -(a7)
0x000021c0   4                 4ebaebe8  jsr 0xdaa(pc)
0x000021c4   2                     2f0c  move.l a4, -(a7)
0x000021c6   4                 486dffb0  pea.l -0x50(a5)
0x000021ca   2                     a8f6  invalid
0x000021cc   2                     600a  bra.b 0x21d8
0x000021ce   4                 2f2dffaa  move.l -0x56(a5), -(a7)
0x000021d2   2                     2f14  move.l (a4), -(a7)
0x000021d4   4                 4ead044a  jsr 0x44a(a5)
0x000021d8   2                     200c  move.l a4, d0
0x000021da   2                     670c  beq.b 0x21e8
0x000021dc   2                     2f0c  move.l a4, -(a7)
0x000021de   4                 4ebaebd4  jsr 0xdb4(pc)
0x000021e2   2                     2f0c  move.l a4, -(a7)
0x000021e4   4                 4ebaebd8  jsr 0xdbe(pc)
0x000021e8   4                 486effda  pea.l -0x26(a6)
0x000021ec   2                     a8a3  invalid
0x000021ee   4                 426dfffc  clr.w -0x4(a5)
0x000021f2   4                 426dfffe  clr.w -0x2(a5)
0x000021f6   4                 102dffa5  move.b -0x5b(a5), d0
0x000021fa   2                     6708  beq.b 0x2204
0x000021fc   4                 426dffe6  clr.w -0x1a(a5)
0x00002200   4                 426dffe8  clr.w -0x18(a5)
0x00002204   4                 4cdf18c0  movem.l (a7)+, d6-d7/a3-a4
0x00002208   2                     4e5e  unlk a6
0x0000220a   2                     205f  movea.l (a7)+, a0
0x0000220c   2                     544f  addq.w 0x2, a7
0x0000220e   2                     4ed0  jmp (a0)
0x00002210   2                     5049  addq.w 0x8, a1
0x00002212   4                 43545053  
0x00002216   4                 43520453  
0x0000221a   2                     544e  addq.w 0x2, a6
0x0000221c   2                     4600  not.b d0
0x0000221e   4                 012f0553  btst.l d0, 0x553(a7)
0x00002222   2                     4e46  trap 0x6
0x00002224   4                 443a4e56  
0x00002228   2                     fcf6  invalid
0x0000222a   4                 48e70308  movem.l d6-d7/a4, -(a7)
0x0000222e   2                     42a7  clr.l -(a7)
0x00002230   4                 2f3a00ce  move.l 0x2300(pc), -(a7)
0x00002234   4                 3f2e0008  move.w 0x8(a6), -(a7)
0x00002238   2                     a9a0  invalid
0x0000223a   2                     285f  movea.l (a7)+, a4
0x0000223c   2                     200c  move.l a4, d0
0x0000223e   2                     6634  bne.b 0x2274
0x00002240   4                 487a00b8  pea.l 0x22fa(pc)
0x00002244   4                 486efdf8  pea.l -0x208(a6)
0x00002248   4                 3f2e0008  move.w 0x8(a6), -(a7)
0x0000224c   4                 4ebaf746  jsr 0x1994(pc)
0x00002250   4                 487a00a6  pea.l 0x22f8(pc)
0x00002254   4                 486efcf8  pea.l -0x308(a6)
0x00002258   2                     4267  clr.w -(a7)
0x0000225a   2                     a9af  invalid
0x0000225c   4                 4ebaf736  jsr 0x1994(pc)
0x00002260   4                 486efef8  pea.l -0x108(a6)
0x00002264   4                 3f3c0004  move.w 0x4, -(a7)
0x00002268   4                 4ebaf034  jsr 0x129e(pc)
0x0000226c   4                 486efef8  pea.l -0x108(a6)
0x00002270   4                 4ebaf5c0  jsr 0x1832(pc)
0x00002274   2                     2f0c  move.l a4, -(a7)
0x00002276   4                 4ebaeb50  jsr 0xdc8(pc)
0x0000227a   2                     2054  movea.l (a4), a0
0x0000227c   4                 3d50fcf6  move.w (a0), -0x30a(a6)
0x00002280   2                     7c01  moveq 0x1, d6
0x00002282   2                     605c  bra.b 0x22e0
0x00002284   2                     2054  movea.l (a4), a0
0x00002286   2                     3006  move.w d6, d0
0x00002288   2                     d040  add.w d0, d0
0x0000228a   4                 3e300000  move.w (a0, d0.w), d7
0x0000228e   2                     3007  move.w d7, d0
0x00002290   4                 04400064  subi.w 0x64, d0
0x00002294   2                     6b24  bmi.b 0x22ba
0x00002296   4                 04400383  subi.w 0x383, d0
0x0000229a   2                     6f0e  ble.b 0x22aa
0x0000229c   4                 044003e9  subi.w 0x3e9, d0
0x000022a0   2                     6b18  bmi.b 0x22ba
0x000022a2   4                 044003e7  subi.w 0x3e7, d0
0x000022a6   2                     6f0a  ble.b 0x22b2
0x000022a8   2                     6010  bra.b 0x22ba
0x000022aa   2                     3f07  move.w d7, -(a7)
0x000022ac   4                 4ead04b2  jsr 0x4b2(a5)
0x000022b0   2                     602a  bra.b 0x22dc
0x000022b2   2                     3f07  move.w d7, -(a7)
0x000022b4   4                 4ead04c2  jsr 0x4c2(a5)
0x000022b8   2                     6022  bra.b 0x22dc
0x000022ba   4                 487a0036  pea.l 0x22f2(pc)
0x000022be   4                 486efdf8  pea.l -0x208(a6)
0x000022c2   2                     3f07  move.w d7, -(a7)
0x000022c4   4                 4ebaf6ce  jsr 0x1994(pc)
0x000022c8   4                 486efef8  pea.l -0x108(a6)
0x000022cc   4                 3f3c0002  move.w 0x2, -(a7)
0x000022d0   4                 4ebaefcc  jsr 0x129e(pc)
0x000022d4   4                 486efef8  pea.l -0x108(a6)
0x000022d8   4                 4ebaf558  jsr 0x1832(pc)
0x000022dc   2                     5246  addq.w 0x1, d6
0x000022de   2                     6906  bvs.b 0x22e6
0x000022e0   4                 bc6efcf6  cmp.w -0x30a(a6), d6
0x000022e4   2                     6f9e  ble.b 0x2284
0x000022e6   4                 4cdf10c0  movem.l (a7)+, d6-d7/a4
0x000022ea   2                     4e5e  unlk a6
0x000022ec   2                     205f  movea.l (a7)+, a0
0x000022ee   2                     544f  addq.w 0x2, a7
0x000022f0   2                     4ed0  jmp (a0)
0x000022f2   4                 0549444f  movep.l 0x444f(a1), d2
0x000022f6   4                 523a012f  
0x000022fa   4                 05494c4e  movep.l 0x4c4e(a1), d2
0x000022fe   4                 463a494c  
0x00002302   2                     5354  subq.w 0x1, (a4)
0x00002304   4                 4e56fcf6  link.w a6, 0xfcf6
0x00002308   4                 48e70308  movem.l d6-d7/a4, -(a7)
0x0000230c   2                     42a7  clr.l -(a7)
0x0000230e   4                 2f3a00ce  move.l 0x23de(pc), -(a7)
0x00002312   4                 3f2e0008  move.w 0x8(a6), -(a7)
0x00002316   2                     a9a0  invalid
0x00002318   2                     285f  movea.l (a7)+, a4
0x0000231a   2                     200c  move.l a4, d0
0x0000231c   2                     6634  bne.b 0x2352
0x0000231e   4                 487a00b8  pea.l 0x23d8(pc)
0x00002322   4                 486efdf8  pea.l -0x208(a6)
0x00002326   4                 3f2e0008  move.w 0x8(a6), -(a7)
0x0000232a   4                 4ebaf668  jsr 0x1994(pc)
0x0000232e   4                 487a00a6  pea.l 0x23d6(pc)
0x00002332   4                 486efcf8  pea.l -0x308(a6)
0x00002336   2                     4267  clr.w -(a7)
0x00002338   2                     a9af  invalid
0x0000233a   4                 4ebaf658  jsr 0x1994(pc)
0x0000233e   4                 486efef8  pea.l -0x108(a6)
0x00002342   4                 3f3c0004  move.w 0x4, -(a7)
0x00002346   4                 4ebaef56  jsr 0x129e(pc)
0x0000234a   4                 486efef8  pea.l -0x108(a6)
0x0000234e   4                 4ebaf4e2  jsr 0x1832(pc)
0x00002352   2                     2054  movea.l (a4), a0
0x00002354   4                 3d50fcf6  move.w (a0), -0x30a(a6)
0x00002358   2                     7c01  moveq 0x1, d6
0x0000235a   2                     605c  bra.b 0x23b8
0x0000235c   2                     2054  movea.l (a4), a0
0x0000235e   2                     3006  move.w d6, d0
0x00002360   2                     d040  add.w d0, d0
0x00002362   4                 3e300000  move.w (a0, d0.w), d7
0x00002366   2                     3007  move.w d7, d0
0x00002368   4                 04400064  subi.w 0x64, d0
0x0000236c   2                     6b24  bmi.b 0x2392
0x0000236e   4                 04400383  subi.w 0x383, d0
0x00002372   2                     6f0e  ble.b 0x2382
0x00002374   4                 044003e9  subi.w 0x3e9, d0
0x00002378   2                     6b18  bmi.b 0x2392
0x0000237a   4                 044003e7  subi.w 0x3e7, d0
0x0000237e   2                     6f0a  ble.b 0x238a
0x00002380   2                     6010  bra.b 0x2392
0x00002382   2                     3f07  move.w d7, -(a7)
0x00002384   4                 4ead04ba  jsr 0x4ba(a5)
0x00002388   2                     602a  bra.b 0x23b4
0x0000238a   2                     3f07  move.w d7, -(a7)
0x0000238c   4                 4ead04ca  jsr 0x4ca(a5)
0x00002390   2                     6022  bra.b 0x23b4
0x00002392   4                 487a003c  pea.l 0x23d0(pc)
0x00002396   4                 486efdf8  pea.l -0x208(a6)
0x0000239a   2                     3f07  move.w d7, -(a7)
0x0000239c   4                 4ebaf5f6  jsr 0x1994(pc)
0x000023a0   4                 486efef8  pea.l -0x108(a6)
0x000023a4   4                 3f3c0002  move.w 0x2, -(a7)
0x000023a8   4                 4ebaeef4  jsr 0x129e(pc)
0x000023ac   4                 486efef8  pea.l -0x108(a6)
0x000023b0   4                 4ebaf480  jsr 0x1832(pc)
0x000023b4   2                     5246  addq.w 0x1, d6
0x000023b6   2                     6906  bvs.b 0x23be
0x000023b8   4                 bc6efcf6  cmp.w -0x30a(a6), d6
0x000023bc   2                     6f9e  ble.b 0x235c
0x000023be   2                     2f0c  move.l a4, -(a7)
0x000023c0   4                 4ebae9fc  jsr 0xdbe(pc)
0x000023c4   4                 4cdf10c0  movem.l (a7)+, d6-d7/a4
0x000023c8   2                     4e5e  unlk a6
0x000023ca   2                     205f  movea.l (a7)+, a0
0x000023cc   2                     544f  addq.w 0x2, a7
0x000023ce   2                     4ed0  jmp (a0)
0x000023d0   4                 0549444f  movep.l 0x444f(a1), d2
0x000023d4   4                 523a012f  
0x000023d8   4                 05494c4e  movep.l 0x4c4e(a1), d2
0x000023dc   4                 463a494c  
0x000023e0   2                     5354  subq.w 0x1, (a4)
0x000023e2   4                 4e56fdf8  link.w a6, 0xfdf8
0x000023e6   4                 48e70318  movem.l d6-d7/a3-a4, -(a7)
0x000023ea   4                 2e2e000a  move.l 0xa(a6), d7
0x000023ee   4                 3c2e0008  move.w 0x8(a6), d6
0x000023f2   2                     2047  movea.l d7, a0
0x000023f4   2                     2850  movea.l (a0), a4
0x000023f6   2                     200c  move.l a4, d0
0x000023f8   2                     56c0  sne.b d0
0x000023fa   2                     4a00  tst.b d0
0x000023fc   2                     671c  beq.b 0x241a
0x000023fe   2                     4a94  tst.l (a4)
0x00002400   2                     56c1  sne.b d1
0x00002402   2                     c001  and.b d1, d0
0x00002404   2                     6714  beq.b 0x241a
0x00002406   2                     2f0c  move.l a4, -(a7)
0x00002408   4                 4ebae71c  jsr 0xb26(pc)
0x0000240c   2                     2f0c  move.l a4, -(a7)
0x0000240e   4                 4ebae99a  jsr 0xdaa(pc)
0x00002412   2                     2047  movea.l d7, a0
0x00002414   2                     2094  move.l (a4), (a0)
0x00002416   4                 600000aa  bra.w 0x24c2
0x0000241a   2                     42a7  clr.l -(a7)
0x0000241c   4                 2f3a00bc  move.l 0x24da(pc), -(a7)
0x00002420   2                     3f06  move.w d6, -(a7)
0x00002422   2                     a9a0  invalid
0x00002424   2                     265f  movea.l (a7)+, a3
0x00002426   2                     200b  move.l a3, d0
0x00002428   2                     6622  bne.b 0x244c
0x0000242a   4                 487a00a8  pea.l 0x24d4(pc)
0x0000242e   4                 486efdf8  pea.l -0x208(a6)
0x00002432   2                     3f06  move.w d6, -(a7)
0x00002434   4                 4ebaf55e  jsr 0x1994(pc)
0x00002438   4                 486efef8  pea.l -0x108(a6)
0x0000243c   4                 3f3c0002  move.w 0x2, -(a7)
0x00002440   4                 4ebaee5c  jsr 0x129e(pc)
0x00002444   4                 486efef8  pea.l -0x108(a6)
0x00002448   4                 4ebaf3e8  jsr 0x1832(pc)
0x0000244c   2                     2f0b  move.l a3, -(a7)
0x0000244e   4                 4ebae978  jsr 0xdc8(pc)
0x00002452   2                     200c  move.l a4, d0
0x00002454   2                     6610  bne.b 0x2466
0x00002456   2                     42a7  clr.l -(a7)
0x00002458   6             2f3c00000780  move.l 0x780, -(a7)
0x0000245e   4                 4ebae8f2  jsr 0xd52(pc)
0x00002462   2                     285f  movea.l (a7)+, a4
0x00002464   2                     600c  bra.b 0x2472
0x00002466   2                     2f0c  move.l a4, -(a7)
0x00002468   6             2f3c00000780  move.l 0x780, -(a7)
0x0000246e   4                 4ebae92e  jsr 0xd9e(pc)
0x00002472   2                     200c  move.l a4, d0
0x00002474   2                     57c0  seq.b d0
0x00002476   2                     4a00  tst.b d0
0x00002478   2                     6608  bne.b 0x2482
0x0000247a   2                     4a94  tst.l (a4)
0x0000247c   2                     57c1  seq.b d1
0x0000247e   2                     8001  or.b d1, d0
0x00002480   2                     6722  beq.b 0x24a4
0x00002482   4                 487a004a  pea.l 0x24ce(pc)
0x00002486   4                 486efdf8  pea.l -0x208(a6)
0x0000248a   2                     3f06  move.w d6, -(a7)
0x0000248c   4                 4ebaf506  jsr 0x1994(pc)
0x00002490   4                 486efef8  pea.l -0x108(a6)
0x00002494   4                 3f3c0002  move.w 0x2, -(a7)
0x00002498   4                 4ebaee04  jsr 0x129e(pc)
0x0000249c   4                 486efef8  pea.l -0x108(a6)
0x000024a0   4                 4ebaf390  jsr 0x1832(pc)
0x000024a4   2                     2f0c  move.l a4, -(a7)
0x000024a6   4                 4ebae67e  jsr 0xb26(pc)
0x000024aa   2                     2f0c  move.l a4, -(a7)
0x000024ac   4                 4ebae8fc  jsr 0xdaa(pc)
0x000024b0   2                     2047  movea.l d7, a0
0x000024b2   2                     2094  move.l (a4), (a0)
0x000024b4   2                     2f14  move.l (a4), -(a7)
0x000024b6   2                     2f13  move.l (a3), -(a7)
0x000024b8   4                 4ead044a  jsr 0x44a(a5)
0x000024bc   2                     2f0b  move.l a3, -(a7)
0x000024be   4                 4ebae8fe  jsr 0xdbe(pc)
0x000024c2   4                 4cdf18c0  movem.l (a7)+, d6-d7/a3-a4
0x000024c6   2                     4e5e  unlk a6
0x000024c8   2                     205f  movea.l (a7)+, a0
0x000024ca   2                     5c4f  addq.w 0x6, a7
0x000024cc   2                     4ed0  jmp (a0)
0x000024ce   2                     0542  bchg.b d2, d2
0x000024d0   4                 4d454d3a  
0x000024d4   2                     0542  bchg.b d2, d2
0x000024d6   4                 4b4e463a  
0x000024da   2                     5042  addq.w 0x8, d2
0x000024dc   4                 4c4b4e56  
0x000024e0   2                     fcf4  invalid
0x000024e2   2                     2f0c  move.l a4, -(a7)
0x000024e4   4                 486dffc6  pea.l -0x3a(a5)
0x000024e8   2                     a875  invalid
0x000024ea   2                     42a7  clr.l -(a7)
0x000024ec   4                 2f3a0094  move.l 0x2582(pc), -(a7)
0x000024f0   4                 3f2e000c  move.w 0xc(a6), -(a7)
0x000024f4   2                     a9a0  invalid
0x000024f6   2                     285f  movea.l (a7)+, a4
0x000024f8   2                     200c  move.l a4, d0
0x000024fa   2                     6634  bne.b 0x2530
0x000024fc   4                 487a007e  pea.l 0x257c(pc)
0x00002500   4                 486efdf4  pea.l -0x20c(a6)
0x00002504   4                 3f2e000c  move.w 0xc(a6), -(a7)
0x00002508   4                 4ebaf48a  jsr 0x1994(pc)
0x0000250c   4                 487a006c  pea.l 0x257a(pc)
0x00002510   4                 486efcf4  pea.l -0x30c(a6)
0x00002514   2                     4267  clr.w -(a7)
0x00002516   2                     a9af  invalid
0x00002518   4                 4ebaf47a  jsr 0x1994(pc)
0x0000251c   4                 486efef4  pea.l -0x10c(a6)
0x00002520   4                 3f3c0004  move.w 0x4, -(a7)
0x00002524   4                 4ebaed78  jsr 0x129e(pc)
0x00002528   4                 486efef4  pea.l -0x10c(a6)
0x0000252c   4                 4ebaf304  jsr 0x1832(pc)
0x00002530   2                     2f0c  move.l a4, -(a7)
0x00002532   4                 4ebae876  jsr 0xdaa(pc)
0x00002536   2                     2054  movea.l (a4), a0
0x00002538   4                 43eefff4  lea.l -0xc(a6), a1
0x0000253c   2                     5488  addq.l 0x2, a0
0x0000253e   2                     22d8  move.l (a0)+, (a1)+
0x00002540   2                     22d8  move.l (a0)+, (a1)+
0x00002542   4                 486efff4  pea.l -0xc(a6)
0x00002546   4                 302e000a  move.w 0xa(a6), d0
0x0000254a   4                 906efff6  sub.w -0xa(a6), d0
0x0000254e   2                     3f00  move.w d0, -(a7)
0x00002550   4                 302e0008  move.w 0x8(a6), d0
0x00002554   4                 906efff4  sub.w -0xc(a6), d0
0x00002558   2                     3f00  move.w d0, -(a7)
0x0000255a   2                     a8a8  invalid
0x0000255c   2                     2f0c  move.l a4, -(a7)
0x0000255e   4                 486efff4  pea.l -0xc(a6)
0x00002562   2                     a8f6  invalid
0x00002564   2                     2f0c  move.l a4, -(a7)
0x00002566   4                 4ebae856  jsr 0xdbe(pc)
0x0000256a   2                     2f0c  move.l a4, -(a7)
0x0000256c   4                 4ebae846  jsr 0xdb4(pc)
0x00002570   2                     285f  movea.l (a7)+, a4
0x00002572   2                     4e5e  unlk a6
0x00002574   2                     205f  movea.l (a7)+, a0
0x00002576   2                     5c4f  addq.w 0x6, a7
0x00002578   2                     4ed0  jmp (a0)
0x0000257a   4                 012f0550  btst.l d0, 0x550(a7)
0x0000257e   2                     4e46  trap 0x6
0x00002580   4                 443a5049  
0x00002584   4                 43544e56  
0x00002588   4                 00002f2e  ori.b 0x2e, d0
0x0000258c   4                 0008206d  
0x00002590   2                     fca2  invalid
0x00002592   4                 48680002  pea.l 0x2(a0)
0x00002596   4                 206e0008  movea.l 0x8(a6), a0
0x0000259a   4                 48680006  pea.l 0x6(a0)
0x0000259e   4                 206e0008  movea.l 0x8(a6), a0
0x000025a2   4                 48680006  pea.l 0x6(a0)
0x000025a6   2                     4267  clr.w -(a7)
0x000025a8   2                     42a7  clr.l -(a7)
0x000025aa   2                     a8ec  invalid
0x000025ac   2                     4e5e  unlk a6
0x000025ae   2                     2e9f  move.l (a7)+, (a7)
0x000025b0   2                     4e75  rts
0x000025b2   4                 4e560000  link.w a6, 0x0
0x000025b6   4                 206dfca2  movea.l -0x35e(a5), a0
0x000025ba   4                 48680002  pea.l 0x2(a0)
0x000025be   4                 2f2e0008  move.l 0x8(a6), -(a7)
0x000025c2   4                 206e0008  movea.l 0x8(a6), a0
0x000025c6   4                 48680006  pea.l 0x6(a0)
0x000025ca   4                 206e0008  movea.l 0x8(a6), a0
0x000025ce   4                 48680006  pea.l 0x6(a0)
0x000025d2   2                     4267  clr.w -(a7)
0x000025d4   2                     42a7  clr.l -(a7)
0x000025d6   2                     a8ec  invalid
0x000025d8   2                     4e5e  unlk a6
0x000025da   2                     2e9f  move.l (a7)+, (a7)
0x000025dc   2                     4e75  rts
0x000025de   4                 4e56fffc  link.w a6, 0xfffc
0x000025e2   2                     2f0c  move.l a4, -(a7)
0x000025e4   2                     4267  clr.w -(a7)
0x000025e6   2                     a99b  invalid
0x000025e8   2                     42a7  clr.l -(a7)
0x000025ea   4                 2f3a0032  move.l 0x261e(pc), -(a7)
0x000025ee   4                 3f2e000c  move.w 0xc(a6), -(a7)
0x000025f2   2                     a9a0  invalid
0x000025f4   2                     285f  movea.l (a7)+, a4
0x000025f6   2                     200c  move.l a4, d0
0x000025f8   2                     6706  beq.b 0x2600
0x000025fa   2                     2f0c  move.l a4, -(a7)
0x000025fc   4                 4ebae796  jsr 0xd94(pc)
0x00002600   4                 1f3c0001  move.b 0x1, -(a7)
0x00002604   2                     a99b  invalid
0x00002606   2                     42a7  clr.l -(a7)
0x00002608   4                 2f3a0014  move.l 0x261e(pc), -(a7)
0x0000260c   4                 3f2e000c  move.w 0xc(a6), -(a7)
0x00002610   2                     a9a0  invalid
0x00002612   2                     285f  movea.l (a7)+, a4
0x00002614   2                     285f  movea.l (a7)+, a4
0x00002616   2                     4e5e  unlk a6
0x00002618   2                     205f  movea.l (a7)+, a0
0x0000261a   2                     5c4f  addq.w 0x6, a7
0x0000261c   2                     4ed0  jmp (a0)
0x0000261e   4                 4744534b  
0x00002622   4                 4e560000  link.w a6, 0x0
0x00002626   4                 102dffa5  move.b -0x5b(a5), d0
0x0000262a   2                     6704  beq.b 0x2630
0x0000262c   4                 4ead04a2  jsr 0x4a2(a5)
0x00002630   4                 486d052a  pea.l 0x52a(a5)
0x00002634   2                     a9f1  invalid
0x00002636   2                     4267  clr.w -(a7)
0x00002638   4                 4ebafbec  jsr 0x2226(pc)
0x0000263c   4                 102dfca7  move.b -0x359(a5), d0
0x00002640   2                     6706  beq.b 0x2648
0x00002642   4                 2f2dfca2  move.l -0x35e(a5), -(a7)
0x00002646   2                     a91f  invalid
0x00002648   4                 102dfd37  move.b -0x2c9(a5), d0
0x0000264c   2                     671c  beq.b 0x266a
0x0000264e   4                 4ebaedf0  jsr 0x1440(pc)
0x00002652   4                 487a007e  pea.l 0x26d2(pc)
0x00002656   4                 486dfd16  pea.l -0x2ea(a5)
0x0000265a   4                 4ebaf59c  jsr 0x1bf8(pc)
0x0000265e   4                 3f3c0001  move.w 0x1, -(a7)
0x00002662   2                     2f0e  move.l a6, -(a7)
0x00002664   4                 4ebaff78  jsr 0x25de(pc)
0x00002668   2                     6006  bra.b 0x2670
0x0000266a   2                     2f0e  move.l a6, -(a7)
0x0000266c   4                 4ead0522  jsr 0x522(a5)
0x00002670   4                 102dfd37  move.b -0x2c9(a5), d0
0x00002674   4                 0a000001  eori.b 0x1, d0
0x00002678   4                 1b40ff8a  move.b d0, -0x76(a5)
0x0000267c   2                     2f0e  move.l a6, -(a7)
0x0000267e   4                 4ead051a  jsr 0x51a(a5)
0x00002682   2                     2f0e  move.l a6, -(a7)
0x00002684   4                 4ead050a  jsr 0x50a(a5)
0x00002688   4                 486d052a  pea.l 0x52a(a5)
0x0000268c   2                     a9f1  invalid
0x0000268e   6             3b7c0124ff88  move.w 0x124, -0x78(a5)
0x00002694   4                 4ead03b2  jsr 0x3b2(a5)
0x00002698   6             3b7c0155ff88  move.w 0x155, -0x78(a5)
0x0000269e   4                 4ebaeda0  jsr 0x1440(pc)
0x000026a2   2                     4267  clr.w -(a7)
0x000026a4   2                     2f0e  move.l a6, -(a7)
0x000026a6   4                 4ebaff36  jsr 0x25de(pc)
0x000026aa   2                     2f0e  move.l a6, -(a7)
0x000026ac   4                 4ead0512  jsr 0x512(a5)
0x000026b0   2                     4267  clr.w -(a7)
0x000026b2   4                 4ebafc50  jsr 0x2304(pc)
0x000026b6   4                 102dffa5  move.b -0x5b(a5), d0
0x000026ba   2                     6704  beq.b 0x26c0
0x000026bc   4                 4ead04aa  jsr 0x4aa(a5)
0x000026c0   6             2f3c0000ffff  move.l 0xffff, -(a7)
0x000026c6   2                     201f  move.l (a7)+, d0
0x000026c8   2                     a032  invalid
0x000026ca   2                     4e5e  unlk a6
0x000026cc   2                     205f  movea.l (a7)+, a0
0x000026ce   2                     544f  addq.w 0x2, a7
0x000026d0   2                     4ed0  jmp (a0)
0x000026d2   4                 0a424443  eori.w 0x4443, d2
0x000026d6   2                     2044  movea.l d4, a0
0x000026d8   2                     6174  bsr.b 0x274e
0x000026da   2                     6120  bsr.b 0x26fc
0x000026dc   2                     4200  clr.b d0
0x000026de   4                 4e56ffde  link.w a6, 0xffde
0x000026e2   4                 48e70118  movem.l d7/a3-a4, -(a7)
0x000026e6   4                 426effe2  clr.w -0x1e(a6)
0x000026ea   2                     4207  clr.b d7
0x000026ec   4                 422dfedd  clr.b -0x123(a5)
0x000026f0   4                 422dfe9f  clr.b -0x161(a5)
0x000026f4   2                     42a7  clr.l -(a7)
0x000026f6   4                 3f3c00aa  move.w 0xaa, -(a7)
0x000026fa   2                     42a7  clr.l -(a7)
0x000026fc   2                     42a7  clr.l -(a7)
0x000026fe   2                     a97c  invalid
0x00002700   4                 2d5ffffc  move.l (a7)+, -0x4(a6)
0x00002704   2                     2f0e  move.l a6, -(a7)
0x00002706   4                 4ead057a  jsr 0x57a(a5)
0x0000270a   2                     2f0e  move.l a6, -(a7)
0x0000270c   4                 4ead054a  jsr 0x54a(a5)
0x00002710   2                     2f0e  move.l a6, -(a7)
0x00002712   4                 4ead0542  jsr 0x542(a5)
0x00002716   2                     4267  clr.w -(a7)
0x00002718   2                     2f0e  move.l a6, -(a7)
0x0000271a   4                 4ead056a  jsr 0x56a(a5)
0x0000271e   4                 1b5ffcad  move.b (a7)+, -0x353(a5)
0x00002722   4                 102dfedd  move.b -0x123(a5), d0
0x00002726   2                     671c  beq.b 0x2744
0x00002728   2                     7002  moveq 0x2, d0
0x0000272a   4                 b06dfea2  cmp.w -0x15e(a5), d0
0x0000272e   2                     6f0a  ble.b 0x273a
0x00002730   4                 3f3c4269  move.w 0x4269, -(a7)
0x00002734   4                 4ebafaf0  jsr 0x2226(pc)
0x00002738   2                     6012  bra.b 0x274c
0x0000273a   4                 3f3c426a  move.w 0x426a, -(a7)
0x0000273e   4                 4ebafae6  jsr 0x2226(pc)
0x00002742   2                     6008  bra.b 0x274c
0x00002744   4                 3f3c4268  move.w 0x4268, -(a7)
0x00002748   4                 4ebafadc  jsr 0x2226(pc)
0x0000274c   4                 102dfca7  move.b -0x359(a5), d0
0x00002750   2                     672e  beq.b 0x2780
0x00002752   4                 206dfca2  movea.l -0x35e(a5), a0
0x00002756   4                 49e80008  lea.l 0x8(a0), a4
0x0000275a   4                 2f2efffc  move.l -0x4(a6), -(a7)
0x0000275e   4                 302c0002  move.w 0x2(a4), d0
0x00002762   2                     4440  neg.w d0
0x00002764   4                 206efffc  movea.l -0x4(a6), a0
0x00002768   4                 9068000a  sub.w 0xa(a0), d0
0x0000276c   2                     3f00  move.w d0, -(a7)
0x0000276e   2                     3014  move.w (a4), d0
0x00002770   2                     4440  neg.w d0
0x00002772   4                 206efffc  movea.l -0x4(a6), a0
0x00002776   4                 90680008  sub.w 0x8(a0), d0
0x0000277a   2                     3f00  move.w d0, -(a7)
0x0000277c   2                     4267  clr.w -(a7)
0x0000277e   2                     a91b  invalid
0x00002780   4                 2f2efffc  move.l -0x4(a6), -(a7)
0x00002784   2                     a915  invalid
0x00002786   4                 2f2efffc  move.l -0x4(a6), -(a7)
0x0000278a   2                     a91f  invalid
0x0000278c   2                     2f0e  move.l a6, -(a7)
0x0000278e   4                 4ead053a  jsr 0x53a(a5)
0x00002792   4                 41edffea  lea.l -0x16(a5), a0
0x00002796   4                 2b48ffa0  move.l a0, -0x60(a5)
0x0000279a   4                 4ebaeda2  jsr 0x153e(pc)
0x0000279e   6             2f3c00004074  move.l 0x4074, -(a7)
0x000027a4   4                 4ead04fa  jsr 0x4fa(a5)
0x000027a8   2                     2f0e  move.l a6, -(a7)
0x000027aa   4                 4ead0582  jsr 0x582(a5)
0x000027ae   4                 4ebaed2e  jsr 0x14de(pc)
0x000027b2   4                 2f2efffc  move.l -0x4(a6), -(a7)
0x000027b6   2                     a981  invalid
0x000027b8   2                     42a7  clr.l -(a7)
0x000027ba   6             2f3c00004e20  move.l 0x4e20, -(a7)
0x000027c0   4                 4ebae590  jsr 0xd52(pc)
0x000027c4   2                     265f  movea.l (a7)+, a3
0x000027c6   4                 102dfedd  move.b -0x123(a5), d0
0x000027ca   2                     670a  beq.b 0x27d6
0x000027cc   4                 3f3c0016  move.w 0x16, -(a7)
0x000027d0   4                 4ebad952  jsr 0x124(pc)
0x000027d4   2                     6008  bra.b 0x27de
0x000027d6   4                 3f3c0015  move.w 0x15, -(a7)
0x000027da   4                 4ebad948  jsr 0x124(pc)
0x000027de   2                     2f0b  move.l a3, -(a7)
0x000027e0   4                 4ebae57c  jsr 0xd5e(pc)
0x000027e4   4                 102dfedd  move.b -0x123(a5), d0
0x000027e8   2                     6746  beq.b 0x2830
0x000027ea   2                     2f0e  move.l a6, -(a7)
0x000027ec   4                 4ead0552  jsr 0x552(a5)
0x000027f0   2                     2f0e  move.l a6, -(a7)
0x000027f2   4                 4ead059a  jsr 0x59a(a5)
0x000027f6   4                 102dfedd  move.b -0x123(a5), d0
0x000027fa   2                     671e  beq.b 0x281a
0x000027fc   4                 4ebaec42  jsr 0x1440(pc)
0x00002800   4                 2f2efffc  move.l -0x4(a6), -(a7)
0x00002804   2                     a916  invalid
0x00002806   4                 2f2efffc  move.l -0x4(a6), -(a7)
0x0000280a   2                     a983  invalid
0x0000280c   4                 426dfe9c  clr.w -0x164(a5)
0x00002810   4                 3f2dfea2  move.w -0x15e(a5), -(a7)
0x00002814   4                 4ebafe0c  jsr 0x2622(pc)
0x00002818   2                     6010  bra.b 0x282a
0x0000281a   4                 4ebaec24  jsr 0x1440(pc)
0x0000281e   4                 2f2efffc  move.l -0x4(a6), -(a7)
0x00002822   2                     a916  invalid
0x00002824   4                 2f2efffc  move.l -0x4(a6), -(a7)
0x00002828   2                     a983  invalid
0x0000282a   2                     7e01  moveq 0x1, d7
0x0000282c   4                 60000168  bra.w 0x2996
0x00002830   2                     a853  invalid
0x00002832   2                     1007  move.b d7, d0
0x00002834   2                     6714  beq.b 0x284a
0x00002836   2                     2f0e  move.l a6, -(a7)
0x00002838   4                 4ead058a  jsr 0x58a(a5)
0x0000283c   2                     2f0e  move.l a6, -(a7)
0x0000283e   4                 4ead055a  jsr 0x55a(a5)
0x00002842   2                     4207  clr.b d7
0x00002844   2                     2f0e  move.l a6, -(a7)
0x00002846   4                 4ead0582  jsr 0x582(a5)
0x0000284a   4                 486d0532  pea.l 0x532(a5)
0x0000284e   4                 486efffa  pea.l -0x6(a6)
0x00002852   2                     a991  invalid
0x00002854   4                 302efffa  move.w -0x6(a6), d0
0x00002858   2                     5940  subq.w 0x4, d0
0x0000285a   2                     673c  beq.b 0x2898
0x0000285c   2                     5340  subq.w 0x1, d0
0x0000285e   2                     6752  beq.b 0x28b2
0x00002860   4                 04400015  subi.w 0x15, d0
0x00002864   2                     670a  beq.b 0x2870
0x00002866   2                     5340  subq.w 0x1, d0
0x00002868   2                     6712  beq.b 0x287c
0x0000286a   2                     5340  subq.w 0x1, d0
0x0000286c   2                     671c  beq.b 0x288a
0x0000286e   2                     6054  bra.b 0x28c4
0x00002870   4                 426effe2  clr.w -0x1e(a6)
0x00002874   2                     2f0e  move.l a6, -(a7)
0x00002876   4                 4ead057a  jsr 0x57a(a5)
0x0000287a   2                     6048  bra.b 0x28c4
0x0000287c   6             3d7c0001ffe2  move.w 0x1, -0x1e(a6)
0x00002882   2                     2f0e  move.l a6, -(a7)
0x00002884   4                 4ead057a  jsr 0x57a(a5)
0x00002888   2                     603a  bra.b 0x28c4
0x0000288a   6             3d7c0002ffe2  move.w 0x2, -0x1e(a6)
0x00002890   2                     2f0e  move.l a6, -(a7)
0x00002892   4                 4ead057a  jsr 0x57a(a5)
0x00002896   2                     602c  bra.b 0x28c4
0x00002898   2                     2f0e  move.l a6, -(a7)
0x0000289a   4                 4ead058a  jsr 0x58a(a5)
0x0000289e   2                     2f0e  move.l a6, -(a7)
0x000028a0   4                 4ead0572  jsr 0x572(a5)
0x000028a4   4                 102dfe9f  move.b -0x161(a5), d0
0x000028a8   2                     6606  bne.b 0x28b0
0x000028aa   2                     2f0e  move.l a6, -(a7)
0x000028ac   4                 4ead0582  jsr 0x582(a5)
0x000028b0   2                     6012  bra.b 0x28c4
0x000028b2   2                     2f0e  move.l a6, -(a7)
0x000028b4   4                 4ead058a  jsr 0x58a(a5)
0x000028b8   2                     2f0e  move.l a6, -(a7)
0x000028ba   4                 4ead0562  jsr 0x562(a5)
0x000028be   2                     2f0e  move.l a6, -(a7)
0x000028c0   4                 4ead0582  jsr 0x582(a5)
0x000028c4   4                 302efffa  move.w -0x6(a6), d0
0x000028c8   2                     6b18  bmi.b 0x28e2
0x000028ca   4                 b07c0007  cmp.w 0x7, d0
0x000028ce   2                     6e12  bgt.b 0x28e2
0x000028d0   4                 41fa00f0  lea.l 0x29c2(pc), a0
0x000028d4   2                     3200  move.w d0, d1
0x000028d6   2                     e649  lsr.w 0x3, d1
0x000028d8   2                     4441  neg.w d1
0x000028da   4                 013010ff  btst.l d0, -0x1(a0, d1.w)
0x000028de   4                 0a3c0004  eori.b 0x4, ccr
0x000028e2   2                     57c0  seq.b d0
0x000028e4   4                 802dfe9f  or.b -0x161(a5), d0
0x000028e8   4                 02400001  andi.w 0x1, d0
0x000028ec   4                 6700ff5c  beq.w 0x284a
0x000028f0   2                     a852  invalid
0x000028f2   2                     2f0e  move.l a6, -(a7)
0x000028f4   4                 4ead0552  jsr 0x552(a5)
0x000028f8   4                 302efffa  move.w -0x6(a6), d0
0x000028fc   2                     5340  subq.w 0x1, d0
0x000028fe   2                     670a  beq.b 0x290a
0x00002900   2                     5340  subq.w 0x1, d0
0x00002902   2                     6732  beq.b 0x2936
0x00002904   2                     5340  subq.w 0x1, d0
0x00002906   2                     6736  beq.b 0x293e
0x00002908   2                     6052  bra.b 0x295c
0x0000290a   2                     2f0e  move.l a6, -(a7)
0x0000290c   4                 4ead0592  jsr 0x592(a5)
0x00002910   4                 102dfd37  move.b -0x2c9(a5), d0
0x00002914   2                     6704  beq.b 0x291a
0x00002916   4                 4ebaeb28  jsr 0x1440(pc)
0x0000291a   4                 2f2efffc  move.l -0x4(a6), -(a7)
0x0000291e   2                     a916  invalid
0x00002920   4                 2f2efffc  move.l -0x4(a6), -(a7)
0x00002924   2                     a983  invalid
0x00002926   4                 426dfe9c  clr.w -0x164(a5)
0x0000292a   4                 3f2effe2  move.w -0x1e(a6), -(a7)
0x0000292e   4                 4ebafcf2  jsr 0x2622(pc)
0x00002932   2                     7e01  moveq 0x1, d7
0x00002934   2                     6026  bra.b 0x295c
0x00002936   6             1b7c0001fd3b  move.b 0x1, -0x2c5(a5)
0x0000293c   2                     601e  bra.b 0x295c
0x0000293e   2                     2f0e  move.l a6, -(a7)
0x00002940   4                 4ead0592  jsr 0x592(a5)
0x00002944   4                 486d052a  pea.l 0x52a(a5)
0x00002948   2                     a9f1  invalid
0x0000294a   2                     2f0e  move.l a6, -(a7)
0x0000294c   4                 4ead0722  jsr 0x722(a5)
0x00002950   4                 4ebaeaee  jsr 0x1440(pc)
0x00002954   4                 486d0722  pea.l 0x722(a5)
0x00002958   2                     a9f1  invalid
0x0000295a   2                     4207  clr.b d7
0x0000295c   4                 102dfe9f  move.b -0x161(a5), d0
0x00002960   2                     6734  beq.b 0x2996
0x00002962   4                 4ebadaa0  jsr 0x404(pc)
0x00002966   4                 4ead0502  jsr 0x502(a5)
0x0000296a   4                 3f3c4268  move.w 0x4268, -(a7)
0x0000296e   4                 4ebaf994  jsr 0x2304(pc)
0x00002972   6             1b7c0001fd37  move.b 0x1, -0x2c9(a5)
0x00002978   4                 2f2efffc  move.l -0x4(a6), -(a7)
0x0000297c   2                     a916  invalid
0x0000297e   4                 2f2efffc  move.l -0x4(a6), -(a7)
0x00002982   2                     a983  invalid
0x00002984   4                 426dfe9c  clr.w -0x164(a5)
0x00002988   4                 3f2effe2  move.w -0x1e(a6), -(a7)
0x0000298c   4                 4ebafc94  jsr 0x2622(pc)
0x00002990   2                     4207  clr.b d7
0x00002992   4                 422dfe9f  clr.b -0x161(a5)
0x00002996   4                 102dfd3b  move.b -0x2c5(a5), d0
0x0000299a   4                 6700fd58  beq.w 0x26f4
0x0000299e   2                     2f0e  move.l a6, -(a7)
0x000029a0   4                 4ead058a  jsr 0x58a(a5)
0x000029a4   4                 4ead0502  jsr 0x502(a5)
0x000029a8   4                 4ebada5a  jsr 0x404(pc)
0x000029ac   4                 3f3c4268  move.w 0x4268, -(a7)
0x000029b0   4                 4ebaf952  jsr 0x2304(pc)
0x000029b4   4                 4ead034a  jsr 0x34a(a5)
0x000029b8   4                 4cdf1880  movem.l (a7)+, d7/a3-a4
0x000029bc   2                     4e5e  unlk a6
0x000029be   2                     4e75  rts
0x000029c0   4                 000e4eba  
0x000029c4   2                     e760  asl.w d3, d0
0x000029c6   4                 4e560000  link.w a6, 0x0
0x000029ca   2                     2c5f  movea.l (a7)+, a6
0x000029cc   4                 4ebae758  jsr 0x1126(pc)
0x000029d0   4                 486d04ea  pea.l 0x4ea(a5)
0x000029d4   2                     a9f1  invalid
0x000029d6   4                 4ebae112  jsr 0xaea(pc)
0x000029da   4                 4ebae3f6  jsr 0xdd2(pc)
0x000029de   4                 4ebae3f2  jsr 0xdd2(pc)
0x000029e2   4                 4ebae3ee  jsr 0xdd2(pc)
0x000029e6   4                 4ebae3ea  jsr 0xdd2(pc)
0x000029ea   4                 4ebae3e6  jsr 0xdd2(pc)
0x000029ee   4                 4ebae3e2  jsr 0xdd2(pc)
0x000029f2   4                 4ebae3de  jsr 0xdd2(pc)
0x000029f6   4                 4ebae3da  jsr 0xdd2(pc)
0x000029fa   4                 4ebae3d6  jsr 0xdd2(pc)
0x000029fe   4                 4ebae3d2  jsr 0xdd2(pc)
0x00002a02   4                 4ebae3ce  jsr 0xdd2(pc)
0x00002a06   4                 4ebae3ca  jsr 0xdd2(pc)
0x00002a0a   4                 4ead04ea  jsr 0x4ea(a5)
0x00002a0e   4                 486d04ea  pea.l 0x4ea(a5)
0x00002a12   2                     a9f1  invalid
0x00002a14   4                 3f3cffff  move.w 0xffff, -(a7)
0x00002a18   4                 4ead052a  jsr 0x52a(a5)
0x00002a1c   4                 422dfd3b  clr.b -0x2c5(a5)
0x00002a20   4                 4ebafcbc  jsr 0x26de(pc)
0x00002a24   4                 102dfd3a  move.b -0x2c6(a5), d0
0x00002a28   2                     6706  beq.b 0x2a30
0x00002a2a   4                 4ebaed6a  jsr 0x1796(pc)
0x00002a2e   2                     6004  bra.b 0x2a34
0x00002a30   4                 4ebaecaa  jsr 0x16dc(pc)
0x00002a34   4                 4ebae726  jsr 0x115c(pc)
0x00002a38   4                 4ebae728  jsr 0x1162(pc)
0x00002a3c   2                     4e75  rts
0x00002a3e   2                     4e5e  unlk a6
0x00002a40   2                     4e75  rts

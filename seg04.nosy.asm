; vi: syntax=asm68k

  36AC:                                 Segment  4

     0:                                 QUAL    proc228 ; b# =430  s#4  =proc228

                                 ;-refs -  4/proc247   

     0: 48E7 1030      'H..0'  proc228  MOVEM.L D3/A2-A3,-(A7)
     4: 45FA 003A      4000040          LEA     data167,A2  ; len= 42
     8: 47FA 0060      400006A          LEA     data168,A3  ; len= 2
     C: 200B           ' .'             MOVE.L  A3,D0
     E: 908A           '..'             SUB.L   A2,D0
    10: 2600           '&.'             MOVE.L  D0,D3
    12: 5840           'X@'             ADDQ    #4,D0
    14: A51E           '..'             _NewPtr ,SYS  ; (D0/byteCount:Size):A0\Ptr 
    16: 2B48 FE8C        -$174          MOVE.L  A0,glob162(A5)
    1A: 2248           '"H'             MOVEA.L A0,A1
    1C: E243           '.C'             ASR     #1,D3
    1E: 6002           4000022          BRA.S   ljq_2
    20: 32DA           '2.'    ljq_1    MOVE    (A2)+,(A1)+
    22: 51CB FFFC      4000020 ljq_2    DBRA    D3,ljq_1
    26: 303C 01C9      '0<..'           MOVE    #$1C9,D0    ; SysError
    2A: A146           '.F'             _GetTrapAddress ; (D0/trapNum:Word):A0\ProcPtr 
    2C: 2B48 FE88        -$178          MOVE.L  A0,glob161(A5)
    30: 303C 01C9      '0<..'           MOVE    #$1C9,D0
    34: 206D FE8C        -$174          MOVEA.L glob162(A5),A0
    38: A047           '.G'             _SetTrapAddress ; (A0/trapAddr:ProcPtr; D0/trapNum:Word) 
    3A: 4CDF 0C08      'L...'           MOVEM.L (A7)+,D3/A2-A3
    3E: 4E75           'Nu'             RTS     

                                 ;-refs -  4/proc228   

    40: 'Y.@.H...*x..Q...'     data167  DC.W    $598F,$40E7,$48E7,$84,$2A78,$904,$51ED,$FF8B
    50: ' x........../m..'              DC.W    $2078,$1D4,$D0FC,$1E00,$8D0,6,$2F6D,$FE88
    60: '..L.!.F.Nu'                    DC.W    $A,$4CDF,$2100,$46DF,$4E75

                                 ;-refs -  4/proc228   

    6A: '..'                   data168  DC.W    0

    6C:                                 QUAL    proc229 ; b# =433  s#4  =proc229

                                 ;-refs -  1/proc89     1/proc90    

    6C: 206D FE88        -$178 proc229  MOVEA.L glob161(A5),A0
    70: 303C 01C9      '0<..'           MOVE    #$1C9,D0    ; SysError
    74: A047           '.G'             _SetTrapAddress ; (A0/trapAddr:ProcPtr; D0/trapNum:Word) 
    76: 206D FE8C        -$174          MOVEA.L glob162(A5),A0
    7A: A01F           '..'             _DisposPtr ; (A0/p:Ptr) 
    7C: 4E75           'Nu'             RTS     

    7E:                                 QUAL    proc230 ; b# =434  s#4  =proc230

                                 ;-refs -  1/proc2      1/proc15     4/proc247   

    7E: 2078 01D4         $1D4 proc230  MOVEA.L VIA,A0
    82: 0810 0007      '....'           BTST    #7,(A0)
    86: 6716           400009E          BEQ.S   ljs_2
    88: 2278 0266         $266          MOVEA.L SoundBase,A1
    8C: 303C 0171      '0<.q'           MOVE    #$171,D0
    90: 12BC 0080      '....'  ljs_1    MOVE.B  #$80,(A1)
    94: 5489           'T.'             ADDQ.L  #2,A1
    96: 51C8 FFF8      4000090          DBRA    D0,ljs_1
    9A: 0890 0007      '....'           BCLR    #7,(A0)
    9E: 4E75           'Nu'    ljs_2    RTS     

    A0:                                 QUAL    proc231 ; b# =435  s#4  =proc231

                                 ;-refs -  4/proc247   

    A0: 203C 0000 0416 ' <.... proc231  MOVE.L  #$416,D0
    A6: A31E           '..'             _NewPtr ,CLEAR; (D0/byteCount:Size):A0\Ptr 
    A8: 21C8 0A78         $A78          MOVE.L  A0,ApplScratch
    AC: 0C38 0000 012F    $12F          CMPI.B  #0,CPUFlag
    B2: 670E           40000C2          BEQ.S   ljt_1
    B4: 0C38 0001 012F    $12F          CMPI.B  #1,CPUFlag
    BA: 6706           40000C2          BEQ.S   ljt_1
    BC: 303C 0014      '0<..'           MOVE    #20,D0
    C0: 6004           40000C6          BRA.S   ljt_2
    C2: 303C 0028      '0<.('  ljt_1    MOVE    #40,D0
    C6: 3140 000C      '1@..'  ljt_2    MOVE    D0,12(A0)
    CA: E340           '.@'             ASL     #1,D0
    CC: 3140 000E      '1@..'           MOVE    D0,14(A0)
    D0: 117C 0080 0010 '.|....'         MOVE.B  #$80,16(A0)
    D6: 4E75           'Nu'             RTS     

    D8:                                 QUAL    proc232 ; b# =436  s#4  =proc232

                                 ;-refs -  4/proc238   

    D8: 2243           '"C'    proc232  MOVEA.L D3,A1
    DA: 41FA 004A      4000126          LEA     data169,A0  ; 'DEADFACEBEEFCAFE'
    DE: 4CD0 000F      'L...'           MOVEM.L (A0),D0-D3
    E2: 207C 00F8 0030 ' |...0'         MOVEA.L #$F80030,A0
    E8: B098           '..'             CMP.L   (A0)+,D0
    EA: 6614           4000100          BNE.S   lju_1
    EC: B298           '..'             CMP.L   (A0)+,D1
    EE: 6610           4000100          BNE.S   lju_1
    F0: B498           '..'             CMP.L   (A0)+,D2
    F2: 660C           4000100          BNE.S   lju_1
    F4: B690           '..'             CMP.L   (A0),D3
    F6: 6608           4000100          BNE.S   lju_1
    F8: 1F7C 0001 0004 '.|....'         MOVE.B  #1,4(A7)
    FE: 6022           4000122          BRA.S   lju_3
   100: 207C 0068 0030 ' |.h.0 lju_1    MOVEA.L #$680030,A0
   106: B098           '..'             CMP.L   (A0)+,D0
   108: 6614           400011E          BNE.S   lju_2
   10A: B298           '..'             CMP.L   (A0)+,D1
   10C: 6610           400011E          BNE.S   lju_2
   10E: B498           '..'             CMP.L   (A0)+,D2
   110: 660C           400011E          BNE.S   lju_2
   112: B690           '..'             CMP.L   (A0),D3
   114: 6608           400011E          BNE.S   lju_2
   116: 1F7C 0001 0004 '.|....'         MOVE.B  #1,4(A7)
   11C: 6004           4000122          BRA.S   lju_3
   11E: 422F 0004      'B/..'  lju_2    CLR.B   4(A7)
   122: 2609           '&.'    lju_3    MOVE.L  A1,D3
   124: 4E75           'Nu'             RTS     

                                 ;-refs -  4/proc232   

   126: 4445                   data169  DC.B    'DEADFACEBEEFCAFE'

   136:                                 QUAL    proc233 ; b# =438  s#4  =proc233

                                 ;-refs -  1/_RTInit   

   136: 48E7 FFF0      'H...'  proc233  MOVEM.L D0-D7/A0-A3,-(A7)
   13A: 4247           'BG'             CLR     D7
   13C: 41FA 07BC      40008FA          LEA     data179,A0  ; len= 154
   140: 2218           '".'             MOVE.L  (A0)+,D1
   142: 6F00 00C0      4000204          BLE     ljv_13
   146: 2A18           '*.'             MOVE.L  (A0)+,D5
   148: 6604           400014E          BNE.S   ljv_1
   14A: 2A0D           '*.'             MOVE.L  A5,D5
   14C: 9A81           '..'             SUB.L   D1,D5
   14E: 2645           '&E'    ljv_1    MOVEA.L D5,A3
   150: 48E7 E0C0      'H...'           MOVEM.L D0-D2/A0-A1,-(A7)
   154: 2F0B           '/.'             PUSH.L  A3
   156: 2F01           '/.'             PUSH.L  D1
   158: 6100 00BE      4000218          BSR     proc235
   15C: 4CDF 0307      'L...'           MOVEM.L (A7)+,D0-D2/A0-A1
   160: 3018           '0.'             MOVE    (A0)+,D0
   162: 3E18           '>.'             MOVE    (A0)+,D7
   164: 6000 009A      4000200          BRA     ljv_12
   168: 7800           'x.'    ljv_2    MOVEQ   #0,D4
   16A: 1818           '..'             MOVE.B  (A0)+,D4
   16C: 2204           '".'             MOVE.L  D4,D1
   16E: 0201 000F      '....'           ANDI.B  #$F,D1
   172: 0804 0004      '....'           BTST    #4,D4
   176: 670E           4000186          BEQ.S   ljv_3
   178: E141           '.A'             ASL     #8,D1
   17A: 1218           '..'             MOVE.B  (A0)+,D1
   17C: 0881 000B      '....'           BCLR    #$B,D1
   180: 6704           4000186          BEQ.S   ljv_3
   182: E181           '..'             ASL.L   #8,D1
   184: 1218           '..'             MOVE.B  (A0)+,D1
   186: 7401           't.'    ljv_3    MOVEQ   #1,D2
   188: 0804 0007      '....'           BTST    #7,D4
   18C: 6716           40001A4          BEQ.S   ljv_4
   18E: 1418           '..'             MOVE.B  (A0)+,D2
   190: 0882 0007      '....'           BCLR    #7,D2
   194: 670E           40001A4          BEQ.S   ljv_4
   196: E142           '.B'             ASL     #8,D2
   198: 1418           '..'             MOVE.B  (A0)+,D2
   19A: 0882 000E      '....'           BCLR    #$E,D2
   19E: 6704           40001A4          BEQ.S   ljv_4
   1A0: E182           '..'             ASL.L   #8,D2
   1A2: 1418           '..'             MOVE.B  (A0)+,D2
   1A4: 7C02           '|.'    ljv_4    MOVEQ   #2,D6
   1A6: 4EBA 0062      400020A          JSR     proc234
   1AA: 0885 000F      '....'           BCLR    #$F,D5
   1AE: 6704           40001B4          BEQ.S   ljv_5
   1B0: E185           '..'             ASL.L   #8,D5
   1B2: 1A18           '..'             MOVE.B  (A0)+,D5
   1B4: 43F3 5800      'C.X.'  ljv_5    LEA     0(A3,D5.L),A1
   1B8: 2449           '$I'             MOVEA.L A1,A2
   1BA: 0804 0005      '....'           BTST    #5,D4
   1BE: 671A           40001DA          BEQ.S   ljv_8
   1C0: 2C01           ',.'             MOVE.L  D1,D6
   1C2: 4EBA 0046      400020A          JSR     proc234
   1C6: 0C41 0002      '.A..'           CMPI    #2,D1
   1CA: 6706           40001D2          BEQ.S   ljv_6
   1CC: 6D08           40001D6          BLT.S   ljv_7
   1CE: DB92           '..'             ADD.L   D5,(A2)
   1D0: 6024           40001F6          BRA.S   ljv_11
   1D2: DB52           '.R'    ljv_6    ADD     D5,(A2)
   1D4: 6020           40001F6          BRA.S   ljv_11
   1D6: DB12           '..'    ljv_7    ADD.B   D5,(A2)
   1D8: 601C           40001F6          BRA.S   ljv_11
   1DA: 0C81 0000 0032 '.....2 ljv_8    CMPI.L  #50,D1
   1E0: 6510           40001F2          BLO.S   ljv_10
   1E2: 2F00           '/.'             PUSH.L  D0
   1E4: 2001           ' .'             MOVE.L  D1,D0
   1E6: A02E           '..'             _BlockMove ; (A0/srcPtr,A1/destPtr:Ptr; D0/byteCount:Size) 
   1E8: 201F           ' .'             POP.L   D0
   1EA: D1C1           '..'             ADDA.L  D1,A0
   1EC: D3C1           '..'             ADDA.L  D1,A1
   1EE: 6006           40001F6          BRA.S   ljv_11
   1F0: 12D8           '..'    ljv_9    MOVE.B  (A0)+,(A1)+
   1F2: 51C9 FFFC      40001F0 ljv_10   DBRA    D1,ljv_9
   1F6: 0804 0006      '....'  ljv_11   BTST    #6,D4
   1FA: 6704           4000200          BEQ.S   ljv_12
   1FC: 260D           '&.'             MOVE.L  A5,D3
   1FE: D792           '..'             ADD.L   D3,(A2)
   200: 51C8 FF66      4000168 ljv_12   DBRA    D0,ljv_2
   204: 4CDF 0FFF      'L...'  ljv_13   MOVEM.L (A7)+,D0-D7/A0-A3
   208: 4E75           'Nu'             RTS     

   20A:                                 QUAL    proc234 ; b# =439  s#4  =proc234

                                 ;-refs -  4/proc233   

   20A: 7A00           'z.'    proc234  MOVEQ   #0,D5
   20C: 6004           4000212          BRA.S   ljw_2
   20E: E18D           '..'    ljw_1    LSL.L   #8,D5
   210: 1A18           '..'             MOVE.B  (A0)+,D5
   212: 51CE FFFA      400020E ljw_2    DBRA    D6,ljw_1
   216: 4E75           'Nu'             RTS     

   218:                                 QUAL    proc235 ; b# =440  s#4  =proc235

                                 ;-refs -  4/proc233   

   218: 7400           't.'    proc235  MOVEQ   #0,D2
   21A: 205F           ' _'             POP.L   A0
   21C: 201F           ' .'             POP.L   D0
   21E: 225F           '"_'             POP.L   A1
   220: 6728           400024A          BEQ.S   ljx_7
   222: 3209           '2.'    ljx_1    MOVE    A1,D1
   224: 0241 0003      '.A..'           ANDI    #3,D1
   228: 6708           4000232          BEQ.S   ljx_2
   22A: 12C2           '..'             MOVE.B  D2,(A1)+
   22C: 5380           'S.'             SUBQ.L  #1,D0
   22E: 66F2           4000222          BNE     ljx_1
   230: 6018           400024A          BRA.S   ljx_7
   232: 2200           '".'    ljx_2    MOVE.L  D0,D1
   234: E489           '..'             LSR.L   #2,D1
   236: 6706           400023E          BEQ.S   ljx_4
   238: 22C2           '".'    ljx_3    MOVE.L  D2,(A1)+
   23A: 5381           'S.'             SUBQ.L  #1,D1
   23C: 66FA           4000238          BNE     ljx_3
   23E: 0240 0003      '.@..'  ljx_4    ANDI    #3,D0
   242: 6002           4000246          BRA.S   ljx_6
   244: 12C2           '..'    ljx_5    MOVE.B  D2,(A1)+
   246: 51C8 FFFC      4000244 ljx_6    DBRA    D0,ljx_5
   24A: 4ED0           'N.'    ljx_7    JMP     (A0)

   24C:                                 QUAL    proc236 ; b# =441  s#4  =proc236

                               vjy_1     VEQU  -512
                               vjy_2     VEQU  -256
   24C:                                 VEND    

                                 ;-refs -  4/proc237   

   24C: 4E56 FE00      'NV..'  proc236  LINK    A6,#-$200
   250: 42A7           'B.'             CLR.L   -(A7)
   252: 2F3A 004A      400029E          PUSH.L  data171     ; 'KDEF'
   256: 4267           'Bg'             CLR     -(A7)
   258: A9A0           '..'             _GetResource ; (theType:ResType; ID:INTEGER):Handle 
   25A: 2B5F FF50         -$B0          POP.L   glob227(A5)
   25E: 4267           'Bg'             CLR     -(A7)
   260: A9AF           '..'             _ResError ; :OSErr 
   262: 4A5F           'J_'             TST     (A7)+
   264: 6724           400028A          BEQ.S   ljy_1
   266: 487A 0030      4000298          PEA     data170     ; 'KNFD/'
   26A: 486E FE00      200FE00          PEA     vjy_1(A6)
   26E: 4267           'Bg'             CLR     -(A7)
   270: A9AF           '..'             _ResError ; :OSErr 
   272: 4EAD 0192      1001994          JSR     proc96(A5)
   276: 486E FF00      200FF00          PEA     vjy_2(A6)
   27A: 3F3C 0002      '?<..'           PUSH    #2
   27E: 4EAD 011A      100129E          JSR     proc76(A5)
   282: 486E FF00      200FF00          PEA     vjy_2(A6)
   286: 4EAD 0172      1001832          JSR     proc92(A5)
   28A: 2F2D FF50         -$B0 ljy_1    PUSH.L  glob227(A5)
   28E: 4EAD 00A2      1000DAA          JSR     HLock(A5)
   292: 4E5E           'N^'             UNLK    A6
   294: 2E9F           '..'             POP.L   (A7)
   296: 4E75           'Nu'             RTS     

                                 ;-refs -  4/proc236   

   298: 054B 4E46 442F         data170  STR     'KNFD/'

                                 ;-refs -  4/proc236   

   29E: 4B44                   data171  DC.B    'KDEF'

   2A2:                                 QUAL    proc237 ; b# =444  s#4  =proc237

                                 ;-refs -  4/proc247   

   2A2: 4E56 0000      'NV..'  proc237  LINK    A6,#0
   2A6: 486D FA68        -$598          PEA     glob92(A5)
   2AA: 4EAD 00DA      1000E24          JSR     GetDateTime(A5)
   2AE: 4EAD 03CA      3002C16          JSR     proc180(A5)
   2B2: 2F0E           '/.'             PUSH.L  A6
   2B4: 4EBA FF96      400024C          JSR     proc236
   2B8: 7000           'p.'             MOVEQ   #0,D0
   2BA: 2B40 FEE2        -$11E          MOVE.L  D0,glob197(A5)
   2BE: 206D FF50         -$B0          MOVEA.L glob227(A5),A0
   2C2: 2050           ' P'             MOVEA.L (A0),A0
   2C4: 3F28 0014      '?(..'           PUSH    20(A0)
   2C8: 4EAD 00EA      1000F2A          JSR     proc63(A5)
   2CC: 4E5E           'N^'             UNLK    A6
   2CE: 4E75           'Nu'             RTS     

   2D0:                                 QUAL    proc238 ; b# =445  s#4  =proc238

                               vka_1     VEQU  -528
                               vka_2     VEQU  -272
                               param1    VEQU  8
   2D0:                                 VEND    

                                 ;-refs -  4/proc242   

   2D0: 4E56 FDF0      'NV..'  proc238  LINK    A6,#-$210
   2D4: 48E7 0718      'H...'           MOVEM.L D5-D7/A3-A4,-(A7)
   2D8: 286E 0008      2000008          MOVEA.L param1(A6),A4
   2DC: 1B7C 0001 FFA5    -$5B          MOVE.B  #1,glob254(A5)
   2E2: 297C 0000 0936 ')|...6'         MOVE.L  #$936,-4(A4)
   2EA: 206C FFFC      ' l..'           MOVEA.L -4(A4),A0
   2EE: 4A50           'JP'             TST     (A0)
   2F0: 5CC0           '\.'             SGE     D0
   2F2: 2F00           '/.'             PUSH.L  D0
   2F4: 4267           'Bg'             CLR     -(A7)
   2F6: 4EBA FDE0      40000D8          JSR     proc232
   2FA: 121F           '..'             POP.B   D1
   2FC: 201F           ' .'             POP.L   D0
   2FE: 0A01 0001      '....'           EORI.B  #1,D1
   302: C001           '..'             AND.B   D1,D0
   304: 6746           400034C          BEQ.S   lka_1
   306: 267C 0000 010C    $10C          MOVEA.L #BufPtr,A3
   30C: 2A3C 0000 0824 '*<...$'         MOVE.L  #$824,D5
   312: 2045           ' E'             MOVEA.L D5,A0
   314: 2E10           '..'             MOVE.L  (A0),D7
   316: 9E93           '..'             SUB.L   (A3),D7
   318: 486E FDF0      200FDF0          PEA     vka_1(A6)
   31C: 2F07           '/.'             PUSH.L  D7
   31E: 4EAD 018A      10018EE          JSR     proc95(A5)
   322: 487A 00A2      40003C6          PEA     data174     ; ' high'
   326: 486E FEF0      200FEF0          PEA     vka_2(A6)
   32A: 3F3C 0002      '?<..'           PUSH    #2
   32E: 4EAD 011A      100129E          JSR     proc76(A5)
   332: 486E FEF0      200FEF0          PEA     vka_2(A6)
   336: 487A 0086      40003BE          PEA     data172     ; len= 2
   33A: 487A 0082      40003BE          PEA     data172     ; len= 2
   33E: 487A 007E      40003BE          PEA     data172     ; len= 2
   342: A98B           '..'             _ParamText ; (cite0,cite1,cite2,cite3:Str255) 
   344: 3F3C 07EE      '?<..'           PUSH    #$7EE
   348: 4EAD 016A      10017C0          JSR     proc91(A5)
   34C: 42A7           'B.'    lka_1    CLR.L   -(A7)
   34E: 2EB8 0130         $130          MOVE.L  ApplLimit,(A7)
   352: 42A7           'B.'             CLR.L   -(A7)
   354: 2EB8 02AA         $2AA          MOVE.L  ApplZone,(A7)
   358: 201F           ' .'             POP.L   D0
   35A: 2C1F           ',.'             POP.L   D6
   35C: 9C80           '..'             SUB.L   D0,D6
   35E: 0C86 0001 F400 '......'         CMPI.L  #$1F400,D6
   364: 6C0A           4000370          BGE.S   lka_2
   366: 3F3C 07F8      '?<..'           PUSH    #$7F8
   36A: 4EAD 016A      10017C0          JSR     proc91(A5)
   36E: 6044           40003B4          BRA.S   lka_3
   370: 0C86 0005 533A '....S: lka_2    CMPI.L  #$5533A,D6
   376: 6C3C           40003B4          BGE.S   lka_3
   378: 2E3C 0006 30C2 '.<..0.'         MOVE.L  #$630C2,D7
   37E: 9E86           '..'             SUB.L   D6,D7
   380: 486E FDF0      200FDF0          PEA     vka_1(A6)
   384: 2F07           '/.'             PUSH.L  D7
   386: 4EAD 018A      10018EE          JSR     proc95(A5)
   38A: 487A 0034      40003C0          PEA     data173     ; ' low'
   38E: 486E FEF0      200FEF0          PEA     vka_2(A6)
   392: 3F3C 0002      '?<..'           PUSH    #2
   396: 4EAD 011A      100129E          JSR     proc76(A5)
   39A: 486E FEF0      200FEF0          PEA     vka_2(A6)
   39E: 487A 001E      40003BE          PEA     data172     ; len= 2
   3A2: 487A 001A      40003BE          PEA     data172     ; len= 2
   3A6: 487A 0016      40003BE          PEA     data172     ; len= 2
   3AA: A98B           '..'             _ParamText ; (cite0,cite1,cite2,cite3:Str255) 
   3AC: 3F3C 07EE      '?<..'           PUSH    #$7EE
   3B0: 4EAD 016A      10017C0          JSR     proc91(A5)
   3B4: 4CDF 18E0      'L...'  lka_3    MOVEM.L (A7)+,D5-D7/A3-A4
   3B8: 4E5E           'N^'             UNLK    A6
   3BA: 2E9F           '..'             POP.L   (A7)
   3BC: 4E75           'Nu'             RTS     

                                 ;-refs -  4/proc238   

   3BE: '..'                   data172  DC.W    0

                                 ;-refs -  4/proc238   

   3C0: 0420 6C6F 7700         data173  STR     ' low'

                                 ;-refs -  4/proc238   

   3C6: 0520 6869 6768         data174  STR     ' high'

   3CC:                                 QUAL    proc239 ; b# =449  s#4  =proc239

                               param1    VEQU  8
   3CC:                                 VEND    

                                 ;-refs -  4/proc242   

   3CC: 4E56 0000      'NV..'  proc239  LINK    A6,#0
   3D0: 206E 0008      2000008          MOVEA.L param1(A6),A0
   3D4: 217C 0000 0A78 '!|...x'         MOVE.L  #$A78,-4(A0)
   3DC: 226E 0008      2000008          MOVEA.L param1(A6),A1
   3E0: 2069 FFFC      ' i..'           MOVEA.L -4(A1),A0
   3E4: 4A50           'JP'             TST     (A0)
   3E6: 57C0           'W.'             SEQ     D0
   3E8: 4400           'D.'             NEG.B   D0
   3EA: 1B40 FD3A        -$2C6          MOVE.B  D0,glob153(A5)
   3EE: 4E5E           'N^'             UNLK    A6
   3F0: 2E9F           '..'             POP.L   (A7)
   3F2: 4E75           'Nu'             RTS     

   3F4:                                 QUAL    proc240 ; b# =450  s#4  =proc240

                               vkc_1     VEQU  -4
   3F4:                                 VEND    

                                 ;-refs -  4/proc241   

   3F4: 4E56 FFFC      'NV..'  proc240  LINK    A6,#-4
   3F8: 42A7           'B.'             CLR.L   -(A7)
   3FA: AA2A           '.*'             _GetMainDevice ; :GDHandle 
   3FC: 2D5F FFFC      200FFFC          POP.L   vkc_1(A6)
   400: 1B7C 0001 FFA5    -$5B          MOVE.B  #1,glob254(A5)
   406: 206E FFFC      200FFFC          MOVEA.L vkc_1(A6),A0
   40A: 2050           ' P'             MOVEA.L (A0),A0
   40C: 2068 0016      ' h..'           MOVEA.L 22(A0),A0
   410: 2050           ' P'             MOVEA.L (A0),A0
   412: 7001           'p.'             MOVEQ   #1,D0
   414: B068 0020      '.h. '           CMP.W   32(A0),D0
   418: 6C08           4000422          BGE.S   lkc_1
   41A: 3F3C 0802      '?<..'           PUSH    #$802
   41E: 4EAD 016A      10017C0          JSR     proc91(A5)
   422: 4E5E           'N^'    lkc_1    UNLK    A6
   424: 2E9F           '..'             POP.L   (A7)
   426: 4E75           'Nu'             RTS     

   428:                                 QUAL    proc241 ; b# =451  s#4  =proc241

                               vkd_1     VEQU  -18
                               vkd_2     VEQU  -16
                               vkd_3     VEQU  -14
                               vkd_4     VEQU  -7
                               param1    VEQU  8
   428:                                 VEND    

                                 ;-refs -  4/proc242   

   428: 4E56 FFEE      'NV..'  proc241  LINK    A6,#-$12
   42C: 422D FCA7        -$359          CLR.B   glob129(A5)
   430: 2F3C 0001 0000 '/<....'         PUSH.L  #$10000
   436: 486E FFF0      200FFF0          PEA     vkd_2(A6)
   43A: 4EAD 0102      1000FBA          JSR     proc66(A5)
   43E: 3D5F FFEE      200FFEE          POP     vkd_1(A6)
   442: 302E FFF2      200FFF2          MOVE    vkd_3(A6),D0
   446: 5440           'T@'             ADDQ    #2,D0
   448: 6B32           400047C          BMI.S   lkd_4
   44A: 0C40 0006      '.@..'           CMPI    #6,D0
   44E: 6E2C           400047C          BGT.S   lkd_4
   450: D040           '.@'             ADD     D0,D0
   452: 303B 0006      400045A          MOVE    data175(D0.W),D0
   456: 4EFB 0000      400045A          JMP     data175-2(D0.W)
   45A:                                 JBIAS  2
                                 ;-refs -  4/proc241   

   45A: 0010              $468 data175  JUMP    lkd_1
   45C: 0022              $47A          JUMP    lkd_3
   45E: 0024              $47C          JUMP    lkd_4
   460: 0022              $47A          JUMP    lkd_3
   462: 0022              $47A          JUMP    lkd_3
   464: 0022              $47A          JUMP    lkd_3
   466: 001A              $472          JUMP    lkd_2

   468: 3F3C 07DA      '?<..'  lkd_1    PUSH    #$7DA
   46C: 4EAD 016A      10017C0          JSR     proc91(A5)
   470: 6010           4000482          BRA.S   lkd_5
   472: 1B7C 0001 FCA7   -$359 lkd_2    MOVE.B  #1,glob129(A5)
   478: 6008           4000482          BRA.S   lkd_5
   47A: 6006           4000482 lkd_3    BRA.S   lkd_5
   47C: 1B7C 0001 FCA7   -$359 lkd_4    MOVE.B  #1,glob129(A5)
   482: 102E FFF9      200FFF9 lkd_5    MOVE.B  vkd_4(A6),D0
   486: 6708           4000490          BEQ.S   lkd_6
   488: 2F2E 0008      2000008          PUSH.L  param1(A6)
   48C: 4EBA FF66      40003F4          JSR     proc240
   490: 4E5E           'N^'    lkd_6    UNLK    A6
   492: 2E9F           '..'             POP.L   (A7)
   494: 4E75           'Nu'             RTS     

   496:                                 QUAL    proc242 ; b# =453  s#4  =proc242

                                 ;-refs -  4/proc247   

   496: 4E56 FFFC      'NV..'  proc242  LINK    A6,#-4
   49A: 2F0E           '/.'             PUSH.L  A6
   49C: 4EBA FF2E      40003CC          JSR     proc239
   4A0: 2F0E           '/.'             PUSH.L  A6
   4A2: 4EBA FF84      4000428          JSR     proc241
   4A6: 102D FCA7        -$359          MOVE.B  glob129(A5),D0
   4AA: 6708           40004B4          BEQ.S   lke_1
   4AC: 1B7C 0001 FFA5    -$5B          MOVE.B  #1,glob254(A5)
   4B2: 6006           40004BA          BRA.S   lke_2
   4B4: 2F0E           '/.'    lke_1    PUSH.L  A6
   4B6: 4EBA FE18      40002D0          JSR     proc238
   4BA: 4E5E           'N^'    lke_2    UNLK    A6
   4BC: 2E9F           '..'             POP.L   (A7)
   4BE: 4E75           'Nu'             RTS     

   4C0:                                 QUAL    proc243 ; b# =454  s#4  =proc243

                                 ;-refs -  4/proc244   

   4C0: 4E56 FFFC      'NV..'  proc243  LINK    A6,#-4
   4C4: 48E7 0300      'H...'           MOVEM.L D6-D7,-(A7)
   4C8: 302D FA78        -$588          MOVE    glob97(A5),D0
   4CC: 906D FA74        -$58C          SUB     glob95(A5),D0
   4D0: 907C 0200      '.|..'           SUB     #$200,D0
   4D4: 48C0           'H.'             EXT.L   D0
   4D6: 81FC 0002      '....'           DIVS    #2,D0
   4DA: 3E00           '>.'             MOVE    D0,D7
   4DC: DE6D FA74        -$58C          ADD     glob95(A5),D7
   4E0: 3007           '0.'             MOVE    D7,D0
   4E2: 48C0           'H.'             EXT.L   D0
   4E4: 81FC 0020      '... '           DIVS    #32,D0
   4E8: 4840           'H@'             SWAP    D0
   4EA: 4A40           'J@'             TST     D0
   4EC: 9E40           '.@'             SUB     D0,D7
   4EE: 302D FA76        -$58A          MOVE    glob96(A5),D0
   4F2: 906D FA72        -$58E          SUB     glob94(A5),D0
   4F6: 907C 0156      '.|.V'           SUB     #$156,D0
   4FA: 48C0           'H.'             EXT.L   D0
   4FC: 81FC 0002      '....'           DIVS    #2,D0
   500: 3C00           '<.'             MOVE    D0,D6
   502: DC6D FA72        -$58E          ADD     glob94(A5),D6
   506: 2F2D FCA2        -$35E          PUSH.L  glob128(A5)
   50A: 3F07           '?.'             PUSH    D7
   50C: 3F06           '?.'             PUSH    D6
   50E: 4267           'Bg'             CLR     -(A7)
   510: A91B           '..'             _MoveWindow ; (theWindow:WindowPtr; h,v:INTEGER; BringToFront:BOOLEAN) 
   512: 4CDF 00C0      'L...'           MOVEM.L (A7)+,D6-D7
   516: 4E5E           'N^'             UNLK    A6
   518: 2E9F           '..'             POP.L   (A7)
   51A: 4E75           'Nu'             RTS     

   51C:                                 QUAL    proc244 ; b# =455  s#4  =proc244

                                 ;-refs -  4/proc247   

   51C: 4E56 0000      'NV..'  proc244  LINK    A6,#0
   520: 48E7 0018      'H...'           MOVEM.L A3-A4,-(A7)
   524: 102D FCA7        -$359          MOVE.B  glob129(A5),D0
   528: 6764           400058E          BEQ.S   lkg_2
   52A: 42A7           'B.'             CLR.L   -(A7)
   52C: 3F3C 03E8      '?<..'           PUSH    #$3E8
   530: 42A7           'B.'             CLR.L   -(A7)
   532: 42A7           'B.'             CLR.L   -(A7)
   534: A9BD           '..'             _GetNewWindow ; (windowID:INTEGER; wStorage:Ptr; behind:WindowPtr):WindowPtr 
   536: 2B5F FCA2        -$35E          POP.L   glob128(A5)
   53A: 2F0E           '/.'             PUSH.L  A6
   53C: 4EBA FF82      40004C0          JSR     proc243
   540: 2F2D FCA2        -$35E          PUSH.L  glob128(A5)
   544: A915           '..'             _ShowWindow ; (theWindow:WindowPtr) 
   546: 2F2D FCA2        -$35E          PUSH.L  glob128(A5)
   54A: A873           '.s'             _SetPort ; (port:GrafPtr) 
   54C: 486D FAD6        -$52A          PEA     glob98(A5)
   550: A87C           '.|'             _BackPat ; (pat:Pattern) 
   552: 42A7           'B.'             CLR.L   -(A7)
   554: 2F3C 0000 5580 '/<..U.'         PUSH.L  #$5580
   55A: 4EAD 007A      1000D3C          JSR     NewPtr(A5)
   55E: 2B5F FD32        -$2CE          POP.L   glob150(A5)
   562: 42A7           'B.'             CLR.L   -(A7)
   564: 2F3C 0000 5580 '/<..U.'         PUSH.L  #$5580
   56A: 4EAD 007A      1000D3C          JSR     NewPtr(A5)
   56E: 2B5F FD2E        -$2D2          POP.L   glob149(A5)
   572: 42A7           'B.'             CLR.L   -(A7)
   574: 2F3C 0000 1B58 '/<...X'         PUSH.L  #$1B58
   57A: 4EAD 007A      1000D3C          JSR     NewPtr(A5)
   57E: 2B5F FE80        -$180          POP.L   glob159(A5)
   582: 6608           400058C          BNE.S   lkg_1
   584: 487A 021E      40007A4          PEA     data176     ; 'UMEM'
   588: 4EAD 0172      1001832          JSR     proc92(A5)
   58C: 604A           40005D8 lkg_1    BRA.S   lkg_4
   58E: 2B6D FA6C FD32   -$2CE lkg_2    MOVE.L  glob93(A5),glob150(A5)
   594: 202D FA6C        -$594          MOVE.L  glob93(A5),D0
   598: 90BC 0000 4000 '....@.'         SUB.L   #$4000,D0
   59E: 90BC 0000 4000 '....@.'         SUB.L   #$4000,D0
   5A4: 2B40 FD2E        -$2D2          MOVE.L  D0,glob149(A5)
   5A8: 102D FFA5         -$5B          MOVE.B  glob254(A5),D0
   5AC: 6710           40005BE          BEQ.S   lkg_3
   5AE: 202D FD32        -$2CE          MOVE.L  glob150(A5),D0
   5B2: 90BC 0000 1B58 '.....X'         SUB.L   #$1B58,D0
   5B8: 2B40 FE80        -$180          MOVE.L  D0,glob159(A5)
   5BC: 601A           40005D8          BRA.S   lkg_4
   5BE: 42A7           'B.'    lkg_3    CLR.L   -(A7)
   5C0: 2F3C 0000 1B58 '/<...X'         PUSH.L  #$1B58
   5C6: 4EAD 007A      1000D3C          JSR     NewPtr(A5)
   5CA: 2B5F FE80        -$180          POP.L   glob159(A5)
   5CE: 6608           40005D8          BNE.S   lkg_4
   5D0: 487A 01D2      40007A4          PEA     data176     ; 'UMEM'
   5D4: 4EAD 0172      1001832          JSR     proc92(A5)
   5D8: 486D FDA8        -$258 lkg_4    PEA     glob156(A5)
   5DC: A86D           '.m'             _InitPort ; (port:GrafPtr) 
   5DE: 2B6D FD32 FFEC    -$14          MOVE.L  glob150(A5),glob270(A5)
   5E4: 3B7C 0040 FFEA    -$16          MOVE    #64,glob269(A5)
   5EA: 42A7           'B.'             CLR.L   -(A7)
   5EC: 2F3C 0000 5580 '/<..U.'         PUSH.L  #$5580
   5F2: 4EAD 007A      1000D3C          JSR     NewPtr(A5)
   5F6: 2B5F FFA6         -$5A          POP.L   glob255(A5)
   5FA: 6608           4000604          BNE.S   lkg_5
   5FC: 487A 01AC      40007AA          PEA     data177     ; 'MMEM'
   600: 4EAD 0172      1001832          JSR     proc92(A5)
   604: 2B6D FFA6 FFF0    -$10 lkg_5    MOVE.L  glob255(A5),glob271(A5)
   60A: 206D FE80        -$180          MOVEA.L glob159(A5),A0
   60E: 7000           'p.'             MOVEQ   #0,D0
   610: 2080           ' .'             MOVE.L  D0,(A0)
   612: 202D FE80        -$180          MOVE.L  glob159(A5),D0
   616: 5880           'X.'             ADDQ.L  #4,D0
   618: 2B40 FFF4          -$C          MOVE.L  D0,glob272(A5)
   61C: 202D FE80        -$180          MOVE.L  glob159(A5),D0
   620: D0BC 0000 1B58 '.....X'         ADD.L   #$1B58,D0
   626: 2B40 FFF8           -8          MOVE.L  D0,glob273(A5)
   62A: 426D FFFC           -4          CLR     glob274(A5)
   62E: 426D FFFE           -2          CLR     glob275(A5)
   632: 49ED FFC6         -$3A          LEA     glob260(A5),A4
   636: 47EC 0006      'G...'           LEA     6(A4),A3
   63A: 28AD FFEC         -$14          MOVE.L  glob270(A5),(A4)
   63E: 396D FFEA 0004    -$16          MOVE    glob269(A5),4(A4)
   644: 426B 0002      'Bk..'           CLR     2(A3)
   648: 377C 0200 0006 '7|....'         MOVE    #$200,6(A3)
   64E: 4253           'BS'             CLR     (A3)
   650: 377C 0156 0004 '7|.V..'         MOVE    #$156,4(A3)
   656: 486D FFC6         -$3A          PEA     glob260(A5)
   65A: A875           '.u'             _SetPBits ; (bm:BitMap) 
   65C: 486D FFCC         -$34          PEA     glob261(A5)
   660: A8A2           '..'             _PaintRect ; (r:Rect) 
   662: 41ED FFAA         -$56          LEA     glob256(A5),A0
   666: 43ED FFC6         -$3A          LEA     glob260(A5),A1
   66A: 20D9           ' .'             MOVE.L  (A1)+,(A0)+
   66C: 20D9           ' .'             MOVE.L  (A1)+,(A0)+
   66E: 20D9           ' .'             MOVE.L  (A1)+,(A0)+
   670: 3091           '0.'             MOVE    (A1),(A0)
   672: 2B6D FFA6 FFAA    -$56          MOVE.L  glob255(A5),glob256(A5)
   678: 486D FFAA         -$56          PEA     glob256(A5)
   67C: A875           '.u'             _SetPBits ; (bm:BitMap) 
   67E: 486D FFB0         -$50          PEA     glob257(A5)
   682: A8A3           '..'             _EraseRect ; (r:Rect) 
   684: 41ED FFEA         -$16          LEA     glob269(A5),A0
   688: 2B48 FFA0         -$60          MOVE.L  A0,glob253(A5)
   68C: 102D FFA5         -$5B          MOVE.B  glob254(A5),D0
   690: 6776           4000708          BEQ.S   lkg_7
   692: 2B6D FD2E FFD6    -$2A          MOVE.L  glob149(A5),glob263(A5)
   698: 3B7C 0040 FFD4    -$2C          MOVE    #64,glob262(A5)
   69E: 2B6D FFA6 FFDA    -$26          MOVE.L  glob255(A5),glob264(A5)
   6A4: 42A7           'B.'             CLR.L   -(A7)
   6A6: 2F3C 0000 1B58 '/<...X'         PUSH.L  #$1B58
   6AC: 4EAD 007A      1000D3C          JSR     NewPtr(A5)
   6B0: 2B5F FE84        -$17C          POP.L   glob160(A5)
   6B4: 6608           40006BE          BNE.S   lkg_6
   6B6: 487A 00EC      40007A4          PEA     data176     ; 'UMEM'
   6BA: 4EAD 0172      1001832          JSR     proc92(A5)
   6BE: 206D FE84        -$17C lkg_6    MOVEA.L glob160(A5),A0
   6C2: 7000           'p.'             MOVEQ   #0,D0
   6C4: 2080           ' .'             MOVE.L  D0,(A0)
   6C6: 202D FE84        -$17C          MOVE.L  glob160(A5),D0
   6CA: 5880           'X.'             ADDQ.L  #4,D0
   6CC: 2B40 FFDE         -$22          MOVE.L  D0,glob265(A5)
   6D0: 202D FE84        -$17C          MOVE.L  glob160(A5),D0
   6D4: D0BC 0000 1B58 '.....X'         ADD.L   #$1B58,D0
   6DA: 2B40 FFE2         -$1E          MOVE.L  D0,glob266(A5)
   6DE: 426D FFE6         -$1A          CLR     glob267(A5)
   6E2: 426D FFE8         -$18          CLR     glob268(A5)
   6E6: 41ED FFB8         -$48          LEA     glob258(A5),A0
   6EA: 43ED FFC6         -$3A          LEA     glob260(A5),A1
   6EE: 20D9           ' .'             MOVE.L  (A1)+,(A0)+
   6F0: 20D9           ' .'             MOVE.L  (A1)+,(A0)+
   6F2: 20D9           ' .'             MOVE.L  (A1)+,(A0)+
   6F4: 3091           '0.'             MOVE    (A1),(A0)
   6F6: 2B6D FFD6 FFB8    -$48          MOVE.L  glob263(A5),glob258(A5)
   6FC: 486D FFB8         -$48          PEA     glob258(A5)
   700: A875           '.u'             _SetPBits ; (bm:BitMap) 
   702: 486D FFBE         -$42          PEA     glob259(A5)
   706: A8A2           '..'             _PaintRect ; (r:Rect) 
   708: 42A7           'B.'    lkg_7    CLR.L   -(A7)
   70A: 700E           'p.'             MOVEQ   #14,D0
   70C: 2F00           '/.'             PUSH.L  D0
   70E: 4EAD 007A      1000D3C          JSR     NewPtr(A5)
   712: 2B5F FF9C         -$64          POP.L   glob252(A5)
   716: 286D FF9C         -$64          MOVEA.L glob252(A5),A4
   71A: 397C 0001 0004 '9|....'         MOVE    #1,4(A4)
   720: 102D FFA5         -$5B          MOVE.B  glob254(A5),D0
   724: 671A           4000740          BEQ.S   lkg_9
   726: 102D FCA7        -$359          MOVE.B  glob129(A5),D0
   72A: 670A           4000736          BEQ.S   lkg_8
   72C: 41ED 032A      30007CE          LEA     proc157(A5),A0
   730: 2948 0006      ')H..'           MOVE.L  A0,6(A4)
   734: 6012           4000748          BRA.S   lkg_10
   736: 41ED 031A      300072E lkg_8    LEA     proc155(A5),A0
   73A: 2948 0006      ')H..'           MOVE.L  A0,6(A4)
   73E: 6008           4000748          BRA.S   lkg_10
   740: 41ED 0322      3000796 lkg_9    LEA     proc156(A5),A0
   744: 2948 0006      ')H..'           MOVE.L  A0,6(A4)
   748: 397C 0002 000A '9|.... lkg_10   MOVE    #2,10(A4)
   74E: 426C 000C      'Bl..'           CLR     12(A4)
   752: 7000           'p.'             MOVEQ   #0,D0
   754: 2B40 FF8E         -$72          MOVE.L  D0,glob248(A5)
   758: 426D FF8C         -$74          CLR     glob247(A5)
   75C: 42A7           'B.'             CLR.L   -(A7)
   75E: 700E           'p.'             MOVEQ   #14,D0
   760: 2F00           '/.'             PUSH.L  D0
   762: 4EAD 007A      1000D3C          JSR     NewPtr(A5)
   766: 2B5F FF98         -$68          POP.L   glob251(A5)
   76A: 286D FF98         -$68          MOVEA.L glob251(A5),A4
   76E: 397C 0001 0004 '9|....'         MOVE    #1,4(A4)
   774: 41ED 0312      30006F0          LEA     proc154(A5),A0
   778: 2948 0006      ')H..'           MOVE.L  A0,6(A4)
   77C: 397C 0002 000A '9|....'         MOVE    #2,10(A4)
   782: 426C 000C      'Bl..'           CLR     12(A4)
   786: 7000           'p.'             MOVEQ   #0,D0
   788: 2B40 FF94         -$6C          MOVE.L  D0,glob250(A5)
   78C: 422D FF87         -$79          CLR.B   glob243(A5)
   790: 3B7C 0155 FF88    -$78          MOVE    #$155,glob244(A5)
   796: 422D FF8A         -$76          CLR.B   glob245(A5)
   79A: 4CDF 1800      'L...'           MOVEM.L (A7)+,A3-A4
   79E: 4E5E           'N^'             UNLK    A6
   7A0: 2E9F           '..'             POP.L   (A7)
   7A2: 4E75           'Nu'             RTS     

                                 ;-refs -  4/proc244   

   7A4: 0455 4D45 4D00         data176  STR     'UMEM'

                                 ;-refs -  4/proc244   

   7AA: 044D 4D45 4D00         data177  STR     'MMEM'

   7B0:                                 QUAL    proc245 ; b# =458  s#4  =proc245

                                 ;-refs -  4/proc247   

   7B0: 4E56 FFFC      'NV..'  proc245  LINK    A6,#-4
   7B4: 486D FE14        -$1EC          PEA     glob158(A5)
   7B8: A86F           '.o'             _OpenPort ; (port:GrafPtr) 
   7BA: 3F3C 00C9      '?<..'           PUSH    #$C9
   7BE: A887           '..'             _TextFont ; (font:FontCode) 
   7C0: 3F3C 0009      '?<..'           PUSH    #9
   7C4: A88A           '..'             _TextSize ; (size:INTEGER) 
   7C6: 3F3C 0002      '?<..'           PUSH    #2
   7CA: A889           '..'             _TextMode ; (mode:INTEGER{|XferMode}) 
   7CC: 4E5E           'N^'             UNLK    A6
   7CE: 2E9F           '..'             POP.L   (A7)
   7D0: 4E75           'Nu'             RTS     

   7D2:                                 QUAL    proc246 ; b# =459  s#4  =proc246

                                 ;-refs -  4/proc247   

   7D2: 4E56 0000      'NV..'  proc246  LINK    A6,#0
   7D6: 2F3C 0000 0200 '/<....'         PUSH.L  #$200
   7DC: 2F3C 0000 0100 '/<....'         PUSH.L  #$100
   7E2: 4EAD 010A      10011B6          JSR     proc72(A5)
   7E6: 302D FA78        -$588          MOVE    glob97(A5),D0
   7EA: 906D FA74        -$58C          SUB     glob95(A5),D0
   7EE: 48C0           'H.'             EXT.L   D0
   7F0: 2F00           '/.'             PUSH.L  D0
   7F2: 4EAD 0112      10011EA          JSR     %I_DIV4(A5)
   7F6: 201F           ' .'             POP.L   D0
   7F8: 3B40 FCAA        -$356          MOVE    D0,glob131(A5)
   7FC: 2F3C 0000 0200 '/<....'         PUSH.L  #$200
   802: 2F3C 0000 0100 '/<....'         PUSH.L  #$100
   808: 4EAD 010A      10011B6          JSR     proc72(A5)
   80C: 302D FA76        -$58A          MOVE    glob96(A5),D0
   810: 906D FA72        -$58E          SUB     glob94(A5),D0
   814: 48C0           'H.'             EXT.L   D0
   816: 2F00           '/.'             PUSH.L  D0
   818: 4EAD 0112      10011EA          JSR     %I_DIV4(A5)
   81C: 201F           ' .'             POP.L   D0
   81E: 3B40 FCA8        -$358          MOVE    D0,glob130(A5)
   822: 4E5E           'N^'             UNLK    A6
   824: 2E9F           '..'             POP.L   (A7)
   826: 4E75           'Nu'             RTS     

   828:                                 QUAL    proc247 ; b# =460  s#4  =proc247

                               vkj_1     VEQU  -6
                               vkj_2     VEQU  -2
   828:                                 VEND    

                                 ;-refs -  1/code      

   828: 4E56 FFFA      'NV..'  proc247  LINK    A6,#-6
   82C: 4267           'Bg'             CLR     -(A7)
   82E: A03F           '.?'             _InitUtil ; :D0\OSErr 
   830: 3E80           '>.'             MOVE    D0,(A7)
   832: 3D5F FFFE      200FFFE          POP     vkj_2(A6)
   836: 422D FD11        -$2EF          CLR.B   glob142(A5)
   83A: 422D FD10        -$2F0          CLR.B   glob141(A5)
   83E: 7000           'p.'             MOVEQ   #0,D0
   840: 2B40 FFA6         -$5A          MOVE.L  D0,glob255(A5)
   844: 42A7           'B.'             CLR.L   -(A7)
   846: 4EAD 006A      1000AD6          JSR     FreeMem(A5)
   84A: 2D5F FFFA      200FFFA          POP.L   vkj_1(A6)
   84E: 486D FAE6        -$51A          PEA     glob100(A5)
   852: A86E           '.n'             _InitGraf ; (globalPtr:Ptr) 
   854: 486D FDA8        -$258          PEA     glob156(A5)
   858: A86F           '.o'             _OpenPort ; (port:GrafPtr) 
   85A: A8FE           '..'             _InitFonts  
   85C: 2F3C 0000 FFFF '/<....'         PUSH.L  #$FFFF
   862: 201F           ' .'             POP.L   D0
   864: A032           '.2'             _FlushEvents ; (whichMask,stopMask:EventMask) 
   866: A912           '..'             _InitWindows  
   868: A930           '.0'             _InitMenus  
   86A: A9CC           '..'             _TeInit  
   86C: 42A7           'B.'             CLR.L   -(A7)
   86E: A97B           '.{'             _InitDialogs ; (resumeProc:ProcPtr) 
   870: 42A7           'B.'             CLR.L   -(A7)
   872: A98C           '..'             _ErrorSound ; (sound:ProcPtr) 
   874: A850           '.P'             _InitCursor  
   876: 2F0E           '/.'             PUSH.L  A6
   878: 4EBA FC1C      4000496          JSR     proc242
   87C: 486D FD38        -$2C8          PEA     glob152(A5)
   880: 4EAD 00F2      1000FA6          JSR     GetSoundVol(A5)
   884: 4267           'Bg'             CLR     -(A7)
   886: 4EAD 00EA      1000F2A          JSR     proc63(A5)
   88A: 4EBA F7F2      400007E          JSR     proc230
   88E: 1B7C 0001 FD10   -$2F0          MOVE.B  #1,glob141(A5)
   894: 426D FD16        -$2EA          CLR     glob144(A5)
   898: 426D FD18        -$2E8          CLR     glob145(A5)
   89C: 487A 0052      40008F0          PEA     data178     ; 'BDC Prefs'
   8A0: 486D FD18        -$2E8          PEA     glob145(A5)
   8A4: 4EAD 019A      1001B76          JSR     proc99(A5)
   8A8: 4EBA F7F6      40000A0          JSR     proc231
   8AC: 2F0E           '/.'             PUSH.L  A6
   8AE: 4EBA FC6C      400051C          JSR     proc244
   8B2: 102D FCA7        -$359          MOVE.B  glob129(A5),D0
   8B6: 660A           40008C2          BNE.S   lkj_1
   8B8: 4EBA F746      4000000          JSR     proc228
   8BC: 1B7C 0001 FD11   -$2EF          MOVE.B  #1,glob142(A5)
   8C2: 486D FD3C        -$2C4 lkj_1    PEA     glob155(A5)
   8C6: A86F           '.o'             _OpenPort ; (port:GrafPtr) 
   8C8: 2F0E           '/.'             PUSH.L  A6
   8CA: 4EBA FEE4      40007B0          JSR     proc245
   8CE: 486D FDA8        -$258          PEA     glob156(A5)
   8D2: A873           '.s'             _SetPort ; (port:GrafPtr) 
   8D4: 3F3C 00E6      '?<..'           PUSH    #$E6
   8D8: 4EAD 00FA      1000FB2          JSR     proc65(A5)
   8DC: A852           '.R'             _HideCursor  
   8DE: 4EAD 0142      1001440          JSR     proc82(A5)
   8E2: 4EBA F9BE      40002A2          JSR     proc237
   8E6: 2F0E           '/.'             PUSH.L  A6
   8E8: 4EBA FEE8      40007D2          JSR     proc246
   8EC: 4E5E           'N^'             UNLK    A6
   8EE: 4E75           'Nu'             RTS     

                                 ;-refs -  4/proc247   

   8F0: 0942 4443 2050 7265    data178  STR     'BDC Prefs'

                                 ;-refs -  4/proc233   

   8FA: '.............)..'     data179  DC.W    0,$C10,0,0,7,0,$1029,$6FA
   90A: '(%_Static_Constr'              DC.W    $2825,$5F53,$7461,$7469,$635F,$436F,$6E73,$7472
   91A: 'uctor_Destructor'              DC.W    $7563,$746F,$725F,$4465,$7374,$7275,$6374,$6F72
   92A: '_Pointers.).$(%_'              DC.W    $5F50,$6F69,$6E74,$6572,$7310,$2907,$2428,$255F
   93A: 'Static_Construct'              DC.W    $5374,$6174,$6963,$5F43,$6F6E,$7374,$7275,$6374
   94A: 'or_Destructor_Po'              DC.W    $6F72,$5F44,$6573,$7472,$7563,$746F,$725F,$506F
   95A: 'inters..U....VSH'              DC.W    $696E,$7465,$7273,$107,$5501,$101A,$756,$5348
   96A: '.......z........'              DC.W    0,0,$FFFF,$FB7A,$FFFF,$FB82,$8100,0
   97A: '........`.\`.``.'              DC.W    0,0,$FFFF,$FB86,$6007,$5C60,$760,$6007
   98A: 'l.....%A5i'                    DC.W    $6C00,0,$8FE,$2541,$3569

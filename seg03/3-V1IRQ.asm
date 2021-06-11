   72E:                                 QUAL    proc148 ; b# =300  s#3  =proc148

                                 ;-refs -  4/proc236   

   72E: 2F0D           '/.'    proc148  PUSH.L  A5
   730: 2A78 0904         $904          MOVEA.L CurrentA5,A5
   734: 4A2D FF8B         -$75          TST.B   glob239(A5)
   738: 6606           3000740          BNE.S   lgw_1
   73A: 4A2D FF93         -$6D          TST.B   glob242(A5)
   73E: 6742           3000782          BEQ.S   lgw_4
   740: 2078 01D4         $1D4 lgw_1    MOVEA.L VIA,A0
   744: D0FC 1E00      '....'           ADDA.W  #$1E00,A0
   748: 202D FFA0         -$60          MOVE.L  glob246(A5),D0
   74C: 43ED FFEA         -$16          LEA     glob262(A5),A1
   750: B3C0           '..'             CMPA.L  D0,A1
   752: 6612           3000766          BNE.S   lgw_2
   754: 43ED FFD4         -$2C          LEA     glob255(A5),A1
   758: 2B49 FFA0         -$60          MOVE.L  A1,glob246(A5)
   75C: 08D0 0006      '....'           BSET    #6,(A0)
   760: 2B49 FF94         -$6C          MOVE.L  A1,glob243(A5)
   764: 6010           3000776          BRA.S   lgw_3
   766: 43ED FFEA         -$16 lgw_2    LEA     glob262(A5),A1
   76A: 2B49 FFA0         -$60          MOVE.L  A1,glob246(A5)
   76E: 0890 0006      '....'           BCLR    #6,(A0)
   772: 2B49 FF94         -$6C          MOVE.L  A1,glob243(A5)
   776: 206D FF9C         -$64 lgw_3    MOVEA.L glob245(A5),A0
   77A: 317C 0005 000A '1|....'         MOVE    #5,10(A0)
   780: 600E           3000790          BRA.S   lgw_5
   782: 206D FF9C         -$64 lgw_4    MOVEA.L glob245(A5),A0
   786: 317C 0001 000A '1|....'         MOVE    #1,10(A0)
   78C: 526D FF8C         -$74          ADDQ    #1,glob240(A5)
   790: 4CDF 2000      'L. .'  lgw_5    MOVEM.L (A7)+,A5
   794: 4E75           'Nu'             RTS     

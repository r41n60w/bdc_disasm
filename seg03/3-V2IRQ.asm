   6F0:                                 QUAL    proc147 ; b# =299  s#3  =proc147

                                 ;-refs -  4/proc236   

   6F0: 2F0D           '/.'    proc147  PUSH.L  A5
   6F2: 2A78 0904         $904          MOVEA.L CurrentA5,A5
   6F6: 226D FF94         -$6C          MOVEA.L glob243(A5),A1
   6FA: B2FC 0000      '....'           CMPA.W  #0,A1
   6FE: 6720           3000720          BEQ.S   lgv_2
   700: 206D FF98         -$68          MOVEA.L glob244(A5),A0
   704: 317C 0005 000A '1|....'         MOVE    #5,10(A0)
   70A: 202D FF8E         -$72          MOVE.L  glob241(A5),D0
   70E: 6704           3000714          BEQ.S   lgv_1
   710: 2040           ' @'             MOVEA.L D0,A0
   712: 4E90           'N.'             JSR     (A0)
   714: 6182           3000698 lgv_1    BSR     proc146
   716: 42AD FF94         -$6C          CLR.L   glob243(A5)
   71A: 51ED FF93         -$6D          SF      glob242(A5)
   71E: 600A           300072A          BRA.S   lgv_3
   720: 206D FF98         -$68 lgv_2    MOVEA.L glob244(A5),A0
   724: 317C 0001 000A '1|....'         MOVE    #1,10(A0)
   72A: 2A5F           '*_'    lgv_3    POP.L   A5
   72C: 4E75           'Nu'             RTS     

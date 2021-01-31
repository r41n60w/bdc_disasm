/*  a031  */
pascal bool	_GetOSEvent(_D0 short		mask,
		       _out _A0 EventRecord    *theEvent);

PROCEDURE FlushEvents (whichMask: Integer; stopMask: Integer);

pascal void	FlushEvents(_D0.W	short	whichMask,
			    _D0.hiW	short	stopMask);

System-Based Installation and Removal Routines

pascal _D0 OSErr	VRemove(_A0 QElemPtr	vblTaskPtr);
pascal _D0 OSErr	VInstall(_A0 QElemPtr	vblTaskPtr);
pascal OSErr VRemove(QElemPtr vblTaskPtr);

pascal void MaxApplZone         (void);
pascal void MoreMasters         (void);

/*  a040
 *  a440	, SYS	*/
pascal void _ResrvMem (_D0 Size cbNeeded);

pascal void Delay(unsigned long   numTicks,
		  unsigned long  *finalTicks);

/*  a146  (old, single tbl)
    a346  , NEWOS
    a746  , NEWTOOL	*/
pascal void *GetTrapAddress
	(unsigned short  trapNum);

/*  a047  (old, single tbl)
    a247  , NEWOS
    a647  , NEWTOOL	*/
pascal void SetTrapAddress
	(void		*trapAddr,
         unsigned short  trapNum);

newOS          EQU   $200    
// access Operating System trap dispatch table;
newTool        EQU   $600    
// access Toolbox trap dispatch table
1
#pragma parameter __A0 GetTrapAddress(__D0)
EXTERN_API( UniversalProcPtr )
GetTrapAddress(UInt16 trapNum)
ONEWORDINLINE(0xA146);


EXTERN_API( void )
SetTrapAddress(
  UniversalProcPtr   trapAddr,
  UInt16             trapNum)      
ONEWORDINLINE(0xA047);

_GetTrapAddress             = 0xA146,
    _SetTrapAddress             = 0xA047,
    _GetOSTrapAddress           = 0xA346,
    _SetOSTrapAddress           = 0xA247,
    _GetToolTrapAddress         = 0xA746,
    _SetToolTrapAddress         = 0xA647,
    _GetToolBoxTrapAddress      = 0xA746,
    _SetToolBoxTrapAddress      = 0xA647,

pascal OSErr InitUtil      (void);

pascal void HPurge		(Handle h);
pascal void HNoPurge		(Handle h);

pascal Size CompactMem		(Size cbNeeded);

pascal OSErr PBOpenWD		(WDPBPtr paramBlock, Boolean async);
pascal OSErr PBGetFCBInfo		(FCBPBPtr paramBlock, Boolean async);

pascal void MaxApplZone		(void);

pascal void MoveHHi		(Handle h);
pascal void HLockHi		(Handle h)

pascal OSErr SysEnvirons(
	short versionRequested, 
	SysEnvRec *theWorld);

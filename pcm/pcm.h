typedef struct pcminfo_t	{
/* 0 */	uint32_t	map;
/* 4 */	uint32_t	map0;
/* 8 */	uint32_t	loop;
/*12 */	off_t		wrpw;
/*14 */	off_t		wrap;
/*16 */	uint8_t		last;
	int			: 8;
/*18 */	struct VBLTask	irq; //[14]
/*32 */	struct PCMSlot	{
		uint8_t		*pcm;
		uint8_t		*tail;
		uint8_t		*lphd;
		uint8_t		*head;
	}		slot[32];
/*544*/	int8_t		id[100];
/*644*/	Handle		h[100];
/*1044*/ bool16_t	load;
} PCMInfo; //[1046]


typedef struct VBLTask {
/* 0 */	struct VBLTask *qLink;	//Queue link ptr
/* 4 */	short		qType;	//Always 1 (VType)
/* 6 */	ProcPtr		vblAddr;//Task to be scheduled
/*10 */	short		vblCount;//Delay in ticks
/*12 */	short		vblPhase;//Phase
} VBLTask; //[14]

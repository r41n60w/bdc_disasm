typedef char	*Ptr, **Handle;
typedef char	Pattern[8];

typedef struct Point	{
	short		v;    /* vertical coordinate */
	short		h;    /* horizontal coordinate */
} Point;

typedef struct Rect {
	short		top;     /* upper boundary of rectangle */
	short		left;    /* left boundary of rectangle */
	short		bottom;  /* lower boundary of rectangle */
	short		right;   /* right boundary of rectangle */
} Rect;

typedef struct Region	{
	short		rgnSize;	/* size in bytes */
	Rect		rgnBBox;	/* enclosing rectangle */
	/* more data if not rectangular */
} Region, *RgnPtr, **RgnHandle;

struct BitMap	{
	Ptr		baseAddr;	/* pointer to bit image */
	short		rowBytes;	/* row width */
	Rect		bounds;		/* boundary rectangle */
};

struct GrafPort	{   	            /* basic graphics port */
	short		device;     /* device-specific info */
	BitMap		portBits;   /* bitmap */
	Rect		portRect;   /* port rectangle */
	RgnHandle	visRgn;     /* visible region */
	RgnHandle	clipRgn;    /* clipping region */
	Pattern		bkPat;      /* background pattern */
	Pattern		fillPat;    /* fill pattern */
	Point		pnLoc;      /* pen location */
	Point		pnSize;     /* pen size */
	short		pnMode;     /* pattern mode */
	Pattern		pnPat;      /* pen pattern */
	short		pnVis;      /* pen visibility */
	short		txFont;     /* font number for text */
	Style		txFace;     /* text's font style */
	char		filler;
	short		txMode;     /* source mode for text */
	short		txSize;     /* font size for text */
	Fixed		spExtra;    /* extra space */
	long		fgColor;    /* foreground color */
	long		bkColor;    /* background color */
	short		colrBit;    /* color bit */
	short		patStretch; /* used intn.y */
	Handle		picSave;    /* pic. being saved, intn.y */
	Handle		rgnSave;    /* region being saved, int.y */
	Handle		polySave;   /* polyg. being saved, int.y */
	QDProcsPtr	grafProcs;  /* lowlevel drawing routines */
} GrafPort, *GrafPtr;
typedef GrafPtr WindowPtr;


pascal void InitGraf            (void *globalPtr);
/* Opening and Closing Basic Graphics Ports */
pascal void OpenPort            (GrafPtr port);
pascal void InitPort            (GrafPtr port); 
pascal void ClosePort           (GrafPtr port);
/* Saving and Restoring Graphics Ports */
pascal void GetPort             (GrafPtr *port);
pascal void SetPort             (GrafPtr port);
/* Managing Bitmaps, Port Rectangles, and Clipping Regions */
pascal void ScrollRect          (const Rect *r, short dh, short dv,
					RgnHandle updateRgn);
pascal void SetOrigin           (short h, short v);
pascal void PortSize            (short width, short height);
pascal void MovePortTo          (short leftGlobal,
				 short topGlobal);
pascal void GetClip             (RgnHandle rgn);
pascal void SetClip             (RgnHandle rgn);
pascal void ClipRect            (const Rect *r);
pascal OSErr BitMapToRegion     (RgnHandle region,
					const BitMap *bMap); 
pascal void SetPortBits         (const BitMap *bm);
/* Manipulating Points in Graphics Ports */
pascal void GlobalToLocal       (Point *pt);
pascal void LocalToGlobal       (Point *pt);
pascal void AddPt               (Point src, Point *dst);
pascal void SubPt               (Point src, Point *dst);
pascal long DeltaPoint          (Point ptA, Point ptB);
pascal void SetPt               (Point *pt, short h, short v);
pascal Boolean EqualPt          (Point pt1, Point pt2);
pascal Boolean GetPixel         (short h, short v);

#include <stdio.h>
#include <string.h>
#define OP_EOF		(0x80)

void	unpack_spr(const char	*packed,
		   char		*bmp,
		   short	 packlen,
		   short	 bmplen);

typedef struct header_t	{
	short		type;
	short		nfr;
	short		cols;
	short		rows;
	short		frlen;

	short		x;
	short		y;
} header_t;

static	header_t	head;

int	main(int argc, char *argv[])	{

	short		*hp = &(head.type);
	int		 f = 7, rw, len;
	char		 op, ch;
	int		 arg, b, mask;

	while(f--)
		*hp++ = (getchar() << 8) | getchar();
	rw = (head.cols << 4);
	len = (head.nfr * head.frlen) * 2;

	fprintf(stderr, "Header:\ttype %4d, %2d frames\n",
		head.type, head.nfr);
	fprintf(stderr, "\t%3dpx x %3dpx [%4d bytes]\n",
		rw, head.rows, head.frlen);
	fprintf(stderr, "\tunpacked size: %6d bytes\n\n", len);

	printf("P1\n%d %d\n", rw, head.rows*head.nfr*2);

	while((op = getchar()) != OP_EOF)
		if(op & 0x80)	{
			/* OP_BLACK: set 7+x black px */
			/* OP_WHITE: set 7+x white px */
			ch  = (op & 0x40) ? '1' : '0';
			arg = (op & 0x3f) + 7;
			while(arg--)
				putchar(ch);
		} else
			/* OP_BLIT: set 7 px to arg */
			for(mask = 0x40; mask; mask >>= 1)
				putchar((op & mask)
					? '1' : '0');
	/* OP_EOF ($80) */
	return 0;
}

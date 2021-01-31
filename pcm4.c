/* pcm4.c - BDC sound unpacker
 *
 * r41n60w 31/01/2021
 * */

#include <stdio.h>
#include <unistd.h>
#include <string.h>

typedef struct pcm4_t	{
	char		magic[2];
	char		UNKNOWN[4];
	signed char	pack4v[16];
} pcm4_t;

static pcm4_t		header;


int main(int argc, char *argv[])  {
	
	int		pk, headc, datac = 0;
	unsigned char	pcm;

	void		*hp = &header;
	signed char	*tbl = header.pack4v;

	headc = read(0, hp, sizeof header);
	if(headc != sizeof header) {
		fprintf(stderr, "error:   header not read\n");
		return 1;
	}
	if (header.magic[0] != 0x07 || header.magic[1] != 0xd0) {
		fprintf(stderr, "error:   bad magic number\n");
		return 1;
	}

	pcm = 0x80u; /* init at 0 */

	while((pk = getchar()) != EOF) {
		pcm += tbl[pk>>4];	
		putchar(pcm);	
		pcm += tbl[pk & 0x0f];	
		putchar(pcm);	
		++datac;
	}

	fprintf(stderr, "%d packed bytes read\n", datac);
	return 0;
}

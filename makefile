CC=gcc
CFLAGS=-Wall
LDFLAGS=-lm -lmagic -lgd

pisstv: pisstv.c
	$(CC) pisstv.c -o pisstv $(LDFLAGS)

clean:
	rm -f pisstv 

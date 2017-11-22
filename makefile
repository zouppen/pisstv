CC=gcc
CFLAGS=-Wall
LDFLAGS=-lm -lmagic -lgd

pisstvpp: pisstvpp.c
	$(CC) pisstv.c -o pisstv $(LDFLAGS)

clean:
	rm -f pisstv 

CC=gcc
CFLAGS=-Wall
LDFLAGS=-lm -lmagic -lgd

pisstvpp: pisstvpp.c
	$(CC) pisstvpp.c -o pisstvpp $(LDFLAGS)

clean:
	rm -f pisstvpp 

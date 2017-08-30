CC = gcc
CFLAGS= -g -Wall
INCLUDE = -L /usr/lib/x86_64-linux-gnu
LIBS = -lX11 -lXext -lXrender

all:
	${CC} xwinwrap.c ${CFLAGS} ${INCLUDE} ${LIBS} -o xwinwrap

install:
	install xwinwrap '/usr/local/bin'

uninstall:
	rm -f '/usr/local/bin/xwinwrap'

clean:
	rm -f xwinwrap

VERSION=1.1

DESTDIR ?=
PREFIX ?= /usr/local

udpbroadcastrelay: main.c
	$(CC) $(CFLAGS) -g main.c -o udpbroadcastrelay $(LDFLAGS)

clean:
	rm -f udpbroadcastrelay

all: udpbroadcastrelay

install:
	install -Dpm0755 -t $(DESTDIR)$(PREFIX)/sbin/ udpbroadcastrelay

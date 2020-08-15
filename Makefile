CFLAGS=-lncurses
PREFIX=/usr
.PHONY: all
all: smutt genconf/genconf
clean:
	rm -f smutt genconf
install: all
	cp smutt $(PREFIX)/bin/smutt
	cp genconf/genconf $(PREFIX)/bin/smutt.genconf
uninstall:
	rm $(PREFIX)/bin/smutt $(PREFIX)/bin/smutt.genconf

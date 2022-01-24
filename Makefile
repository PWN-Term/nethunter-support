PREFIX ?= /data/data/hilled.pwnterm/files/usr

#
# hid-keyboard is from: https://gitlab.com/kalilinux/nethunter/apps/kali-nethunter-app/-/blob/master/assets/scripts/bin/hid-keyboard-arm64
#

all: compile
	@echo Run \'make install\' to install nethunter-support.

compile:
	make -C hid-keyboard

install:
	@mkdir -p $(PREFIX)/bin
	@cp -f bin/* $(PREFIX)/bin
	@cp -f hid-keyboard/hid-keyboard $(PREFIX)/bin
	@chmod +x bin/*

.PHONY: clean

clean:
	make clean -C hid-keyboard

uninstall:
	@rm -rf $(PREFIX)/bin/bootkali* $(PREFIX)/bin/chrootmgr $(PREFIX)/bin/hid-keyboard $(PREFIX)/bin/kali $(PREFIX)/bin/killkali

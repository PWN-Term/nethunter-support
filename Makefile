PREFIX ?= /data/data/hilled.pwnterm/files/usr

#
# hid-keyboard is from: https://gitlab.com/kalilinux/nethunter/apps/kali-nethunter-app/-/blob/master/assets/scripts/bin/hid-keyboard-arm64
#

all:
	@echo Run \'make install\' to install nethunter-support.

install:
	@echo "[*]: Making sbin / bin folders"
	@mkdir -p $(PREFIX)/bin
	@mkdir -p $(PREFIX)/sbin
	@echo "[*]: Chmod +x stuff"
	@chmod +x sbin/*
	@echo "[*]: Moving stuff to .../bin"
	@cp -p sbin/* $(PREFIX)/bin

uninstall:
	@rm -rf $(PREFIX)/bin/bootkali* $(PREFIX)/bin/busybox_nh $(PREFIX)/bin/chrootmgr $(PREFIX)/bin/hid-keyboard $(PREFIX)/bin/kali $(PREFIX)/bin/killkali

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
	@echo "[*]: Moving stuff to .../sbin"
	@cp -p sbin/* $(PREFIX)/sbin

uninstall:
	@rm -rf $(PREFIX)/sbin/bootkali* $(PREFIX)/sbin/busybox_nh $(PREFIX)/sbin/chrootmgr $(PREFIX)/sbin/hid-keyboard $(PREFIX)/sbin/kali $(PREFIX)/sbin/killkali

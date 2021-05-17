PREFIX ?= /data/data/hilled.pwnterm/files/usr

#
# hid-keyboard is from: https://gitlab.com/kalilinux/nethunter/apps/kali-nethunter-app/-/blob/master/assets/scripts/bin/hid-keyboard-arm64
#

all:
	@echo Run \'make install\' to install nethunter-support.

install:
	@mkdir -p $(PREFIX)/bin
	@cp -p sbin/kali $(PREFIX)/sbin/kali
	@cp -p sbin/hid-keyboard $(PREFIX)/sbin/hid-keyboard
	@chmod +x $(PREFIX)/sbin/kali
	@chmod +x $(PREFIX)/sbin/hid-keyboard

uninstall:
	@rm -rf $(PREFIX)/etc/bash.motd
	@rm -rf $(PREFIX)/etc/bash.motd

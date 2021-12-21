BITMAPFONT2TTF := $(shell which bitmapfont2ttf)

.PHONY: default
default: fonts

.PHONY: fonts
fonts:
	bin/genfonts
	bin/genfonts --windows

.PHONY: fixed
fixed:
	bin/genfonts misc-fixed
	bin/genfonts --windows misc-fixed

.PHONY: 6x13
6x13:
	bin/genfonts misc-fixed-6x13
	bin/genfonts --windows misc-fixed-6x13

.PHONY: clean
clean:
	/bin/rm sfd/*/*.sfd ttf/*/*.ttf windows/sfd/*/*.sfd windows/ttf/*/*.ttf || true

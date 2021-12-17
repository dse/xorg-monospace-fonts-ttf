BITMAPFONT2TTF := $(shell which bitmapfont2ttf)

.PHONY: default
default: fonts

.PHONY: fonts
fonts:
	bin/genfonts

.PHONY: fixed
fixed:
	bin/genfonts misc-fixed

BITMAPFONT2TTF  := $(shell which bitmapfont2ttf)

.PHONY: default
default: fonts

.PHONY: fonts
fonts:
	@(tput bold; echo; echo "Have you ran 'git pull --recurse-submodules' lately?"; echo; tput sgr0)>&2
	bin/genfonts
	bin/genfonts --windows

.PHONY: fixed
fixed:
	@(tput bold; echo; echo "Have you ran 'git pull --recurse-submodules' lately?"; echo; tput sgr0)>&2
	bin/genfonts misc-fixed
	bin/genfonts --windows misc-fixed

.PHONY: 6x13
6x13:
	@(tput bold; echo; echo "Have you ran 'git pull --recurse-submodules' lately?"; echo; tput sgr0)>&2
	bin/genfonts misc-fixed-6x13
	bin/genfonts --windows misc-fixed-6x13

.PHONY: pull
pull:
	git pull --recurse-submodules

.PHONY: clean
clean:
	/bin/rm sfd/*/*.sfd ttf/*/*.ttf windows/sfd/*/*.sfd windows/ttf/*/*.ttf || true

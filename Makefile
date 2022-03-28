BITMAPFONT2TTF  := $(shell which bitmapfont2ttf)

.PHONY: default
default: fonts

.PHONY: fonts
fonts:
	@(tput bold; echo; echo "Have you ran 'git pull --recurse-submodules' lately?"; echo; tput sgr0)>&2
	bin/genfonts
	bin/genfonts --windows

.PHONY: marked
marked:
	bin/genfonts --marked --windows

.PHONY: windows
windows:
	bin/genfonts --windows

.PHONY: windows-sfd
windows-sfd:
	bin/genfonts --windows --sfd-only

.PHONY: windows-dry-run
windows-dry-run:
	bin/genfonts --windows --no-save --no-trace

.PHONY: windows-fixed
windows-fixed:
	bin/genfonts --windows fixed

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

.PHONY: clean-windows
clean-windows:
	/bin/rm windows/sfd/*/*.sfd windows/ttf/*/*.ttf || true

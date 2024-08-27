.PHONY: genfonts clean decterm
genfonts:
	bin/genfonts.sh
	mkdir -p docs/fonts/ttf
	cp dist/ttf/*.ttf docs/fonts/ttf
decterm:
	bin/genfonts-decterm.sh
clean:
	/bin/rm dist/ttf/*.ttf dist/sfd/*.sfd || true

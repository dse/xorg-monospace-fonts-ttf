.PHONY: genfonts clean decterm
genfonts:
	bin/genfonts.sh
	mkdir -p web/fonts/ttf
	cp dist/ttf/*.ttf web/fonts/ttf
decterm:
	bin/genfonts-decterm.sh
clean:
	/bin/rm dist/ttf/*.ttf dist/sfd/*.sfd || true

.PHONY: genfonts clean decterm
genfonts:
	bin/genfonts.sh
decterm:
	bin/genfonts-decterm.sh
clean:
	/bin/rm dist/ttf/*.ttf dist/sfd/*.sfd || true

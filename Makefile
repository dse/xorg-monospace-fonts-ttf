.PHONY: genfonts clean
genfonts:
	bin/genfonts.sh
clean:
	/bin/rm dist/ttf/*.ttf dist/sfd/*.sfd || true

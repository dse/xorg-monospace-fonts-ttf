default:
	script default.typescript    ./genfonts.sh --use-own-bitmap-tracing
ascii-only:
	script ascii-only.typescript ./genfonts.sh --use-own-bitmap-tracing --ascii-only
clean:
	rm default.typescript || true
	rm ascii-only.typescript || true

.PHONY: default

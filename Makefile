default: fonts

FONT_PACKAGE_NAME	:= XorgMonoFonts
SFNT_REVISION		:= 001.901
VERSION			:= 1.91.0
VENDOR			:= DARN
COPYRIGHT_OWNER		:= Darren Embry
COPYRIGHT_EMAIL		:= dsembry@gmail.com

DIST_BDF		:= dist/bdf
DIST_TTF		:= dist/ttf

SUPPORT_BIN		:= support/bin
DIST_ZIP		:= dist/zip
DIST_ZIP_TO_DIST_TTF	:= ../ttf
DIST_ZIP_TO_DIST_BDF	:= ../bdf

SETFONTOFL		:= ~/git/dse.d/pyfontutils/bin/setfontofl
SETFONTOFL_OPTS		:= --owner "$(COPYRIGHT_OWNER)" --email "$(COPYRIGHT_EMAIL)"
SETFONTMETAS		:= ~/git/dse.d/pyfontutils/bin/setfontmetas
SETFONTMETAS_OPTS	:= --vendor "$(VENDOR)" --version "$(VERSION)" --sfnt-revision "$(SFNT_REVISION)"

include fonts.mk

TTF_DEPS			:= $(BT) Makefile
ZIP_FILE			:= $(DIST_ZIP)/$(FONT_PACKAGE_NAME)-$(VERSION).zip
UNVER_ZIP_FILE			:= $(DIST_ZIP)/$(FONT_PACKAGE_NAME).zip
BT_PROG				:= ~/git/dse.d/bitmapfont2ttf/bin/bitmapfont2ttf
BT_OPTS				:= --monospace --force-monospace \
					--use-bdf-ascent-descent \
					--remove-ttf-line-gap \
					--remove-ttf-ascent-add \
					--set-ttf-all-ascent-descent \
					--windows
BT				:= $(BT_PROG) $(BT_OPTS)

fonts: clean_logs $(TTF_FONTS) .fonts.log.d/fonts.csv .fonts.log.d/fonts.log

$(TTF_FONTS): clean_logs

clean_logs: FORCE
	find .fonts.log.d -type f \! -name .gitkeep -exec rm {} +
.fonts.log.d/fonts.log: $(TTF_FONTS)
	echo "| Win Pt | Mac Px | PostScript Font Name          | Filename                                                         |" > "$@"
	echo "|:-------|:-------|:------------------------------|:-----------------------------------------------------------------|" >> "$@"
	cat .fonts.log.d/*.???.log >> "$@"
	rm .fonts.log.d/*.???.log
.fonts.log.d/fonts.csv: $(TTF_FONTS)
	echo "FILENAME,PSNAME,ASC1,ASC2,DIFF,DESC1,DESC2,DIFF,A1,A2,DIFF,B1,B2,DIFF,C1,C2,DIFF,D1,D2,DIFF,MACPX,WINPT" > "$@"
	cat .fonts.log.d/*.???.csv >> "$@"
	rm .fonts.log.d/*.???.csv

xourier-fonts:			$(XOURIER_TTF_FONTS)
xucida-typewriter-fonts:	$(XUCIDA_TYPEWRITER_TTF_FONTS)
xec-terminal-fonts:		$(XEC_TERMINAL_TTF_FONTS)
xisc-fixed-fonts:		$(XISC_FIXED_TTF_FONTS)
xony-fixed-fonts:		$(XONY_FIXED_TTF_FONTS)

clean: FORCE
	/bin/rm -fr $(TTF_FONTS) || true
	find . -type f -name '*.tmp.*' -exec rm {} + || true

.PHONY: FORCE

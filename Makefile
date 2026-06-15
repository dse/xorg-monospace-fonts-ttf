_ := $(shell cat /dev/null >fonts.log)

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
BT_REDIR			:= 3>>fonts.log

fonts:				$(TTF_FONTS)

xourier-fonts:			$(XOURIER_TTF_FONTS)
xucida-typewriter-fonts:	$(XUCIDA_TYPEWRITER_TTF_FONTS)
xec-terminal-fonts:		$(XEC_TERMINAL_TTF_FONTS)
xisc-fixed-fonts:		$(XISC_FIXED_TTF_FONTS)
xony-fixed-fonts:		$(XONY_FIXED_TTF_FONTS)

clean: FORCE
	/bin/rm -fr $(TTF_FONTS) || true
	find . -type f -name '*.tmp.*' -exec rm {} + || true

.PHONY: FORCE

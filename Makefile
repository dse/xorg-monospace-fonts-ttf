_ := $(shell cat /dev/null >fonts.log)

default: fonts

FONT_PACKAGE_NAME	:= GorxMonoFonts
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

ADOBE_COURIER_BDF_FONTS :=	xorg-adobe-100dpi/courB08.bdf \
				xorg-adobe-100dpi/courB10.bdf \
				xorg-adobe-100dpi/courB12.bdf \
				xorg-adobe-100dpi/courB14.bdf \
				xorg-adobe-100dpi/courB18.bdf \
				xorg-adobe-100dpi/courB24.bdf \
				xorg-adobe-100dpi/courBO08.bdf \
				xorg-adobe-100dpi/courBO10.bdf \
				xorg-adobe-100dpi/courBO12.bdf \
				xorg-adobe-100dpi/courBO14.bdf \
				xorg-adobe-100dpi/courBO18.bdf \
				xorg-adobe-100dpi/courBO24.bdf \
				xorg-adobe-100dpi/courO08.bdf \
				xorg-adobe-100dpi/courO10.bdf \
				xorg-adobe-100dpi/courO12.bdf \
				xorg-adobe-100dpi/courO14.bdf \
				xorg-adobe-100dpi/courO18.bdf \
				xorg-adobe-100dpi/courO24.bdf \
				xorg-adobe-100dpi/courR08.bdf \
				xorg-adobe-100dpi/courR10.bdf \
				xorg-adobe-100dpi/courR12.bdf \
				xorg-adobe-100dpi/courR14.bdf \
				xorg-adobe-100dpi/courR18.bdf \
				xorg-adobe-100dpi/courR24.bdf \
				xorg-adobe-75dpi/courB08.bdf \
				xorg-adobe-75dpi/courB10.bdf \
				xorg-adobe-75dpi/courB12.bdf \
				xorg-adobe-75dpi/courB14.bdf \
				xorg-adobe-75dpi/courB18.bdf \
				xorg-adobe-75dpi/courB24.bdf \
				xorg-adobe-75dpi/courBO08.bdf \
				xorg-adobe-75dpi/courBO10.bdf \
				xorg-adobe-75dpi/courBO12.bdf \
				xorg-adobe-75dpi/courBO14.bdf \
				xorg-adobe-75dpi/courBO18.bdf \
				xorg-adobe-75dpi/courBO24.bdf \
				xorg-adobe-75dpi/courO08.bdf \
				xorg-adobe-75dpi/courO10.bdf \
				xorg-adobe-75dpi/courO12.bdf \
				xorg-adobe-75dpi/courO14.bdf \
				xorg-adobe-75dpi/courO18.bdf \
				xorg-adobe-75dpi/courO24.bdf \
				xorg-adobe-75dpi/courR08.bdf \
				xorg-adobe-75dpi/courR10.bdf \
				xorg-adobe-75dpi/courR12.bdf \
				xorg-adobe-75dpi/courR14.bdf \
				xorg-adobe-75dpi/courR18.bdf \
				xorg-adobe-75dpi/courR24.bdf

LUCIDA_TYPEWRITER_BDF_FONTS := 	xorg-bh-lucidatypewriter-100dpi/lutBS08.bdf \
				xorg-bh-lucidatypewriter-100dpi/lutBS10.bdf \
				xorg-bh-lucidatypewriter-100dpi/lutBS12.bdf \
				xorg-bh-lucidatypewriter-100dpi/lutBS14.bdf \
				xorg-bh-lucidatypewriter-100dpi/lutBS18.bdf \
				xorg-bh-lucidatypewriter-100dpi/lutBS19.bdf \
				xorg-bh-lucidatypewriter-100dpi/lutBS24.bdf \
				xorg-bh-lucidatypewriter-100dpi/lutRS08.bdf \
				xorg-bh-lucidatypewriter-100dpi/lutRS10.bdf \
				xorg-bh-lucidatypewriter-100dpi/lutRS12.bdf \
				xorg-bh-lucidatypewriter-100dpi/lutRS14.bdf \
				xorg-bh-lucidatypewriter-100dpi/lutRS18.bdf \
				xorg-bh-lucidatypewriter-100dpi/lutRS19.bdf \
				xorg-bh-lucidatypewriter-100dpi/lutRS24.bdf \
				xorg-bh-lucidatypewriter-75dpi/lutBS08.bdf \
				xorg-bh-lucidatypewriter-75dpi/lutBS10.bdf \
				xorg-bh-lucidatypewriter-75dpi/lutBS12.bdf \
				xorg-bh-lucidatypewriter-75dpi/lutBS14.bdf \
				xorg-bh-lucidatypewriter-75dpi/lutBS18.bdf \
				xorg-bh-lucidatypewriter-75dpi/lutBS19.bdf \
				xorg-bh-lucidatypewriter-75dpi/lutBS24.bdf \
				xorg-bh-lucidatypewriter-75dpi/lutRS08.bdf \
				xorg-bh-lucidatypewriter-75dpi/lutRS10.bdf \
				xorg-bh-lucidatypewriter-75dpi/lutRS12.bdf \
				xorg-bh-lucidatypewriter-75dpi/lutRS14.bdf \
				xorg-bh-lucidatypewriter-75dpi/lutRS18.bdf \
				xorg-bh-lucidatypewriter-75dpi/lutRS19.bdf \
				xorg-bh-lucidatypewriter-75dpi/lutRS24.bdf

BITSTREAM_TERMINAL_BDF_FONTS :=	xorg-bitstream-100dpi/term14.bdf \
				xorg-bitstream-100dpi/termB14.bdf \
				xorg-bitstream-75dpi/term14.bdf \
				xorg-bitstream-75dpi/termB14.bdf

MISC_BDF_FONTS :=		xorg-misc-misc/10x20.bdf \
				xorg-misc-misc/4x6.bdf \
				xorg-misc-misc/5x7.bdf \
				xorg-misc-misc/5x8.bdf \
				xorg-misc-misc/6x10.bdf \
				xorg-misc-misc/6x12.bdf \
				xorg-misc-misc/6x13.bdf \
				xorg-misc-misc/6x13B.bdf \
				xorg-misc-misc/6x13O.bdf \
				xorg-misc-misc/6x9.bdf \
				xorg-misc-misc/7x13.bdf \
				xorg-misc-misc/7x13B.bdf \
				xorg-misc-misc/7x13O.bdf \
				xorg-misc-misc/7x14.bdf \
				xorg-misc-misc/7x14B.bdf \
				xorg-misc-misc/8x13.bdf \
				xorg-misc-misc/8x13B.bdf \
				xorg-misc-misc/8x13O.bdf \
				xorg-misc-misc/9x15.bdf \
				xorg-misc-misc/9x15B.bdf \
				xorg-misc-misc/9x18.bdf \
				xorg-misc-misc/9x18B.bdf

SONY_MISC_BDF_FONTS :=		xorg-sony-misc/12x24.bdf \
				xorg-sony-misc/12x24rk.bdf \
				xorg-sony-misc/8x16.bdf \
				xorg-sony-misc/8x16rk.bdf

BDF_FONTS :=	$(ADOBE_COURIER_BDF_FONTS) \
		$(LUCIDA_TYPEWRITER_BDF_FONTS) \
		$(BITSTREAM_TERMINAL_BDF_FONTS) \
		$(MISC_BDF_FONTS) \
		$(SONY_MISC_BDF_FONTS)

TTF_FONTS				:= $(patsubst %.bdf,$(DIST_TTF)/%.ttf,$(BDF_FONTS))
ADOBE_COURIER_TTF_FONTS			:= $(patsubst %.bdf,$(DIST_TTF)/%.ttf,$(ADOBE_COURIER_BDF_FONTS))
LUCIDA_TYPEWRITER_TTF_FONTS		:= $(patsubst %.bdf,$(DIST_TTF)/%.ttf,$(LUCIDA_TYPEWRITER_BDF_FONTS))
BITSTREAM_TERMINAL_TTF_FONTS		:= $(patsubst %.bdf,$(DIST_TTF)/%.ttf,$(BITSTREAM_TERMINAL_BDF_FONTS))
MISC_TTF_FONTS				:= $(patsubst %.bdf,$(DIST_TTF)/%.ttf,$(MISC_BDF_FONTS))
SONY_MISC_TTF_FONTS			:= $(patsubst %.bdf,$(DIST_TTF)/%.ttf,$(SONY_MISC_BDF_FONTS))

TTF_DEPS		:= $(BT) Makefile
ZIP_FILE		:= $(DIST_ZIP)/$(FONT_PACKAGE_NAME)-$(VERSION).zip
UNVER_ZIP_FILE		:= $(DIST_ZIP)/$(FONT_PACKAGE_NAME).zip
BT_PROG			:= ~/git/dse.d/bitmapfont2ttf/bin/bitmapfont2ttf
BT_OPTS			:= --monospace --force-monospace \
				--use-bdf-ascent-descent \
				--remove-ttf-line-gap \
				--remove-ttf-ascent-add \
				--set-ttf-all-ascent-descent \
				--windows
BT 			:= $(BT_PROG) $(BT_OPTS)
BT_REDIR		:= 3>>fonts.log

fonts: $(TTF_FONTS)

adobe-courier: $(ADOBE_COURIER_TTF_FONTS)
lucida-typewriter: $(LUCIDA_TYPEWRITER_TTF_FONTS)
bitstream-terminal-fonts: $(BITSTREAM_TERMINAL_TTF_FONTS)
misc-fonts: $(MISC_TTF_FONTS)
sony-misc-fonts: $(SONY_MISC_TTF_FONTS)

dist/ttf/xorg-adobe-100dpi/courB08.ttf:               xorg-adobe-100dpi/courB08.bdf                     $(TTF_DEPS); $(BT) -m "Xourier 8H"              -f "Xourier8H-Bold"        -F "%{family} Bold"		-w "Bold"		--italic-angle 0   --stylemap 32  "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-adobe-100dpi/courB10.ttf:               xorg-adobe-100dpi/courB10.bdf                     $(TTF_DEPS); $(BT) -m "Xourier 10H"             -f "Xourier10H-Bold"        -F "%{family} Bold"		-w "Bold"		--italic-angle 0   --stylemap 32  "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-adobe-100dpi/courB12.ttf:               xorg-adobe-100dpi/courB12.bdf                     $(TTF_DEPS); $(BT) -m "Xourier 12H"             -f "Xourier12H-Bold"        -F "%{family} Bold"		-w "Bold"		--italic-angle 0   --stylemap 32  "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-adobe-100dpi/courB14.ttf:               xorg-adobe-100dpi/courB14.bdf                     $(TTF_DEPS); $(BT) -m "Xourier 14H"             -f "Xourier14H-Bold"        -F "%{family} Bold"		-w "Bold"		--italic-angle 0   --stylemap 32  "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-adobe-100dpi/courB18.ttf:               xorg-adobe-100dpi/courB18.bdf                     $(TTF_DEPS); $(BT) -m "Xourier 18H"             -f "Xourier18H-Bold"        -F "%{family} Bold"		-w "Bold"		--italic-angle 0   --stylemap 32  "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-adobe-100dpi/courB24.ttf:               xorg-adobe-100dpi/courB24.bdf                     $(TTF_DEPS); $(BT) -m "Xourier 24H"             -f "Xourier24H-Bold"        -F "%{family} Bold"		-w "Bold"		--italic-angle 0   --stylemap 32  "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-adobe-100dpi/courBO08.ttf:              xorg-adobe-100dpi/courBO08.bdf                    $(TTF_DEPS); $(BT) -m "Xourier 8H"              -f "Xourier8H-BoldOblique" -F "%{family} Bold Oblique"	-w "Bold Oblique"       --italic-angle -12 --stylemap 33  "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-adobe-100dpi/courBO10.ttf:              xorg-adobe-100dpi/courBO10.bdf                    $(TTF_DEPS); $(BT) -m "Xourier 10H"             -f "Xourier10H-BoldOblique" -F "%{family} Bold Oblique"	-w "Bold Oblique"       --italic-angle -12 --stylemap 33  "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-adobe-100dpi/courBO12.ttf:              xorg-adobe-100dpi/courBO12.bdf                    $(TTF_DEPS); $(BT) -m "Xourier 12H"             -f "Xourier12H-BoldOblique" -F "%{family} Bold Oblique"	-w "Bold Oblique"       --italic-angle -12 --stylemap 33  "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-adobe-100dpi/courBO14.ttf:              xorg-adobe-100dpi/courBO14.bdf                    $(TTF_DEPS); $(BT) -m "Xourier 14H"             -f "Xourier14H-BoldOblique" -F "%{family} Bold Oblique"	-w "Bold Oblique"       --italic-angle -12 --stylemap 33  "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-adobe-100dpi/courBO18.ttf:              xorg-adobe-100dpi/courBO18.bdf                    $(TTF_DEPS); $(BT) -m "Xourier 18H"             -f "Xourier18H-BoldOblique" -F "%{family} Bold Oblique"	-w "Bold Oblique"       --italic-angle -12 --stylemap 33  "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-adobe-100dpi/courBO24.ttf:              xorg-adobe-100dpi/courBO24.bdf                    $(TTF_DEPS); $(BT) -m "Xourier 24H"             -f "Xourier24H-BoldOblique" -F "%{family} Bold Oblique"	-w "Bold Oblique"       --italic-angle -12 --stylemap 33  "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-adobe-100dpi/courO08.ttf:               xorg-adobe-100dpi/courO08.bdf                     $(TTF_DEPS); $(BT) -m "Xourier 8H"              -f "Xourier8H-Oblique"     -F "%{family} Oblique"	-w "Oblique"		--italic-angle -12 --stylemap 1   "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-adobe-100dpi/courO10.ttf:               xorg-adobe-100dpi/courO10.bdf                     $(TTF_DEPS); $(BT) -m "Xourier 10H"             -f "Xourier10H-Oblique"     -F "%{family} Oblique"	-w "Oblique"		--italic-angle -12 --stylemap 1   "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-adobe-100dpi/courO12.ttf:               xorg-adobe-100dpi/courO12.bdf                     $(TTF_DEPS); $(BT) -m "Xourier 12H"             -f "Xourier12H-Oblique"     -F "%{family} Oblique"	-w "Oblique"		--italic-angle -12 --stylemap 1   "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-adobe-100dpi/courO14.ttf:               xorg-adobe-100dpi/courO14.bdf                     $(TTF_DEPS); $(BT) -m "Xourier 14H"             -f "Xourier14H-Oblique"     -F "%{family} Oblique"	-w "Oblique"		--italic-angle -12 --stylemap 1   "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-adobe-100dpi/courO18.ttf:               xorg-adobe-100dpi/courO18.bdf                     $(TTF_DEPS); $(BT) -m "Xourier 18H"             -f "Xourier18H-Oblique"     -F "%{family} Oblique"	-w "Oblique"		--italic-angle -12 --stylemap 1   "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-adobe-100dpi/courO24.ttf:               xorg-adobe-100dpi/courO24.bdf                     $(TTF_DEPS); $(BT) -m "Xourier 24H"             -f "Xourier24H-Oblique"     -F "%{family} Oblique"	-w "Oblique"		--italic-angle -12 --stylemap 1   "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-adobe-100dpi/courR08.ttf:               xorg-adobe-100dpi/courR08.bdf                     $(TTF_DEPS); $(BT) -m "Xourier 8H"              -f "Xourier8H"             -F "%{family}"		-w "Regular"		--italic-angle 0   --stylemap 64  "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-adobe-100dpi/courR10.ttf:               xorg-adobe-100dpi/courR10.bdf                     $(TTF_DEPS); $(BT) -m "Xourier 10H"             -f "Xourier10H"             -F "%{family}"		-w "Regular"		--italic-angle 0   --stylemap 64  "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-adobe-100dpi/courR12.ttf:               xorg-adobe-100dpi/courR12.bdf                     $(TTF_DEPS); $(BT) -m "Xourier 12H"             -f "Xourier12H"             -F "%{family}"		-w "Regular"		--italic-angle 0   --stylemap 64  "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-adobe-100dpi/courR14.ttf:               xorg-adobe-100dpi/courR14.bdf                     $(TTF_DEPS); $(BT) -m "Xourier 14H"             -f "Xourier14H"             -F "%{family}"		-w "Regular"		--italic-angle 0   --stylemap 64  "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-adobe-100dpi/courR18.ttf:               xorg-adobe-100dpi/courR18.bdf                     $(TTF_DEPS); $(BT) -m "Xourier 18H"             -f "Xourier18H"             -F "%{family}"		-w "Regular"		--italic-angle 0   --stylemap 64  "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-adobe-100dpi/courR24.ttf:               xorg-adobe-100dpi/courR24.bdf                     $(TTF_DEPS); $(BT) -m "Xourier 24H"             -f "Xourier24H"             -F "%{family}"		-w "Regular"		--italic-angle 0   --stylemap 64  "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-adobe-75dpi/courB08.ttf:                xorg-adobe-75dpi/courB08.bdf                      $(TTF_DEPS); $(BT) -m "Xourier 8"               -f "Xourier8-Bold"          -F "%{family} Bold"		-w "Bold"		--italic-angle 0   --stylemap 32  "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-adobe-75dpi/courB10.ttf:                xorg-adobe-75dpi/courB10.bdf                      $(TTF_DEPS); $(BT) -m "Xourier 10"              -f "Xourier10-Bold"         -F "%{family} Bold"		-w "Bold"		--italic-angle 0   --stylemap 32  "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-adobe-75dpi/courB12.ttf:                xorg-adobe-75dpi/courB12.bdf                      $(TTF_DEPS); $(BT) -m "Xourier 12"              -f "Xourier12-Bold"         -F "%{family} Bold"		-w "Bold"		--italic-angle 0   --stylemap 32  "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-adobe-75dpi/courB14.ttf:                xorg-adobe-75dpi/courB14.bdf                      $(TTF_DEPS); $(BT) -m "Xourier 14"              -f "Xourier14-Bold"         -F "%{family} Bold"		-w "Bold"		--italic-angle 0   --stylemap 32  "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-adobe-75dpi/courB18.ttf:                xorg-adobe-75dpi/courB18.bdf                      $(TTF_DEPS); $(BT) -m "Xourier 18"              -f "Xourier18-Bold"         -F "%{family} Bold"		-w "Bold"		--italic-angle 0   --stylemap 32  "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-adobe-75dpi/courB24.ttf:                xorg-adobe-75dpi/courB24.bdf                      $(TTF_DEPS); $(BT) -m "Xourier 24"              -f "Xourier24-Bold"         -F "%{family} Bold"		-w "Bold"		--italic-angle 0   --stylemap 32  "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-adobe-75dpi/courBO08.ttf:               xorg-adobe-75dpi/courBO08.bdf                     $(TTF_DEPS); $(BT) -m "Xourier 8"               -f "Xourier8-BoldOblique"   -F "%{family} Bold Oblique"	-w "Bold Oblique"       --italic-angle -12 --stylemap 33  "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-adobe-75dpi/courBO10.ttf:               xorg-adobe-75dpi/courBO10.bdf                     $(TTF_DEPS); $(BT) -m "Xourier 10"              -f "Xourier10-BoldOblique"  -F "%{family} Bold Oblique"	-w "Bold Oblique"       --italic-angle -12 --stylemap 33  "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-adobe-75dpi/courBO12.ttf:               xorg-adobe-75dpi/courBO12.bdf                     $(TTF_DEPS); $(BT) -m "Xourier 12"              -f "Xourier12-BoldOblique"  -F "%{family} Bold Oblique"	-w "Bold Oblique"       --italic-angle -12 --stylemap 33  "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-adobe-75dpi/courBO14.ttf:               xorg-adobe-75dpi/courBO14.bdf                     $(TTF_DEPS); $(BT) -m "Xourier 14"              -f "Xourier14-BoldOblique"  -F "%{family} Bold Oblique"	-w "Bold Oblique"       --italic-angle -12 --stylemap 33  "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-adobe-75dpi/courBO18.ttf:               xorg-adobe-75dpi/courBO18.bdf                     $(TTF_DEPS); $(BT) -m "Xourier 18"              -f "Xourier18-BoldOblique"  -F "%{family} Bold Oblique"	-w "Bold Oblique"       --italic-angle -12 --stylemap 33  "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-adobe-75dpi/courBO24.ttf:               xorg-adobe-75dpi/courBO24.bdf                     $(TTF_DEPS); $(BT) -m "Xourier 24"              -f "Xourier24-BoldOblique"  -F "%{family} Bold Oblique"	-w "Bold Oblique"       --italic-angle -12 --stylemap 33  "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-adobe-75dpi/courO08.ttf:                xorg-adobe-75dpi/courO08.bdf                      $(TTF_DEPS); $(BT) -m "Xourier 8"               -f "Xourier8-Oblique"       -F "%{family} Oblique"	-w "Oblique"		--italic-angle -12 --stylemap 1   "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-adobe-75dpi/courO10.ttf:                xorg-adobe-75dpi/courO10.bdf                      $(TTF_DEPS); $(BT) -m "Xourier 10"              -f "Xourier10-Oblique"      -F "%{family} Oblique"	-w "Oblique"		--italic-angle -12 --stylemap 1   "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-adobe-75dpi/courO12.ttf:                xorg-adobe-75dpi/courO12.bdf                      $(TTF_DEPS); $(BT) -m "Xourier 12"              -f "Xourier12-Oblique"      -F "%{family} Oblique"	-w "Oblique"		--italic-angle -12 --stylemap 1   "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-adobe-75dpi/courO14.ttf:                xorg-adobe-75dpi/courO14.bdf                      $(TTF_DEPS); $(BT) -m "Xourier 14"              -f "Xourier14-Oblique"      -F "%{family} Oblique"	-w "Oblique"		--italic-angle -12 --stylemap 1   "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-adobe-75dpi/courO18.ttf:                xorg-adobe-75dpi/courO18.bdf                      $(TTF_DEPS); $(BT) -m "Xourier 18"              -f "Xourier18-Oblique"      -F "%{family} Oblique"	-w "Oblique"		--italic-angle -12 --stylemap 1   "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-adobe-75dpi/courO24.ttf:                xorg-adobe-75dpi/courO24.bdf                      $(TTF_DEPS); $(BT) -m "Xourier 24"              -f "Xourier24-Oblique"      -F "%{family} Oblique"	-w "Oblique"		--italic-angle -12 --stylemap 1   "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-adobe-75dpi/courR08.ttf:                xorg-adobe-75dpi/courR08.bdf                      $(TTF_DEPS); $(BT) -m "Xourier 8"               -f "Xourier8"               -F "%{family}"		-w "Regular"		--italic-angle 0   --stylemap 64  "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-adobe-75dpi/courR10.ttf:                xorg-adobe-75dpi/courR10.bdf                      $(TTF_DEPS); $(BT) -m "Xourier 10"              -f "Xourier10"              -F "%{family}"		-w "Regular"		--italic-angle 0   --stylemap 64  "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-adobe-75dpi/courR12.ttf:                xorg-adobe-75dpi/courR12.bdf                      $(TTF_DEPS); $(BT) -m "Xourier 12"              -f "Xourier12"              -F "%{family}"		-w "Regular"		--italic-angle 0   --stylemap 64  "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-adobe-75dpi/courR14.ttf:                xorg-adobe-75dpi/courR14.bdf                      $(TTF_DEPS); $(BT) -m "Xourier 14"              -f "Xourier14"              -F "%{family}"		-w "Regular"		--italic-angle 0   --stylemap 64  "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-adobe-75dpi/courR18.ttf:                xorg-adobe-75dpi/courR18.bdf                      $(TTF_DEPS); $(BT) -m "Xourier 18"              -f "Xourier18"              -F "%{family}"		-w "Regular"		--italic-angle 0   --stylemap 64  "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-adobe-75dpi/courR24.ttf:                xorg-adobe-75dpi/courR24.bdf                      $(TTF_DEPS); $(BT) -m "Xourier 24"              -f "Xourier24"              -F "%{family}"		-w "Regular"		--italic-angle 0   --stylemap 64  "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-bh-lucidatypewriter-100dpi/lutBS08.ttf: xorg-bh-lucidatypewriter-100dpi/lutBS08.bdf       $(TTF_DEPS); $(BT) -m "Xucida Typewriter 8H"    -f "XucidaTypewr8H-Bold"   -F "%{family} Bold"		-w "Bold"		--italic-angle 0   --stylemap 32  "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-bh-lucidatypewriter-100dpi/lutBS10.ttf: xorg-bh-lucidatypewriter-100dpi/lutBS10.bdf       $(TTF_DEPS); $(BT) -m "Xucida Typewriter 10H"   -f "XucidaTypewr10H-Bold"   -F "%{family} Bold"		-w "Bold"		--italic-angle 0   --stylemap 32  "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-bh-lucidatypewriter-100dpi/lutBS12.ttf: xorg-bh-lucidatypewriter-100dpi/lutBS12.bdf       $(TTF_DEPS); $(BT) -m "Xucida Typewriter 12H"   -f "XucidaTypewr12H-Bold"   -F "%{family} Bold"		-w "Bold"		--italic-angle 0   --stylemap 32  "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-bh-lucidatypewriter-100dpi/lutBS14.ttf: xorg-bh-lucidatypewriter-100dpi/lutBS14.bdf       $(TTF_DEPS); $(BT) -m "Xucida Typewriter 14H"   -f "XucidaTypewr14H-Bold"   -F "%{family} Bold"		-w "Bold"		--italic-angle 0   --stylemap 32  "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-bh-lucidatypewriter-100dpi/lutBS18.ttf: xorg-bh-lucidatypewriter-100dpi/lutBS18.bdf       $(TTF_DEPS); $(BT) -m "Xucida Typewriter 18H"   -f "XucidaTypewr18H-Bold"   -F "%{family} Bold"		-w "Bold"		--italic-angle 0   --stylemap 32  "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-bh-lucidatypewriter-100dpi/lutBS19.ttf: xorg-bh-lucidatypewriter-100dpi/lutBS19.bdf       $(TTF_DEPS); $(BT) -m "Xucida Typewriter 19H"   -f "XucidaTypewr19H-Bold"   -F "%{family} Bold"		-w "Bold"		--italic-angle 0   --stylemap 32  "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-bh-lucidatypewriter-100dpi/lutBS24.ttf: xorg-bh-lucidatypewriter-100dpi/lutBS24.bdf       $(TTF_DEPS); $(BT) -m "Xucida Typewriter 24H"   -f "XucidaTypewr24H-Bold"   -F "%{family} Bold"		-w "Bold"		--italic-angle 0   --stylemap 32  "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-bh-lucidatypewriter-100dpi/lutRS08.ttf: xorg-bh-lucidatypewriter-100dpi/lutRS08.bdf       $(TTF_DEPS); $(BT) -m "Xucida Typewriter 8H"    -f "XucidaTypewr8H"        -F "%{family}"		-w "Regular"		--italic-angle 0   --stylemap 64  "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-bh-lucidatypewriter-100dpi/lutRS10.ttf: xorg-bh-lucidatypewriter-100dpi/lutRS10.bdf       $(TTF_DEPS); $(BT) -m "Xucida Typewriter 10H"   -f "XucidaTypewr10H"        -F "%{family}"		-w "Regular"		--italic-angle 0   --stylemap 64  "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-bh-lucidatypewriter-100dpi/lutRS12.ttf: xorg-bh-lucidatypewriter-100dpi/lutRS12.bdf       $(TTF_DEPS); $(BT) -m "Xucida Typewriter 12H"   -f "XucidaTypewr12H"        -F "%{family}"		-w "Regular"		--italic-angle 0   --stylemap 64  "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-bh-lucidatypewriter-100dpi/lutRS14.ttf: xorg-bh-lucidatypewriter-100dpi/lutRS14.bdf       $(TTF_DEPS); $(BT) -m "Xucida Typewriter 14H"   -f "XucidaTypewr14H"        -F "%{family}"		-w "Regular"		--italic-angle 0   --stylemap 64  "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-bh-lucidatypewriter-100dpi/lutRS18.ttf: xorg-bh-lucidatypewriter-100dpi/lutRS18.bdf       $(TTF_DEPS); $(BT) -m "Xucida Typewriter 18H"   -f "XucidaTypewr18H"        -F "%{family}"		-w "Regular"		--italic-angle 0   --stylemap 64  "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-bh-lucidatypewriter-100dpi/lutRS19.ttf: xorg-bh-lucidatypewriter-100dpi/lutRS19.bdf       $(TTF_DEPS); $(BT) -m "Xucida Typewriter 19H"   -f "XucidaTypewr19H"        -F "%{family}"		-w "Regular"		--italic-angle 0   --stylemap 64  "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-bh-lucidatypewriter-100dpi/lutRS24.ttf: xorg-bh-lucidatypewriter-100dpi/lutRS24.bdf       $(TTF_DEPS); $(BT) -m "Xucida Typewriter 24H"   -f "XucidaTypewr24H"        -F "%{family}"		-w "Regular"		--italic-angle 0   --stylemap 64  "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-bh-lucidatypewriter-75dpi/lutBS08.ttf:  xorg-bh-lucidatypewriter-75dpi/lutBS08.bdf        $(TTF_DEPS); $(BT) -m "Xucida Typewriter 8"     -f "XucidaTypewr8-Bold"     -F "%{family} Bold"		-w "Bold"		--italic-angle 0   --stylemap 32  "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-bh-lucidatypewriter-75dpi/lutBS10.ttf:  xorg-bh-lucidatypewriter-75dpi/lutBS10.bdf        $(TTF_DEPS); $(BT) -m "Xucida Typewriter 10"    -f "XucidaTypewr10-Bold"    -F "%{family} Bold"		-w "Bold"		--italic-angle 0   --stylemap 32  "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-bh-lucidatypewriter-75dpi/lutBS12.ttf:  xorg-bh-lucidatypewriter-75dpi/lutBS12.bdf        $(TTF_DEPS); $(BT) -m "Xucida Typewriter 12"    -f "XucidaTypewr12-Bold"    -F "%{family} Bold"		-w "Bold"		--italic-angle 0   --stylemap 32  "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-bh-lucidatypewriter-75dpi/lutBS14.ttf:  xorg-bh-lucidatypewriter-75dpi/lutBS14.bdf        $(TTF_DEPS); $(BT) -m "Xucida Typewriter 14"    -f "XucidaTypewr14-Bold"    -F "%{family} Bold"		-w "Bold"		--italic-angle 0   --stylemap 32  "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-bh-lucidatypewriter-75dpi/lutBS18.ttf:  xorg-bh-lucidatypewriter-75dpi/lutBS18.bdf        $(TTF_DEPS); $(BT) -m "Xucida Typewriter 18"    -f "XucidaTypewr18-Bold"    -F "%{family} Bold"		-w "Bold"		--italic-angle 0   --stylemap 32  "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-bh-lucidatypewriter-75dpi/lutBS19.ttf:  xorg-bh-lucidatypewriter-75dpi/lutBS19.bdf        $(TTF_DEPS); $(BT) -m "Xucida Typewriter 19"    -f "XucidaTypewr19-Bold"    -F "%{family} Bold"		-w "Bold"		--italic-angle 0   --stylemap 32  "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-bh-lucidatypewriter-75dpi/lutBS24.ttf:  xorg-bh-lucidatypewriter-75dpi/lutBS24.bdf        $(TTF_DEPS); $(BT) -m "Xucida Typewriter 24"    -f "XucidaTypewr24-Bold"    -F "%{family} Bold"		-w "Bold"		--italic-angle 0   --stylemap 32  "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-bh-lucidatypewriter-75dpi/lutRS08.ttf:  xorg-bh-lucidatypewriter-75dpi/lutRS08.bdf        $(TTF_DEPS); $(BT) -m "Xucida Typewriter 8"     -f "XucidaTypewr8"          -F "%{family}"		-w "Regular"		--italic-angle 0   --stylemap 64  "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-bh-lucidatypewriter-75dpi/lutRS10.ttf:  xorg-bh-lucidatypewriter-75dpi/lutRS10.bdf        $(TTF_DEPS); $(BT) -m "Xucida Typewriter 10"    -f "XucidaTypewr10"         -F "%{family}"		-w "Regular"		--italic-angle 0   --stylemap 64  "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-bh-lucidatypewriter-75dpi/lutRS12.ttf:  xorg-bh-lucidatypewriter-75dpi/lutRS12.bdf        $(TTF_DEPS); $(BT) -m "Xucida Typewriter 12"    -f "XucidaTypewr12"         -F "%{family}"		-w "Regular"		--italic-angle 0   --stylemap 64  "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-bh-lucidatypewriter-75dpi/lutRS14.ttf:  xorg-bh-lucidatypewriter-75dpi/lutRS14.bdf        $(TTF_DEPS); $(BT) -m "Xucida Typewriter 14"    -f "XucidaTypewr14"         -F "%{family}"		-w "Regular"		--italic-angle 0   --stylemap 64  "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-bh-lucidatypewriter-75dpi/lutRS18.ttf:  xorg-bh-lucidatypewriter-75dpi/lutRS18.bdf        $(TTF_DEPS); $(BT) -m "Xucida Typewriter 18"    -f "XucidaTypewr18"         -F "%{family}"		-w "Regular"		--italic-angle 0   --stylemap 64  "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-bh-lucidatypewriter-75dpi/lutRS19.ttf:  xorg-bh-lucidatypewriter-75dpi/lutRS19.bdf        $(TTF_DEPS); $(BT) -m "Xucida Typewriter 19"    -f "XucidaTypewr19"         -F "%{family}"		-w "Regular"		--italic-angle 0   --stylemap 64  "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-bh-lucidatypewriter-75dpi/lutRS24.ttf:  xorg-bh-lucidatypewriter-75dpi/lutRS24.bdf        $(TTF_DEPS); $(BT) -m "Xucida Typewriter 24"    -f "XucidaTypewr24"         -F "%{family}"		-w "Regular"		--italic-angle 0   --stylemap 64  "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-bitstream-100dpi/term14.ttf:            xorg-bitstream-100dpi/term14.bdf                  $(TTF_DEPS); $(BT) -m "Xerminal 14H"            -f "Xerminal14H"            -F "%{family}"		-w "Regular"		--italic-angle 0   --stylemap 64  "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-bitstream-100dpi/termB14.ttf:           xorg-bitstream-100dpi/termB14.bdf                 $(TTF_DEPS); $(BT) -m "Xerminal 14H"            -f "Xerminal14H-Bold"       -F "%{family} Bold"		-w "Bold"		--italic-angle 0   --stylemap 32  "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-bitstream-75dpi/term14.ttf:             xorg-bitstream-75dpi/term14.bdf                   $(TTF_DEPS); $(BT) -m "Xerminal 14"             -f "Xerminal14"             -F "%{family}"		-w "Regular"		--italic-angle 0   --stylemap 64  "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-bitstream-75dpi/termB14.ttf:            xorg-bitstream-75dpi/termB14.bdf                  $(TTF_DEPS); $(BT) -m "Xerminal 14"             -f "Xerminal14-Bold"        -F "%{family} Bold"		-w "Bold"		--italic-angle 0   --stylemap 32  "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-misc-misc/10x20.ttf:                    xorg-misc-misc/10x20.bdf                          $(TTF_DEPS); $(BT) -m "Xisc Fixed 10x20"        -f "XiscFixed10x20"         -F "%{family}"		-w "Regular"		--italic-angle 0   --stylemap 64  "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-misc-misc/4x6.ttf:                      xorg-misc-misc/4x6.bdf                            $(TTF_DEPS); $(BT) -m "Xisc Fixed 4x6"          -f "XiscFixed4x6"           -F "%{family}"		-w "Regular"		--italic-angle 0   --stylemap 64  "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-misc-misc/5x7.ttf:                      xorg-misc-misc/5x7.bdf                            $(TTF_DEPS); $(BT) -m "Xisc Fixed 5x7"          -f "XiscFixed5x7"           -F "%{family}"		-w "Regular"		--italic-angle 0   --stylemap 64  "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-misc-misc/5x8.ttf:                      xorg-misc-misc/5x8.bdf                            $(TTF_DEPS); $(BT) -m "Xisc Fixed 5x8"          -f "XiscFixed5x8"           -F "%{family}"		-w "Regular"		--italic-angle 0   --stylemap 64  "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-misc-misc/6x10.ttf:                     xorg-misc-misc/6x10.bdf                           $(TTF_DEPS); $(BT) -m "Xisc Fixed 6x10"         -f "XiscFixed6x10"          -F "%{family}"		-w "Regular"		--italic-angle 0   --stylemap 64  "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-misc-misc/6x12.ttf:                     xorg-misc-misc/6x12.bdf                           $(TTF_DEPS); $(BT) -m "Xisc Fixed 6x12"         -f "XiscFixed6x12"          -F "%{family}"		-w "Regular"		--italic-angle 0   --stylemap 64  "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-misc-misc/6x13.ttf:                     xorg-misc-misc/6x13.bdf                           $(TTF_DEPS); $(BT) -m "Xisc Fixed 6x13"         -f "XiscFixed6x13"          -F "%{family}"		-w "Regular"		--italic-angle 0   --stylemap 64  "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-misc-misc/6x13B.ttf:                    xorg-misc-misc/6x13B.bdf                          $(TTF_DEPS); $(BT) -m "Xisc Fixed 6x13"         -f "XiscFixed6x13-Bold"     -F "%{family} Bold"		-w "Bold"		--italic-angle 0   --stylemap 32  "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-misc-misc/6x13O.ttf:                    xorg-misc-misc/6x13O.bdf                          $(TTF_DEPS); $(BT) -m "Xisc Fixed 6x13"         -f "XiscFixed6x13-Oblique"  -F "%{family} Oblique"	-w "Oblique"		--italic-angle -12 --stylemap 1   "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-misc-misc/6x9.ttf:                      xorg-misc-misc/6x9.bdf                            $(TTF_DEPS); $(BT) -m "Xisc Fixed 6x9"          -f "XiscFixed6x9"           -F "%{family}"		-w "Regular"		--italic-angle 0   --stylemap 64  "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-misc-misc/7x13.ttf:                     xorg-misc-misc/7x13.bdf                           $(TTF_DEPS); $(BT) -m "Xisc Fixed 7x13"         -f "XiscFixed7x13"          -F "%{family}"		-w "Regular"		--italic-angle 0   --stylemap 64  "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-misc-misc/7x13B.ttf:                    xorg-misc-misc/7x13B.bdf                          $(TTF_DEPS); $(BT) -m "Xisc Fixed 7x13"         -f "XiscFixed7x13-Bold"     -F "%{family} Bold"		-w "Bold"		--italic-angle 0   --stylemap 32  "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-misc-misc/7x13O.ttf:                    xorg-misc-misc/7x13O.bdf                          $(TTF_DEPS); $(BT) -m "Xisc Fixed 7x13"         -f "XiscFixed7x13-Oblique"  -F "%{family} Oblique"	-w "Oblique"		--italic-angle -12 --stylemap 1   "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-misc-misc/7x14.ttf:                     xorg-misc-misc/7x14.bdf                           $(TTF_DEPS); $(BT) -m "Xisc Fixed 7x14"         -f "XiscFixed7x14"          -F "%{family}"		-w "Regular"		--italic-angle 0   --stylemap 64  "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-misc-misc/7x14B.ttf:                    xorg-misc-misc/7x14B.bdf                          $(TTF_DEPS); $(BT) -m "Xisc Fixed 7x14"         -f "XiscFixed7x14-Bold"     -F "%{family} Bold"		-w "Bold"		--italic-angle 0   --stylemap 32  "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-misc-misc/8x13.ttf:                     xorg-misc-misc/8x13.bdf                           $(TTF_DEPS); $(BT) -m "Xisc Fixed 8x13"         -f "XiscFixed8x13"          -F "%{family}"		-w "Regular"		--italic-angle 0   --stylemap 64  "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-misc-misc/8x13B.ttf:                    xorg-misc-misc/8x13B.bdf                          $(TTF_DEPS); $(BT) -m "Xisc Fixed 8x13"         -f "XiscFixed8x13-Bold"     -F "%{family} Bold"		-w "Bold"		--italic-angle 0   --stylemap 32  "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-misc-misc/8x13O.ttf:                    xorg-misc-misc/8x13O.bdf                          $(TTF_DEPS); $(BT) -m "Xisc Fixed 8x13"         -f "XiscFixed8x13-Oblique"  -F "%{family} Oblique"	-w "Oblique"		--italic-angle -12 --stylemap 1   "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-misc-misc/9x15.ttf:                     xorg-misc-misc/9x15.bdf                           $(TTF_DEPS); $(BT) -m "Xisc Fixed 9x15"         -f "XiscFixed9x15"          -F "%{family}"		-w "Regular"		--italic-angle 0   --stylemap 64  "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-misc-misc/9x15B.ttf:                    xorg-misc-misc/9x15B.bdf                          $(TTF_DEPS); $(BT) -m "Xisc Fixed 9x15"         -f "XiscFixed9x15-Bold"     -F "%{family} Bold"		-w "Bold"		--italic-angle 0   --stylemap 32  "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-misc-misc/9x18.ttf:                     xorg-misc-misc/9x18.bdf                           $(TTF_DEPS); $(BT) -m "Xisc Fixed 9x18"         -f "XiscFixed9x18"          -F "%{family}"		-w "Regular"		--italic-angle 0   --stylemap 64  "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-misc-misc/9x18B.ttf:                    xorg-misc-misc/9x18B.bdf                          $(TTF_DEPS); $(BT) -m "Xisc Fixed 9x18"         -f "XiscFixed9x18-Bold"     -F "%{family} Bold"		-w "Bold"		--italic-angle 0   --stylemap 32  "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-sony-misc/12x24.ttf:                    xorg-sony-misc/12x24.bdf                          $(TTF_DEPS); $(BT) -m "Xony Fixed 12x24"        -f "XonyFixed12x24"         -F "%{family}"		-w "Regular"		--italic-angle 0   --stylemap 64  "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-sony-misc/12x24rk.ttf:                  xorg-sony-misc/12x24rk.bdf                        $(TTF_DEPS); $(BT) -m "Xony Fixed 12x24rk"      -f "XonyFixed12x24rk"       -F "%{family}"		-w "Regular"		--italic-angle 0   --stylemap 64  "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-sony-misc/8x16.ttf:                     xorg-sony-misc/8x16.bdf                           $(TTF_DEPS); $(BT) -m "Xony Fixed 8x16"         -f "XonyFixed8x16"          -F "%{family}"		-w "Regular"		--italic-angle 0   --stylemap 64  "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-sony-misc/8x16rk.ttf:                   xorg-sony-misc/8x16rk.bdf                         $(TTF_DEPS); $(BT) -m "Xony Fixed 8x16rk"       -f "XonyFixed8x16rk"        -F "%{family}"		-w "Regular"		--italic-angle 0   --stylemap 64  "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"

clean: FORCE
	/bin/rm -fr $(TTF_FONTS) || true
	find . -type f -name '*.tmp.*' -exec rm {} + || true

.PHONY: FORCE

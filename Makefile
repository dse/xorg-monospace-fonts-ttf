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

dist/ttf/xorg-adobe-100dpi/courB08.ttf:               xorg-adobe-100dpi/courB08.bdf                     $(TTF_DEPS); $(BT) -m "Zourier 8H"              -f "Zourier8H-Bold"        -F "%{family} Bold"		-w "Bold"		--italic-angle 0   --stylemap 32  "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-adobe-100dpi/courB10.ttf:               xorg-adobe-100dpi/courB10.bdf                     $(TTF_DEPS); $(BT) -m "Zourier 10H"             -f "Zourier10H-Bold"        -F "%{family} Bold"		-w "Bold"		--italic-angle 0   --stylemap 32  "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-adobe-100dpi/courB12.ttf:               xorg-adobe-100dpi/courB12.bdf                     $(TTF_DEPS); $(BT) -m "Zourier 12H"             -f "Zourier12H-Bold"        -F "%{family} Bold"		-w "Bold"		--italic-angle 0   --stylemap 32  "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-adobe-100dpi/courB14.ttf:               xorg-adobe-100dpi/courB14.bdf                     $(TTF_DEPS); $(BT) -m "Zourier 14H"             -f "Zourier14H-Bold"        -F "%{family} Bold"		-w "Bold"		--italic-angle 0   --stylemap 32  "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-adobe-100dpi/courB18.ttf:               xorg-adobe-100dpi/courB18.bdf                     $(TTF_DEPS); $(BT) -m "Zourier 18H"             -f "Zourier18H-Bold"        -F "%{family} Bold"		-w "Bold"		--italic-angle 0   --stylemap 32  "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-adobe-100dpi/courB24.ttf:               xorg-adobe-100dpi/courB24.bdf                     $(TTF_DEPS); $(BT) -m "Zourier 24H"             -f "Zourier24H-Bold"        -F "%{family} Bold"		-w "Bold"		--italic-angle 0   --stylemap 32  "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-adobe-100dpi/courBO08.ttf:              xorg-adobe-100dpi/courBO08.bdf                    $(TTF_DEPS); $(BT) -m "Zourier 8H"              -f "Zourier8H-BoldOblique" -F "%{family} Bold Oblique"	-w "Bold Oblique"       --italic-angle -12 --stylemap 33  "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-adobe-100dpi/courBO10.ttf:              xorg-adobe-100dpi/courBO10.bdf                    $(TTF_DEPS); $(BT) -m "Zourier 10H"             -f "Zourier10H-BoldOblique" -F "%{family} Bold Oblique"	-w "Bold Oblique"       --italic-angle -12 --stylemap 33  "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-adobe-100dpi/courBO12.ttf:              xorg-adobe-100dpi/courBO12.bdf                    $(TTF_DEPS); $(BT) -m "Zourier 12H"             -f "Zourier12H-BoldOblique" -F "%{family} Bold Oblique"	-w "Bold Oblique"       --italic-angle -12 --stylemap 33  "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-adobe-100dpi/courBO14.ttf:              xorg-adobe-100dpi/courBO14.bdf                    $(TTF_DEPS); $(BT) -m "Zourier 14H"             -f "Zourier14H-BoldOblique" -F "%{family} Bold Oblique"	-w "Bold Oblique"       --italic-angle -12 --stylemap 33  "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-adobe-100dpi/courBO18.ttf:              xorg-adobe-100dpi/courBO18.bdf                    $(TTF_DEPS); $(BT) -m "Zourier 18H"             -f "Zourier18H-BoldOblique" -F "%{family} Bold Oblique"	-w "Bold Oblique"       --italic-angle -12 --stylemap 33  "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-adobe-100dpi/courBO24.ttf:              xorg-adobe-100dpi/courBO24.bdf                    $(TTF_DEPS); $(BT) -m "Zourier 24H"             -f "Zourier24H-BoldOblique" -F "%{family} Bold Oblique"	-w "Bold Oblique"       --italic-angle -12 --stylemap 33  "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-adobe-100dpi/courO08.ttf:               xorg-adobe-100dpi/courO08.bdf                     $(TTF_DEPS); $(BT) -m "Zourier 8H"              -f "Zourier8H-Oblique"     -F "%{family} Oblique"	-w "Oblique"		--italic-angle -12 --stylemap 1   "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-adobe-100dpi/courO10.ttf:               xorg-adobe-100dpi/courO10.bdf                     $(TTF_DEPS); $(BT) -m "Zourier 10H"             -f "Zourier10H-Oblique"     -F "%{family} Oblique"	-w "Oblique"		--italic-angle -12 --stylemap 1   "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-adobe-100dpi/courO12.ttf:               xorg-adobe-100dpi/courO12.bdf                     $(TTF_DEPS); $(BT) -m "Zourier 12H"             -f "Zourier12H-Oblique"     -F "%{family} Oblique"	-w "Oblique"		--italic-angle -12 --stylemap 1   "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-adobe-100dpi/courO14.ttf:               xorg-adobe-100dpi/courO14.bdf                     $(TTF_DEPS); $(BT) -m "Zourier 14H"             -f "Zourier14H-Oblique"     -F "%{family} Oblique"	-w "Oblique"		--italic-angle -12 --stylemap 1   "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-adobe-100dpi/courO18.ttf:               xorg-adobe-100dpi/courO18.bdf                     $(TTF_DEPS); $(BT) -m "Zourier 18H"             -f "Zourier18H-Oblique"     -F "%{family} Oblique"	-w "Oblique"		--italic-angle -12 --stylemap 1   "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-adobe-100dpi/courO24.ttf:               xorg-adobe-100dpi/courO24.bdf                     $(TTF_DEPS); $(BT) -m "Zourier 24H"             -f "Zourier24H-Oblique"     -F "%{family} Oblique"	-w "Oblique"		--italic-angle -12 --stylemap 1   "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-adobe-100dpi/courR08.ttf:               xorg-adobe-100dpi/courR08.bdf                     $(TTF_DEPS); $(BT) -m "Zourier 8H"              -f "Zourier8H"             -F "%{family}"		-w "Regular"		--italic-angle 0   --stylemap 64  "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-adobe-100dpi/courR10.ttf:               xorg-adobe-100dpi/courR10.bdf                     $(TTF_DEPS); $(BT) -m "Zourier 10H"             -f "Zourier10H"             -F "%{family}"		-w "Regular"		--italic-angle 0   --stylemap 64  "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-adobe-100dpi/courR12.ttf:               xorg-adobe-100dpi/courR12.bdf                     $(TTF_DEPS); $(BT) -m "Zourier 12H"             -f "Zourier12H"             -F "%{family}"		-w "Regular"		--italic-angle 0   --stylemap 64  "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-adobe-100dpi/courR14.ttf:               xorg-adobe-100dpi/courR14.bdf                     $(TTF_DEPS); $(BT) -m "Zourier 14H"             -f "Zourier14H"             -F "%{family}"		-w "Regular"		--italic-angle 0   --stylemap 64  "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-adobe-100dpi/courR18.ttf:               xorg-adobe-100dpi/courR18.bdf                     $(TTF_DEPS); $(BT) -m "Zourier 18H"             -f "Zourier18H"             -F "%{family}"		-w "Regular"		--italic-angle 0   --stylemap 64  "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-adobe-100dpi/courR24.ttf:               xorg-adobe-100dpi/courR24.bdf                     $(TTF_DEPS); $(BT) -m "Zourier 24H"             -f "Zourier24H"             -F "%{family}"		-w "Regular"		--italic-angle 0   --stylemap 64  "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-adobe-75dpi/courB08.ttf:                xorg-adobe-75dpi/courB08.bdf                      $(TTF_DEPS); $(BT) -m "Zourier 8"               -f "Zourier8-Bold"          -F "%{family} Bold"		-w "Bold"		--italic-angle 0   --stylemap 32  "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-adobe-75dpi/courB10.ttf:                xorg-adobe-75dpi/courB10.bdf                      $(TTF_DEPS); $(BT) -m "Zourier 10"              -f "Zourier10-Bold"         -F "%{family} Bold"		-w "Bold"		--italic-angle 0   --stylemap 32  "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-adobe-75dpi/courB12.ttf:                xorg-adobe-75dpi/courB12.bdf                      $(TTF_DEPS); $(BT) -m "Zourier 12"              -f "Zourier12-Bold"         -F "%{family} Bold"		-w "Bold"		--italic-angle 0   --stylemap 32  "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-adobe-75dpi/courB14.ttf:                xorg-adobe-75dpi/courB14.bdf                      $(TTF_DEPS); $(BT) -m "Zourier 14"              -f "Zourier14-Bold"         -F "%{family} Bold"		-w "Bold"		--italic-angle 0   --stylemap 32  "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-adobe-75dpi/courB18.ttf:                xorg-adobe-75dpi/courB18.bdf                      $(TTF_DEPS); $(BT) -m "Zourier 18"              -f "Zourier18-Bold"         -F "%{family} Bold"		-w "Bold"		--italic-angle 0   --stylemap 32  "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-adobe-75dpi/courB24.ttf:                xorg-adobe-75dpi/courB24.bdf                      $(TTF_DEPS); $(BT) -m "Zourier 24"              -f "Zourier24-Bold"         -F "%{family} Bold"		-w "Bold"		--italic-angle 0   --stylemap 32  "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-adobe-75dpi/courBO08.ttf:               xorg-adobe-75dpi/courBO08.bdf                     $(TTF_DEPS); $(BT) -m "Zourier 8"               -f "Zourier8-BoldOblique"   -F "%{family} Bold Oblique"	-w "Bold Oblique"       --italic-angle -12 --stylemap 33  "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-adobe-75dpi/courBO10.ttf:               xorg-adobe-75dpi/courBO10.bdf                     $(TTF_DEPS); $(BT) -m "Zourier 10"              -f "Zourier10-BoldOblique"  -F "%{family} Bold Oblique"	-w "Bold Oblique"       --italic-angle -12 --stylemap 33  "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-adobe-75dpi/courBO12.ttf:               xorg-adobe-75dpi/courBO12.bdf                     $(TTF_DEPS); $(BT) -m "Zourier 12"              -f "Zourier12-BoldOblique"  -F "%{family} Bold Oblique"	-w "Bold Oblique"       --italic-angle -12 --stylemap 33  "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-adobe-75dpi/courBO14.ttf:               xorg-adobe-75dpi/courBO14.bdf                     $(TTF_DEPS); $(BT) -m "Zourier 14"              -f "Zourier14-BoldOblique"  -F "%{family} Bold Oblique"	-w "Bold Oblique"       --italic-angle -12 --stylemap 33  "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-adobe-75dpi/courBO18.ttf:               xorg-adobe-75dpi/courBO18.bdf                     $(TTF_DEPS); $(BT) -m "Zourier 18"              -f "Zourier18-BoldOblique"  -F "%{family} Bold Oblique"	-w "Bold Oblique"       --italic-angle -12 --stylemap 33  "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-adobe-75dpi/courBO24.ttf:               xorg-adobe-75dpi/courBO24.bdf                     $(TTF_DEPS); $(BT) -m "Zourier 24"              -f "Zourier24-BoldOblique"  -F "%{family} Bold Oblique"	-w "Bold Oblique"       --italic-angle -12 --stylemap 33  "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-adobe-75dpi/courO08.ttf:                xorg-adobe-75dpi/courO08.bdf                      $(TTF_DEPS); $(BT) -m "Zourier 8"               -f "Zourier8-Oblique"       -F "%{family} Oblique"	-w "Oblique"		--italic-angle -12 --stylemap 1   "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-adobe-75dpi/courO10.ttf:                xorg-adobe-75dpi/courO10.bdf                      $(TTF_DEPS); $(BT) -m "Zourier 10"              -f "Zourier10-Oblique"      -F "%{family} Oblique"	-w "Oblique"		--italic-angle -12 --stylemap 1   "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-adobe-75dpi/courO12.ttf:                xorg-adobe-75dpi/courO12.bdf                      $(TTF_DEPS); $(BT) -m "Zourier 12"              -f "Zourier12-Oblique"      -F "%{family} Oblique"	-w "Oblique"		--italic-angle -12 --stylemap 1   "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-adobe-75dpi/courO14.ttf:                xorg-adobe-75dpi/courO14.bdf                      $(TTF_DEPS); $(BT) -m "Zourier 14"              -f "Zourier14-Oblique"      -F "%{family} Oblique"	-w "Oblique"		--italic-angle -12 --stylemap 1   "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-adobe-75dpi/courO18.ttf:                xorg-adobe-75dpi/courO18.bdf                      $(TTF_DEPS); $(BT) -m "Zourier 18"              -f "Zourier18-Oblique"      -F "%{family} Oblique"	-w "Oblique"		--italic-angle -12 --stylemap 1   "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-adobe-75dpi/courO24.ttf:                xorg-adobe-75dpi/courO24.bdf                      $(TTF_DEPS); $(BT) -m "Zourier 24"              -f "Zourier24-Oblique"      -F "%{family} Oblique"	-w "Oblique"		--italic-angle -12 --stylemap 1   "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-adobe-75dpi/courR08.ttf:                xorg-adobe-75dpi/courR08.bdf                      $(TTF_DEPS); $(BT) -m "Zourier 8"               -f "Zourier8"               -F "%{family}"		-w "Regular"		--italic-angle 0   --stylemap 64  "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-adobe-75dpi/courR10.ttf:                xorg-adobe-75dpi/courR10.bdf                      $(TTF_DEPS); $(BT) -m "Zourier 10"              -f "Zourier10"              -F "%{family}"		-w "Regular"		--italic-angle 0   --stylemap 64  "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-adobe-75dpi/courR12.ttf:                xorg-adobe-75dpi/courR12.bdf                      $(TTF_DEPS); $(BT) -m "Zourier 12"              -f "Zourier12"              -F "%{family}"		-w "Regular"		--italic-angle 0   --stylemap 64  "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-adobe-75dpi/courR14.ttf:                xorg-adobe-75dpi/courR14.bdf                      $(TTF_DEPS); $(BT) -m "Zourier 14"              -f "Zourier14"              -F "%{family}"		-w "Regular"		--italic-angle 0   --stylemap 64  "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-adobe-75dpi/courR18.ttf:                xorg-adobe-75dpi/courR18.bdf                      $(TTF_DEPS); $(BT) -m "Zourier 18"              -f "Zourier18"              -F "%{family}"		-w "Regular"		--italic-angle 0   --stylemap 64  "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-adobe-75dpi/courR24.ttf:                xorg-adobe-75dpi/courR24.bdf                      $(TTF_DEPS); $(BT) -m "Zourier 24"              -f "Zourier24"              -F "%{family}"		-w "Regular"		--italic-angle 0   --stylemap 64  "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-bh-lucidatypewriter-100dpi/lutBS08.ttf: xorg-bh-lucidatypewriter-100dpi/lutBS08.bdf       $(TTF_DEPS); $(BT) -m "Zucida Typewriter 8H"    -f "ZucidaTypewr8H-Bold"   -F "%{family} Bold"		-w "Bold"		--italic-angle 0   --stylemap 32  "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-bh-lucidatypewriter-100dpi/lutBS10.ttf: xorg-bh-lucidatypewriter-100dpi/lutBS10.bdf       $(TTF_DEPS); $(BT) -m "Zucida Typewriter 10H"   -f "ZucidaTypewr10H-Bold"   -F "%{family} Bold"		-w "Bold"		--italic-angle 0   --stylemap 32  "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-bh-lucidatypewriter-100dpi/lutBS12.ttf: xorg-bh-lucidatypewriter-100dpi/lutBS12.bdf       $(TTF_DEPS); $(BT) -m "Zucida Typewriter 12H"   -f "ZucidaTypewr12H-Bold"   -F "%{family} Bold"		-w "Bold"		--italic-angle 0   --stylemap 32  "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-bh-lucidatypewriter-100dpi/lutBS14.ttf: xorg-bh-lucidatypewriter-100dpi/lutBS14.bdf       $(TTF_DEPS); $(BT) -m "Zucida Typewriter 14H"   -f "ZucidaTypewr14H-Bold"   -F "%{family} Bold"		-w "Bold"		--italic-angle 0   --stylemap 32  "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-bh-lucidatypewriter-100dpi/lutBS18.ttf: xorg-bh-lucidatypewriter-100dpi/lutBS18.bdf       $(TTF_DEPS); $(BT) -m "Zucida Typewriter 18H"   -f "ZucidaTypewr18H-Bold"   -F "%{family} Bold"		-w "Bold"		--italic-angle 0   --stylemap 32  "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-bh-lucidatypewriter-100dpi/lutBS19.ttf: xorg-bh-lucidatypewriter-100dpi/lutBS19.bdf       $(TTF_DEPS); $(BT) -m "Zucida Typewriter 19H"   -f "ZucidaTypewr19H-Bold"   -F "%{family} Bold"		-w "Bold"		--italic-angle 0   --stylemap 32  "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-bh-lucidatypewriter-100dpi/lutBS24.ttf: xorg-bh-lucidatypewriter-100dpi/lutBS24.bdf       $(TTF_DEPS); $(BT) -m "Zucida Typewriter 24H"   -f "ZucidaTypewr24H-Bold"   -F "%{family} Bold"		-w "Bold"		--italic-angle 0   --stylemap 32  "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-bh-lucidatypewriter-100dpi/lutRS08.ttf: xorg-bh-lucidatypewriter-100dpi/lutRS08.bdf       $(TTF_DEPS); $(BT) -m "Zucida Typewriter 8H"    -f "ZucidaTypewr8H"        -F "%{family}"		-w "Regular"		--italic-angle 0   --stylemap 64  "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-bh-lucidatypewriter-100dpi/lutRS10.ttf: xorg-bh-lucidatypewriter-100dpi/lutRS10.bdf       $(TTF_DEPS); $(BT) -m "Zucida Typewriter 10H"   -f "ZucidaTypewr10H"        -F "%{family}"		-w "Regular"		--italic-angle 0   --stylemap 64  "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-bh-lucidatypewriter-100dpi/lutRS12.ttf: xorg-bh-lucidatypewriter-100dpi/lutRS12.bdf       $(TTF_DEPS); $(BT) -m "Zucida Typewriter 12H"   -f "ZucidaTypewr12H"        -F "%{family}"		-w "Regular"		--italic-angle 0   --stylemap 64  "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-bh-lucidatypewriter-100dpi/lutRS14.ttf: xorg-bh-lucidatypewriter-100dpi/lutRS14.bdf       $(TTF_DEPS); $(BT) -m "Zucida Typewriter 14H"   -f "ZucidaTypewr14H"        -F "%{family}"		-w "Regular"		--italic-angle 0   --stylemap 64  "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-bh-lucidatypewriter-100dpi/lutRS18.ttf: xorg-bh-lucidatypewriter-100dpi/lutRS18.bdf       $(TTF_DEPS); $(BT) -m "Zucida Typewriter 18H"   -f "ZucidaTypewr18H"        -F "%{family}"		-w "Regular"		--italic-angle 0   --stylemap 64  "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-bh-lucidatypewriter-100dpi/lutRS19.ttf: xorg-bh-lucidatypewriter-100dpi/lutRS19.bdf       $(TTF_DEPS); $(BT) -m "Zucida Typewriter 19H"   -f "ZucidaTypewr19H"        -F "%{family}"		-w "Regular"		--italic-angle 0   --stylemap 64  "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-bh-lucidatypewriter-100dpi/lutRS24.ttf: xorg-bh-lucidatypewriter-100dpi/lutRS24.bdf       $(TTF_DEPS); $(BT) -m "Zucida Typewriter 24H"   -f "ZucidaTypewr24H"        -F "%{family}"		-w "Regular"		--italic-angle 0   --stylemap 64  "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-bh-lucidatypewriter-75dpi/lutBS08.ttf:  xorg-bh-lucidatypewriter-75dpi/lutBS08.bdf        $(TTF_DEPS); $(BT) -m "Zucida Typewriter 8"     -f "ZucidaTypewr8-Bold"     -F "%{family} Bold"		-w "Bold"		--italic-angle 0   --stylemap 32  "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-bh-lucidatypewriter-75dpi/lutBS10.ttf:  xorg-bh-lucidatypewriter-75dpi/lutBS10.bdf        $(TTF_DEPS); $(BT) -m "Zucida Typewriter 10"    -f "ZucidaTypewr10-Bold"    -F "%{family} Bold"		-w "Bold"		--italic-angle 0   --stylemap 32  "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-bh-lucidatypewriter-75dpi/lutBS12.ttf:  xorg-bh-lucidatypewriter-75dpi/lutBS12.bdf        $(TTF_DEPS); $(BT) -m "Zucida Typewriter 12"    -f "ZucidaTypewr12-Bold"    -F "%{family} Bold"		-w "Bold"		--italic-angle 0   --stylemap 32  "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-bh-lucidatypewriter-75dpi/lutBS14.ttf:  xorg-bh-lucidatypewriter-75dpi/lutBS14.bdf        $(TTF_DEPS); $(BT) -m "Zucida Typewriter 14"    -f "ZucidaTypewr14-Bold"    -F "%{family} Bold"		-w "Bold"		--italic-angle 0   --stylemap 32  "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-bh-lucidatypewriter-75dpi/lutBS18.ttf:  xorg-bh-lucidatypewriter-75dpi/lutBS18.bdf        $(TTF_DEPS); $(BT) -m "Zucida Typewriter 18"    -f "ZucidaTypewr18-Bold"    -F "%{family} Bold"		-w "Bold"		--italic-angle 0   --stylemap 32  "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-bh-lucidatypewriter-75dpi/lutBS19.ttf:  xorg-bh-lucidatypewriter-75dpi/lutBS19.bdf        $(TTF_DEPS); $(BT) -m "Zucida Typewriter 19"    -f "ZucidaTypewr19-Bold"    -F "%{family} Bold"		-w "Bold"		--italic-angle 0   --stylemap 32  "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-bh-lucidatypewriter-75dpi/lutBS24.ttf:  xorg-bh-lucidatypewriter-75dpi/lutBS24.bdf        $(TTF_DEPS); $(BT) -m "Zucida Typewriter 24"    -f "ZucidaTypewr24-Bold"    -F "%{family} Bold"		-w "Bold"		--italic-angle 0   --stylemap 32  "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-bh-lucidatypewriter-75dpi/lutRS08.ttf:  xorg-bh-lucidatypewriter-75dpi/lutRS08.bdf        $(TTF_DEPS); $(BT) -m "Zucida Typewriter 8"     -f "ZucidaTypewr8"          -F "%{family}"		-w "Regular"		--italic-angle 0   --stylemap 64  "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-bh-lucidatypewriter-75dpi/lutRS10.ttf:  xorg-bh-lucidatypewriter-75dpi/lutRS10.bdf        $(TTF_DEPS); $(BT) -m "Zucida Typewriter 10"    -f "ZucidaTypewr10"         -F "%{family}"		-w "Regular"		--italic-angle 0   --stylemap 64  "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-bh-lucidatypewriter-75dpi/lutRS12.ttf:  xorg-bh-lucidatypewriter-75dpi/lutRS12.bdf        $(TTF_DEPS); $(BT) -m "Zucida Typewriter 12"    -f "ZucidaTypewr12"         -F "%{family}"		-w "Regular"		--italic-angle 0   --stylemap 64  "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-bh-lucidatypewriter-75dpi/lutRS14.ttf:  xorg-bh-lucidatypewriter-75dpi/lutRS14.bdf        $(TTF_DEPS); $(BT) -m "Zucida Typewriter 14"    -f "ZucidaTypewr14"         -F "%{family}"		-w "Regular"		--italic-angle 0   --stylemap 64  "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-bh-lucidatypewriter-75dpi/lutRS18.ttf:  xorg-bh-lucidatypewriter-75dpi/lutRS18.bdf        $(TTF_DEPS); $(BT) -m "Zucida Typewriter 18"    -f "ZucidaTypewr18"         -F "%{family}"		-w "Regular"		--italic-angle 0   --stylemap 64  "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-bh-lucidatypewriter-75dpi/lutRS19.ttf:  xorg-bh-lucidatypewriter-75dpi/lutRS19.bdf        $(TTF_DEPS); $(BT) -m "Zucida Typewriter 19"    -f "ZucidaTypewr19"         -F "%{family}"		-w "Regular"		--italic-angle 0   --stylemap 64  "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-bh-lucidatypewriter-75dpi/lutRS24.ttf:  xorg-bh-lucidatypewriter-75dpi/lutRS24.bdf        $(TTF_DEPS); $(BT) -m "Zucida Typewriter 24"    -f "ZucidaTypewr24"         -F "%{family}"		-w "Regular"		--italic-angle 0   --stylemap 64  "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-bitstream-100dpi/term14.ttf:            xorg-bitstream-100dpi/term14.bdf                  $(TTF_DEPS); $(BT) -m "Zerminal 14H"            -f "Zerminal14H"            -F "%{family}"		-w "Regular"		--italic-angle 0   --stylemap 64  "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-bitstream-100dpi/termB14.ttf:           xorg-bitstream-100dpi/termB14.bdf                 $(TTF_DEPS); $(BT) -m "Zerminal 14H"            -f "Zerminal14H-Bold"       -F "%{family} Bold"		-w "Bold"		--italic-angle 0   --stylemap 32  "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-bitstream-75dpi/term14.ttf:             xorg-bitstream-75dpi/term14.bdf                   $(TTF_DEPS); $(BT) -m "Zerminal 14"             -f "Zerminal14"             -F "%{family}"		-w "Regular"		--italic-angle 0   --stylemap 64  "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-bitstream-75dpi/termB14.ttf:            xorg-bitstream-75dpi/termB14.bdf                  $(TTF_DEPS); $(BT) -m "Zerminal 14"             -f "Zerminal14-Bold"        -F "%{family} Bold"		-w "Bold"		--italic-angle 0   --stylemap 32  "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-misc-misc/10x20.ttf:                    xorg-misc-misc/10x20.bdf                          $(TTF_DEPS); $(BT) -m "Zisc Fixed 10x20"        -f "ZiscFixed10x20"         -F "%{family}"		-w "Regular"		--italic-angle 0   --stylemap 64  "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-misc-misc/4x6.ttf:                      xorg-misc-misc/4x6.bdf                            $(TTF_DEPS); $(BT) -m "Zisc Fixed 4x6"          -f "ZiscFixed4x6"           -F "%{family}"		-w "Regular"		--italic-angle 0   --stylemap 64  "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-misc-misc/5x7.ttf:                      xorg-misc-misc/5x7.bdf                            $(TTF_DEPS); $(BT) -m "Zisc Fixed 5x7"          -f "ZiscFixed5x7"           -F "%{family}"		-w "Regular"		--italic-angle 0   --stylemap 64  "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-misc-misc/5x8.ttf:                      xorg-misc-misc/5x8.bdf                            $(TTF_DEPS); $(BT) -m "Zisc Fixed 5x8"          -f "ZiscFixed5x8"           -F "%{family}"		-w "Regular"		--italic-angle 0   --stylemap 64  "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-misc-misc/6x10.ttf:                     xorg-misc-misc/6x10.bdf                           $(TTF_DEPS); $(BT) -m "Zisc Fixed 6x10"         -f "ZiscFixed6x10"          -F "%{family}"		-w "Regular"		--italic-angle 0   --stylemap 64  "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-misc-misc/6x12.ttf:                     xorg-misc-misc/6x12.bdf                           $(TTF_DEPS); $(BT) -m "Zisc Fixed 6x12"         -f "ZiscFixed6x12"          -F "%{family}"		-w "Regular"		--italic-angle 0   --stylemap 64  "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-misc-misc/6x13.ttf:                     xorg-misc-misc/6x13.bdf                           $(TTF_DEPS); $(BT) -m "Zisc Fixed 6x13"         -f "ZiscFixed6x13"          -F "%{family}"		-w "Regular"		--italic-angle 0   --stylemap 64  "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-misc-misc/6x13B.ttf:                    xorg-misc-misc/6x13B.bdf                          $(TTF_DEPS); $(BT) -m "Zisc Fixed 6x13"         -f "ZiscFixed6x13-Bold"     -F "%{family} Bold"		-w "Bold"		--italic-angle 0   --stylemap 32  "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-misc-misc/6x13O.ttf:                    xorg-misc-misc/6x13O.bdf                          $(TTF_DEPS); $(BT) -m "Zisc Fixed 6x13"         -f "ZiscFixed6x13-Oblique"  -F "%{family} Oblique"	-w "Oblique"		--italic-angle -12 --stylemap 1   "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-misc-misc/6x9.ttf:                      xorg-misc-misc/6x9.bdf                            $(TTF_DEPS); $(BT) -m "Zisc Fixed 6x9"          -f "ZiscFixed6x9"           -F "%{family}"		-w "Regular"		--italic-angle 0   --stylemap 64  "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-misc-misc/7x13.ttf:                     xorg-misc-misc/7x13.bdf                           $(TTF_DEPS); $(BT) -m "Zisc Fixed 7x13"         -f "ZiscFixed7x13"          -F "%{family}"		-w "Regular"		--italic-angle 0   --stylemap 64  "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-misc-misc/7x13B.ttf:                    xorg-misc-misc/7x13B.bdf                          $(TTF_DEPS); $(BT) -m "Zisc Fixed 7x13"         -f "ZiscFixed7x13-Bold"     -F "%{family} Bold"		-w "Bold"		--italic-angle 0   --stylemap 32  "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-misc-misc/7x13O.ttf:                    xorg-misc-misc/7x13O.bdf                          $(TTF_DEPS); $(BT) -m "Zisc Fixed 7x13"         -f "ZiscFixed7x13-Oblique"  -F "%{family} Oblique"	-w "Oblique"		--italic-angle -12 --stylemap 1   "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-misc-misc/7x14.ttf:                     xorg-misc-misc/7x14.bdf                           $(TTF_DEPS); $(BT) -m "Zisc Fixed 7x14"         -f "ZiscFixed7x14"          -F "%{family}"		-w "Regular"		--italic-angle 0   --stylemap 64  "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-misc-misc/7x14B.ttf:                    xorg-misc-misc/7x14B.bdf                          $(TTF_DEPS); $(BT) -m "Zisc Fixed 7x14"         -f "ZiscFixed7x14-Bold"     -F "%{family} Bold"		-w "Bold"		--italic-angle 0   --stylemap 32  "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-misc-misc/8x13.ttf:                     xorg-misc-misc/8x13.bdf                           $(TTF_DEPS); $(BT) -m "Zisc Fixed 8x13"         -f "ZiscFixed8x13"          -F "%{family}"		-w "Regular"		--italic-angle 0   --stylemap 64  "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-misc-misc/8x13B.ttf:                    xorg-misc-misc/8x13B.bdf                          $(TTF_DEPS); $(BT) -m "Zisc Fixed 8x13"         -f "ZiscFixed8x13-Bold"     -F "%{family} Bold"		-w "Bold"		--italic-angle 0   --stylemap 32  "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-misc-misc/8x13O.ttf:                    xorg-misc-misc/8x13O.bdf                          $(TTF_DEPS); $(BT) -m "Zisc Fixed 8x13"         -f "ZiscFixed8x13-Oblique"  -F "%{family} Oblique"	-w "Oblique"		--italic-angle -12 --stylemap 1   "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-misc-misc/9x15.ttf:                     xorg-misc-misc/9x15.bdf                           $(TTF_DEPS); $(BT) -m "Zisc Fixed 9x15"         -f "ZiscFixed9x15"          -F "%{family}"		-w "Regular"		--italic-angle 0   --stylemap 64  "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-misc-misc/9x15B.ttf:                    xorg-misc-misc/9x15B.bdf                          $(TTF_DEPS); $(BT) -m "Zisc Fixed 9x15"         -f "ZiscFixed9x15-Bold"     -F "%{family} Bold"		-w "Bold"		--italic-angle 0   --stylemap 32  "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-misc-misc/9x18.ttf:                     xorg-misc-misc/9x18.bdf                           $(TTF_DEPS); $(BT) -m "Zisc Fixed 9x18"         -f "ZiscFixed9x18"          -F "%{family}"		-w "Regular"		--italic-angle 0   --stylemap 64  "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-misc-misc/9x18B.ttf:                    xorg-misc-misc/9x18B.bdf                          $(TTF_DEPS); $(BT) -m "Zisc Fixed 9x18"         -f "ZiscFixed9x18-Bold"     -F "%{family} Bold"		-w "Bold"		--italic-angle 0   --stylemap 32  "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-sony-misc/12x24.ttf:                    xorg-sony-misc/12x24.bdf                          $(TTF_DEPS); $(BT) -m "Zony Fixed 12x24"        -f "ZonyFixed12x24"         -F "%{family}"		-w "Regular"		--italic-angle 0   --stylemap 64  "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-sony-misc/12x24rk.ttf:                  xorg-sony-misc/12x24rk.bdf                        $(TTF_DEPS); $(BT) -m "Zony Fixed 12x24rk"      -f "ZonyFixed12x24rk"       -F "%{family}"		-w "Regular"		--italic-angle 0   --stylemap 64  "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-sony-misc/8x16.ttf:                     xorg-sony-misc/8x16.bdf                           $(TTF_DEPS); $(BT) -m "Zony Fixed 8x16"         -f "ZonyFixed8x16"          -F "%{family}"		-w "Regular"		--italic-angle 0   --stylemap 64  "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"
dist/ttf/xorg-sony-misc/8x16rk.ttf:                   xorg-sony-misc/8x16rk.bdf                         $(TTF_DEPS); $(BT) -m "Zony Fixed 8x16rk"       -f "ZonyFixed8x16rk"        -F "%{family}"		-w "Regular"		--italic-angle 0   --stylemap 64  "$<" "$@.tmp.ttf" $(BT_REDIR) && mv "$@.tmp.ttf" "$@"

clean: FORCE
	/bin/rm -fr $(TTF_FONTS) || true
	find . -type f -name '*.tmp.*' -exec rm {} + || true

.PHONY: FORCE

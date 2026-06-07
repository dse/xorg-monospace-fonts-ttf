default: fonts

FONT_PACKAGE_NAME	:= GorxMonoFonts
SFNT_REVISION		:= 001.9000
VERSION			:= 1.90.0
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

fonts: $(TTF_FONTS)

adobe-courier: $(ADOBE_COURIER_TTF_FONTS)
lucida-typewriter: $(LUCIDA_TYPEWRITER_TTF_FONTS)
bitstream-terminal-fonts: $(BITSTREAM_TERMINAL_TTF_FONTS)
misc-fonts: $(MISC_TTF_FONTS)
sony-misc-fonts: $(SONY_MISC_TTF_FONTS)

dist/ttf/Zourier108-Bold.ttf:           xorg-adobe-100dpi/courB08.bdf                     $(TTF_DEPS); $(BT) -m "Zourier 108"             -f "Zourier108-Bold"        -F "%{family} Bold"		-w "Bold"		--italic-angle 0   --stylemap 32  "$<" "$@.tmp.ttf" && mv "$@.tmp.ttf" "$@"
dist/ttf/Zourier110-Bold.ttf:           xorg-adobe-100dpi/courB10.bdf                     $(TTF_DEPS); $(BT) -m "Zourier 110"             -f "Zourier110-Bold"        -F "%{family} Bold"		-w "Bold"		--italic-angle 0   --stylemap 32  "$<" "$@.tmp.ttf" && mv "$@.tmp.ttf" "$@"
dist/ttf/Zourier112-Bold.ttf:           xorg-adobe-100dpi/courB12.bdf                     $(TTF_DEPS); $(BT) -m "Zourier 112"             -f "Zourier112-Bold"        -F "%{family} Bold"		-w "Bold"		--italic-angle 0   --stylemap 32  "$<" "$@.tmp.ttf" && mv "$@.tmp.ttf" "$@"
dist/ttf/Zourier114-Bold.ttf:           xorg-adobe-100dpi/courB14.bdf                     $(TTF_DEPS); $(BT) -m "Zourier 114"             -f "Zourier114-Bold"        -F "%{family} Bold"		-w "Bold"		--italic-angle 0   --stylemap 32  "$<" "$@.tmp.ttf" && mv "$@.tmp.ttf" "$@"
dist/ttf/Zourier118-Bold.ttf:           xorg-adobe-100dpi/courB18.bdf                     $(TTF_DEPS); $(BT) -m "Zourier 118"             -f "Zourier118-Bold"        -F "%{family} Bold"		-w "Bold"		--italic-angle 0   --stylemap 32  "$<" "$@.tmp.ttf" && mv "$@.tmp.ttf" "$@"
dist/ttf/Zourier124-Bold.ttf:           xorg-adobe-100dpi/courB24.bdf                     $(TTF_DEPS); $(BT) -m "Zourier 124"             -f "Zourier124-Bold"        -F "%{family} Bold"		-w "Bold"		--italic-angle 0   --stylemap 32  "$<" "$@.tmp.ttf" && mv "$@.tmp.ttf" "$@"
dist/ttf/Zourier108-BoldOblique.ttf:    xorg-adobe-100dpi/courBO08.bdf                    $(TTF_DEPS); $(BT) -m "Zourier 108"             -f "Zourier108-BoldOblique" -F "%{family} Bold Oblique"	-w "Bold Oblique"       --italic-angle -12 --stylemap 33  "$<" "$@.tmp.ttf" && mv "$@.tmp.ttf" "$@"
dist/ttf/Zourier110-BoldOblique.ttf:    xorg-adobe-100dpi/courBO10.bdf                    $(TTF_DEPS); $(BT) -m "Zourier 110"             -f "Zourier110-BoldOblique" -F "%{family} Bold Oblique"	-w "Bold Oblique"       --italic-angle -12 --stylemap 33  "$<" "$@.tmp.ttf" && mv "$@.tmp.ttf" "$@"
dist/ttf/Zourier112-BoldOblique.ttf:    xorg-adobe-100dpi/courBO12.bdf                    $(TTF_DEPS); $(BT) -m "Zourier 112"             -f "Zourier112-BoldOblique" -F "%{family} Bold Oblique"	-w "Bold Oblique"       --italic-angle -12 --stylemap 33  "$<" "$@.tmp.ttf" && mv "$@.tmp.ttf" "$@"
dist/ttf/Zourier114-BoldOblique.ttf:    xorg-adobe-100dpi/courBO14.bdf                    $(TTF_DEPS); $(BT) -m "Zourier 114"             -f "Zourier114-BoldOblique" -F "%{family} Bold Oblique"	-w "Bold Oblique"       --italic-angle -12 --stylemap 33  "$<" "$@.tmp.ttf" && mv "$@.tmp.ttf" "$@"
dist/ttf/Zourier118-BoldOblique.ttf:    xorg-adobe-100dpi/courBO18.bdf                    $(TTF_DEPS); $(BT) -m "Zourier 118"             -f "Zourier118-BoldOblique" -F "%{family} Bold Oblique"	-w "Bold Oblique"       --italic-angle -12 --stylemap 33  "$<" "$@.tmp.ttf" && mv "$@.tmp.ttf" "$@"
dist/ttf/Zourier124-BoldOblique.ttf:    xorg-adobe-100dpi/courBO24.bdf                    $(TTF_DEPS); $(BT) -m "Zourier 124"             -f "Zourier124-BoldOblique" -F "%{family} Bold Oblique"	-w "Bold Oblique"       --italic-angle -12 --stylemap 33  "$<" "$@.tmp.ttf" && mv "$@.tmp.ttf" "$@"
dist/ttf/Zourier108-Oblique.ttf:        xorg-adobe-100dpi/courO08.bdf                     $(TTF_DEPS); $(BT) -m "Zourier 108"             -f "Zourier108-Oblique"     -F "%{family} Oblique"		-w "Oblique"		--italic-angle -12 --stylemap 1   "$<" "$@.tmp.ttf" && mv "$@.tmp.ttf" "$@"
dist/ttf/Zourier110-Oblique.ttf:        xorg-adobe-100dpi/courO10.bdf                     $(TTF_DEPS); $(BT) -m "Zourier 110"             -f "Zourier110-Oblique"     -F "%{family} Oblique"		-w "Oblique"		--italic-angle -12 --stylemap 1   "$<" "$@.tmp.ttf" && mv "$@.tmp.ttf" "$@"
dist/ttf/Zourier112-Oblique.ttf:        xorg-adobe-100dpi/courO12.bdf                     $(TTF_DEPS); $(BT) -m "Zourier 112"             -f "Zourier112-Oblique"     -F "%{family} Oblique"		-w "Oblique"		--italic-angle -12 --stylemap 1   "$<" "$@.tmp.ttf" && mv "$@.tmp.ttf" "$@"
dist/ttf/Zourier114-Oblique.ttf:        xorg-adobe-100dpi/courO14.bdf                     $(TTF_DEPS); $(BT) -m "Zourier 114"             -f "Zourier114-Oblique"     -F "%{family} Oblique"		-w "Oblique"		--italic-angle -12 --stylemap 1   "$<" "$@.tmp.ttf" && mv "$@.tmp.ttf" "$@"
dist/ttf/Zourier118-Oblique.ttf:        xorg-adobe-100dpi/courO18.bdf                     $(TTF_DEPS); $(BT) -m "Zourier 118"             -f "Zourier118-Oblique"     -F "%{family} Oblique"		-w "Oblique"		--italic-angle -12 --stylemap 1   "$<" "$@.tmp.ttf" && mv "$@.tmp.ttf" "$@"
dist/ttf/Zourier124-Oblique.ttf:        xorg-adobe-100dpi/courO24.bdf                     $(TTF_DEPS); $(BT) -m "Zourier 124"             -f "Zourier124-Oblique"     -F "%{family} Oblique"		-w "Oblique"		--italic-angle -12 --stylemap 1   "$<" "$@.tmp.ttf" && mv "$@.tmp.ttf" "$@"
dist/ttf/Zourier108.ttf:		xorg-adobe-100dpi/courR08.bdf                     $(TTF_DEPS); $(BT) -m "Zourier 108"             -f "Zourier108"             -F "%{family}"			-w "Regular"		--italic-angle 0   --stylemap 64  "$<" "$@.tmp.ttf" && mv "$@.tmp.ttf" "$@"
dist/ttf/Zourier110.ttf:		xorg-adobe-100dpi/courR10.bdf                     $(TTF_DEPS); $(BT) -m "Zourier 110"             -f "Zourier110"             -F "%{family}"			-w "Regular"		--italic-angle 0   --stylemap 64  "$<" "$@.tmp.ttf" && mv "$@.tmp.ttf" "$@"
dist/ttf/Zourier112.ttf:		xorg-adobe-100dpi/courR12.bdf                     $(TTF_DEPS); $(BT) -m "Zourier 112"             -f "Zourier112"             -F "%{family}"			-w "Regular"		--italic-angle 0   --stylemap 64  "$<" "$@.tmp.ttf" && mv "$@.tmp.ttf" "$@"
dist/ttf/Zourier114.ttf:		xorg-adobe-100dpi/courR14.bdf                     $(TTF_DEPS); $(BT) -m "Zourier 114"             -f "Zourier114"             -F "%{family}"			-w "Regular"		--italic-angle 0   --stylemap 64  "$<" "$@.tmp.ttf" && mv "$@.tmp.ttf" "$@"
dist/ttf/Zourier118.ttf:		xorg-adobe-100dpi/courR18.bdf                     $(TTF_DEPS); $(BT) -m "Zourier 118"             -f "Zourier118"             -F "%{family}"			-w "Regular"		--italic-angle 0   --stylemap 64  "$<" "$@.tmp.ttf" && mv "$@.tmp.ttf" "$@"
dist/ttf/Zourier124.ttf:		xorg-adobe-100dpi/courR24.bdf                     $(TTF_DEPS); $(BT) -m "Zourier 124"             -f "Zourier124"             -F "%{family}"			-w "Regular"		--italic-angle 0   --stylemap 64  "$<" "$@.tmp.ttf" && mv "$@.tmp.ttf" "$@"
dist/ttf/Zourier8-Bold.ttf:             xorg-adobe-75dpi/courB08.bdf                      $(TTF_DEPS); $(BT) -m "Zourier 8"               -f "Zourier8-Bold"          -F "%{family} Bold"		-w "Bold"		--italic-angle 0   --stylemap 32  "$<" "$@.tmp.ttf" && mv "$@.tmp.ttf" "$@"
dist/ttf/Zourier10-Bold.ttf:            xorg-adobe-75dpi/courB10.bdf                      $(TTF_DEPS); $(BT) -m "Zourier 10"              -f "Zourier10-Bold"         -F "%{family} Bold"		-w "Bold"		--italic-angle 0   --stylemap 32  "$<" "$@.tmp.ttf" && mv "$@.tmp.ttf" "$@"
dist/ttf/Zourier12-Bold.ttf:            xorg-adobe-75dpi/courB12.bdf                      $(TTF_DEPS); $(BT) -m "Zourier 12"              -f "Zourier12-Bold"         -F "%{family} Bold"		-w "Bold"		--italic-angle 0   --stylemap 32  "$<" "$@.tmp.ttf" && mv "$@.tmp.ttf" "$@"
dist/ttf/Zourier14-Bold.ttf:            xorg-adobe-75dpi/courB14.bdf                      $(TTF_DEPS); $(BT) -m "Zourier 14"              -f "Zourier14-Bold"         -F "%{family} Bold"		-w "Bold"		--italic-angle 0   --stylemap 32  "$<" "$@.tmp.ttf" && mv "$@.tmp.ttf" "$@"
dist/ttf/Zourier18-Bold.ttf:            xorg-adobe-75dpi/courB18.bdf                      $(TTF_DEPS); $(BT) -m "Zourier 18"              -f "Zourier18-Bold"         -F "%{family} Bold"		-w "Bold"		--italic-angle 0   --stylemap 32  "$<" "$@.tmp.ttf" && mv "$@.tmp.ttf" "$@"
dist/ttf/Zourier24-Bold.ttf:            xorg-adobe-75dpi/courB24.bdf                      $(TTF_DEPS); $(BT) -m "Zourier 24"              -f "Zourier24-Bold"         -F "%{family} Bold"		-w "Bold"		--italic-angle 0   --stylemap 32  "$<" "$@.tmp.ttf" && mv "$@.tmp.ttf" "$@"
dist/ttf/Zourier8-BoldOblique.ttf:      xorg-adobe-75dpi/courBO08.bdf                     $(TTF_DEPS); $(BT) -m "Zourier 8"               -f "Zourier8-BoldOblique"   -F "%{family} Bold Oblique"	-w "Bold Oblique"       --italic-angle -12 --stylemap 33  "$<" "$@.tmp.ttf" && mv "$@.tmp.ttf" "$@"
dist/ttf/Zourier10-BoldOblique.ttf:     xorg-adobe-75dpi/courBO10.bdf                     $(TTF_DEPS); $(BT) -m "Zourier 10"              -f "Zourier10-BoldOblique"  -F "%{family} Bold Oblique"	-w "Bold Oblique"       --italic-angle -12 --stylemap 33  "$<" "$@.tmp.ttf" && mv "$@.tmp.ttf" "$@"
dist/ttf/Zourier12-BoldOblique.ttf:     xorg-adobe-75dpi/courBO12.bdf                     $(TTF_DEPS); $(BT) -m "Zourier 12"              -f "Zourier12-BoldOblique"  -F "%{family} Bold Oblique"	-w "Bold Oblique"       --italic-angle -12 --stylemap 33  "$<" "$@.tmp.ttf" && mv "$@.tmp.ttf" "$@"
dist/ttf/Zourier14-BoldOblique.ttf:     xorg-adobe-75dpi/courBO14.bdf                     $(TTF_DEPS); $(BT) -m "Zourier 14"              -f "Zourier14-BoldOblique"  -F "%{family} Bold Oblique"	-w "Bold Oblique"       --italic-angle -12 --stylemap 33  "$<" "$@.tmp.ttf" && mv "$@.tmp.ttf" "$@"
dist/ttf/Zourier18-BoldOblique.ttf:     xorg-adobe-75dpi/courBO18.bdf                     $(TTF_DEPS); $(BT) -m "Zourier 18"              -f "Zourier18-BoldOblique"  -F "%{family} Bold Oblique"	-w "Bold Oblique"       --italic-angle -12 --stylemap 33  "$<" "$@.tmp.ttf" && mv "$@.tmp.ttf" "$@"
dist/ttf/Zourier24-BoldOblique.ttf:     xorg-adobe-75dpi/courBO24.bdf                     $(TTF_DEPS); $(BT) -m "Zourier 24"              -f "Zourier24-BoldOblique"  -F "%{family} Bold Oblique"	-w "Bold Oblique"       --italic-angle -12 --stylemap 33  "$<" "$@.tmp.ttf" && mv "$@.tmp.ttf" "$@"
dist/ttf/Zourier8-Oblique.ttf:          xorg-adobe-75dpi/courO08.bdf                      $(TTF_DEPS); $(BT) -m "Zourier 8"               -f "Zourier8-Oblique"       -F "%{family} Oblique"		-w "Oblique"		--italic-angle -12 --stylemap 1   "$<" "$@.tmp.ttf" && mv "$@.tmp.ttf" "$@"
dist/ttf/Zourier10-Oblique.ttf:         xorg-adobe-75dpi/courO10.bdf                      $(TTF_DEPS); $(BT) -m "Zourier 10"              -f "Zourier10-Oblique"      -F "%{family} Oblique"		-w "Oblique"		--italic-angle -12 --stylemap 1   "$<" "$@.tmp.ttf" && mv "$@.tmp.ttf" "$@"
dist/ttf/Zourier12-Oblique.ttf:         xorg-adobe-75dpi/courO12.bdf                      $(TTF_DEPS); $(BT) -m "Zourier 12"              -f "Zourier12-Oblique"      -F "%{family} Oblique"		-w "Oblique"		--italic-angle -12 --stylemap 1   "$<" "$@.tmp.ttf" && mv "$@.tmp.ttf" "$@"
dist/ttf/Zourier14-Oblique.ttf:         xorg-adobe-75dpi/courO14.bdf                      $(TTF_DEPS); $(BT) -m "Zourier 14"              -f "Zourier14-Oblique"      -F "%{family} Oblique"		-w "Oblique"		--italic-angle -12 --stylemap 1   "$<" "$@.tmp.ttf" && mv "$@.tmp.ttf" "$@"
dist/ttf/Zourier18-Oblique.ttf:         xorg-adobe-75dpi/courO18.bdf                      $(TTF_DEPS); $(BT) -m "Zourier 18"              -f "Zourier18-Oblique"      -F "%{family} Oblique"		-w "Oblique"		--italic-angle -12 --stylemap 1   "$<" "$@.tmp.ttf" && mv "$@.tmp.ttf" "$@"
dist/ttf/Zourier24-Oblique.ttf:         xorg-adobe-75dpi/courO24.bdf                      $(TTF_DEPS); $(BT) -m "Zourier 24"              -f "Zourier24-Oblique"      -F "%{family} Oblique"		-w "Oblique"		--italic-angle -12 --stylemap 1   "$<" "$@.tmp.ttf" && mv "$@.tmp.ttf" "$@"
dist/ttf/Zourier8.ttf:			xorg-adobe-75dpi/courR08.bdf                      $(TTF_DEPS); $(BT) -m "Zourier 8"               -f "Zourier8"               -F "%{family}"			-w "Regular"		--italic-angle 0   --stylemap 64  "$<" "$@.tmp.ttf" && mv "$@.tmp.ttf" "$@"
dist/ttf/Zourier10.ttf:			xorg-adobe-75dpi/courR10.bdf                      $(TTF_DEPS); $(BT) -m "Zourier 10"              -f "Zourier10"              -F "%{family}"			-w "Regular"		--italic-angle 0   --stylemap 64  "$<" "$@.tmp.ttf" && mv "$@.tmp.ttf" "$@"
dist/ttf/Zourier12.ttf:			xorg-adobe-75dpi/courR12.bdf                      $(TTF_DEPS); $(BT) -m "Zourier 12"              -f "Zourier12"              -F "%{family}"			-w "Regular"		--italic-angle 0   --stylemap 64  "$<" "$@.tmp.ttf" && mv "$@.tmp.ttf" "$@"
dist/ttf/Zourier14.ttf:			xorg-adobe-75dpi/courR14.bdf                      $(TTF_DEPS); $(BT) -m "Zourier 14"              -f "Zourier14"              -F "%{family}"			-w "Regular"		--italic-angle 0   --stylemap 64  "$<" "$@.tmp.ttf" && mv "$@.tmp.ttf" "$@"
dist/ttf/Zourier18.ttf:			xorg-adobe-75dpi/courR18.bdf                      $(TTF_DEPS); $(BT) -m "Zourier 18"              -f "Zourier18"              -F "%{family}"			-w "Regular"		--italic-angle 0   --stylemap 64  "$<" "$@.tmp.ttf" && mv "$@.tmp.ttf" "$@"
dist/ttf/Zourier24.ttf:			xorg-adobe-75dpi/courR24.bdf                      $(TTF_DEPS); $(BT) -m "Zourier 24"              -f "Zourier24"              -F "%{family}"			-w "Regular"		--italic-angle 0   --stylemap 64  "$<" "$@.tmp.ttf" && mv "$@.tmp.ttf" "$@"
dist/ttf/ZuTypewr108-Bold.ttf:		xorg-bh-lucidatypewriter-100dpi/lutBS08.bdf       $(TTF_DEPS); $(BT) -m "Zucida Typewriter 108"   -f "ZuTypewr108-Bold"       -F "%{family} Bold"		-w "Bold"		--italic-angle 0   --stylemap 32  "$<" "$@.tmp.ttf" && mv "$@.tmp.ttf" "$@"
dist/ttf/ZuTypewr110-Bold.ttf:		xorg-bh-lucidatypewriter-100dpi/lutBS10.bdf       $(TTF_DEPS); $(BT) -m "Zucida Typewriter 110"   -f "ZuTypewr110-Bold"       -F "%{family} Bold"		-w "Bold"		--italic-angle 0   --stylemap 32  "$<" "$@.tmp.ttf" && mv "$@.tmp.ttf" "$@"
dist/ttf/ZuTypewr112-Bold.ttf:		xorg-bh-lucidatypewriter-100dpi/lutBS12.bdf       $(TTF_DEPS); $(BT) -m "Zucida Typewriter 112"   -f "ZuTypewr112-Bold"       -F "%{family} Bold"		-w "Bold"		--italic-angle 0   --stylemap 32  "$<" "$@.tmp.ttf" && mv "$@.tmp.ttf" "$@"
dist/ttf/ZuTypewr114-Bold.ttf:		xorg-bh-lucidatypewriter-100dpi/lutBS14.bdf       $(TTF_DEPS); $(BT) -m "Zucida Typewriter 114"   -f "ZuTypewr114-Bold"       -F "%{family} Bold"		-w "Bold"		--italic-angle 0   --stylemap 32  "$<" "$@.tmp.ttf" && mv "$@.tmp.ttf" "$@"
dist/ttf/ZuTypewr118-Bold.ttf:		xorg-bh-lucidatypewriter-100dpi/lutBS18.bdf       $(TTF_DEPS); $(BT) -m "Zucida Typewriter 118"   -f "ZuTypewr118-Bold"       -F "%{family} Bold"		-w "Bold"		--italic-angle 0   --stylemap 32  "$<" "$@.tmp.ttf" && mv "$@.tmp.ttf" "$@"
dist/ttf/ZuTypewr119-Bold.ttf:		xorg-bh-lucidatypewriter-100dpi/lutBS19.bdf       $(TTF_DEPS); $(BT) -m "Zucida Typewriter 119"   -f "ZuTypewr119-Bold"       -F "%{family} Bold"		-w "Bold"		--italic-angle 0   --stylemap 32  "$<" "$@.tmp.ttf" && mv "$@.tmp.ttf" "$@"
dist/ttf/ZuTypewr124-Bold.ttf:		xorg-bh-lucidatypewriter-100dpi/lutBS24.bdf       $(TTF_DEPS); $(BT) -m "Zucida Typewriter 124"   -f "ZuTypewr124-Bold"       -F "%{family} Bold"		-w "Bold"		--italic-angle 0   --stylemap 32  "$<" "$@.tmp.ttf" && mv "$@.tmp.ttf" "$@"
dist/ttf/ZuTypewr108.ttf:		xorg-bh-lucidatypewriter-100dpi/lutRS08.bdf       $(TTF_DEPS); $(BT) -m "Zucida Typewriter 108"   -f "ZuTypewr108"            -F "%{family}"			-w "Regular"		--italic-angle 0   --stylemap 64  "$<" "$@.tmp.ttf" && mv "$@.tmp.ttf" "$@"
dist/ttf/ZuTypewr110.ttf:		xorg-bh-lucidatypewriter-100dpi/lutRS10.bdf       $(TTF_DEPS); $(BT) -m "Zucida Typewriter 110"   -f "ZuTypewr110"            -F "%{family}"			-w "Regular"		--italic-angle 0   --stylemap 64  "$<" "$@.tmp.ttf" && mv "$@.tmp.ttf" "$@"
dist/ttf/ZuTypewr112.ttf:		xorg-bh-lucidatypewriter-100dpi/lutRS12.bdf       $(TTF_DEPS); $(BT) -m "Zucida Typewriter 112"   -f "ZuTypewr112"            -F "%{family}"			-w "Regular"		--italic-angle 0   --stylemap 64  "$<" "$@.tmp.ttf" && mv "$@.tmp.ttf" "$@"
dist/ttf/ZuTypewr114.ttf:		xorg-bh-lucidatypewriter-100dpi/lutRS14.bdf       $(TTF_DEPS); $(BT) -m "Zucida Typewriter 114"   -f "ZuTypewr114"            -F "%{family}"			-w "Regular"		--italic-angle 0   --stylemap 64  "$<" "$@.tmp.ttf" && mv "$@.tmp.ttf" "$@"
dist/ttf/ZuTypewr118.ttf:		xorg-bh-lucidatypewriter-100dpi/lutRS18.bdf       $(TTF_DEPS); $(BT) -m "Zucida Typewriter 118"   -f "ZuTypewr118"            -F "%{family}"			-w "Regular"		--italic-angle 0   --stylemap 64  "$<" "$@.tmp.ttf" && mv "$@.tmp.ttf" "$@"
dist/ttf/ZuTypewr119.ttf:		xorg-bh-lucidatypewriter-100dpi/lutRS19.bdf       $(TTF_DEPS); $(BT) -m "Zucida Typewriter 119"   -f "ZuTypewr119"            -F "%{family}"			-w "Regular"		--italic-angle 0   --stylemap 64  "$<" "$@.tmp.ttf" && mv "$@.tmp.ttf" "$@"
dist/ttf/ZuTypewr124.ttf:		xorg-bh-lucidatypewriter-100dpi/lutRS24.bdf       $(TTF_DEPS); $(BT) -m "Zucida Typewriter 124"   -f "ZuTypewr124"            -F "%{family}"			-w "Regular"		--italic-angle 0   --stylemap 64  "$<" "$@.tmp.ttf" && mv "$@.tmp.ttf" "$@"
dist/ttf/ZuTypewr8-Bold.ttf:		xorg-bh-lucidatypewriter-75dpi/lutBS08.bdf        $(TTF_DEPS); $(BT) -m "Zucida Typewriter 8"     -f "ZuTypewr8-Bold"         -F "%{family} Bold"		-w "Bold"		--italic-angle 0   --stylemap 32  "$<" "$@.tmp.ttf" && mv "$@.tmp.ttf" "$@"
dist/ttf/ZuTypewr10-Bold.ttf:		xorg-bh-lucidatypewriter-75dpi/lutBS10.bdf        $(TTF_DEPS); $(BT) -m "Zucida Typewriter 10"    -f "ZuTypewr10-Bold"        -F "%{family} Bold"		-w "Bold"		--italic-angle 0   --stylemap 32  "$<" "$@.tmp.ttf" && mv "$@.tmp.ttf" "$@"
dist/ttf/ZuTypewr12-Bold.ttf:		xorg-bh-lucidatypewriter-75dpi/lutBS12.bdf        $(TTF_DEPS); $(BT) -m "Zucida Typewriter 12"    -f "ZuTypewr12-Bold"        -F "%{family} Bold"		-w "Bold"		--italic-angle 0   --stylemap 32  "$<" "$@.tmp.ttf" && mv "$@.tmp.ttf" "$@"
dist/ttf/ZuTypewr14-Bold.ttf:		xorg-bh-lucidatypewriter-75dpi/lutBS14.bdf        $(TTF_DEPS); $(BT) -m "Zucida Typewriter 14"    -f "ZuTypewr14-Bold"        -F "%{family} Bold"		-w "Bold"		--italic-angle 0   --stylemap 32  "$<" "$@.tmp.ttf" && mv "$@.tmp.ttf" "$@"
dist/ttf/ZuTypewr18-Bold.ttf:		xorg-bh-lucidatypewriter-75dpi/lutBS18.bdf        $(TTF_DEPS); $(BT) -m "Zucida Typewriter 18"    -f "ZuTypewr18-Bold"        -F "%{family} Bold"		-w "Bold"		--italic-angle 0   --stylemap 32  "$<" "$@.tmp.ttf" && mv "$@.tmp.ttf" "$@"
dist/ttf/ZuTypewr19-Bold.ttf:		xorg-bh-lucidatypewriter-75dpi/lutBS19.bdf        $(TTF_DEPS); $(BT) -m "Zucida Typewriter 19"    -f "ZuTypewr19-Bold"        -F "%{family} Bold"		-w "Bold"		--italic-angle 0   --stylemap 32  "$<" "$@.tmp.ttf" && mv "$@.tmp.ttf" "$@"
dist/ttf/ZuTypewr24-Bold.ttf:		xorg-bh-lucidatypewriter-75dpi/lutBS24.bdf        $(TTF_DEPS); $(BT) -m "Zucida Typewriter 24"    -f "ZuTypewr24-Bold"        -F "%{family} Bold"		-w "Bold"		--italic-angle 0   --stylemap 32  "$<" "$@.tmp.ttf" && mv "$@.tmp.ttf" "$@"
dist/ttf/ZuTypewr8.ttf:			xorg-bh-lucidatypewriter-75dpi/lutRS08.bdf        $(TTF_DEPS); $(BT) -m "Zucida Typewriter 8"     -f "ZuTypewr8"              -F "%{family}"			-w "Regular"		--italic-angle 0   --stylemap 64  "$<" "$@.tmp.ttf" && mv "$@.tmp.ttf" "$@"
dist/ttf/ZuTypewr10.ttf:		xorg-bh-lucidatypewriter-75dpi/lutRS10.bdf        $(TTF_DEPS); $(BT) -m "Zucida Typewriter 10"    -f "ZuTypewr10"             -F "%{family}"			-w "Regular"		--italic-angle 0   --stylemap 64  "$<" "$@.tmp.ttf" && mv "$@.tmp.ttf" "$@"
dist/ttf/ZuTypewr12.ttf:		xorg-bh-lucidatypewriter-75dpi/lutRS12.bdf        $(TTF_DEPS); $(BT) -m "Zucida Typewriter 12"    -f "ZuTypewr12"             -F "%{family}"			-w "Regular"		--italic-angle 0   --stylemap 64  "$<" "$@.tmp.ttf" && mv "$@.tmp.ttf" "$@"
dist/ttf/ZuTypewr14.ttf:		xorg-bh-lucidatypewriter-75dpi/lutRS14.bdf        $(TTF_DEPS); $(BT) -m "Zucida Typewriter 14"    -f "ZuTypewr14"             -F "%{family}"			-w "Regular"		--italic-angle 0   --stylemap 64  "$<" "$@.tmp.ttf" && mv "$@.tmp.ttf" "$@"
dist/ttf/ZuTypewr18.ttf:		xorg-bh-lucidatypewriter-75dpi/lutRS18.bdf        $(TTF_DEPS); $(BT) -m "Zucida Typewriter 18"    -f "ZuTypewr18"             -F "%{family}"			-w "Regular"		--italic-angle 0   --stylemap 64  "$<" "$@.tmp.ttf" && mv "$@.tmp.ttf" "$@"
dist/ttf/ZuTypewr19.ttf:		xorg-bh-lucidatypewriter-75dpi/lutRS19.bdf        $(TTF_DEPS); $(BT) -m "Zucida Typewriter 19"    -f "ZuTypewr19"             -F "%{family}"			-w "Regular"		--italic-angle 0   --stylemap 64  "$<" "$@.tmp.ttf" && mv "$@.tmp.ttf" "$@"
dist/ttf/ZuTypewr24.ttf:		xorg-bh-lucidatypewriter-75dpi/lutRS24.bdf        $(TTF_DEPS); $(BT) -m "Zucida Typewriter 24"    -f "ZuTypewr24"             -F "%{family}"			-w "Regular"		--italic-angle 0   --stylemap 64  "$<" "$@.tmp.ttf" && mv "$@.tmp.ttf" "$@"
dist/ttf/Zerminal114.ttf:		xorg-bitstream-100dpi/term14.bdf                  $(TTF_DEPS); $(BT) -m "Zerminal 114"            -f "Zerminal114"            -F "%{family}"			-w "Regular"		--italic-angle 0   --stylemap 64  "$<" "$@.tmp.ttf" && mv "$@.tmp.ttf" "$@"
dist/ttf/Zerminal114-Bold.ttf:          xorg-bitstream-100dpi/termB14.bdf                 $(TTF_DEPS); $(BT) -m "Zerminal 114"            -f "Zerminal114-Bold"       -F "%{family} Bold"		-w "Bold"		--italic-angle 0   --stylemap 32  "$<" "$@.tmp.ttf" && mv "$@.tmp.ttf" "$@"
dist/ttf/Zerminal14.ttf:		xorg-bitstream-75dpi/term14.bdf                   $(TTF_DEPS); $(BT) -m "Zerminal 14"             -f "Zerminal14"             -F "%{family}"			-w "Regular"		--italic-angle 0   --stylemap 64  "$<" "$@.tmp.ttf" && mv "$@.tmp.ttf" "$@"
dist/ttf/Zerminal14-Bold.ttf:           xorg-bitstream-75dpi/termB14.bdf                  $(TTF_DEPS); $(BT) -m "Zerminal 14"             -f "Zerminal14-Bold"        -F "%{family} Bold"		-w "Bold"		--italic-angle 0   --stylemap 32  "$<" "$@.tmp.ttf" && mv "$@.tmp.ttf" "$@"
dist/ttf/ZiscFixed10x20.ttf:            xorg-misc-misc/10x20.bdf                          $(TTF_DEPS); $(BT) -m "Zisc Fixed 10x20"        -f "ZiscFixed10x20"         -F "%{family}"			-w "Regular"		--italic-angle 0   --stylemap 64  "$<" "$@.tmp.ttf" && mv "$@.tmp.ttf" "$@"
dist/ttf/ZiscFixed4x6.ttf:              xorg-misc-misc/4x6.bdf                            $(TTF_DEPS); $(BT) -m "Zisc Fixed 4x6"          -f "ZiscFixed4x6"           -F "%{family}"			-w "Regular"		--italic-angle 0   --stylemap 64  "$<" "$@.tmp.ttf" && mv "$@.tmp.ttf" "$@"
dist/ttf/ZiscFixed5x7.ttf:              xorg-misc-misc/5x7.bdf                            $(TTF_DEPS); $(BT) -m "Zisc Fixed 5x7"          -f "ZiscFixed5x7"           -F "%{family}"			-w "Regular"		--italic-angle 0   --stylemap 64  "$<" "$@.tmp.ttf" && mv "$@.tmp.ttf" "$@"
dist/ttf/ZiscFixed5x8.ttf:              xorg-misc-misc/5x8.bdf                            $(TTF_DEPS); $(BT) -m "Zisc Fixed 5x8"          -f "ZiscFixed5x8"           -F "%{family}"			-w "Regular"		--italic-angle 0   --stylemap 64  "$<" "$@.tmp.ttf" && mv "$@.tmp.ttf" "$@"
dist/ttf/ZiscFixed6x10.ttf:             xorg-misc-misc/6x10.bdf                           $(TTF_DEPS); $(BT) -m "Zisc Fixed 6x10"         -f "ZiscFixed6x10"          -F "%{family}"			-w "Regular"		--italic-angle 0   --stylemap 64  "$<" "$@.tmp.ttf" && mv "$@.tmp.ttf" "$@"
dist/ttf/ZiscFixed6x12.ttf:             xorg-misc-misc/6x12.bdf                           $(TTF_DEPS); $(BT) -m "Zisc Fixed 6x12"         -f "ZiscFixed6x12"          -F "%{family}"			-w "Regular"		--italic-angle 0   --stylemap 64  "$<" "$@.tmp.ttf" && mv "$@.tmp.ttf" "$@"
dist/ttf/ZiscFixed6x13.ttf:             xorg-misc-misc/6x13.bdf                           $(TTF_DEPS); $(BT) -m "Zisc Fixed 6x13"         -f "ZiscFixed6x13"          -F "%{family}"			-w "Regular"		--italic-angle 0   --stylemap 64  "$<" "$@.tmp.ttf" && mv "$@.tmp.ttf" "$@"
dist/ttf/ZiscFixed6x13-Bold.ttf:        xorg-misc-misc/6x13B.bdf                          $(TTF_DEPS); $(BT) -m "Zisc Fixed 6x13"         -f "ZiscFixed6x13-Bold"     -F "%{family} Bold"		-w "Bold"		--italic-angle 0   --stylemap 32  "$<" "$@.tmp.ttf" && mv "$@.tmp.ttf" "$@"
dist/ttf/ZiscFixed6x13-Oblique.ttf:     xorg-misc-misc/6x13O.bdf                          $(TTF_DEPS); $(BT) -m "Zisc Fixed 6x13"         -f "ZiscFixed6x13-Oblique"  -F "%{family} Oblique"		-w "Oblique"		--italic-angle -12 --stylemap 1   "$<" "$@.tmp.ttf" && mv "$@.tmp.ttf" "$@"
dist/ttf/ZiscFixed6x9.ttf:              xorg-misc-misc/6x9.bdf                            $(TTF_DEPS); $(BT) -m "Zisc Fixed 6x9"          -f "ZiscFixed6x9"           -F "%{family}"			-w "Regular"		--italic-angle 0   --stylemap 64  "$<" "$@.tmp.ttf" && mv "$@.tmp.ttf" "$@"
dist/ttf/ZiscFixed7x13.ttf:             xorg-misc-misc/7x13.bdf                           $(TTF_DEPS); $(BT) -m "Zisc Fixed 7x13"         -f "ZiscFixed7x13"          -F "%{family}"			-w "Regular"		--italic-angle 0   --stylemap 64  "$<" "$@.tmp.ttf" && mv "$@.tmp.ttf" "$@"
dist/ttf/ZiscFixed7x13-Bold.ttf:        xorg-misc-misc/7x13B.bdf                          $(TTF_DEPS); $(BT) -m "Zisc Fixed 7x13"         -f "ZiscFixed7x13-Bold"     -F "%{family} Bold"		-w "Bold"		--italic-angle 0   --stylemap 32  "$<" "$@.tmp.ttf" && mv "$@.tmp.ttf" "$@"
dist/ttf/ZiscFixed7x13-Oblique.ttf:     xorg-misc-misc/7x13O.bdf                          $(TTF_DEPS); $(BT) -m "Zisc Fixed 7x13"         -f "ZiscFixed7x13-Oblique"  -F "%{family} Oblique"		-w "Oblique"		--italic-angle -12 --stylemap 1   "$<" "$@.tmp.ttf" && mv "$@.tmp.ttf" "$@"
dist/ttf/ZiscFixed7x14.ttf:             xorg-misc-misc/7x14.bdf                           $(TTF_DEPS); $(BT) -m "Zisc Fixed 7x14"         -f "ZiscFixed7x14"          -F "%{family}"			-w "Regular"		--italic-angle 0   --stylemap 64  "$<" "$@.tmp.ttf" && mv "$@.tmp.ttf" "$@"
dist/ttf/ZiscFixed7x14-Bold.ttf:        xorg-misc-misc/7x14B.bdf                          $(TTF_DEPS); $(BT) -m "Zisc Fixed 7x14"         -f "ZiscFixed7x14-Bold"     -F "%{family} Bold"		-w "Bold"		--italic-angle 0   --stylemap 32  "$<" "$@.tmp.ttf" && mv "$@.tmp.ttf" "$@"
dist/ttf/ZiscFixed8x13.ttf:             xorg-misc-misc/8x13.bdf                           $(TTF_DEPS); $(BT) -m "Zisc Fixed 8x13"         -f "ZiscFixed8x13"          -F "%{family}"			-w "Regular"		--italic-angle 0   --stylemap 64  "$<" "$@.tmp.ttf" && mv "$@.tmp.ttf" "$@"
dist/ttf/ZiscFixed8x13-Bold.ttf:        xorg-misc-misc/8x13B.bdf                          $(TTF_DEPS); $(BT) -m "Zisc Fixed 8x13"         -f "ZiscFixed8x13-Bold"     -F "%{family} Bold"		-w "Bold"		--italic-angle 0   --stylemap 32  "$<" "$@.tmp.ttf" && mv "$@.tmp.ttf" "$@"
dist/ttf/ZiscFixed8x13-Oblique.ttf:     xorg-misc-misc/8x13O.bdf                          $(TTF_DEPS); $(BT) -m "Zisc Fixed 8x13"         -f "ZiscFixed8x13-Oblique"  -F "%{family} Oblique"		-w "Oblique"		--italic-angle -12 --stylemap 1   "$<" "$@.tmp.ttf" && mv "$@.tmp.ttf" "$@"
dist/ttf/ZiscFixed9x15.ttf:             xorg-misc-misc/9x15.bdf                           $(TTF_DEPS); $(BT) -m "Zisc Fixed 9x15"         -f "ZiscFixed9x15"          -F "%{family}"			-w "Regular"		--italic-angle 0   --stylemap 64  "$<" "$@.tmp.ttf" && mv "$@.tmp.ttf" "$@"
dist/ttf/ZiscFixed9x15-Bold.ttf:        xorg-misc-misc/9x15B.bdf                          $(TTF_DEPS); $(BT) -m "Zisc Fixed 9x15"         -f "ZiscFixed9x15-Bold"     -F "%{family} Bold"		-w "Bold"		--italic-angle 0   --stylemap 32  "$<" "$@.tmp.ttf" && mv "$@.tmp.ttf" "$@"
dist/ttf/ZiscFixed9x18.ttf:             xorg-misc-misc/9x18.bdf                           $(TTF_DEPS); $(BT) -m "Zisc Fixed 9x18"         -f "ZiscFixed9x18"          -F "%{family}"			-w "Regular"		--italic-angle 0   --stylemap 64  "$<" "$@.tmp.ttf" && mv "$@.tmp.ttf" "$@"
dist/ttf/ZiscFixed9x18-Bold.ttf:        xorg-misc-misc/9x18B.bdf                          $(TTF_DEPS); $(BT) -m "Zisc Fixed 9x18"         -f "ZiscFixed9x18-Bold"     -F "%{family} Bold"		-w "Bold"		--italic-angle 0   --stylemap 32  "$<" "$@.tmp.ttf" && mv "$@.tmp.ttf" "$@"
dist/ttf/ZonyFixed12x24.ttf:            xorg-sony-misc/12x24.bdf                          $(TTF_DEPS); $(BT) -m "Zony Fixed 12x24"        -f "ZonyFixed12x24"         -F "%{family}"			-w "Regular"		--italic-angle 0   --stylemap 64  "$<" "$@.tmp.ttf" && mv "$@.tmp.ttf" "$@"
dist/ttf/ZonyFixed12x24rk.ttf:          xorg-sony-misc/12x24rk.bdf                        $(TTF_DEPS); $(BT) -m "Zony Fixed 12x24rk"      -f "ZonyFixed12x24rk"       -F "%{family}"			-w "Regular"		--italic-angle 0   --stylemap 64  "$<" "$@.tmp.ttf" && mv "$@.tmp.ttf" "$@"
dist/ttf/ZonyFixed8x16.ttf:             xorg-sony-misc/8x16.bdf                           $(TTF_DEPS); $(BT) -m "Zony Fixed 8x16"         -f "ZonyFixed8x16"          -F "%{family}"			-w "Regular"		--italic-angle 0   --stylemap 64  "$<" "$@.tmp.ttf" && mv "$@.tmp.ttf" "$@"
dist/ttf/ZonyFixed8x16rk.ttf:           xorg-sony-misc/8x16rk.bdf                         $(TTF_DEPS); $(BT) -m "Zony Fixed 8x16rk"       -f "ZonyFixed8x16rk"        -F "%{family}"			-w "Regular"		--italic-angle 0   --stylemap 64  "$<" "$@.tmp.ttf" && mv "$@.tmp.ttf" "$@"

clean: FORCE
	/bin/rm -fr $(TTF_FONTS) || true
	find . -type f -name '*.tmp.*' -exec rm {} + || true

.PHONY: FORCE

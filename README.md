# xorg-monospace-fonts-ttf

**WORK IN PROGRESS**

The X Window System comes with a pretty good assortment of bitmap
fonts.  I like the monospace fonts for coding sometimes, so here they
are in TrueType.

I do not take credit for the fonts, only for the scripts that convert
them to TrueType fonts that work well on your system.

This includes:

-   Lucida Typewriter
-   DEC Terminal
-   Misc Fixed (6x13, 10x20, and all the others)
-   Sony bitmap fonts

## macOS

You probably want to use the pixel size column below.

## Windows

In Windows, most times you specify the font's point size, not pixel
size.

To compute the point size, if the pixel size is 2 modulo 4, add one
more pixel.  Then multiply by 0.75 and round to the nearest integer.

| Filename                              | Source BDF                                  | PostScript Font Name     | Family Name           | Weight | Slant   | Pixel Size | Point Size |
|---------------------------------------|---------------------------------------------|--------------------------|-----------------------|--------|---------|------------|------------|
| dist/ttf/LucidaTypewriter11-Bold.ttf  | xorg-bh-lucidatypewriter-100dpi/lutBS08.bdf | LucidaTypewriter11-Bold  | Lucida Typewriter 11  | Bold   |         | 11px       | 8pt        |
| dist/ttf/LucidaTypewriter14c-Bold.ttf | xorg-bh-lucidatypewriter-100dpi/lutBS10.bdf | LucidaTypewriter14c-Bold | Lucida Typewriter 14c | Bold   |         | 15px       | 11pt       |
| dist/ttf/LucidaTypewriter17-Bold.ttf  | xorg-bh-lucidatypewriter-100dpi/lutBS12.bdf | LucidaTypewriter17-Bold  | Lucida Typewriter 17  | Bold   |         | 17px       | 13pt       |
| dist/ttf/LucidaTypewriter20-Bold.ttf  | xorg-bh-lucidatypewriter-100dpi/lutBS14.bdf | LucidaTypewriter20-Bold  | Lucida Typewriter 20  | Bold   |         | 20px       | 15pt       |
| dist/ttf/LucidaTypewriter25-Bold.ttf  | xorg-bh-lucidatypewriter-100dpi/lutBS18.bdf | LucidaTypewriter25-Bold  | Lucida Typewriter 25  | Bold   |         | 25px       | 19pt       |
| dist/ttf/LucidaTypewriter26-Bold.ttf  | xorg-bh-lucidatypewriter-100dpi/lutBS19.bdf | LucidaTypewriter26-Bold  | Lucida Typewriter 26  | Bold   |         | 27px       | 20pt       |
| dist/ttf/LucidaTypewriter34-Bold.ttf  | xorg-bh-lucidatypewriter-100dpi/lutBS24.bdf | LucidaTypewriter34-Bold  | Lucida Typewriter 34  | Bold   |         | 35px       | 26pt       |
| dist/ttf/LucidaTypewriter11.ttf       | xorg-bh-lucidatypewriter-100dpi/lutRS08.bdf | LucidaTypewriter11       | Lucida Typewriter 11  |        |         | 11px       | 8pt        |
| dist/ttf/LucidaTypewriter14c.ttf      | xorg-bh-lucidatypewriter-100dpi/lutRS10.bdf | LucidaTypewriter14c      | Lucida Typewriter 14c |        |         | 15px       | 11pt       |
| dist/ttf/LucidaTypewriter17.ttf       | xorg-bh-lucidatypewriter-100dpi/lutRS12.bdf | LucidaTypewriter17       | Lucida Typewriter 17  |        |         | 17px       | 13pt       |
| dist/ttf/LucidaTypewriter20.ttf       | xorg-bh-lucidatypewriter-100dpi/lutRS14.bdf | LucidaTypewriter20       | Lucida Typewriter 20  |        |         | 20px       | 15pt       |
| dist/ttf/LucidaTypewriter25.ttf       | xorg-bh-lucidatypewriter-100dpi/lutRS18.bdf | LucidaTypewriter25       | Lucida Typewriter 25  |        |         | 25px       | 19pt       |
| dist/ttf/LucidaTypewriter26.ttf       | xorg-bh-lucidatypewriter-100dpi/lutRS19.bdf | LucidaTypewriter26       | Lucida Typewriter 26  |        |         | 27px       | 20pt       |
| dist/ttf/LucidaTypewriter34.ttf       | xorg-bh-lucidatypewriter-100dpi/lutRS24.bdf | LucidaTypewriter34       | Lucida Typewriter 34  |        |         | 35px       | 26pt       |
| dist/ttf/LucidaTypewriter8-Bold.ttf   | xorg-bh-lucidatypewriter-75dpi/lutBS08.bdf  | LucidaTypewriter8-Bold   | Lucida Typewriter 8   | Bold   |         | 8px        | 6pt        |
| dist/ttf/LucidaTypewriter10-Bold.ttf  | xorg-bh-lucidatypewriter-75dpi/lutBS10.bdf  | LucidaTypewriter10-Bold  | Lucida Typewriter 10  | Bold   |         | 11px       | 8pt        |
| dist/ttf/LucidaTypewriter12-Bold.ttf  | xorg-bh-lucidatypewriter-75dpi/lutBS12.bdf  | LucidaTypewriter12-Bold  | Lucida Typewriter 12  | Bold   |         | 12px       | 9pt        |
| dist/ttf/LucidaTypewriter14-Bold.ttf  | xorg-bh-lucidatypewriter-75dpi/lutBS14.bdf  | LucidaTypewriter14-Bold  | Lucida Typewriter 14  | Bold   |         | 15px       | 11pt       |
| dist/ttf/LucidaTypewriter18-Bold.ttf  | xorg-bh-lucidatypewriter-75dpi/lutBS18.bdf  | LucidaTypewriter18-Bold  | Lucida Typewriter 18  | Bold   |         | 19px       | 14pt       |
| dist/ttf/LucidaTypewriter19-Bold.ttf  | xorg-bh-lucidatypewriter-75dpi/lutBS19.bdf  | LucidaTypewriter19-Bold  | Lucida Typewriter 19  | Bold   |         | 19px       | 14pt       |
| dist/ttf/LucidaTypewriter24-Bold.ttf  | xorg-bh-lucidatypewriter-75dpi/lutBS24.bdf  | LucidaTypewriter24-Bold  | Lucida Typewriter 24  | Bold   |         | 24px       | 18pt       |
| dist/ttf/LucidaTypewriter8.ttf        | xorg-bh-lucidatypewriter-75dpi/lutRS08.bdf  | LucidaTypewriter8        | Lucida Typewriter 8   |        |         | 8px        | 6pt        |
| dist/ttf/LucidaTypewriter10.ttf       | xorg-bh-lucidatypewriter-75dpi/lutRS10.bdf  | LucidaTypewriter10       | Lucida Typewriter 10  |        |         | 11px       | 8pt        |
| dist/ttf/LucidaTypewriter12.ttf       | xorg-bh-lucidatypewriter-75dpi/lutRS12.bdf  | LucidaTypewriter12       | Lucida Typewriter 12  |        |         | 12px       | 9pt        |
| dist/ttf/LucidaTypewriter14.ttf       | xorg-bh-lucidatypewriter-75dpi/lutRS14.bdf  | LucidaTypewriter14       | Lucida Typewriter 14  |        |         | 15px       | 11pt       |
| dist/ttf/LucidaTypewriter18.ttf       | xorg-bh-lucidatypewriter-75dpi/lutRS18.bdf  | LucidaTypewriter18       | Lucida Typewriter 18  |        |         | 19px       | 14pt       |
| dist/ttf/LucidaTypewriter19.ttf       | xorg-bh-lucidatypewriter-75dpi/lutRS19.bdf  | LucidaTypewriter19       | Lucida Typewriter 19  |        |         | 19px       | 14pt       |
| dist/ttf/LucidaTypewriter24.ttf       | xorg-bh-lucidatypewriter-75dpi/lutRS24.bdf  | LucidaTypewriter24       | Lucida Typewriter 24  |        |         | 24px       | 18pt       |
| dist/ttf/DECTerminal18.ttf            | xorg-bitstream-100dpi/term14.bdf            | DECTerminal18            | DEC Terminal 18       |        |         | 19px       | 14pt       |
| dist/ttf/DECTerminal18-Bold.ttf       | xorg-bitstream-100dpi/termB14.bdf           | DECTerminal18-Bold       | DEC Terminal 18       | Bold   |         | 19px       | 14pt       |
| dist/ttf/DECTerminal14.ttf            | xorg-bitstream-75dpi/term14.bdf             | DECTerminal14            | DEC Terminal 14       |        |         | 15px       | 11pt       |
| dist/ttf/DECTerminal14-Bold.ttf       | xorg-bitstream-75dpi/termB14.bdf            | DECTerminal14-Bold       | DEC Terminal 14       | Bold   |         | 15px       | 11pt       |
| dist/ttf/MiscFixed10x20.ttf           | xorg-misc-misc/10x20.bdf                    | MiscFixed10x20           | Misc Fixed 10x20      |        |         | 20px       | 15pt       |
| dist/ttf/MiscFixed4x6.ttf             | xorg-misc-misc/4x6.bdf                      | MiscFixed4x6             | Misc Fixed 4x6        |        |         | 7px        | 5pt        |
| dist/ttf/MiscFixed5x7.ttf             | xorg-misc-misc/5x7.bdf                      | MiscFixed5x7             | Misc Fixed 5x7        |        |         | 7px        | 5pt        |
| dist/ttf/MiscFixed5x8.ttf             | xorg-misc-misc/5x8.bdf                      | MiscFixed5x8             | Misc Fixed 5x8        |        |         | 8px        | 6pt        |
| dist/ttf/MiscFixed6x10.ttf            | xorg-misc-misc/6x10.bdf                     | MiscFixed6x10            | Misc Fixed 6x10       |        |         | 11px       | 8pt        |
| dist/ttf/MiscFixed6x12.ttf            | xorg-misc-misc/6x12.bdf                     | MiscFixed6x12            | Misc Fixed 6x12       |        |         | 12px       | 9pt        |
| dist/ttf/MiscFixed6x13.ttf            | xorg-misc-misc/6x13.bdf                     | MiscFixed6x13            | Misc Fixed 6x13       |        |         | 13px       | 10pt       |
| dist/ttf/MiscFixed6x13-Bold.ttf       | xorg-misc-misc/6x13B.bdf                    | MiscFixed6x13-Bold       | Misc Fixed 6x13       | Bold   |         | 13px       | 10pt       |
| dist/ttf/MiscFixed6x13-Oblique.ttf    | xorg-misc-misc/6x13O.bdf                    | MiscFixed6x13-Oblique    | Misc Fixed 6x13       |        | Oblique | 13px       | 10pt       |
| dist/ttf/MiscFixed6x9.ttf             | xorg-misc-misc/6x9.bdf                      | MiscFixed6x9             | Misc Fixed 6x9        |        |         | 9px        | 7pt        |
| dist/ttf/MiscFixed7x13.ttf            | xorg-misc-misc/7x13.bdf                     | MiscFixed7x13            | Misc Fixed 7x13       |        |         | 13px       | 10pt       |
| dist/ttf/MiscFixed7x13-Bold.ttf       | xorg-misc-misc/7x13B.bdf                    | MiscFixed7x13-Bold       | Misc Fixed 7x13       | Bold   |         | 13px       | 10pt       |
| dist/ttf/MiscFixed7x13-Oblique.ttf    | xorg-misc-misc/7x13O.bdf                    | MiscFixed7x13-Oblique    | Misc Fixed 7x13       |        | Oblique | 13px       | 10pt       |
| dist/ttf/MiscFixed7x14.ttf            | xorg-misc-misc/7x14.bdf                     | MiscFixed7x14            | Misc Fixed 7x14       |        |         | 15px       | 11pt       |
| dist/ttf/MiscFixed7x14-Bold.ttf       | xorg-misc-misc/7x14B.bdf                    | MiscFixed7x14-Bold       | Misc Fixed 7x14       | Bold   |         | 15px       | 11pt       |
| dist/ttf/MiscFixed8x13.ttf            | xorg-misc-misc/8x13.bdf                     | MiscFixed8x13            | Misc Fixed 8x13       |        |         | 13px       | 10pt       |
| dist/ttf/MiscFixed8x13-Bold.ttf       | xorg-misc-misc/8x13B.bdf                    | MiscFixed8x13-Bold       | Misc Fixed 8x13       | Bold   |         | 13px       | 10pt       |
| dist/ttf/MiscFixed8x13-Oblique.ttf    | xorg-misc-misc/8x13O.bdf                    | MiscFixed8x13-Oblique    | Misc Fixed 8x13       |        | Oblique | 13px       | 10pt       |
| dist/ttf/MiscFixed9x15.ttf            | xorg-misc-misc/9x15.bdf                     | MiscFixed9x15            | Misc Fixed 9x15       |        |         | 15px       | 11pt       |
| dist/ttf/MiscFixed9x15-Bold.ttf       | xorg-misc-misc/9x15B.bdf                    | MiscFixed9x15-Bold       | Misc Fixed 9x15       | Bold   |         | 15px       | 11pt       |
| dist/ttf/MiscFixed9x18.ttf            | xorg-misc-misc/9x18.bdf                     | MiscFixed9x18            | Misc Fixed 9x18       |        |         | 19px       | 14pt       |
| dist/ttf/MiscFixed9x18-Bold.ttf       | xorg-misc-misc/9x18B.bdf                    | MiscFixed9x18-Bold       | Misc Fixed 9x18       | Bold   |         | 19px       | 14pt       |
| dist/ttf/SonyFixed12x24.ttf           | xorg-sony-misc/12x24.bdf                    | SonyFixed12x24           | Sony Fixed 12x24      |        |         | 24px       | 18pt       |
| dist/ttf/SonyFixed8x16.ttf            | xorg-sony-misc/8x16.bdf                     | SonyFixed8x16            | Sony Fixed 8x16       |        |         | 16px       | 12pt       |

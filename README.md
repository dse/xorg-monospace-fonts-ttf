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

## Font Family Names

Since they are different bitmap patterns, all the font family names
are different.  Bold and oblique fonts do share the same font family
name as the regular font.

For Lucida Typewriter and DEC Terminal:

-   "8A", etc. - the "8" is the nominal font size in points; the "A" means it's the 75dpi variant.

-   "8B", etc. - the "B" means it's the 100dpi variant.

## macOS

In macOS, you probably want to use the **pixel size** column below.
Don't use the font size specified in the font family name.

Note that because of Windows weirdness, we add one pixel row to some
of the fonts.  It's complicated and stupid.

## Windows

In Windows, you probably want to use the **point size** column below.

## Fonts

| Filename                              | Source BDF                                  | PostScript Font Name     | Family Name           | Weight | Slant   | Pixel Size | Point Size |
|---------------------------------------|---------------------------------------------|--------------------------|-----------------------|--------|---------|------------|------------|
| dist/ttf/LucidaTypewriter8A-Bold.ttf  | xorg-bh-lucidatypewriter-75dpi/lutBS08.bdf  | LucidaTypewriter8A-Bold  | Lucida Typewriter 8A  | Bold   |         | 8          | 6          |
| dist/ttf/LucidaTypewriter10A-Bold.ttf | xorg-bh-lucidatypewriter-75dpi/lutBS10.bdf  | LucidaTypewriter10A-Bold | Lucida Typewriter 10A | Bold   |         | 11         | 8          |
| dist/ttf/LucidaTypewriter12A-Bold.ttf | xorg-bh-lucidatypewriter-75dpi/lutBS12.bdf  | LucidaTypewriter12A-Bold | Lucida Typewriter 12A | Bold   |         | 12         | 9          |
| dist/ttf/LucidaTypewriter14A-Bold.ttf | xorg-bh-lucidatypewriter-75dpi/lutBS14.bdf  | LucidaTypewriter14A-Bold | Lucida Typewriter 14A | Bold   |         | 15         | 11         |
| dist/ttf/LucidaTypewriter18A-Bold.ttf | xorg-bh-lucidatypewriter-75dpi/lutBS18.bdf  | LucidaTypewriter18A-Bold | Lucida Typewriter 18A | Bold   |         | 19         | 14         |
| dist/ttf/LucidaTypewriter19A-Bold.ttf | xorg-bh-lucidatypewriter-75dpi/lutBS19.bdf  | LucidaTypewriter19A-Bold | Lucida Typewriter 19A | Bold   |         | 19         | 14         |
| dist/ttf/LucidaTypewriter24A-Bold.ttf | xorg-bh-lucidatypewriter-75dpi/lutBS24.bdf  | LucidaTypewriter24A-Bold | Lucida Typewriter 24A | Bold   |         | 24         | 18         |
| dist/ttf/LucidaTypewriter8A.ttf       | xorg-bh-lucidatypewriter-75dpi/lutRS08.bdf  | LucidaTypewriter8A       | Lucida Typewriter 8A  |        |         | 8          | 6          |
| dist/ttf/LucidaTypewriter10A.ttf      | xorg-bh-lucidatypewriter-75dpi/lutRS10.bdf  | LucidaTypewriter10A      | Lucida Typewriter 10A |        |         | 11         | 8          |
| dist/ttf/LucidaTypewriter12A.ttf      | xorg-bh-lucidatypewriter-75dpi/lutRS12.bdf  | LucidaTypewriter12A      | Lucida Typewriter 12A |        |         | 12         | 9          |
| dist/ttf/LucidaTypewriter14A.ttf      | xorg-bh-lucidatypewriter-75dpi/lutRS14.bdf  | LucidaTypewriter14A      | Lucida Typewriter 14A |        |         | 15         | 11         |
| dist/ttf/LucidaTypewriter18A.ttf      | xorg-bh-lucidatypewriter-75dpi/lutRS18.bdf  | LucidaTypewriter18A      | Lucida Typewriter 18A |        |         | 19         | 14         |
| dist/ttf/LucidaTypewriter19A.ttf      | xorg-bh-lucidatypewriter-75dpi/lutRS19.bdf  | LucidaTypewriter19A      | Lucida Typewriter 19A |        |         | 19         | 14         |
| dist/ttf/LucidaTypewriter24A.ttf      | xorg-bh-lucidatypewriter-75dpi/lutRS24.bdf  | LucidaTypewriter24A      | Lucida Typewriter 24A |        |         | 24         | 18         |
| dist/ttf/LucidaTypewriter8B-Bold.ttf  | xorg-bh-lucidatypewriter-100dpi/lutBS08.bdf | LucidaTypewriter8B-Bold  | Lucida Typewriter 8B  | Bold   |         | 11         | 8          |
| dist/ttf/LucidaTypewriter10B-Bold.ttf | xorg-bh-lucidatypewriter-100dpi/lutBS10.bdf | LucidaTypewriter10B-Bold | Lucida Typewriter 10B | Bold   |         | 15         | 11         |
| dist/ttf/LucidaTypewriter12B-Bold.ttf | xorg-bh-lucidatypewriter-100dpi/lutBS12.bdf | LucidaTypewriter12B-Bold | Lucida Typewriter 12B | Bold   |         | 17         | 13         |
| dist/ttf/LucidaTypewriter14B-Bold.ttf | xorg-bh-lucidatypewriter-100dpi/lutBS14.bdf | LucidaTypewriter14B-Bold | Lucida Typewriter 14B | Bold   |         | 20         | 15         |
| dist/ttf/LucidaTypewriter18B-Bold.ttf | xorg-bh-lucidatypewriter-100dpi/lutBS18.bdf | LucidaTypewriter18B-Bold | Lucida Typewriter 18B | Bold   |         | 25         | 19         |
| dist/ttf/LucidaTypewriter19B-Bold.ttf | xorg-bh-lucidatypewriter-100dpi/lutBS19.bdf | LucidaTypewriter19B-Bold | Lucida Typewriter 19B | Bold   |         | 27         | 20         |
| dist/ttf/LucidaTypewriter24B-Bold.ttf | xorg-bh-lucidatypewriter-100dpi/lutBS24.bdf | LucidaTypewriter24B-Bold | Lucida Typewriter 24B | Bold   |         | 35         | 26         |
| dist/ttf/LucidaTypewriter8B.ttf       | xorg-bh-lucidatypewriter-100dpi/lutRS08.bdf | LucidaTypewriter8B       | Lucida Typewriter 8B  |        |         | 11         | 8          |
| dist/ttf/LucidaTypewriter10B.ttf      | xorg-bh-lucidatypewriter-100dpi/lutRS10.bdf | LucidaTypewriter10B      | Lucida Typewriter 10B |        |         | 15         | 11         |
| dist/ttf/LucidaTypewriter12B.ttf      | xorg-bh-lucidatypewriter-100dpi/lutRS12.bdf | LucidaTypewriter12B      | Lucida Typewriter 12B |        |         | 17         | 13         |
| dist/ttf/LucidaTypewriter14B.ttf      | xorg-bh-lucidatypewriter-100dpi/lutRS14.bdf | LucidaTypewriter14B      | Lucida Typewriter 14B |        |         | 20         | 15         |
| dist/ttf/LucidaTypewriter18B.ttf      | xorg-bh-lucidatypewriter-100dpi/lutRS18.bdf | LucidaTypewriter18B      | Lucida Typewriter 18B |        |         | 25         | 19         |
| dist/ttf/LucidaTypewriter19B.ttf      | xorg-bh-lucidatypewriter-100dpi/lutRS19.bdf | LucidaTypewriter19B      | Lucida Typewriter 19B |        |         | 27         | 20         |
| dist/ttf/LucidaTypewriter24B.ttf      | xorg-bh-lucidatypewriter-100dpi/lutRS24.bdf | LucidaTypewriter24B      | Lucida Typewriter 24B |        |         | 35         | 26         |
| dist/ttf/DECTerminal14A.ttf           | xorg-bitstream-75dpi/term14.bdf             | DECTerminal14A           | DEC Terminal 14A      |        |         | 15         | 11         |
| dist/ttf/DECTerminal14A-Bold.ttf      | xorg-bitstream-75dpi/termB14.bdf            | DECTerminal14A-Bold      | DEC Terminal 14A      | Bold   |         | 15         | 11         |
| dist/ttf/DECTerminal14B.ttf           | xorg-bitstream-100dpi/term14.bdf            | DECTerminal14B           | DEC Terminal 14B      |        |         | 19         | 14         |
| dist/ttf/DECTerminal14B-Bold.ttf      | xorg-bitstream-100dpi/termB14.bdf           | DECTerminal14B-Bold      | DEC Terminal 14B      | Bold   |         | 19         | 14         |
| dist/ttf/MiscFixed10x20.ttf           | xorg-misc-misc/10x20.bdf                    | MiscFixed10x20           | Misc Fixed 10x20      |        |         | 20         | 15         |
| dist/ttf/MiscFixed4x6.ttf             | xorg-misc-misc/4x6.bdf                      | MiscFixed4x6             | Misc Fixed 4x6        |        |         | 7          | 5          |
| dist/ttf/MiscFixed5x7.ttf             | xorg-misc-misc/5x7.bdf                      | MiscFixed5x7             | Misc Fixed 5x7        |        |         | 7          | 5          |
| dist/ttf/MiscFixed5x8.ttf             | xorg-misc-misc/5x8.bdf                      | MiscFixed5x8             | Misc Fixed 5x8        |        |         | 8          | 6          |
| dist/ttf/MiscFixed6x10.ttf            | xorg-misc-misc/6x10.bdf                     | MiscFixed6x10            | Misc Fixed 6x10       |        |         | 11         | 8          |
| dist/ttf/MiscFixed6x12.ttf            | xorg-misc-misc/6x12.bdf                     | MiscFixed6x12            | Misc Fixed 6x12       |        |         | 12         | 9          |
| dist/ttf/MiscFixed6x13.ttf            | xorg-misc-misc/6x13.bdf                     | MiscFixed6x13            | Misc Fixed 6x13       |        |         | 13         | 10         |
| dist/ttf/MiscFixed6x13-Bold.ttf       | xorg-misc-misc/6x13B.bdf                    | MiscFixed6x13-Bold       | Misc Fixed 6x13       | Bold   |         | 13         | 10         |
| dist/ttf/MiscFixed6x13-Oblique.ttf    | xorg-misc-misc/6x13O.bdf                    | MiscFixed6x13-Oblique    | Misc Fixed 6x13       |        | Oblique | 13         | 10         |
| dist/ttf/MiscFixed6x9.ttf             | xorg-misc-misc/6x9.bdf                      | MiscFixed6x9             | Misc Fixed 6x9        |        |         | 9          | 7          |
| dist/ttf/MiscFixed7x13.ttf            | xorg-misc-misc/7x13.bdf                     | MiscFixed7x13            | Misc Fixed 7x13       |        |         | 13         | 10         |
| dist/ttf/MiscFixed7x13-Bold.ttf       | xorg-misc-misc/7x13B.bdf                    | MiscFixed7x13-Bold       | Misc Fixed 7x13       | Bold   |         | 13         | 10         |
| dist/ttf/MiscFixed7x13-Oblique.ttf    | xorg-misc-misc/7x13O.bdf                    | MiscFixed7x13-Oblique    | Misc Fixed 7x13       |        | Oblique | 13         | 10         |
| dist/ttf/MiscFixed7x14.ttf            | xorg-misc-misc/7x14.bdf                     | MiscFixed7x14            | Misc Fixed 7x14       |        |         | 15         | 11         |
| dist/ttf/MiscFixed7x14-Bold.ttf       | xorg-misc-misc/7x14B.bdf                    | MiscFixed7x14-Bold       | Misc Fixed 7x14       | Bold   |         | 15         | 11         |
| dist/ttf/MiscFixed8x13.ttf            | xorg-misc-misc/8x13.bdf                     | MiscFixed8x13            | Misc Fixed 8x13       |        |         | 13         | 10         |
| dist/ttf/MiscFixed8x13-Bold.ttf       | xorg-misc-misc/8x13B.bdf                    | MiscFixed8x13-Bold       | Misc Fixed 8x13       | Bold   |         | 13         | 10         |
| dist/ttf/MiscFixed8x13-Oblique.ttf    | xorg-misc-misc/8x13O.bdf                    | MiscFixed8x13-Oblique    | Misc Fixed 8x13       |        | Oblique | 13         | 10         |
| dist/ttf/MiscFixed9x15.ttf            | xorg-misc-misc/9x15.bdf                     | MiscFixed9x15            | Misc Fixed 9x15       |        |         | 15         | 11         |
| dist/ttf/MiscFixed9x15-Bold.ttf       | xorg-misc-misc/9x15B.bdf                    | MiscFixed9x15-Bold       | Misc Fixed 9x15       | Bold   |         | 15         | 11         |
| dist/ttf/MiscFixed9x18.ttf            | xorg-misc-misc/9x18.bdf                     | MiscFixed9x18            | Misc Fixed 9x18       |        |         | 19         | 14         |
| dist/ttf/MiscFixed9x18-Bold.ttf       | xorg-misc-misc/9x18B.bdf                    | MiscFixed9x18-Bold       | Misc Fixed 9x18       | Bold   |         | 19         | 14         |
| dist/ttf/SonyFixed12x24.ttf           | xorg-sony-misc/12x24.bdf                    | SonyFixed12x24           | Sony Fixed 12x24      |        |         | 24         | 18         |
| dist/ttf/SonyFixed8x16.ttf            | xorg-sony-misc/8x16.bdf                     | SonyFixed8x16            | Sony Fixed 8x16       |        |         | 16         | 12         |

## About the Pixel Heights

Each font has a certain pixel height.  Examples:

-   Misc Fixed 6x13 is 13 pixels tall.
-   Lucida Typewriter 18A is 18 pixels tall.
-   Lucida Typewriter 18B is 25 pixels tall.

Normally the point size is the pixel size &times; 0.75, rounded to the
nearest integer.

However, if the pixel size modulo 4 is 2, you have to add one pixel to
the pixel height; otherwise you will not get a clean crisp non-blurry
bitmap at any nearby pixel size.

So, for the previous examples:

-   Misc Fixed 6x13 stays 13 pixels tall.
-   Lucida Typewriter 18A becomes 19 pixels tall.
-   Lucida Typewriter 18B stays 25 pixels tall.

# xorg-monospace-fonts-ttf

The X Window System comes with a pretty good assortment of bitmap
fonts.  The monospace fonts in it happen to be excellent for coding.

I distribute them here, in TrueType format, for your enjoyment and
use.

I do not take credit for the fonts, only for the scripts that convert
them to TrueType fonts that work well on your system.

This includes:

-   Lucida Typewriter
-   DEC Terminal
-   Misc Fixed (6x13, 10x20, and all the others)
-   Sony bitmap fonts

## Windows?

You want the files in the `windows/ttf` directory.

The reason is, many of them require adjustments so that you can
specify a pixel size with which they will properly render, i.e.,
as a pixel font.

| BDF                                           | PW | PH | ASC | DESC | WIN PX | Foundry   | Family           | Wt.    | Slant | Set Width     | Add Style | Px | Pt  | DPI | DPI | Spac | Avg.Wd. | Registry | Encoding |
|:----------------------------------------------|:---|:---|:----|:-----|:-------|:----------|:-----------------|:-------|:------|:--------------|:----------|:---|:----|:----|:----|:-----|:--------|:---------|:---------|
| `xorg-bh-lucidatypewriter-100dpi/lutBS08.bdf` | 7  | 11 | 9   | 2    | 8      | B&H       | LucidaTypewriter | Bold   | R     | Normal        | Sans      | 11 | 80  | 100 | 100 | M    | 70      | ISO10646 | 1        |
| `xorg-bh-lucidatypewriter-100dpi/lutBS10.bdf` | 8  | 16 | 13  | 3    | xx     | B&H       | LucidaTypewriter | Bold   | R     | Normal        | Sans      | 14 | 100 | 100 | 100 | M    | 80      | ISO10646 | 1        |
| `xorg-bh-lucidatypewriter-100dpi/lutBS12.bdf` | 10 | 18 | 15  | 3    | 14     | B&H       | LucidaTypewriter | Bold   | R     | Normal        | Sans      | 17 | 120 | 100 | 100 | M    | 100     | ISO10646 | 1        |
| `xorg-bh-lucidatypewriter-100dpi/lutBS14.bdf` | 12 | 22 | 18  | 4    | xx     | B&H       | LucidaTypewriter | Bold   | R     | Normal        | Sans      | 20 | 140 | 100 | 100 | M    | 120     | ISO10646 | 1        |
| `xorg-bh-lucidatypewriter-100dpi/lutBS18.bdf` | 15 | 28 | 23  | 5    | 19     | B&H       | LucidaTypewriter | Bold   | R     | Normal        | Sans      | 25 | 180 | 100 | 100 | M    | 150     | ISO10646 | 1        |
| `xorg-bh-lucidatypewriter-100dpi/lutBS19.bdf` | 16 | 29 | 24  | 5    | xx     | B&H       | LucidaTypewriter | Bold   | R     | Normal        | Sans      | 26 | 190 | 100 | 100 | M    | 159     | ISO10646 | 1        |
| `xorg-bh-lucidatypewriter-100dpi/lutBS24.bdf` | 20 | 38 | 31  | 7    | 27     | B&H       | LucidaTypewriter | Bold   | R     | Normal        | Sans      | 34 | 240 | 100 | 100 | M    | 200     | ISO10646 | 1        |
| -                                             |    |    |     |      |        |           |                  |        |       |               |           |    |     |     |     |      |         |          |          |
| `xorg-bh-lucidatypewriter-100dpi/lutRS08.bdf` | 7  | 11 | 9   | 2    | 8      | B&H       | LucidaTypewriter | Medium | R     | Normal        | Sans      | 11 | 80  | 100 | 100 | M    | 70      | ISO10646 | 1        |
| `xorg-bh-lucidatypewriter-100dpi/lutRS10.bdf` | 8  | 16 | 13  | 3    | xx     | B&H       | LucidaTypewriter | Medium | R     | Normal        | Sans      | 14 | 100 | 100 | 100 | M    | 80      | ISO10646 | 1        |
| `xorg-bh-lucidatypewriter-100dpi/lutRS12.bdf` | 10 | 18 | 15  | 3    | 14     | B&H       | LucidaTypewriter | Medium | R     | Normal        | Sans      | 17 | 120 | 100 | 100 | M    | 100     | ISO10646 | 1        |
| `xorg-bh-lucidatypewriter-100dpi/lutRS14.bdf` | 12 | 22 | 18  | 4    | xx     | B&H       | LucidaTypewriter | Medium | R     | Normal        | Sans      | 20 | 140 | 100 | 100 | M    | 120     | ISO10646 | 1        |
| `xorg-bh-lucidatypewriter-100dpi/lutRS18.bdf` | 15 | 28 | 23  | 5    | 19     | B&H       | LucidaTypewriter | Medium | R     | Normal        | Sans      | 25 | 180 | 100 | 100 | M    | 150     | ISO10646 | 1        |
| `xorg-bh-lucidatypewriter-100dpi/lutRS19.bdf` | 16 | 29 | 24  | 5    | xx     | B&H       | LucidaTypewriter | Medium | R     | Normal        | Sans      | 26 | 190 | 100 | 100 | M    | 159     | ISO10646 | 1        |
| `xorg-bh-lucidatypewriter-100dpi/lutRS24.bdf` | 20 | 38 | 31  | 7    | 27     | B&H       | LucidaTypewriter | Medium | R     | Normal        | Sans      | 34 | 240 | 100 | 100 | M    | 200     | ISO10646 | 1        |
| -                                             |    |    |     |      |        |           |                  |        |       |               |           |    |     |     |     |      |         |          |          |
| `xorg-bh-lucidatypewriter-75dpi/lutBS08.bdf`  | 5  | 10 | 8   | 2    | xx     | B&H       | LucidaTypewriter | Bold   | R     | Normal        | Sans      | 8  | 80  | 75  | 75  | M    | 50      | ISO10646 | 1        |
| `xorg-bh-lucidatypewriter-75dpi/lutBS10.bdf`  | 6  | 11 | 9   | 2    | 8      | B&H       | LucidaTypewriter | Bold   | R     | Normal        | Sans      | 10 | 100 | 75  | 75  | M    | 60      | ISO10646 | 1        |
| `xorg-bh-lucidatypewriter-75dpi/lutBS12.bdf`  | 7  | 13 | 11  | 2    | 9      | B&H       | LucidaTypewriter | Bold   | R     | Normal        | Sans      | 12 | 120 | 75  | 75  | M    | 70      | ISO10646 | 1        |
| `xorg-bh-lucidatypewriter-75dpi/lutBS14.bdf`  | 9  | 15 | 13  | 2    | 11     | B&H       | LucidaTypewriter | Bold   | R     | Normal        | Sans      | 14 | 140 | 75  | 75  | M    | 90      | ISO10646 | 1        |
| `xorg-bh-lucidatypewriter-75dpi/lutBS18.bdf`  | 11 | 19 | 16  | 3    | 14     | B&H       | LucidaTypewriter | Bold   | R     | Normal        | Sans      | 18 | 180 | 75  | 75  | M    | 110     | ISO10646 | 1        |
| `xorg-bh-lucidatypewriter-75dpi/lutBS19.bdf`  | 11 | 22 | 18  | 4    | 16     | B&H       | LucidaTypewriter | Bold   | R     | Normal        | Sans      | 19 | 190 | 75  | 75  | M    | 110     | ISO10646 | 1        |
| `xorg-bh-lucidatypewriter-75dpi/lutBS24.bdf`  | 14 | 27 | 22  | 5    | 19     | B&H       | LucidaTypewriter | Bold   | R     | Normal        | Sans      | 24 | 240 | 75  | 75  | M    | 140     | ISO10646 | 1        |
| -                                             |    |    |     |      |        |           |                  |        |       |               |           |    |     |     |     |      |         |          |          |
| `xorg-bh-lucidatypewriter-75dpi/lutRS08.bdf`  | 5  | 10 | 8   | 2    | xx     | B&H       | LucidaTypewriter | Medium | R     | Normal        | Sans      | 8  | 80  | 75  | 75  | M    | 50      | ISO10646 | 1        |
| `xorg-bh-lucidatypewriter-75dpi/lutRS10.bdf`  | 6  | 11 | 9   | 2    | 8      | B&H       | LucidaTypewriter | Medium | R     | Normal        | Sans      | 10 | 100 | 75  | 75  | M    | 60      | ISO10646 | 1        |
| `xorg-bh-lucidatypewriter-75dpi/lutRS12.bdf`  | 7  | 13 | 11  | 2    | 9      | B&H       | LucidaTypewriter | Medium | R     | Normal        | Sans      | 12 | 120 | 75  | 75  | M    | 70      | ISO10646 | 1        |
| `xorg-bh-lucidatypewriter-75dpi/lutRS14.bdf`  | 9  | 15 | 13  | 2    | 11     | B&H       | LucidaTypewriter | Medium | R     | Normal        | Sans      | 14 | 140 | 75  | 75  | M    | 90      | ISO10646 | 1        |
| `xorg-bh-lucidatypewriter-75dpi/lutRS18.bdf`  | 11 | 19 | 16  | 3    | 14     | B&H       | LucidaTypewriter | Medium | R     | Normal        | Sans      | 18 | 180 | 75  | 75  | M    | 110     | ISO10646 | 1        |
| `xorg-bh-lucidatypewriter-75dpi/lutRS19.bdf`  | 11 | 22 | 18  | 4    | 16     | B&H       | LucidaTypewriter | Medium | R     | Normal        | Sans      | 19 | 190 | 75  | 75  | M    | 110     | ISO10646 | 1        |
| `xorg-bh-lucidatypewriter-75dpi/lutRS24.bdf`  | 14 | 27 | 22  | 5    | 19     | B&H       | LucidaTypewriter | Medium | R     | Normal        | Sans      | 24 | 240 | 75  | 75  | M    | 140     | ISO10646 | 1        |
| -                                             |    |    |     |      |        |           |                  |        |       |               |           |    |     |     |     |      |         |          |          |
| `xorg-bitstream-100dpi/term14.bdf`            | 11 | 20 | 15  | 5    | xx     | Bitstream | Terminal         | Medium | R     | Normal        |           | 18 | 140 | 100 | 100 | C    | 110     | ISO8859  | 1        |
| `xorg-bitstream-100dpi/termB14.bdf`           | 11 | 20 | 15  | 5    | xx     | Bitstream | Terminal         | Bold   | R     | Normal        |           | 18 | 140 | 100 | 100 | C    | 110     | ISO8859  | 1        |
| `xorg-bitstream-75dpi/term14.bdf`             | 8  | 15 | 12  | 3    | 11     | DEC       | Terminal         | Medium | R     | Normal        |           | 14 | 140 | 75  | 75  | C    | 80      | ISO8859  | 1        |
| `xorg-bitstream-75dpi/termB14.bdf`            | 8  | 15 | 12  | 3    | 11     | DEC       | Terminal         | Bold   | R     | Normal        |           | 14 | 140 | 75  | 75  | C    | 80      | ISO8859  | 1        |
| -                                             |    |    |     |      |        |           |                  |        |       |               |           |    |     |     |     |      |         |          |          |
| `xorg-misc-misc/10x20.bdf`                    | 10 | 20 | 16  | 4    | 15     | Misc      | Fixed            | Medium | R     | Normal        |           | 20 | 200 | 75  | 75  | C    | 100     | ISO10646 | 1        |
| `xorg-misc-misc/4x6.bdf`                      | 4  | 6  | 5   | 1    | 6      | Misc      | Fixed            | Medium | R     | Normal        |           | 6  | 60  | 75  | 75  | C    | 40      | ISO10646 | 1        |
| `xorg-misc-misc/5x7.bdf`                      | 5  | 7  | 6   | 1    | 6      | Misc      | Fixed            | Medium | R     | Normal        |           | 7  | 70  | 75  | 75  | C    | 50      | ISO10646 | 1        |
| `xorg-misc-misc/5x8.bdf`                      | 5  | 8  | 7   | 1    | 6      | Misc      | Fixed            | Medium | R     | Normal        |           | 8  | 80  | 75  | 75  | C    | 50      | ISO10646 | 1        |
| `xorg-misc-misc/6x10.bdf`                     | 6  | 10 | 8   | 2    | 9      | Misc      | Fixed            | Medium | R     | Normal        |           | 10 | 100 | 75  | 75  | C    | 60      | ISO10646 | 1        |
| `xorg-misc-misc/6x12.bdf`                     | 6  | 12 | 10  | 2    | 9      | Misc      | Fixed            | Medium | R     | SemiCondensed |           | 12 | 110 | 75  | 75  | C    | 60      | ISO10646 | 1        |
| `xorg-misc-misc/6x13.bdf`                     | 6  | 13 | 11  | 2    | 10     | Misc      | Fixed            | Medium | R     | SemiCondensed |           | 13 | 120 | 75  | 75  | C    | 60      | ISO10646 | 1        |
| `xorg-misc-misc/6x13B.bdf`                    | 6  | 13 | 11  | 2    | 10     | Misc      | Fixed            | Bold   | R     | SemiCondensed |           | 13 | 120 | 75  | 75  | C    | 60      | ISO10646 | 1        |
| `xorg-misc-misc/6x13O.bdf`                    | 6  | 13 | 11  | 2    | 10     | Misc      | Fixed            | Medium | O     | SemiCondensed |           | 13 | 120 | 75  | 75  | C    | 60      | ISO10646 | 1        |
| `xorg-misc-misc/6x9.bdf`                      | 6  | 9  | 7   | 2    | 7      | Misc      | Fixed            | Medium | R     | Normal        |           | 9  | 90  | 75  | 75  | C    | 60      | ISO10646 | 1        |
| `xorg-misc-misc/7x13.bdf`                     | 7  | 13 | 11  | 2    | 10     | Misc      | Fixed            | Medium | R     | Normal        |           | 13 | 120 | 75  | 75  | C    | 70      | ISO10646 | 1        |
| `xorg-misc-misc/7x13B.bdf`                    | 7  | 13 | 11  | 2    | 10     | Misc      | Fixed            | Bold   | R     | Normal        |           | 13 | 120 | 75  | 75  | C    | 70      | ISO10646 | 1        |
| `xorg-misc-misc/7x13O.bdf`                    | 7  | 13 | 11  | 2    | 10     | Misc      | Fixed            | Medium | O     | Normal        |           | 13 | 120 | 75  | 75  | C    | 70      | ISO10646 | 1        |
| `xorg-misc-misc/7x14.bdf`                     | 7  | 14 | 12  | 2    | 12     | Misc      | Fixed            | Medium | R     | Normal        |           | 14 | 130 | 75  | 75  | C    | 70      | ISO10646 | 1        |
| `xorg-misc-misc/7x14B.bdf`                    | 7  | 14 | 12  | 2    | 12     | Misc      | Fixed            | Bold   | R     | Normal        |           | 14 | 130 | 75  | 75  | C    | 70      | ISO10646 | 1        |
| `xorg-misc-misc/8x13.bdf`                     | 8  | 13 | 11  | 2    | 10     | Misc      | Fixed            | Medium | R     | Normal        |           | 13 | 120 | 75  | 75  | C    | 80      | ISO10646 | 1        |
| `xorg-misc-misc/8x13B.bdf`                    | 8  | 13 | 11  | 2    | 10     | Misc      | Fixed            | Bold   | R     | Normal        |           | 13 | 120 | 75  | 75  | C    | 80      | ISO10646 | 1        |
| `xorg-misc-misc/8x13O.bdf`                    | 8  | 13 | 11  | 2    | 10     | Misc      | Fixed            | Medium | O     | Normal        |           | 13 | 120 | 75  | 75  | C    | 80      | ISO10646 | 1        |
| `xorg-misc-misc/9x15.bdf`                     | 9  | 15 | 12  | 3    | 12     | Misc      | Fixed            | Medium | R     | Normal        |           | 15 | 140 | 75  | 75  | C    | 90      | ISO10646 | 1        |
| `xorg-misc-misc/9x15B.bdf`                    | 9  | 15 | 12  | 3    | 12     | Misc      | Fixed            | Bold   | R     | Normal        |           | 15 | 140 | 75  | 75  | C    | 90      | ISO10646 | 1        |
| `xorg-misc-misc/9x18.bdf`                     | 9  | 18 | 14  | 4    | 15     | Misc      | Fixed            | Medium | R     | Normal        |           | 18 | 120 | 100 | 100 | C    | 90      | ISO10646 | 1        |
| `xorg-misc-misc/9x18B.bdf`                    | 9  | 18 | 14  | 4    | 15     | Misc      | Fixed            | Bold   | R     | Normal        |           | 18 | 120 | 100 | 100 | C    | 90      | ISO10646 | 1        |
| -                                             |    |    |     |      |        |           |                  |        |       |               |           |    |     |     |     |      |         |          |          |
| `xorg-sony-misc/12x24.bdf`                    | 12 | 24 | 22  | 2    | 18     | Sony      | Fixed            | Medium | R     | Normal        |           | 24 | 170 | 100 | 100 | C    | 120     | ISO8859  | 1        |
| `xorg-sony-misc/8x16.bdf`                     | 8  | 16 | 14  | 2    | 12     | Sony      | Fixed            | Medium | R     | Normal        |           | 16 | 120 | 100 | 100 | C    | 80      | ISO8859  | 1        |

Examples:

-   for Misc Fixed 6x13: 13 ÷ 4 × 3 = 9.75 => 10

-   for Misc Fixed 7x14: 14 ÷ 4 × 3 = 10.5 => 11

## macOS?

You want the files in the `ttf` directory.

You specify the nominal point size.

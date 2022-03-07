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

Examples:

-   for Misc Fixed 6x13: 13 ÷ 4 × 3 = 9.75 => 10

-   for Misc Fixed 7x14: 14 ÷ 4 × 3 = 10.5 => 11

## macOS?

You want the files in the `ttf` directory.

You specify the nominal point size.

# xorg-monospace-fonts-ttf

**NOTE: WORK IN PROGRESS.  I've found numerous issues and I'm working
on resolving them.  You probably don't want to download these fonts
right now.**

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

## macOS

Fonts are named by pixel height or pixel width x pixel height.
Simply use the pixel height as your font size.

## Windows

In Windows, most times you specify the font's point size, not pixel
size.

To compute the point size, if the pixel size is 2 modulo 4, add one
more pixel.  Then multiply by 0.75 and round to the nearest integer.

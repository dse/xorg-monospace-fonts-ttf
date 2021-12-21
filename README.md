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

| Font                  | Win Pixel Size |
|:----------------------|:---------------|
| Lucida Typewriter 10  |                |
| Lucida Typewriter 11  | 8              |
| Lucida Typewriter 12  | 8              |
| Lucida Typewriter 14  | 11             |
| Lucida Typewriter 14c | x              |
| Lucida Typewriter 17  | 14             |
| Lucida Typewriter 18  | 14             |
| Lucida Typewriter 19  | 16             |
| Lucida Typewriter 20  | x              |
| Lucida Typewriter 24  | 19             |
| Lucida Typewriter 25  | 19             |
| Lucida Typewriter 26  | 19             |
| Lucida Typewriter 34  | 27             |
| Lucida Typewriter 8   | x              |
| DEC Terminal 18       | x              |
| DEC Terminal 14       | 11             |
| Misc Fixed 10x20      | 15             |
| Misc Fixed 4x6        | x              |
| Misc Fixed 5x7        | 5              |
| Misc Fixed 5x8        | 6              |
| Misc Fixed 6x10       | x              |
| Misc Fixed 6x12       | 9              |
| Misc Fixed 6x13       | 10             |
| Misc Fixed 6x9        | 7              |
| Misc Fixed 7x13       | 10             |
| Misc Fixed 7x14       | x              |
| Misc Fixed 8x13       | 10             |
| Misc Fixed 9x15       | 11             |
| Misc Fixed 9x18       | x              |
| Sony Fixed 12x24      | 18             |
| Sony Fixed 8x16       | 12             |

Examples:

-   for Misc Fixed 6x13: 13 ÷ 4 × 3 = 9.75 => 10

-   for Misc Fixed 7x14: 14 ÷ 4 × 3 = 10.5 => 11

## macOS?

You want the files in the `ttf` directory.

You specify the nominal point size.

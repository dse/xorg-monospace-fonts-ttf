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

Fonts are named by pixel height or pixel width x pixel height.
Simply use the pixel height as your font size.

## Windows

In Windows, most times you specify the font's point size, not pixel
size.

To compute the point size, if the pixel size is 2 modulo 4, add one
more pixel.  Then multiply by 0.75 and round to the nearest integer.

| Filename                              | PostScript Font Name     | Family Name           | Weight | Slant   | Pixel Size | Point Size |
|---------------------------------------|--------------------------|-----------------------|--------|---------|------------|------------|
| dist/ttf/LucidaTypewriter11-Bold.ttf  | LucidaTypewriter11-Bold  | Lucida Typewriter 11  | Bold   |         | 11px       | 8pt        |
| dist/ttf/LucidaTypewriter14c-Bold.ttf | LucidaTypewriter14c-Bold | Lucida Typewriter 14c | Bold   |         | 15px       | 11pt       |
| dist/ttf/LucidaTypewriter17-Bold.ttf  | LucidaTypewriter17-Bold  | Lucida Typewriter 17  | Bold   |         | 17px       | 13pt       |
| dist/ttf/LucidaTypewriter20-Bold.ttf  | LucidaTypewriter20-Bold  | Lucida Typewriter 20  | Bold   |         | 20px       | 15pt       |
| dist/ttf/LucidaTypewriter25-Bold.ttf  | LucidaTypewriter25-Bold  | Lucida Typewriter 25  | Bold   |         | 25px       | 19pt       |
| dist/ttf/LucidaTypewriter26-Bold.ttf  | LucidaTypewriter26-Bold  | Lucida Typewriter 26  | Bold   |         | 27px       | 20pt       |
| dist/ttf/LucidaTypewriter34-Bold.ttf  | LucidaTypewriter34-Bold  | Lucida Typewriter 34  | Bold   |         | 35px       | 26pt       |
| dist/ttf/LucidaTypewriter11.ttf       | LucidaTypewriter11       | Lucida Typewriter 11  |        |         | 11px       | 8pt        |
| dist/ttf/LucidaTypewriter14c.ttf      | LucidaTypewriter14c      | Lucida Typewriter 14c |        |         | 15px       | 11pt       |
| dist/ttf/LucidaTypewriter17.ttf       | LucidaTypewriter17       | Lucida Typewriter 17  |        |         | 17px       | 13pt       |
| dist/ttf/LucidaTypewriter20.ttf       | LucidaTypewriter20       | Lucida Typewriter 20  |        |         | 20px       | 15pt       |
| dist/ttf/LucidaTypewriter25.ttf       | LucidaTypewriter25       | Lucida Typewriter 25  |        |         | 25px       | 19pt       |
| dist/ttf/LucidaTypewriter26.ttf       | LucidaTypewriter26       | Lucida Typewriter 26  |        |         | 27px       | 20pt       |
| dist/ttf/LucidaTypewriter34.ttf       | LucidaTypewriter34       | Lucida Typewriter 34  |        |         | 35px       | 26pt       |
| dist/ttf/LucidaTypewriter8-Bold.ttf   | LucidaTypewriter8-Bold   | Lucida Typewriter 8   | Bold   |         | 8px        | 6pt        |
| dist/ttf/LucidaTypewriter10-Bold.ttf  | LucidaTypewriter10-Bold  | Lucida Typewriter 10  | Bold   |         | 11px       | 8pt        |
| dist/ttf/LucidaTypewriter12-Bold.ttf  | LucidaTypewriter12-Bold  | Lucida Typewriter 12  | Bold   |         | 12px       | 9pt        |
| dist/ttf/LucidaTypewriter14-Bold.ttf  | LucidaTypewriter14-Bold  | Lucida Typewriter 14  | Bold   |         | 15px       | 11pt       |
| dist/ttf/LucidaTypewriter18-Bold.ttf  | LucidaTypewriter18-Bold  | Lucida Typewriter 18  | Bold   |         | 19px       | 14pt       |
| dist/ttf/LucidaTypewriter19-Bold.ttf  | LucidaTypewriter19-Bold  | Lucida Typewriter 19  | Bold   |         | 19px       | 14pt       |
| dist/ttf/LucidaTypewriter24-Bold.ttf  | LucidaTypewriter24-Bold  | Lucida Typewriter 24  | Bold   |         | 24px       | 18pt       |
| dist/ttf/LucidaTypewriter8.ttf        | LucidaTypewriter8        | Lucida Typewriter 8   |        |         | 8px        | 6pt        |
| dist/ttf/LucidaTypewriter10.ttf       | LucidaTypewriter10       | Lucida Typewriter 10  |        |         | 11px       | 8pt        |
| dist/ttf/LucidaTypewriter12.ttf       | LucidaTypewriter12       | Lucida Typewriter 12  |        |         | 12px       | 9pt        |
| dist/ttf/LucidaTypewriter14.ttf       | LucidaTypewriter14       | Lucida Typewriter 14  |        |         | 15px       | 11pt       |
| dist/ttf/LucidaTypewriter18.ttf       | LucidaTypewriter18       | Lucida Typewriter 18  |        |         | 19px       | 14pt       |
| dist/ttf/LucidaTypewriter19.ttf       | LucidaTypewriter19       | Lucida Typewriter 19  |        |         | 19px       | 14pt       |
| dist/ttf/LucidaTypewriter24.ttf       | LucidaTypewriter24       | Lucida Typewriter 24  |        |         | 24px       | 18pt       |
| dist/ttf/DECTerminal18.ttf            | DECTerminal18            | DEC Terminal 18       |        |         | 19px       | 14pt       |
| dist/ttf/DECTerminal18-Bold.ttf       | DECTerminal18-Bold       | DEC Terminal 18       | Bold   |         | 19px       | 14pt       |
| dist/ttf/DECTerminal14.ttf            | DECTerminal14            | DEC Terminal 14       |        |         | 15px       | 11pt       |
| dist/ttf/DECTerminal14-Bold.ttf       | DECTerminal14-Bold       | DEC Terminal 14       | Bold   |         | 15px       | 11pt       |
| dist/ttf/MiscFixed10x20.ttf           | MiscFixed10x20           | Misc Fixed 10x20      |        |         | 20px       | 15pt       |
| dist/ttf/MiscFixed4x6.ttf             | MiscFixed4x6             | Misc Fixed 4x6        |        |         | 7px        | 5pt        |
| dist/ttf/MiscFixed5x7.ttf             | MiscFixed5x7             | Misc Fixed 5x7        |        |         | 7px        | 5pt        |
| dist/ttf/MiscFixed5x8.ttf             | MiscFixed5x8             | Misc Fixed 5x8        |        |         | 8px        | 6pt        |
| dist/ttf/MiscFixed6x10.ttf            | MiscFixed6x10            | Misc Fixed 6x10       |        |         | 11px       | 8pt        |
| dist/ttf/MiscFixed6x12.ttf            | MiscFixed6x12            | Misc Fixed 6x12       |        |         | 12px       | 9pt        |
| dist/ttf/MiscFixed6x13.ttf            | MiscFixed6x13            | Misc Fixed 6x13       |        |         | 13px       | 10pt       |
| dist/ttf/MiscFixed6x13-Bold.ttf       | MiscFixed6x13-Bold       | Misc Fixed 6x13       | Bold   |         | 13px       | 10pt       |
| dist/ttf/MiscFixed6x13-Oblique.ttf    | MiscFixed6x13-Oblique    | Misc Fixed 6x13       |        | Oblique | 13px       | 10pt       |
| dist/ttf/MiscFixed6x9.ttf             | MiscFixed6x9             | Misc Fixed 6x9        |        |         | 9px        | 7pt        |
| dist/ttf/MiscFixed7x13.ttf            | MiscFixed7x13            | Misc Fixed 7x13       |        |         | 13px       | 10pt       |
| dist/ttf/MiscFixed7x13-Bold.ttf       | MiscFixed7x13-Bold       | Misc Fixed 7x13       | Bold   |         | 13px       | 10pt       |
| dist/ttf/MiscFixed7x13-Oblique.ttf    | MiscFixed7x13-Oblique    | Misc Fixed 7x13       |        | Oblique | 13px       | 10pt       |
| dist/ttf/MiscFixed7x14.ttf            | MiscFixed7x14            | Misc Fixed 7x14       |        |         | 15px       | 11pt       |
| dist/ttf/MiscFixed7x14-Bold.ttf       | MiscFixed7x14-Bold       | Misc Fixed 7x14       | Bold   |         | 15px       | 11pt       |
| dist/ttf/MiscFixed8x13.ttf            | MiscFixed8x13            | Misc Fixed 8x13       |        |         | 13px       | 10pt       |
| dist/ttf/MiscFixed8x13-Bold.ttf       | MiscFixed8x13-Bold       | Misc Fixed 8x13       | Bold   |         | 13px       | 10pt       |
| dist/ttf/MiscFixed8x13-Oblique.ttf    | MiscFixed8x13-Oblique    | Misc Fixed 8x13       |        | Oblique | 13px       | 10pt       |
| dist/ttf/MiscFixed9x15.ttf            | MiscFixed9x15            | Misc Fixed 9x15       |        |         | 15px       | 11pt       |
| dist/ttf/MiscFixed9x15-Bold.ttf       | MiscFixed9x15-Bold       | Misc Fixed 9x15       | Bold   |         | 15px       | 11pt       |
| dist/ttf/MiscFixed9x18.ttf            | MiscFixed9x18            | Misc Fixed 9x18       |        |         | 19px       | 14pt       |
| dist/ttf/MiscFixed9x18-Bold.ttf       | MiscFixed9x18-Bold       | Misc Fixed 9x18       | Bold   |         | 19px       | 14pt       |
| dist/ttf/SonyFixed12x24.ttf           | SonyFixed12x24           | Sony Fixed 12x24      |        |         | 24px       | 18pt       |
| dist/ttf/SonyFixed8x16.ttf            | SonyFixed8x16            | Sony Fixed 8x16       |        |         | 16px       | 12pt       |

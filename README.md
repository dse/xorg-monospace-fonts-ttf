# xorg-monospace-fonts-ttf

The X Window System comes with a pretty good assortment of bitmap
fonts.  Most of the monospace fonts in it happen to be excellent for
coding.

I distribute those fonts here, in TrueType format, for your enjoyment
and use.

I do not take credit for the fonts, only for the scripts that convert
them to TrueType fonts that work well on your system.

This includes:

-   Lucida Typewriter
-   DEC Terminal
-   Misc Fixed (6x13, 10x20, and all the others)
-   Sony bitmap fonts

## Windows?

You want the files in the `fonts/windows` directory.

The reason is, many of them require adjustments so that you can
specify a pixel size with which they will render as a pixel font like
you want, and not be all blurry lookin'.

## macOS?

You want the files in the `fonts/macos` directory.

You specify the nominal point size.

## What The Heckin' Heck Is Going On Here?  What's All This Rigmarole?

These fonts are the result of a rather simple bitmap-to-vector
conversion.  Literally we're just drawing each individual pixel as a
large square.  If you shrink the resulting vector font down to its
original font size in pixels, you're pretty much going to see the
bitmap font in its original appearance.

The thing about fonts like this is if you shrink them down to any
other font size, they will generally look blurry, which defeats the
purpose in its entirety.

### macOS

On your typical non-retina Mac, the font size you specify is the same
as the pixel font size.  Misc Fixed 6x13, for example, will work best
at a font size of 13 pixels.

On a **retina** Mac, since most users will not be able to distinguish
each pixel from its neighbors, you might as well use a vector font and
it will look absolutely fine.  If you _still_ want Misc Fixed 6x13, I
_think_ the pixels simply _double_, so you can still use it at 13px.

### Windows

The situation in Windows is slightly tricky but not insurmountable.

Let's assume your monitor is one of them regular monitors where you
can still tell individual pixels apart, and you haven't changed your
**font scaling** from its default of 100%.  Windows has traditionally
used 96 pixels per inch when rendering fonts, while any font size you
specify in a Windows application is in units of points or 1/72 inch.

https://docs.microsoft.com/en-us/windows/win32/learnwin32/dpi-and-device-independent-pixels

When using one of these fonts, the point size you specify is not going
to be the same as the fon's original pixel size, though the process of
converting is simple:

                                    1 inch    72 points
    <point size> = <pixel size> * --------- * ---------
                                  96 pixels    1 inch 
                                  
                                = <pixel size> * 3/4

-   Let's say you want to use Misc Fixed 10x20.  Do the math and the
    point size you specify will be 15 pt, and Bob's your uncle.

-   Now let's say you want to use Misc Fixed 6x13.  Do the math and
    your point size will be 9.75 points.  Since you can't specify
    non-integer point sizes in pretty much any Windows app, you get to
    round that up to 10.  Fortunately, Windows will display the font
    in its original and intended appearance in this case.

    This works with any font whose pixel size modulo 4 is equal to 1.

<!-- FIXME: now do 9x15 -->

<!-- FIXME: now do 9x18 -->

### Linux

I'll write something here eventually.

## Other Bitmap Fonts

-   [Glass TTY](http://sensi.org/~svo/glasstty/)

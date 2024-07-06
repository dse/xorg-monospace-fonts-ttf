#!/usr/bin/env bash
set -o errexit                  # exit if any pipeline fails
set -o nounset                  # set your variables first
set -o pipefail                 # if one component fails the pipeline fails
shopt -s lastpipe               # last component is exec'd in foreground
# set -o xtrace

main () {
    _run_fonts "$@"
}

# PostScript font names
# - supposed to be A-Za-z0-9
#   https://adobe-type-tools.github.io/font-tech-notes/pdfs/5902.AdobePSNameGeneration.pdf

_run_fonts () {
    #          subdir               source                                         basename/psfontname         familyname               weight      slant     +px  font sizes
    #          -------------------  ---------------------------------------------  --------------------------  -----------------------  ----------  ---------  -   -----------
    _run_font  'lucida-typewriter'  'xorg-bh-lucidatypewriter-75dpi/lutBS08.bdf'   'LucidaTypewriter8A-Bold'   'Lucida Typewriter 8A'   'Bold'      ''         0   8px    6pt
    _run_font  'lucida-typewriter'  'xorg-bh-lucidatypewriter-75dpi/lutBS10.bdf'   'LucidaTypewriter10A-Bold'  'Lucida Typewriter 10A'  'Bold'      ''         1   11px   8pt
    _run_font  'lucida-typewriter'  'xorg-bh-lucidatypewriter-75dpi/lutBS12.bdf'   'LucidaTypewriter12A-Bold'  'Lucida Typewriter 12A'  'Bold'      ''         0   12px   9pt
    _run_font  'lucida-typewriter'  'xorg-bh-lucidatypewriter-75dpi/lutBS14.bdf'   'LucidaTypewriter14A-Bold'  'Lucida Typewriter 14A'  'Bold'      ''         1   15px   11pt
    _run_font  'lucida-typewriter'  'xorg-bh-lucidatypewriter-75dpi/lutBS18.bdf'   'LucidaTypewriter18A-Bold'  'Lucida Typewriter 18A'  'Bold'      ''         1   19px   14pt
    _run_font  'lucida-typewriter'  'xorg-bh-lucidatypewriter-75dpi/lutBS19.bdf'   'LucidaTypewriter19A-Bold'  'Lucida Typewriter 19A'  'Bold'      ''         0   19px   14pt
    _run_font  'lucida-typewriter'  'xorg-bh-lucidatypewriter-75dpi/lutBS24.bdf'   'LucidaTypewriter24A-Bold'  'Lucida Typewriter 24A'  'Bold'      ''         0   24px   18pt
    _run_font  'lucida-typewriter'  'xorg-bh-lucidatypewriter-75dpi/lutRS08.bdf'   'LucidaTypewriter8A'        'Lucida Typewriter 8A'   ''          ''         0   8px    6pt
    _run_font  'lucida-typewriter'  'xorg-bh-lucidatypewriter-75dpi/lutRS10.bdf'   'LucidaTypewriter10A'       'Lucida Typewriter 10A'  ''          ''         1   11px   8pt
    _run_font  'lucida-typewriter'  'xorg-bh-lucidatypewriter-75dpi/lutRS12.bdf'   'LucidaTypewriter12A'       'Lucida Typewriter 12A'  ''          ''         0   12px   9pt
    _run_font  'lucida-typewriter'  'xorg-bh-lucidatypewriter-75dpi/lutRS14.bdf'   'LucidaTypewriter14A'       'Lucida Typewriter 14A'  ''          ''         1   15px   11pt
    _run_font  'lucida-typewriter'  'xorg-bh-lucidatypewriter-75dpi/lutRS18.bdf'   'LucidaTypewriter18A'       'Lucida Typewriter 18A'  ''          ''         1   19px   14pt
    _run_font  'lucida-typewriter'  'xorg-bh-lucidatypewriter-75dpi/lutRS19.bdf'   'LucidaTypewriter19A'       'Lucida Typewriter 19A'  ''          ''         0   19px   14pt
    _run_font  'lucida-typewriter'  'xorg-bh-lucidatypewriter-75dpi/lutRS24.bdf'   'LucidaTypewriter24A'       'Lucida Typewriter 24A'  ''          ''         0   24px   18pt
    _run_font  'lucida-typewriter'  'xorg-bh-lucidatypewriter-100dpi/lutBS08.bdf'  'LucidaTypewriter8B-Bold'   'Lucida Typewriter 8B'   'Bold'      ''         0   11px   8pt
    _run_font  'lucida-typewriter'  'xorg-bh-lucidatypewriter-100dpi/lutBS10.bdf'  'LucidaTypewriter10B-Bold'  'Lucida Typewriter 10B'  'Bold'      ''         1   15px   11pt
    _run_font  'lucida-typewriter'  'xorg-bh-lucidatypewriter-100dpi/lutBS12.bdf'  'LucidaTypewriter12B-Bold'  'Lucida Typewriter 12B'  'Bold'      ''         0   17px   13pt
    _run_font  'lucida-typewriter'  'xorg-bh-lucidatypewriter-100dpi/lutBS14.bdf'  'LucidaTypewriter14B-Bold'  'Lucida Typewriter 14B'  'Bold'      ''         0   20px   15pt
    _run_font  'lucida-typewriter'  'xorg-bh-lucidatypewriter-100dpi/lutBS18.bdf'  'LucidaTypewriter18B-Bold'  'Lucida Typewriter 18B'  'Bold'      ''         0   25px   19pt
    _run_font  'lucida-typewriter'  'xorg-bh-lucidatypewriter-100dpi/lutBS19.bdf'  'LucidaTypewriter19B-Bold'  'Lucida Typewriter 19B'  'Bold'      ''         1   27px   20pt
    _run_font  'lucida-typewriter'  'xorg-bh-lucidatypewriter-100dpi/lutBS24.bdf'  'LucidaTypewriter24B-Bold'  'Lucida Typewriter 24B'  'Bold'      ''         1   35px   26pt
    _run_font  'lucida-typewriter'  'xorg-bh-lucidatypewriter-100dpi/lutRS08.bdf'  'LucidaTypewriter8B'        'Lucida Typewriter 8B'   ''          ''         0   11px   8pt
    _run_font  'lucida-typewriter'  'xorg-bh-lucidatypewriter-100dpi/lutRS10.bdf'  'LucidaTypewriter10B'       'Lucida Typewriter 10B'  ''          ''         1   15px   11pt
    _run_font  'lucida-typewriter'  'xorg-bh-lucidatypewriter-100dpi/lutRS12.bdf'  'LucidaTypewriter12B'       'Lucida Typewriter 12B'  ''          ''         0   17px   13pt
    _run_font  'lucida-typewriter'  'xorg-bh-lucidatypewriter-100dpi/lutRS14.bdf'  'LucidaTypewriter14B'       'Lucida Typewriter 14B'  ''          ''         0   20px   15pt
    _run_font  'lucida-typewriter'  'xorg-bh-lucidatypewriter-100dpi/lutRS18.bdf'  'LucidaTypewriter18B'       'Lucida Typewriter 18B'  ''          ''         0   25px   19pt
    _run_font  'lucida-typewriter'  'xorg-bh-lucidatypewriter-100dpi/lutRS19.bdf'  'LucidaTypewriter19B'       'Lucida Typewriter 19B'  ''          ''         1   27px   20pt
    _run_font  'lucida-typewriter'  'xorg-bh-lucidatypewriter-100dpi/lutRS24.bdf'  'LucidaTypewriter24B'       'Lucida Typewriter 24B'  ''          ''         1   35px   26pt
    _run_font  'dec-terminal'       'xorg-bitstream-75dpi/term14.bdf'              'DECTerminal14A'            'DEC Terminal 14A'       ''          ''         1   15px   11pt
    _run_font  'dec-terminal'       'xorg-bitstream-75dpi/termB14.bdf'             'DECTerminal14A-Bold'       'DEC Terminal 14A'       'Bold'      ''         1   15px   11pt
    _run_font  'dec-terminal'       'xorg-bitstream-100dpi/term14.bdf'             'DECTerminal14B'            'DEC Terminal 14B'       ''          ''         1   19px   14pt
    _run_font  'dec-terminal'       'xorg-bitstream-100dpi/termB14.bdf'            'DECTerminal14B-Bold'       'DEC Terminal 14B'       'Bold'      ''         1   19px   14pt
    _run_font  'misc-fixed'         'xorg-misc-misc/10x20.bdf'                     'MiscFixed10x20'            'Misc Fixed 10x20'       ''          ''         0   20px   15pt
    _run_font  'misc-fixed'         'xorg-misc-misc/4x6.bdf'                       'MiscFixed4x6'              'Misc Fixed 4x6'         ''          ''         1   7px    5pt
    _run_font  'misc-fixed'         'xorg-misc-misc/5x7.bdf'                       'MiscFixed5x7'              'Misc Fixed 5x7'         ''          ''         0   7px    5pt
    _run_font  'misc-fixed'         'xorg-misc-misc/5x8.bdf'                       'MiscFixed5x8'              'Misc Fixed 5x8'         ''          ''         0   8px    6pt
    _run_font  'misc-fixed'         'xorg-misc-misc/6x10.bdf'                      'MiscFixed6x10'             'Misc Fixed 6x10'        ''          ''         1   11px   8pt
    _run_font  'misc-fixed'         'xorg-misc-misc/6x12.bdf'                      'MiscFixed6x12'             'Misc Fixed 6x12'        ''          ''         0   12px   9pt
    _run_font  'misc-fixed'         'xorg-misc-misc/6x13.bdf'                      'MiscFixed6x13'             'Misc Fixed 6x13'        ''          ''         0   13px   10pt
    _run_font  'misc-fixed'         'xorg-misc-misc/6x13B.bdf'                     'MiscFixed6x13-Bold'        'Misc Fixed 6x13'        'Bold'      ''         0   13px   10pt
    _run_font  'misc-fixed'         'xorg-misc-misc/6x13O.bdf'                     'MiscFixed6x13-Oblique'     'Misc Fixed 6x13'        ''          'Oblique'  0   13px   10pt
    _run_font  'misc-fixed'         'xorg-misc-misc/6x9.bdf'                       'MiscFixed6x9'              'Misc Fixed 6x9'         ''          ''         0   9px    7pt
    _run_font  'misc-fixed'         'xorg-misc-misc/7x13.bdf'                      'MiscFixed7x13'             'Misc Fixed 7x13'        ''          ''         0   13px   10pt
    _run_font  'misc-fixed'         'xorg-misc-misc/7x13B.bdf'                     'MiscFixed7x13-Bold'        'Misc Fixed 7x13'        'Bold'      ''         0   13px   10pt
    _run_font  'misc-fixed'         'xorg-misc-misc/7x13O.bdf'                     'MiscFixed7x13-Oblique'     'Misc Fixed 7x13'        ''          'Oblique'  0   13px   10pt
    _run_font  'misc-fixed'         'xorg-misc-misc/7x14.bdf'                      'MiscFixed7x14'             'Misc Fixed 7x14'        ''          ''         1   15px   11pt
    _run_font  'misc-fixed'         'xorg-misc-misc/7x14B.bdf'                     'MiscFixed7x14-Bold'        'Misc Fixed 7x14'        'Bold'      ''         1   15px   11pt
    _run_font  'misc-fixed'         'xorg-misc-misc/8x13.bdf'                      'MiscFixed8x13'             'Misc Fixed 8x13'        ''          ''         0   13px   10pt
    _run_font  'misc-fixed'         'xorg-misc-misc/8x13B.bdf'                     'MiscFixed8x13-Bold'        'Misc Fixed 8x13'        'Bold'      ''         0   13px   10pt
    _run_font  'misc-fixed'         'xorg-misc-misc/8x13O.bdf'                     'MiscFixed8x13-Oblique'     'Misc Fixed 8x13'        ''          'Oblique'  0   13px   10pt
    _run_font  'misc-fixed'         'xorg-misc-misc/9x15.bdf'                      'MiscFixed9x15'             'Misc Fixed 9x15'        ''          ''         0   15px   11pt
    _run_font  'misc-fixed'         'xorg-misc-misc/9x15B.bdf'                     'MiscFixed9x15-Bold'        'Misc Fixed 9x15'        'Bold'      ''         0   15px   11pt
    _run_font  'misc-fixed'         'xorg-misc-misc/9x18.bdf'                      'MiscFixed9x18'             'Misc Fixed 9x18'        ''          ''         1   19px   14pt
    _run_font  'misc-fixed'         'xorg-misc-misc/9x18B.bdf'                     'MiscFixed9x18-Bold'        'Misc Fixed 9x18'        'Bold'      ''         1   19px   14pt
    _run_font  'sony-fixed'         'xorg-sony-misc/12x24.bdf'                     'SonyFixed12x24'            'Sony Fixed 12x24'       ''          ''         0   24px   18pt
    _run_font  'sony-fixed'         'xorg-sony-misc/8x16.bdf'                      'SonyFixed8x16'             'Sony Fixed 8x16'        ''          ''         0   16px   12pt
}

_run_font () {
    local subdir="$1"
    local source="$2"
    local basename="$3"
    local familyname="$4"
    local weight="$5"
    local slant="$6"
    local pixeladd="$7"
    local pixelsize="${8%px}"
    local pointsize="${9%pt}"
    local subfamily
    local italicangle

    if [[ "$weight" = "" ]] && [[ "$slant" = "" ]] ; then
        subfamily="Regular"
    elif [[ "$weight" = "" ]] ; then
        subfamily="${weight}"
    elif [[ "$slant" = "" ]] ; then
        subfamily="${slant}"
    else
        subfamily="${weight} ${slant}"
    fi

    if [[ "$slant" = "" ]] ; then
        italicangle=0
    else
        italicangle=-12
    fi

    for i ; do
        case "${i}" in
            bold|Bold)       weight=Bold;;
            oblique|Oblique) italicangle=-12; slant=Oblique;;
            italic|Italic)   italicangle=-12; slant=Italic;;
        esac
    done
    local ttf="dist/ttf/${basename}.ttf"
    local sfd="dist/sfd/${basename}.sfd"
    local fullname="${familyname}"
    if [[ "${weight}" != "" ]]; then fullname="${fullname} ${weight}"; fi
    if [[ "${slant}" != "" ]]; then fullname="${fullname} ${slant}"; fi
    local fontname="${basename}"
    run_font "$@"
}

run_font () {
    mkdir -p "$(dirname "${ttf}")"
    mkdir -p "$(dirname "${sfd}")"
    bitmapfont2ttf \
        --font-name="${fontname}" \
        --full-name="${fullname}" \
        --family-name="${familyname}" \
        --italic-angle="${italicangle:-0}" \
        --weight-name="${weight:-Medium}" \
        --add-pixel-size="${pixeladd}" \
        --subfamily="${subfamily}" \
        --monospace \
        --bdf-ascent-descent-2 \
        --copyright="Copyright (c) Darren Embry 2024." \
        "${source}" \
        "${ttf}" \
        "${sfd}"
}

###############################################################################
if [[ "$(caller)" = "0 NULL" ]] ; then
    main "$@"
fi

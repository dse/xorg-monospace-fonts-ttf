#!/usr/bin/env bash
set -o errexit                  # exit if any pipeline fails
set -o nounset                  # set your variables first
set -o pipefail                 # if one component fails the pipeline fails
shopt -s lastpipe               # last component is exec'd in foreground
# set -o xtrace

main () {
    _run_fonts "$@"
}

_run_fonts () {
    #          subdir               source                                         basename/psfontname         familyname               weight      slant     +px  font sizes
    #          -------------------  ---------------------------------------------  --------------------------  -----------------------  ----------  ---------  -   -----------
    _run_font  'lucida-typewriter'  'xorg-bh-lucidatypewriter-100dpi/lutBS08.bdf'  'LucidaTypewriter11-Bold'   'Lucida Typewriter 11'   'Bold'      ''         0   11px   8pt
    _run_font  'lucida-typewriter'  'xorg-bh-lucidatypewriter-100dpi/lutBS10.bdf'  'LucidaTypewriter14c-Bold'  'Lucida Typewriter 14c'  'Bold'      ''         1   15px   11pt
    _run_font  'lucida-typewriter'  'xorg-bh-lucidatypewriter-100dpi/lutBS12.bdf'  'LucidaTypewriter17-Bold'   'Lucida Typewriter 17'   'Bold'      ''         0   17px   13pt
    _run_font  'lucida-typewriter'  'xorg-bh-lucidatypewriter-100dpi/lutBS14.bdf'  'LucidaTypewriter20-Bold'   'Lucida Typewriter 20'   'Bold'      ''         0   20px   15pt
    _run_font  'lucida-typewriter'  'xorg-bh-lucidatypewriter-100dpi/lutBS18.bdf'  'LucidaTypewriter25-Bold'   'Lucida Typewriter 25'   'Bold'      ''         0   25px   19pt
    _run_font  'lucida-typewriter'  'xorg-bh-lucidatypewriter-100dpi/lutBS19.bdf'  'LucidaTypewriter26-Bold'   'Lucida Typewriter 26'   'Bold'      ''         1   27px   20pt
    _run_font  'lucida-typewriter'  'xorg-bh-lucidatypewriter-100dpi/lutBS24.bdf'  'LucidaTypewriter34-Bold'   'Lucida Typewriter 34'   'Bold'      ''         1   35px   26pt
    _run_font  'lucida-typewriter'  'xorg-bh-lucidatypewriter-100dpi/lutRS08.bdf'  'LucidaTypewriter11'        'Lucida Typewriter 11'   ''          ''         0   11px   8pt
    _run_font  'lucida-typewriter'  'xorg-bh-lucidatypewriter-100dpi/lutRS10.bdf'  'LucidaTypewriter14c'       'Lucida Typewriter 14c'  ''          ''         1   15px   11pt
    _run_font  'lucida-typewriter'  'xorg-bh-lucidatypewriter-100dpi/lutRS12.bdf'  'LucidaTypewriter17'        'Lucida Typewriter 17'   ''          ''         0   17px   13pt
    _run_font  'lucida-typewriter'  'xorg-bh-lucidatypewriter-100dpi/lutRS14.bdf'  'LucidaTypewriter20'        'Lucida Typewriter 20'   ''          ''         0   20px   15pt
    _run_font  'lucida-typewriter'  'xorg-bh-lucidatypewriter-100dpi/lutRS18.bdf'  'LucidaTypewriter25'        'Lucida Typewriter 25'   ''          ''         0   25px   19pt
    _run_font  'lucida-typewriter'  'xorg-bh-lucidatypewriter-100dpi/lutRS19.bdf'  'LucidaTypewriter26'        'Lucida Typewriter 26'   ''          ''         1   27px   20pt
    _run_font  'lucida-typewriter'  'xorg-bh-lucidatypewriter-100dpi/lutRS24.bdf'  'LucidaTypewriter34'        'Lucida Typewriter 34'   ''          ''         1   35px   26pt
    _run_font  'lucida-typewriter'  'xorg-bh-lucidatypewriter-75dpi/lutBS08.bdf'   'LucidaTypewriter8-Bold'    'Lucida Typewriter 8'    'Bold'      ''         0   8px    6pt
    _run_font  'lucida-typewriter'  'xorg-bh-lucidatypewriter-75dpi/lutBS10.bdf'   'LucidaTypewriter10-Bold'   'Lucida Typewriter 10'   'Bold'      ''         1   11px   8pt
    _run_font  'lucida-typewriter'  'xorg-bh-lucidatypewriter-75dpi/lutBS12.bdf'   'LucidaTypewriter12-Bold'   'Lucida Typewriter 12'   'Bold'      ''         0   12px   9pt
    _run_font  'lucida-typewriter'  'xorg-bh-lucidatypewriter-75dpi/lutBS14.bdf'   'LucidaTypewriter14-Bold'   'Lucida Typewriter 14'   'Bold'      ''         1   15px   11pt
    _run_font  'lucida-typewriter'  'xorg-bh-lucidatypewriter-75dpi/lutBS18.bdf'   'LucidaTypewriter18-Bold'   'Lucida Typewriter 18'   'Bold'      ''         1   19px   14pt
    _run_font  'lucida-typewriter'  'xorg-bh-lucidatypewriter-75dpi/lutBS19.bdf'   'LucidaTypewriter19-Bold'   'Lucida Typewriter 19'   'Bold'      ''         0   19px   14pt
    _run_font  'lucida-typewriter'  'xorg-bh-lucidatypewriter-75dpi/lutBS24.bdf'   'LucidaTypewriter24-Bold'   'Lucida Typewriter 24'   'Bold'      ''         0   24px   18pt
    _run_font  'lucida-typewriter'  'xorg-bh-lucidatypewriter-75dpi/lutRS08.bdf'   'LucidaTypewriter8'         'Lucida Typewriter 8'    ''          ''         0   8px    6pt
    _run_font  'lucida-typewriter'  'xorg-bh-lucidatypewriter-75dpi/lutRS10.bdf'   'LucidaTypewriter10'        'Lucida Typewriter 10'   ''          ''         1   11px   8pt
    _run_font  'lucida-typewriter'  'xorg-bh-lucidatypewriter-75dpi/lutRS12.bdf'   'LucidaTypewriter12'        'Lucida Typewriter 12'   ''          ''         0   12px   9pt
    _run_font  'lucida-typewriter'  'xorg-bh-lucidatypewriter-75dpi/lutRS14.bdf'   'LucidaTypewriter14'        'Lucida Typewriter 14'   ''          ''         1   15px   11pt
    _run_font  'lucida-typewriter'  'xorg-bh-lucidatypewriter-75dpi/lutRS18.bdf'   'LucidaTypewriter18'        'Lucida Typewriter 18'   ''          ''         1   19px   14pt
    _run_font  'lucida-typewriter'  'xorg-bh-lucidatypewriter-75dpi/lutRS19.bdf'   'LucidaTypewriter19'        'Lucida Typewriter 19'   ''          ''         0   19px   14pt
    _run_font  'lucida-typewriter'  'xorg-bh-lucidatypewriter-75dpi/lutRS24.bdf'   'LucidaTypewriter24'        'Lucida Typewriter 24'   ''          ''         0   24px   18pt
    _run_font  'dec-terminal'       'xorg-bitstream-100dpi/term14.bdf'             'DECTerminal18'             'DEC Terminal 18'        ''          ''         1   19px   14pt
    _run_font  'dec-terminal'       'xorg-bitstream-100dpi/termB14.bdf'            'DECTerminal18-Bold'        'DEC Terminal 18'        'Bold'      ''         1   19px   14pt
    _run_font  'dec-terminal'       'xorg-bitstream-75dpi/term14.bdf'              'DECTerminal14'             'DEC Terminal 14'        ''          ''         1   15px   11pt
    _run_font  'dec-terminal'       'xorg-bitstream-75dpi/termB14.bdf'             'DECTerminal14-Bold'        'DEC Terminal 14'        'Bold'      ''         1   15px   11pt
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
    echo run_font "$@"
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

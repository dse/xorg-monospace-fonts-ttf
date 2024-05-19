#!/usr/bin/env bash
set -o errexit                  # exit if any pipeline fails
set -o nounset                  # set your variables first
set -o pipefail                 # if one component fails the pipeline fails
shopt -s lastpipe               # last component is exec'd in foreground
# set -o xtrace

main () {
    #       subdir              source                                        basename/psfontname        familyname              variant
    genfont 'lucida-typewriter' 'xorg-bh-lucidatypewriter-100dpi/lutBS08.bdf' 'LucidaTypewriter11-Bold'  'Lucida Typewriter 11'  'Bold'
    genfont 'lucida-typewriter' 'xorg-bh-lucidatypewriter-100dpi/lutBS10.bdf' 'LucidaTypewriter14c-Bold' 'Lucida Typewriter 14c' 'Bold'
    genfont 'lucida-typewriter' 'xorg-bh-lucidatypewriter-100dpi/lutBS12.bdf' 'LucidaTypewriter17-Bold'  'Lucida Typewriter 17'  'Bold'
    genfont 'lucida-typewriter' 'xorg-bh-lucidatypewriter-100dpi/lutBS14.bdf' 'LucidaTypewriter20-Bold'  'Lucida Typewriter 20'  'Bold'
    genfont 'lucida-typewriter' 'xorg-bh-lucidatypewriter-100dpi/lutBS18.bdf' 'LucidaTypewriter25-Bold'  'Lucida Typewriter 25'  'Bold'
    genfont 'lucida-typewriter' 'xorg-bh-lucidatypewriter-100dpi/lutBS19.bdf' 'LucidaTypewriter26-Bold'  'Lucida Typewriter 26'  'Bold'
    genfont 'lucida-typewriter' 'xorg-bh-lucidatypewriter-100dpi/lutBS24.bdf' 'LucidaTypewriter34-Bold'  'Lucida Typewriter 34'  'Bold'
    genfont 'lucida-typewriter' 'xorg-bh-lucidatypewriter-100dpi/lutRS08.bdf' 'LucidaTypewriter11'       'Lucida Typewriter 11'
    genfont 'lucida-typewriter' 'xorg-bh-lucidatypewriter-100dpi/lutRS10.bdf' 'LucidaTypewriter14c'      'Lucida Typewriter 14c'
    genfont 'lucida-typewriter' 'xorg-bh-lucidatypewriter-100dpi/lutRS12.bdf' 'LucidaTypewriter17'       'Lucida Typewriter 17'
    genfont 'lucida-typewriter' 'xorg-bh-lucidatypewriter-100dpi/lutRS14.bdf' 'LucidaTypewriter20'       'Lucida Typewriter 20'
    genfont 'lucida-typewriter' 'xorg-bh-lucidatypewriter-100dpi/lutRS18.bdf' 'LucidaTypewriter25'       'Lucida Typewriter 25'
    genfont 'lucida-typewriter' 'xorg-bh-lucidatypewriter-100dpi/lutRS19.bdf' 'LucidaTypewriter26'       'Lucida Typewriter 26'
    genfont 'lucida-typewriter' 'xorg-bh-lucidatypewriter-100dpi/lutRS24.bdf' 'LucidaTypewriter34'       'Lucida Typewriter 34'
    genfont 'lucida-typewriter' 'xorg-bh-lucidatypewriter-75dpi/lutBS08.bdf'  'LucidaTypewriter8-Bold'   'Lucida Typewriter 8'   'Bold'
    genfont 'lucida-typewriter' 'xorg-bh-lucidatypewriter-75dpi/lutBS10.bdf'  'LucidaTypewriter10-Bold'  'Lucida Typewriter 10'  'Bold'
    genfont 'lucida-typewriter' 'xorg-bh-lucidatypewriter-75dpi/lutBS12.bdf'  'LucidaTypewriter12-Bold'  'Lucida Typewriter 12'  'Bold'
    genfont 'lucida-typewriter' 'xorg-bh-lucidatypewriter-75dpi/lutBS14.bdf'  'LucidaTypewriter14-Bold'  'Lucida Typewriter 14'  'Bold'
    genfont 'lucida-typewriter' 'xorg-bh-lucidatypewriter-75dpi/lutBS18.bdf'  'LucidaTypewriter18-Bold'  'Lucida Typewriter 18'  'Bold'
    genfont 'lucida-typewriter' 'xorg-bh-lucidatypewriter-75dpi/lutBS19.bdf'  'LucidaTypewriter19-Bold'  'Lucida Typewriter 19'  'Bold'
    genfont 'lucida-typewriter' 'xorg-bh-lucidatypewriter-75dpi/lutBS24.bdf'  'LucidaTypewriter24-Bold'  'Lucida Typewriter 24'  'Bold'
    genfont 'lucida-typewriter' 'xorg-bh-lucidatypewriter-75dpi/lutRS08.bdf'  'LucidaTypewriter8'        'Lucida Typewriter 8'
    genfont 'lucida-typewriter' 'xorg-bh-lucidatypewriter-75dpi/lutRS10.bdf'  'LucidaTypewriter10'       'Lucida Typewriter 10'
    genfont 'lucida-typewriter' 'xorg-bh-lucidatypewriter-75dpi/lutRS12.bdf'  'LucidaTypewriter12'       'Lucida Typewriter 12'
    genfont 'lucida-typewriter' 'xorg-bh-lucidatypewriter-75dpi/lutRS14.bdf'  'LucidaTypewriter14'       'Lucida Typewriter 14'
    genfont 'lucida-typewriter' 'xorg-bh-lucidatypewriter-75dpi/lutRS18.bdf'  'LucidaTypewriter18'       'Lucida Typewriter 18'
    genfont 'lucida-typewriter' 'xorg-bh-lucidatypewriter-75dpi/lutRS19.bdf'  'LucidaTypewriter19'       'Lucida Typewriter 19'
    genfont 'lucida-typewriter' 'xorg-bh-lucidatypewriter-75dpi/lutRS24.bdf'  'LucidaTypewriter24'       'Lucida Typewriter 24'
    genfont 'dec-terminal'      'xorg-bitstream-100dpi/term14.bdf'            'DECTerminal18'            'DEC Terminal 18'
    genfont 'dec-terminal'      'xorg-bitstream-100dpi/termB14.bdf'           'DECTerminal18-Bold'       'DEC Terminal 18' 'Bold'
    genfont 'dec-terminal'      'xorg-bitstream-75dpi/term14.bdf'             'DECTerminal14'            'DEC Terminal 14'
    genfont 'dec-terminal'      'xorg-bitstream-75dpi/termB14.bdf'            'DECTerminal14-Bold'       'DEC Terminal 14' 'Bold'
    genfont 'misc-fixed'        'xorg-misc-misc/10x20.bdf'                    'MiscFixed10x20'           'Misc Fixed 10x20'
    genfont 'misc-fixed'        'xorg-misc-misc/4x6.bdf'                      'MiscFixed4x6'             'Misc Fixed 4x6'
    genfont 'misc-fixed'        'xorg-misc-misc/5x7.bdf'                      'MiscFixed5x7'             'Misc Fixed 5x7'
    genfont 'misc-fixed'        'xorg-misc-misc/5x8.bdf'                      'MiscFixed5x8'             'Misc Fixed 5x8'
    genfont 'misc-fixed'        'xorg-misc-misc/6x10.bdf'                     'MiscFixed6x10'            'Misc Fixed 6x10'
    genfont 'misc-fixed'        'xorg-misc-misc/6x12.bdf'                     'MiscFixed6x12'            'Misc Fixed 6x12'
    genfont 'misc-fixed'        'xorg-misc-misc/6x13.bdf'                     'MiscFixed6x13'            'Misc Fixed 6x13'
    genfont 'misc-fixed'        'xorg-misc-misc/6x13B.bdf'                    'MiscFixed6x13-Bold'       'Misc Fixed 6x13' 'Bold'
    genfont 'misc-fixed'        'xorg-misc-misc/6x13O.bdf'                    'MiscFixed6x13-Oblique'    'Misc Fixed 6x13' 'Oblique'
    genfont 'misc-fixed'        'xorg-misc-misc/6x9.bdf'                      'MiscFixed6x9'             'Misc Fixed 6x9'
    genfont 'misc-fixed'        'xorg-misc-misc/7x13.bdf'                     'MiscFixed7x13'            'Misc Fixed 7x13'
    genfont 'misc-fixed'        'xorg-misc-misc/7x13B.bdf'                    'MiscFixed7x13-Bold'       'Misc Fixed 7x13' 'Bold'
    genfont 'misc-fixed'        'xorg-misc-misc/7x13O.bdf'                    'MiscFixed7x13-Oblique'    'Misc Fixed 7x13' 'Oblique'
    genfont 'misc-fixed'        'xorg-misc-misc/7x14.bdf'                     'MiscFixed7x14'            'Misc Fixed 7x14'
    genfont 'misc-fixed'        'xorg-misc-misc/7x14B.bdf'                    'MiscFixed7x14-Bold'       'Misc Fixed 7x14' 'Bold'
    genfont 'misc-fixed'        'xorg-misc-misc/8x13.bdf'                     'MiscFixed8x13'            'Misc Fixed 8x13'
    genfont 'misc-fixed'        'xorg-misc-misc/8x13B.bdf'                    'MiscFixed8x13-Bold'       'Misc Fixed 8x13' 'Bold'
    genfont 'misc-fixed'        'xorg-misc-misc/8x13O.bdf'                    'MiscFixed8x13-Oblique'    'Misc Fixed 8x13' 'Oblique'
    genfont 'misc-fixed'        'xorg-misc-misc/9x15.bdf'                     'MiscFixed9x15'            'Misc Fixed 9x15'
    genfont 'misc-fixed'        'xorg-misc-misc/9x15B.bdf'                    'MiscFixed9x15-Bold'       'Misc Fixed 9x15' 'Bold'
    genfont 'misc-fixed'        'xorg-misc-misc/9x18.bdf'                     'MiscFixed9x18'            'Misc Fixed 9x18'
    genfont 'misc-fixed'        'xorg-misc-misc/9x18B.bdf'                    'MiscFixed9x18-Bold'       'Misc Fixed 9x18' 'Bold'
    genfont 'sony-fixed'        'xorg-sony-misc/12x24.bdf'                    'SonyFixed12x24'           'Sony Fixed 12x24'
    genfont 'sony-fixed'        'xorg-sony-misc/8x16.bdf'                     'SonyFixed8x16'            'Sony Fixed 8x16'
}

genfont () {
    local subdir="$1";     shift
    local source="$1";     shift
    local basename="$1";   shift
    local familyname="$1"; shift

    local slant=''              # '' or 'Oblique' or 'Italic'
    local weight=''             # '' or 'Bold'
    local italicangle=0         # 0 or 12
    for i ; do
        case "${i}" in
            bold|Bold)       weight=Bold;;
            oblique|Oblique) italicangle=-12; slant=Oblique;;
            italic|Italic)   italicangle=-12; slant=Italic;;
        esac
    done

    local variant="${5:-}"
    local ttf="dist/ttf/${basename}.ttf"
    local sfd="dist/sfd/${basename}.sfd"
    local fullname="${familyname}"
    if [[ "${weight}" != "" ]]; then fullname="${fullname} ${weight}"; fi
    if [[ "${slant}" != "" ]]; then fullname="${fullname} ${slant}"; fi
    local fontname="${basename}"
    mkdir -p "$(dirname "${ttf}")"
    mkdir -p "$(dirname "${sfd}")"
    bitmapfont2ttf \
        --font-name="${fontname}" \
        --full-name="${fullname}" \
        --family-name="${familyname}" \
        --italic-angle="${italicangle:-0}" \
        --weight-name="${weight:-Medium}" \
        --monospace \
        "${source}" \
        "${ttf}" \
        "${sfd}"
}

###############################################################################
main "$@"

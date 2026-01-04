#!/usr/bin/env bash
set -o errexit                  # exit if any pipeline fails
set -o nounset                  # set your variables first
set -o pipefail                 # if one component fails the pipeline fails
shopt -s lastpipe               # last component is exec'd in foreground
# set -o xtrace

main () {
    genfont 'dec-terminal'      'xorg-bitstream-100dpi/term14.bdf'            'DECTerminal18'            'DEC Terminal 18' 1
    genfont 'dec-terminal'      'xorg-bitstream-100dpi/termB14.bdf'           'DECTerminal18-Bold'       'DEC Terminal 18' 'Bold' 1
    genfont 'dec-terminal'      'xorg-bitstream-75dpi/term14.bdf'             'DECTerminal14'            'DEC Terminal 14' 1
    genfont 'dec-terminal'      'xorg-bitstream-75dpi/termB14.bdf'            'DECTerminal14-Bold'       'DEC Terminal 14' 'Bold' 1
}

genfont () {
    local subdir="$1";     shift
    local source="$1";     shift
    local basename="$1";   shift
    local familyname="$1"; shift

    local slant=''              # '' or 'Oblique' or 'Italic'
    local weight=''             # '' or 'Bold'
    local italicangle=0         # 0 or 12
    local pixeladd=0
    for i ; do
        case "${i}" in
            bold|Bold)       weight=Bold;;
            oblique|Oblique) italicangle=-12; slant=Oblique;;
            italic|Italic)   italicangle=-12; slant=Italic;;
            1)               pixeladd=1;;
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
        --add-pixel-size="${pixeladd}" \
        --monospace \
        --bdf-ascent-descent-2 \
        "${source}" \
        "${ttf}" \
        "${sfd}"
}

###############################################################################
main "$@"

#!/usr/bin/env bash
set -o errexit                  # exit if any pipeline fails
set -o nounset                  # set your variables first
set -o pipefail                 # if one component fails the pipeline fails
shopt -s lastpipe               # last component is exec'd in foreground
# set -o xtrace

this_dir="$(dirname "$(realpath "$0")")"

. "${this_dir}/genfonts.sh"

run_font () {
    # filename, source bdf, ps font name, family name, weight, slant, pixel size, point size
    # | dist/ttf/LucidaTypewriter11-Bold.ttf  | xorg-bh-lucidatypewriter-100dpi/lutBS08.bdf | LucidaTypewriter11-Bold  | Lucida Typewriter 11  | Bold   |         | 11px       | 8pt        |
    echo "| dist/ttf/${basename}.ttf | $source | $basename | $familyname | $weight | $slant | $pixelsize | $pointsize |"
}

###############################################################################
main "$@"

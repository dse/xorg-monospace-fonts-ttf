#!/usr/bin/env bash
set -o errexit                  # exit if any pipeline fails
set -o nounset                  # set your variables first
set -o pipefail                 # if one component fails the pipeline fails
shopt -s lastpipe               # last component is exec'd in foreground
# set -o xtrace

this_dir="$(dirname "$(realpath "$0")")"

. "${this_dir}/genfonts.sh"

run_font () {
    if [[ -v pointsize ]] && [[ "${pointsize}" != "" ]] && [[ -v pixelsize ]] && [[ "${pixelsize}" != "" ]] ; then
        pointsize2="$(echo "(0.5 + $pixelsize * 0.75) - (0.5 + $pixelsize * 0.75) % 1" | bc -l | sed -E 's/\..*$//')"
        if [[ "${pointsize2}" != "${pointsize}" ]] ; then
            echo "$@"
            echo "    expected ${pointsize2}"
            echo "         got ${pointsize}"
        fi
    fi
}

###############################################################################
main "$@"

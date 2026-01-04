#!/usr/bin/env bash
set -o errexit                  # exit if any pipeline fails
set -o nounset                  # set your variables first
set -o pipefail                 # if one component fails the pipeline fails
shopt -s lastpipe               # last component is exec'd in foreground
# set -o xtrace

this_dir="$(dirname "$(realpath "$0")")"

. "${this_dir}/genfonts.sh"

run_font () {
    if [[ -v pointsize ]] && [[ "${pointsize}" != "" ]] ; then
        termfont "${pointsize}"
        termfont "${familyname}"
        echo "${familyname} at ${pointsize}; press Return to continue."
        read
    fi
}

###############################################################################
main "$@"

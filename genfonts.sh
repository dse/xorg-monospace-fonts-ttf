#!/usr/bin/env bash
set -o errexit
set -o pipefail

declare -a verbose_args

usage () { cat <<"EOF"; }
usage:
    genfonts.sh [<option> ...]
options:
    -v, --verbose
    -h, --help
EOF

while getopts 'hv-:' OPTION ; do
    if [[ "${OPTION}" = "-" ]] ; then
        if [[ "${OPTARG}" == "" ]] ; then
            # argument is '--' by itself; terminate option parsing
            break
        fi
        OPTION="${OPTARG}"
        unset OPTARG
        case "${OPTION}" in
            *"="*)
                OPTARG="${OPTION#*=}"
                OPTION="${OPTION%%=*}"
                ;;
        esac
    fi
    case "${OPTION}" in
        'h'|'help')
            usage
            exit 0
            ;;
        'v'|'verbose')
            verbose_args+=("--verbose")
            ;;
        '?')
            # short option invalid or missing argument
            >&2 echo "Type '<progname> --help' for more information."
            exit 1
            ;;
        *)
            # invalid long option
            >&2 echo "<progname>: unknown option -- ${OPTION}"
            >&2 echo "Type '<progname> --help' for more information."
            exit 1
            ;;
    esac
done
shift $((OPTIND - 1))

genfont () {
    source="$1"; shift
    root="$1"; shift

    pointsize=0
    xres=0
    yres=0

    if [[ "$source" = *.bdf ]] ; then
        read pointsize xres yes < <(awk '$1 == "SIZE" { print $2, $3, $4 }' "$source")
    fi

    ttffontname=""
    ttffullname=""
    ttffamilyname=""
    variant=0

    if (( $# )) ; then
        ttffamilyname="$1"
        ttffullname="$1"
        ttffontname="${1// /}"
        shift
    fi

    if (( $# )) ; then
        for i ; do
            if (( $variant )) ; then
                ttffontname="${ttffontname}${i}"
                ttffullname="${ttffullname} ${i}"
            else
                variant=1
                ttffontname="${ttffontname}-${i}"
                ttffullname="${ttffullname} ${i}"
            fi
        done
    fi

    if [[ "$root" = "" ]] ; then
        root="$(basename "$source")"
        root="${root%.*}"
    fi

    dest="ttf/${root}.ttf"

    set -x
    bitmapfont2ttf \
        --save-sfd \
        "${verbose_args[@]}" \
        "${ttffontname:+--font-name=${ttffontname}}" \
        "${ttffullname:+--full-name=${ttffullname}}" \
        "${ttffamilyname:+--family-name=${ttffamilyname}}" \
        "${source}" "${dest}" >/dev/null
    set +x
}

mkdir -p ttf
find ttf -type f -exec rm {} +

generate_lucida_typewriter () {
    genfont xorg-bh-lucidatypewriter-100dpi/lutBS08.bdf 'Lucida-Typewriter-{pixelSize}-Bold-100dpi' 'Lucida Typewriter {pixelSize}' 'Bold'
    genfont xorg-bh-lucidatypewriter-100dpi/lutBS10.bdf 'Lucida-Typewriter-{pixelSize}-Bold-100dpi' 'Lucida Typewriter {pixelSize}' 'Bold'
    genfont xorg-bh-lucidatypewriter-100dpi/lutBS12.bdf 'Lucida-Typewriter-{pixelSize}-Bold-100dpi' 'Lucida Typewriter {pixelSize}' 'Bold'
    genfont xorg-bh-lucidatypewriter-100dpi/lutBS14.bdf 'Lucida-Typewriter-{pixelSize}-Bold-100dpi' 'Lucida Typewriter {pixelSize}' 'Bold'
    genfont xorg-bh-lucidatypewriter-100dpi/lutBS18.bdf 'Lucida-Typewriter-{pixelSize}-Bold-100dpi' 'Lucida Typewriter {pixelSize}' 'Bold'
    genfont xorg-bh-lucidatypewriter-100dpi/lutBS19.bdf 'Lucida-Typewriter-{pixelSize}-Bold-100dpi' 'Lucida Typewriter {pixelSize}' 'Bold'
    genfont xorg-bh-lucidatypewriter-100dpi/lutBS24.bdf 'Lucida-Typewriter-{pixelSize}-Bold-100dpi' 'Lucida Typewriter {pixelSize}' 'Bold'
    genfont xorg-bh-lucidatypewriter-100dpi/lutRS08.bdf 'Lucida-Typewriter-{pixelSize}-100dpi' 'Lucida Typewriter {pixelSize}'
    genfont xorg-bh-lucidatypewriter-100dpi/lutRS10.bdf 'Lucida-Typewriter-{pixelSize}-100dpi' 'Lucida Typewriter {pixelSize}'
    genfont xorg-bh-lucidatypewriter-100dpi/lutRS12.bdf 'Lucida-Typewriter-{pixelSize}-100dpi' 'Lucida Typewriter {pixelSize}'
    genfont xorg-bh-lucidatypewriter-100dpi/lutRS14.bdf 'Lucida-Typewriter-{pixelSize}-100dpi' 'Lucida Typewriter {pixelSize}'
    genfont xorg-bh-lucidatypewriter-100dpi/lutRS18.bdf 'Lucida-Typewriter-{pixelSize}-100dpi' 'Lucida Typewriter {pixelSize}'
    genfont xorg-bh-lucidatypewriter-100dpi/lutRS19.bdf 'Lucida-Typewriter-{pixelSize}-100dpi' 'Lucida Typewriter {pixelSize}'
    genfont xorg-bh-lucidatypewriter-100dpi/lutRS24.bdf 'Lucida-Typewriter-{pixelSize}-100dpi' 'Lucida Typewriter {pixelSize}'
    genfont xorg-bh-lucidatypewriter-75dpi/lutBS08.bdf  'Lucida-Typewriter-{pixelSize}-Bold-75dpi' 'Lucida Typewriter {pixelSize}' 'Bold'
    genfont xorg-bh-lucidatypewriter-75dpi/lutBS10.bdf  'Lucida-Typewriter-{pixelSize}-Bold-75dpi' 'Lucida Typewriter {pixelSize}' 'Bold'
    genfont xorg-bh-lucidatypewriter-75dpi/lutBS12.bdf  'Lucida-Typewriter-{pixelSize}-Bold-75dpi' 'Lucida Typewriter {pixelSize}' 'Bold'
    genfont xorg-bh-lucidatypewriter-75dpi/lutBS14.bdf  'Lucida-Typewriter-{pixelSize}-Bold-75dpi' 'Lucida Typewriter {pixelSize}' 'Bold'
    genfont xorg-bh-lucidatypewriter-75dpi/lutBS18.bdf  'Lucida-Typewriter-{pixelSize}-Bold-75dpi' 'Lucida Typewriter {pixelSize}' 'Bold'
    genfont xorg-bh-lucidatypewriter-75dpi/lutBS19.bdf  'Lucida-Typewriter-{pixelSize}-Bold-75dpi' 'Lucida Typewriter {pixelSize}' 'Bold'
    genfont xorg-bh-lucidatypewriter-75dpi/lutBS24.bdf  'Lucida-Typewriter-{pixelSize}-Bold-75dpi' 'Lucida Typewriter {pixelSize}' 'Bold'
    genfont xorg-bh-lucidatypewriter-75dpi/lutRS08.bdf  'Lucida-Typewriter-{pixelSize}-75dpi' 'Lucida Typewriter {pixelSize}'
    genfont xorg-bh-lucidatypewriter-75dpi/lutRS10.bdf  'Lucida-Typewriter-{pixelSize}-75dpi' 'Lucida Typewriter {pixelSize}'
    genfont xorg-bh-lucidatypewriter-75dpi/lutRS12.bdf  'Lucida-Typewriter-{pixelSize}-75dpi' 'Lucida Typewriter {pixelSize}'
    genfont xorg-bh-lucidatypewriter-75dpi/lutRS14.bdf  'Lucida-Typewriter-{pixelSize}-75dpi' 'Lucida Typewriter {pixelSize}'
    genfont xorg-bh-lucidatypewriter-75dpi/lutRS18.bdf  'Lucida-Typewriter-{pixelSize}-75dpi' 'Lucida Typewriter {pixelSize}'
    genfont xorg-bh-lucidatypewriter-75dpi/lutRS19.bdf  'Lucida-Typewriter-{pixelSize}-75dpi' 'Lucida Typewriter {pixelSize}'
    genfont xorg-bh-lucidatypewriter-75dpi/lutRS24.bdf  'Lucida-Typewriter-{pixelSize}-75dpi' 'Lucida Typewriter {pixelSize}'
}

generate_dec_terminal () {
    genfont xorg-bitstream-100dpi/term14.bdf  'DEC-Terminal-{pixelSize}-100dpi' 'DEC Terminal {pixelSize}'
    genfont xorg-bitstream-100dpi/termB14.bdf 'DEC-Terminal-{pixelSize}-Bold-100dpi' 'DEC Terminal {pixelSize}' 'Bold'
    genfont xorg-bitstream-75dpi/term14.bdf   'DEC-Terminal-{pixelSize}-75dpi' 'DEC Terminal {pixelSize}'
    genfont xorg-bitstream-75dpi/termB14.bdf  'DEC-Terminal-{pixelSize}-Bold-75dpi' 'DEC Terminal {pixelSize}' 'Bold'
}

generate_misc_fixed_6x13 () {
    genfont xorg-misc-misc/6x13.bdf  '6x13'  '{familyName} 6x13'
    genfont xorg-misc-misc/6x13B.bdf '6x13B' '{familyName} 6x13' 'Bold'
    genfont xorg-misc-misc/6x13O.bdf '6x13O' '{familyName} 6x13' 'Oblique'
}

generate_misc_fixed () {
    genfont xorg-misc-misc/10x20.bdf '10x20' '{familyName} 10x20'
    genfont xorg-misc-misc/4x6.bdf   '4x6'   '{familyName} 4x6'
    genfont xorg-misc-misc/5x7.bdf   '5x7'   '{familyName} 5x7'
    genfont xorg-misc-misc/5x8.bdf   '5x8'   '{familyName} 5x8'
    genfont xorg-misc-misc/6x10.bdf  '6x10'  '{familyName} 6x10'
    genfont xorg-misc-misc/6x12.bdf  '6x12'  '{familyName} 6x12'
    genfont xorg-misc-misc/6x9.bdf   '6x9'   '{familyName} 6x9'
    genfont xorg-misc-misc/7x13.bdf  '7x13'  '{familyName} 7x13'
    genfont xorg-misc-misc/7x13B.bdf '7x13B' '{familyName} 7x13' 'Bold'
    genfont xorg-misc-misc/7x13O.bdf '7x13O' '{familyName} 7x13' 'Oblique'
    genfont xorg-misc-misc/7x14.bdf  '7x14'  '{familyName} 7x14'
    genfont xorg-misc-misc/7x14B.bdf '7x14B' '{familyName} 7x14' 'Bold'
    genfont xorg-misc-misc/8x13.bdf  '8x13'  '{familyName} 8x13'
    genfont xorg-misc-misc/8x13B.bdf '8x13B' '{familyName} 8x13' 'Bold'
    genfont xorg-misc-misc/8x13O.bdf '8x13O' '{familyName} 8x13' 'Oblique'
    genfont xorg-misc-misc/9x15.bdf  '9x15'  '{familyName} 9x15'
    genfont xorg-misc-misc/9x15B.bdf '9x15B' '{familyName} 9x15' 'Bold'
    genfont xorg-misc-misc/9x18.bdf  '9x18'  '{familyName} 9x18'
    genfont xorg-misc-misc/9x18B.bdf '9x18B' '{familyName} 9x18' 'Bold'
}

generate_sony_misc () {
    genfont xorg-sony-misc/12x24.bdf Sony-12x24 '{familyName} 12x24'
    genfont xorg-sony-misc/8x16.bdf  Sony-8x16  '{familyName} 8x16'
}

generate_misc_fixed_6x13
generate_misc_fixed
generate_sony_misc
generate_dec_terminal
generate_lucida_typewriter

# genfont xorg-adobe-100dpi/courB08.bdf courB08-100dpi
# genfont xorg-adobe-100dpi/courB10.bdf courB10-100dpi
# genfont xorg-adobe-100dpi/courB12.bdf courB12-100dpi
# genfont xorg-adobe-100dpi/courB14.bdf courB14-100dpi
# genfont xorg-adobe-100dpi/courB18.bdf courB18-100dpi
# genfont xorg-adobe-100dpi/courB24.bdf courB24-100dpi
# genfont xorg-adobe-100dpi/courBO08.bdf courBO08-100dpi
# genfont xorg-adobe-100dpi/courBO10.bdf courBO10-100dpi
# genfont xorg-adobe-100dpi/courBO12.bdf courBO12-100dpi
# genfont xorg-adobe-100dpi/courBO14.bdf courBO14-100dpi
# genfont xorg-adobe-100dpi/courBO18.bdf courBO18-100dpi
# genfont xorg-adobe-100dpi/courBO24.bdf courBO24-100dpi
# genfont xorg-adobe-100dpi/courO08.bdf courO08-100dpi
# genfont xorg-adobe-100dpi/courO10.bdf courO10-100dpi
# genfont xorg-adobe-100dpi/courO12.bdf courO12-100dpi
# genfont xorg-adobe-100dpi/courO14.bdf courO14-100dpi
# genfont xorg-adobe-100dpi/courO18.bdf courO18-100dpi
# genfont xorg-adobe-100dpi/courO24.bdf courO24-100dpi
# genfont xorg-adobe-100dpi/courR08.bdf courR08-100dpi
# genfont xorg-adobe-100dpi/courR10.bdf courR10-100dpi
# genfont xorg-adobe-100dpi/courR12.bdf courR12-100dpi
# genfont xorg-adobe-100dpi/courR14.bdf courR14-100dpi
# genfont xorg-adobe-100dpi/courR18.bdf courR18-100dpi
# genfont xorg-adobe-100dpi/courR24.bdf courR24-100dpi
# genfont xorg-adobe-75dpi/courB08.bdf courB08-75dpi
# genfont xorg-adobe-75dpi/courB10.bdf courB10-75dpi
# genfont xorg-adobe-75dpi/courB12.bdf courB12-75dpi
# genfont xorg-adobe-75dpi/courB14.bdf courB14-75dpi
# genfont xorg-adobe-75dpi/courB18.bdf courB18-75dpi
# genfont xorg-adobe-75dpi/courB24.bdf courB24-75dpi
# genfont xorg-adobe-75dpi/courBO08.bdf courBO08-75dpi
# genfont xorg-adobe-75dpi/courBO10.bdf courBO10-75dpi
# genfont xorg-adobe-75dpi/courBO12.bdf courBO12-75dpi
# genfont xorg-adobe-75dpi/courBO14.bdf courBO14-75dpi
# genfont xorg-adobe-75dpi/courBO18.bdf courBO18-75dpi
# genfont xorg-adobe-75dpi/courBO24.bdf courBO24-75dpi
# genfont xorg-adobe-75dpi/courO08.bdf courO08-75dpi
# genfont xorg-adobe-75dpi/courO10.bdf courO10-75dpi
# genfont xorg-adobe-75dpi/courO12.bdf courO12-75dpi
# genfont xorg-adobe-75dpi/courO14.bdf courO14-75dpi
# genfont xorg-adobe-75dpi/courO18.bdf courO18-75dpi
# genfont xorg-adobe-75dpi/courO24.bdf courO24-75dpi
# genfont xorg-adobe-75dpi/courR08.bdf courR08-75dpi
# genfont xorg-adobe-75dpi/courR10.bdf courR10-75dpi
# genfont xorg-adobe-75dpi/courR12.bdf courR12-75dpi
# genfont xorg-adobe-75dpi/courR14.bdf courR14-75dpi
# genfont xorg-adobe-75dpi/courR18.bdf courR18-75dpi
# genfont xorg-adobe-75dpi/courR24.bdf courR24-75dpi

# genfont xorg-bitstream-100dpi/tech14.bdf tech14-100dpi
# genfont xorg-bitstream-100dpi/techB14.bdf techB14-100dpi
# genfont xorg-bitstream-75dpi/tech14.bdf tech14-75dpi
# genfont xorg-bitstream-75dpi/techB14.bdf techB14-75dpi

# genfont xorg-sony-misc/12x24rk.bdf
# genfont xorg-sony-misc/8x16rk.bdf

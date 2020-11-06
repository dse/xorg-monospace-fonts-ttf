#!/usr/bin/env bash
set -o errexit
set -o pipefail

declare -a script_args

fixed6x13only=0
fixed7x13only=0
decterminalonly=0
scale_option=--nearest-multiple-of-four

usage () { cat <<"EOF"; }
usage:
    genfonts.sh [<option> ...]
options:
    -v, --verbose
    -h, --help
        --ascii-only
        --fixed-6x13-only
        --fixed-7x13-only
        --dec-terminal-only
        --no-scale
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
            script_args+=("--verbose")
            ;;
        'no-scale')
            scale_option=''
            ;;
        'ascii-only')
            script_args+=("--ascii-only")
            ;;
        'fixed-6x13-only')
            fixed6x13only=1
            ;;
        'fixed-7x13-only')
            fixed7x13only=1
            ;;
        'dec-terminal-only')
            decterminalonly=1
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
        --sfd-dir=sfd \
        $scale_option \
        "${script_args[@]}" \
        "${ttffontname:+--font-name=${ttffontname}}" \
        "${ttffullname:+--full-name=${ttffullname}}" \
        "${ttffamilyname:+--family-name=${ttffamilyname}}" \
        "${source}" "${dest}" >/dev/null
    set +x
}

mkdir -p ttf
find ttf -type f -exec rm {} +

mkdir -p sfd
find sfd -type f -exec rm {} +

generate_lucida_typewriter () {
    genfont xorg-bh-lucidatypewriter-100dpi/lutBS08.bdf 'Lucida-Typewriter-11-Bold' 'Lucida Typewriter 11' 'Bold'
    genfont xorg-bh-lucidatypewriter-100dpi/lutBS10.bdf 'Lucida-Typewriter-14c-Bold' 'Lucida Typewriter 14c' 'Bold'
    genfont xorg-bh-lucidatypewriter-100dpi/lutBS12.bdf 'Lucida-Typewriter-17-Bold' 'Lucida Typewriter 17' 'Bold'
    genfont xorg-bh-lucidatypewriter-100dpi/lutBS14.bdf 'Lucida-Typewriter-20-Bold' 'Lucida Typewriter 20' 'Bold'
    genfont xorg-bh-lucidatypewriter-100dpi/lutBS18.bdf 'Lucida-Typewriter-25-Bold' 'Lucida Typewriter 25' 'Bold'
    genfont xorg-bh-lucidatypewriter-100dpi/lutBS19.bdf 'Lucida-Typewriter-26-Bold' 'Lucida Typewriter 26' 'Bold'
    genfont xorg-bh-lucidatypewriter-100dpi/lutBS24.bdf 'Lucida-Typewriter-34-Bold' 'Lucida Typewriter 34' 'Bold'
    genfont xorg-bh-lucidatypewriter-100dpi/lutRS08.bdf 'Lucida-Typewriter-11' 'Lucida Typewriter 11'
    genfont xorg-bh-lucidatypewriter-100dpi/lutRS10.bdf 'Lucida-Typewriter-14c' 'Lucida Typewriter 14c'
    genfont xorg-bh-lucidatypewriter-100dpi/lutRS12.bdf 'Lucida-Typewriter-17' 'Lucida Typewriter 17'
    genfont xorg-bh-lucidatypewriter-100dpi/lutRS14.bdf 'Lucida-Typewriter-20' 'Lucida Typewriter 20'
    genfont xorg-bh-lucidatypewriter-100dpi/lutRS18.bdf 'Lucida-Typewriter-25' 'Lucida Typewriter 25'
    genfont xorg-bh-lucidatypewriter-100dpi/lutRS19.bdf 'Lucida-Typewriter-26' 'Lucida Typewriter 26'
    genfont xorg-bh-lucidatypewriter-100dpi/lutRS24.bdf 'Lucida-Typewriter-34' 'Lucida Typewriter 34'
    genfont xorg-bh-lucidatypewriter-75dpi/lutBS08.bdf  'Lucida-Typewriter-8-Bold' 'Lucida Typewriter 8' 'Bold'
    genfont xorg-bh-lucidatypewriter-75dpi/lutBS10.bdf  'Lucida-Typewriter-10-Bold' 'Lucida Typewriter 10' 'Bold'
    genfont xorg-bh-lucidatypewriter-75dpi/lutBS12.bdf  'Lucida-Typewriter-12-Bold' 'Lucida Typewriter 12' 'Bold'
    genfont xorg-bh-lucidatypewriter-75dpi/lutBS14.bdf  'Lucida-Typewriter-14-Bold' 'Lucida Typewriter 14' 'Bold'
    genfont xorg-bh-lucidatypewriter-75dpi/lutBS18.bdf  'Lucida-Typewriter-18-Bold' 'Lucida Typewriter 18' 'Bold'
    genfont xorg-bh-lucidatypewriter-75dpi/lutBS19.bdf  'Lucida-Typewriter-19-Bold' 'Lucida Typewriter 19' 'Bold'
    genfont xorg-bh-lucidatypewriter-75dpi/lutBS24.bdf  'Lucida-Typewriter-24-Bold' 'Lucida Typewriter 24' 'Bold'
    genfont xorg-bh-lucidatypewriter-75dpi/lutRS08.bdf  'Lucida-Typewriter-8' 'Lucida Typewriter 8'
    genfont xorg-bh-lucidatypewriter-75dpi/lutRS10.bdf  'Lucida-Typewriter-10' 'Lucida Typewriter 10'
    genfont xorg-bh-lucidatypewriter-75dpi/lutRS12.bdf  'Lucida-Typewriter-12' 'Lucida Typewriter 12'
    genfont xorg-bh-lucidatypewriter-75dpi/lutRS14.bdf  'Lucida-Typewriter-14' 'Lucida Typewriter 14'
    genfont xorg-bh-lucidatypewriter-75dpi/lutRS18.bdf  'Lucida-Typewriter-18' 'Lucida Typewriter 18'
    genfont xorg-bh-lucidatypewriter-75dpi/lutRS19.bdf  'Lucida-Typewriter-19' 'Lucida Typewriter 19'
    genfont xorg-bh-lucidatypewriter-75dpi/lutRS24.bdf  'Lucida-Typewriter-24' 'Lucida Typewriter 24'
}

generate_dec_terminal () {
    genfont xorg-bitstream-100dpi/term14.bdf  'DEC-Terminal-18'      'DEC Terminal 18'
    genfont xorg-bitstream-100dpi/termB14.bdf 'DEC-Terminal-18-Bold' 'DEC Terminal 18' 'Bold'
    genfont xorg-bitstream-75dpi/term14.bdf   'DEC-Terminal-14'      'DEC Terminal 14'
    genfont xorg-bitstream-75dpi/termB14.bdf  'DEC-Terminal-14-Bold' 'DEC Terminal 14' 'Bold'
}

generate_misc_fixed_6x13 () {
    genfont xorg-misc-misc/6x13.bdf  'Misc-Fixed-6x13'  'Misc Fixed 6x13'
    genfont xorg-misc-misc/6x13B.bdf 'Misc-Fixed-6x13B' 'Misc Fixed 6x13' 'Bold'
    genfont xorg-misc-misc/6x13O.bdf 'Misc-Fixed-6x13O' 'Misc Fixed 6x13' 'Oblique'
}

generate_misc_fixed_7x13 () {
    genfont xorg-misc-misc/7x13.bdf  'Misc-Fixed-7x13'  'Misc Fixed 7x13'
    genfont xorg-misc-misc/7x13B.bdf 'Misc-Fixed-7x13B' 'Misc Fixed 7x13' 'Bold'
    genfont xorg-misc-misc/7x13O.bdf 'Misc-Fixed-7x13O' 'Misc Fixed 7x13' 'Oblique'
}

generate_misc_fixed () {
    genfont xorg-misc-misc/10x20.bdf 'Misc-Fixed-10x20' 'Misc Fixed 10x20'
    genfont xorg-misc-misc/4x6.bdf   'Misc-Fixed-4x6'   'Misc Fixed 4x6'
    genfont xorg-misc-misc/5x7.bdf   'Misc-Fixed-5x7'   'Misc Fixed 5x7'
    genfont xorg-misc-misc/5x8.bdf   'Misc-Fixed-5x8'   'Misc Fixed 5x8'
    genfont xorg-misc-misc/6x10.bdf  'Misc-Fixed-6x10'  'Misc Fixed 6x10'
    genfont xorg-misc-misc/6x12.bdf  'Misc-Fixed-6x12'  'Misc Fixed 6x12'
    genfont xorg-misc-misc/6x9.bdf   'Misc-Fixed-6x9'   'Misc Fixed 6x9'
    genfont xorg-misc-misc/7x13.bdf  'Misc-Fixed-7x13'  'Misc Fixed 7x13'
    genfont xorg-misc-misc/7x13B.bdf 'Misc-Fixed-7x13B' 'Misc Fixed 7x13' 'Bold'
    genfont xorg-misc-misc/7x13O.bdf 'Misc-Fixed-7x13O' 'Misc Fixed 7x13' 'Oblique'
    genfont xorg-misc-misc/7x14.bdf  'Misc-Fixed-7x14'  'Misc Fixed 7x14'
    genfont xorg-misc-misc/7x14B.bdf 'Misc-Fixed-7x14B' 'Misc Fixed 7x14' 'Bold'
    genfont xorg-misc-misc/8x13.bdf  'Misc-Fixed-8x13'  'Misc Fixed 8x13'
    genfont xorg-misc-misc/8x13B.bdf 'Misc-Fixed-8x13B' 'Misc Fixed 8x13' 'Bold'
    genfont xorg-misc-misc/8x13O.bdf 'Misc-Fixed-8x13O' 'Misc Fixed 8x13' 'Oblique'
    genfont xorg-misc-misc/9x15.bdf  'Misc-Fixed-9x15'  'Misc Fixed 9x15'
    genfont xorg-misc-misc/9x15B.bdf 'Misc-Fixed-9x15B' 'Misc Fixed 9x15' 'Bold'
    genfont xorg-misc-misc/9x18.bdf  'Misc-Fixed-9x18'  'Misc Fixed 9x18'
    genfont xorg-misc-misc/9x18B.bdf 'Misc-Fixed-9x18B' 'Misc Fixed 9x18' 'Bold'
}

generate_sony_misc () {
    genfont xorg-sony-misc/12x24.bdf Sony-Fixed-12x24 'Sony Fixed 12x24'
    genfont xorg-sony-misc/8x16.bdf  Sony-Fixed-8x16  'Sony Fixed 8x16'
}

if (( fixed6x13only )) ; then
    generate_misc_fixed_6x13
elif (( fixed7x13only )) ; then
    generate_misc_fixed_7x13
elif (( decterminalonly )) ; then
    generate_dec_terminal
else
    generate_misc_fixed_6x13
    generate_misc_fixed
    generate_sony_misc
    generate_dec_terminal
    generate_lucida_typewriter
fi

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
# genfont xorg-adobe-75dpi/courB08.bdf courB08
# genfont xorg-adobe-75dpi/courB10.bdf courB10
# genfont xorg-adobe-75dpi/courB12.bdf courB12
# genfont xorg-adobe-75dpi/courB14.bdf courB14
# genfont xorg-adobe-75dpi/courB18.bdf courB18
# genfont xorg-adobe-75dpi/courB24.bdf courB24
# genfont xorg-adobe-75dpi/courBO08.bdf courBO08
# genfont xorg-adobe-75dpi/courBO10.bdf courBO10
# genfont xorg-adobe-75dpi/courBO12.bdf courBO12
# genfont xorg-adobe-75dpi/courBO14.bdf courBO14
# genfont xorg-adobe-75dpi/courBO18.bdf courBO18
# genfont xorg-adobe-75dpi/courBO24.bdf courBO24
# genfont xorg-adobe-75dpi/courO08.bdf courO08
# genfont xorg-adobe-75dpi/courO10.bdf courO10
# genfont xorg-adobe-75dpi/courO12.bdf courO12
# genfont xorg-adobe-75dpi/courO14.bdf courO14
# genfont xorg-adobe-75dpi/courO18.bdf courO18
# genfont xorg-adobe-75dpi/courO24.bdf courO24
# genfont xorg-adobe-75dpi/courR08.bdf courR08
# genfont xorg-adobe-75dpi/courR10.bdf courR10
# genfont xorg-adobe-75dpi/courR12.bdf courR12
# genfont xorg-adobe-75dpi/courR14.bdf courR14
# genfont xorg-adobe-75dpi/courR18.bdf courR18
# genfont xorg-adobe-75dpi/courR24.bdf courR24

# genfont xorg-bitstream-100dpi/tech14.bdf tech14-100dpi
# genfont xorg-bitstream-100dpi/techB14.bdf techB14-100dpi
# genfont xorg-bitstream-75dpi/tech14.bdf tech14
# genfont xorg-bitstream-75dpi/techB14.bdf techB14

# genfont xorg-sony-misc/12x24rk.bdf
# genfont xorg-sony-misc/8x16rk.bdf

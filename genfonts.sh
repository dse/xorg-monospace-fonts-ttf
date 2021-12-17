#!/usr/bin/env bash
set -o errexit
set -o pipefail

main () {
    init
    options
    shift $((OPTIND - 1))

    install_bitmapfont2ttf

    if (( fixed6x13only )) ; then
        generate_misc_fixed_6x13
    elif (( fixed7x13only )) ; then
        generate_misc_fixed_7x13
    elif (( decterminalonly )) ; then
        generate_dec_terminal
    elif (( lucidatypewriteronly )) ; then
        generate_lucida_typewriter
    else
        generate_misc_fixed_6x13
        generate_misc_fixed
        generate_sony_misc
        generate_dec_terminal
        generate_lucida_typewriter
    fi
}

init () {
    declare -a script_args

    fixed6x13only=0
    fixed7x13only=0
    decterminalonly=0
    lucidatypewriteronly=0
    scale_option=--nearest-multiple-of-four
    opt_use_own_bitmap_tracing=''

    usage () { cat <<"EOF"; }
usage:
    genfonts.sh [<option> ...]
options:
    -v, --verbose
    -h, --help
        --fixed-6x13-only
        --fixed-7x13-only
        --dec-terminal-only
        --lucida-typewriter-only
        --no-scale
        --use-own-bitmap-tracing
EOF
}

options () {
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
            'fixed-6x13-only')
                fixed6x13only=1
                ;;
            'fixed-7x13-only')
                fixed7x13only=1
                ;;
            'dec-terminal-only')
                decterminalonly=1
                ;;
            'lucida-typewriter-only')
                lucidatypewriteronly=1
                ;;
            'use-own-bitmap-tracing')
                opt_use_own_bitmap_tracing=--use-own-bitmap-tracing
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
}

genfont () {
    subdirname="$1"; shift
    source="$1"; shift
    basename="$1"; shift

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
                ttffontname="${ttffontname}${i}" # yes, no space there
                ttffullname="${ttffullname} ${i}"
            else
                variant=1
                ttffontname="${ttffontname}-${i}"
                ttffullname="${ttffullname} ${i}"
            fi
        done
    fi

    if [[ "$basename" = "" ]] ; then
        basename="$(basename "$source")"
        basename="${basename%.*}"
    fi

    ttfdir="ttf/${subdirname}"
    sfddir="sfd/${subdirname}"

    mkdir -p "${ttfdir}"
    mkdir -p "${sfddir}"

    dest="${ttfdir}/${basename}.ttf"
    sfddest="${sfddir}/${basename}.sfd"
    desttmp="${dest}.tmp.ttf"
    sfddesttmp="${sfddest}.tmp.sfd"

    bitmapfont2ttf="$(which bitmapfont2ttf)"

    if isuptodate "${dest}" "${sfddest}" -- "${source}" "${bitmapfont2ttf}" "$0" ; then
        >&2 echo "${dest} is uptodate"
        >&2 echo "${sfddest} is uptodate"
    else
        set -x
        "${bitmapfont2ttf}" \
            ${opt_use_own_bitmap_tracing} \
            $scale_option \
            "${script_args[@]}" \
            "${ttffontname:+--font-name=${ttffontname}}" \
            "${ttffullname:+--full-name=${ttffullname}}" \
            "${ttffamilyname:+--family-name=${ttffamilyname}}" \
            "${source}" "${desttmp}" "${sfddesttmp}"
        set +x
        mv "${desttmp}" "${dest}"
        mv "${sfddesttmp}" "${sfddest}"
    fi
}

isuptodate () {
    local -a targets=()
    local target
    local dependency
    while (( $# )) ; do
        if [[ "$1" = "--" ]] ; then
            shift
            break
        fi
        targets+=("$1")
        shift
    done
    for target in "${targets[@]}" ; do
        for dependency ; do
            if [[ "${dependency}" -nt "${target}" ]] ; then
                return 1
            fi
        done
    done
    return 0
}

isincludedin () {
    local needle="$1"
    shift
    local hay
    for hay ; do
        if [[ "$hay" = "$needle" ]] ; then
            return 0
        fi
    done
    return 1
}

mkdir -p ttf
# find ttf -type f -exec rm {} +

mkdir -p sfd
# find sfd -type f -exec rm {} +

generate_lucida_typewriter () {
    #       subdir            source                                      basename
    genfont lucida-typewriter xorg-bh-lucidatypewriter-100dpi/lutBS08.bdf 'Lucida-Typewriter-11-Bold' 'BM Lucida Typewriter 11' 'Bold'
    genfont lucida-typewriter xorg-bh-lucidatypewriter-100dpi/lutBS10.bdf 'Lucida-Typewriter-14c-Bold' 'BM Lucida Typewriter 14c' 'Bold'
    genfont lucida-typewriter xorg-bh-lucidatypewriter-100dpi/lutBS12.bdf 'Lucida-Typewriter-17-Bold' 'BM Lucida Typewriter 17' 'Bold'
    genfont lucida-typewriter xorg-bh-lucidatypewriter-100dpi/lutBS14.bdf 'Lucida-Typewriter-20-Bold' 'BM Lucida Typewriter 20' 'Bold'
    genfont lucida-typewriter xorg-bh-lucidatypewriter-100dpi/lutBS18.bdf 'Lucida-Typewriter-25-Bold' 'BM Lucida Typewriter 25' 'Bold'
    genfont lucida-typewriter xorg-bh-lucidatypewriter-100dpi/lutBS19.bdf 'Lucida-Typewriter-26-Bold' 'BM Lucida Typewriter 26' 'Bold'
    genfont lucida-typewriter xorg-bh-lucidatypewriter-100dpi/lutBS24.bdf 'Lucida-Typewriter-34-Bold' 'BM Lucida Typewriter 34' 'Bold'
    genfont lucida-typewriter xorg-bh-lucidatypewriter-100dpi/lutRS08.bdf 'Lucida-Typewriter-11' 'BM Lucida Typewriter 11'
    genfont lucida-typewriter xorg-bh-lucidatypewriter-100dpi/lutRS10.bdf 'Lucida-Typewriter-14c' 'BM Lucida Typewriter 14c'
    genfont lucida-typewriter xorg-bh-lucidatypewriter-100dpi/lutRS12.bdf 'Lucida-Typewriter-17' 'BM Lucida Typewriter 17'
    genfont lucida-typewriter xorg-bh-lucidatypewriter-100dpi/lutRS14.bdf 'Lucida-Typewriter-20' 'BM Lucida Typewriter 20'
    genfont lucida-typewriter xorg-bh-lucidatypewriter-100dpi/lutRS18.bdf 'Lucida-Typewriter-25' 'BM Lucida Typewriter 25'
    genfont lucida-typewriter xorg-bh-lucidatypewriter-100dpi/lutRS19.bdf 'Lucida-Typewriter-26' 'BM Lucida Typewriter 26'
    genfont lucida-typewriter xorg-bh-lucidatypewriter-100dpi/lutRS24.bdf 'Lucida-Typewriter-34' 'BM Lucida Typewriter 34'
    genfont lucida-typewriter xorg-bh-lucidatypewriter-75dpi/lutBS08.bdf  'Lucida-Typewriter-8-Bold' 'BM Lucida Typewriter 8' 'Bold'
    genfont lucida-typewriter xorg-bh-lucidatypewriter-75dpi/lutBS10.bdf  'Lucida-Typewriter-10-Bold' 'BM Lucida Typewriter 10' 'Bold'
    genfont lucida-typewriter xorg-bh-lucidatypewriter-75dpi/lutBS12.bdf  'Lucida-Typewriter-12-Bold' 'BM Lucida Typewriter 12' 'Bold'
    genfont lucida-typewriter xorg-bh-lucidatypewriter-75dpi/lutBS14.bdf  'Lucida-Typewriter-14-Bold' 'BM Lucida Typewriter 14' 'Bold'
    genfont lucida-typewriter xorg-bh-lucidatypewriter-75dpi/lutBS18.bdf  'Lucida-Typewriter-18-Bold' 'BM Lucida Typewriter 18' 'Bold'
    genfont lucida-typewriter xorg-bh-lucidatypewriter-75dpi/lutBS19.bdf  'Lucida-Typewriter-19-Bold' 'BM Lucida Typewriter 19' 'Bold'
    genfont lucida-typewriter xorg-bh-lucidatypewriter-75dpi/lutBS24.bdf  'Lucida-Typewriter-24-Bold' 'BM Lucida Typewriter 24' 'Bold'
    genfont lucida-typewriter xorg-bh-lucidatypewriter-75dpi/lutRS08.bdf  'Lucida-Typewriter-8' 'BM Lucida Typewriter 8'
    genfont lucida-typewriter xorg-bh-lucidatypewriter-75dpi/lutRS10.bdf  'Lucida-Typewriter-10' 'BM Lucida Typewriter 10'
    genfont lucida-typewriter xorg-bh-lucidatypewriter-75dpi/lutRS12.bdf  'Lucida-Typewriter-12' 'BM Lucida Typewriter 12'
    genfont lucida-typewriter xorg-bh-lucidatypewriter-75dpi/lutRS14.bdf  'Lucida-Typewriter-14' 'BM Lucida Typewriter 14'
    genfont lucida-typewriter xorg-bh-lucidatypewriter-75dpi/lutRS18.bdf  'Lucida-Typewriter-18' 'BM Lucida Typewriter 18'
    genfont lucida-typewriter xorg-bh-lucidatypewriter-75dpi/lutRS19.bdf  'Lucida-Typewriter-19' 'BM Lucida Typewriter 19'
    genfont lucida-typewriter xorg-bh-lucidatypewriter-75dpi/lutRS24.bdf  'Lucida-Typewriter-24' 'BM Lucida Typewriter 24'
}

generate_dec_terminal () {
    genfont dec-terminal xorg-bitstream-100dpi/term14.bdf  'DEC-Terminal-18'      'BM DEC Terminal 18'
    genfont dec-terminal xorg-bitstream-100dpi/termB14.bdf 'DEC-Terminal-18-Bold' 'BM DEC Terminal 18' 'Bold'
    genfont dec-terminal xorg-bitstream-75dpi/term14.bdf   'DEC-Terminal-14'      'BM DEC Terminal 14'
    genfont dec-terminal xorg-bitstream-75dpi/termB14.bdf  'DEC-Terminal-14-Bold' 'BM DEC Terminal 14' 'Bold'
}

generate_misc_fixed_6x13 () {
    genfont misc-fixed xorg-misc-misc/6x13.bdf  'Misc-Fixed-6x13'  'BM Misc Fixed 6x13'
    genfont misc-fixed xorg-misc-misc/6x13B.bdf 'Misc-Fixed-6x13B' 'BM Misc Fixed 6x13' 'Bold'
    genfont misc-fixed xorg-misc-misc/6x13O.bdf 'Misc-Fixed-6x13O' 'BM Misc Fixed 6x13' 'Oblique'
}

generate_misc_fixed_7x13 () {
    genfont misc-fixed xorg-misc-misc/7x13.bdf  'Misc-Fixed-7x13'  'BM Misc Fixed 7x13'
    genfont misc-fixed xorg-misc-misc/7x13B.bdf 'Misc-Fixed-7x13B' 'BM Misc Fixed 7x13' 'Bold'
    genfont misc-fixed xorg-misc-misc/7x13O.bdf 'Misc-Fixed-7x13O' 'BM Misc Fixed 7x13' 'Oblique'
}

generate_misc_fixed () {
    genfont misc-fixed xorg-misc-misc/10x20.bdf 'Misc-Fixed-10x20' 'BM Misc Fixed 10x20'
    genfont misc-fixed xorg-misc-misc/4x6.bdf   'Misc-Fixed-4x6'   'BM Misc Fixed 4x6'
    genfont misc-fixed xorg-misc-misc/5x7.bdf   'Misc-Fixed-5x7'   'BM Misc Fixed 5x7'
    genfont misc-fixed xorg-misc-misc/5x8.bdf   'Misc-Fixed-5x8'   'BM Misc Fixed 5x8'
    genfont misc-fixed xorg-misc-misc/6x10.bdf  'Misc-Fixed-6x10'  'BM Misc Fixed 6x10'
    genfont misc-fixed xorg-misc-misc/6x12.bdf  'Misc-Fixed-6x12'  'BM Misc Fixed 6x12'
    genfont misc-fixed xorg-misc-misc/6x9.bdf   'Misc-Fixed-6x9'   'BM Misc Fixed 6x9'
    genfont misc-fixed xorg-misc-misc/7x13.bdf  'Misc-Fixed-7x13'  'BM Misc Fixed 7x13'
    genfont misc-fixed xorg-misc-misc/7x13B.bdf 'Misc-Fixed-7x13B' 'BM Misc Fixed 7x13' 'Bold'
    genfont misc-fixed xorg-misc-misc/7x13O.bdf 'Misc-Fixed-7x13O' 'BM Misc Fixed 7x13' 'Oblique'
    genfont misc-fixed xorg-misc-misc/7x14.bdf  'Misc-Fixed-7x14'  'BM Misc Fixed 7x14'
    genfont misc-fixed xorg-misc-misc/7x14B.bdf 'Misc-Fixed-7x14B' 'BM Misc Fixed 7x14' 'Bold'
    genfont misc-fixed xorg-misc-misc/8x13.bdf  'Misc-Fixed-8x13'  'BM Misc Fixed 8x13'
    genfont misc-fixed xorg-misc-misc/8x13B.bdf 'Misc-Fixed-8x13B' 'BM Misc Fixed 8x13' 'Bold'
    genfont misc-fixed xorg-misc-misc/8x13O.bdf 'Misc-Fixed-8x13O' 'BM Misc Fixed 8x13' 'Oblique'
    genfont misc-fixed xorg-misc-misc/9x15.bdf  'Misc-Fixed-9x15'  'BM Misc Fixed 9x15'
    genfont misc-fixed xorg-misc-misc/9x15B.bdf 'Misc-Fixed-9x15B' 'BM Misc Fixed 9x15' 'Bold'
    genfont misc-fixed xorg-misc-misc/9x18.bdf  'Misc-Fixed-9x18'  'BM Misc Fixed 9x18'
    genfont misc-fixed xorg-misc-misc/9x18B.bdf 'Misc-Fixed-9x18B' 'BM Misc Fixed 9x18' 'Bold'
}

generate_sony_misc () {
    genfont sony-fixed xorg-sony-misc/12x24.bdf 'Sony-Fixed-12x24' 'BM Sony Fixed 12x24'
    genfont sony-fixed xorg-sony-misc/8x16.bdf  'Sony-Fixed-8x16'  'BM Sony Fixed 8x16'
}

install_bitmapfont2ttf () {
    if which bitmapfont2ttf >/dev/null 2>/dev/null ; then
        return
    fi
    local dir="${HOME}/git/dse.d/bitmapfont2ttf"
    if [[ -d "${dir}" ]] ; then
        export PATH="${dir}/bin:${PATH}"
        return
    fi
    if [[ -e "${dir}" ]] ; then
        >&2 echo "genfonts.sh: ${dir} exists but is not a directory"
        exit 1
    fi
    git clone git@github.com:dse/bitmapfont2ttf.git "${dir}"
    export PATH="${dir}/bin:${PATH}"
}

###############################################################################
main "$@"

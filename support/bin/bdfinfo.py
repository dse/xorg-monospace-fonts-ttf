#!/usr/bin/env -S fontforge -quiet
# -*- mode: python; coding: utf-8 -*-
import fontforge, argparse, os, sys

sys.path.append(os.path.dirname(__file__) + "/../lib")
from bdf_font import Font

def main():
    global args
    parser = argparse.ArgumentParser()
    parser.add_argument("filename", nargs="+")
    args = parser.parse_args()
    idx = 0
    print("          res res pt  px  dwx pxw asc des     ASC DSC     glyph")
    print("          x   y                                           count   name")
    print("--------- --- --- --- --- --- --- --- ---     --- ---     -----   ----------------------------------------")
    tot = len(args.filename)
    for filename in args.filename:
        idx += 1
        bdf = Font(filename)
        rx = bdf.get_resolution_x(default=-1)
        ry = bdf.get_resolution_y(default=-1)
        pt = bdf.get_point_size(default=-1)
        px = bdf.get_pixel_size(default=-1)
        dw = bdf.get_dwidth_x(default=-1, must_compute=True)
        pw = bdf.get_pixel_width(default=-1, must_compute=True)
        asc = bdf.prop_ascent
        dsc = bdf.prop_descent
        ccount = len(bdf.chars)
        psname = bdf.get_ps_font_name()
        fullname = bdf.gen_full_name()
        name = bdf.filename
        idx_tot = f'{idx}/{tot}'

        asc_desc_px = asc + dsc - px
        sym = f'{asc_desc_px}'
        if asc_desc_px > 0:
            sym = '+' + sym

        ASC = bdf.get_actual_ascent()
        DSC = bdf.get_actual_descent()
        ASC_DESC_PX = ASC + DSC - px
        SYM = f'{ASC_DESC_PX}'
        if ASC_DESC_PX > 0:
            SYM = '+' + SYM

        if dw != pw:
            print(  f'********* {rx:3} {ry:3} {pt:3} {px:3} {dw:3} {pw:3} {asc:3} {dsc:3} {sym:3} {ASC:3} {DSC:3} {SYM:3} {ccount:5}   {fullname:32}   {filename}')
        else:
            print(f'{idx_tot:9} {rx:3} {ry:3} {pt:3} {px:3} {dw:3} {pw:3} {asc:3} {dsc:3} {sym:3} {ASC:3} {DSC:3} {SYM:3} {ccount:5}   {fullname:32}   {filename}')

main()

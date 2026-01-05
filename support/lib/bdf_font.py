from bdf_char import Char
import re, statistics

PARSE_STAGE_INIT    = 0
PARSE_STAGE_GLOBAL  = 1
PARSE_STAGE_PROPS   = 2
PARSE_STAGE_CHARS   = 3
PARSE_STAGE_CHAR    = 4
PARSE_STAGE_BITMAP  = 5
PARSE_STAGE_ENDFONT = 6

class Font:

    def __init__(self, filename, strict=True, skip_chars=False):
        self.skip_chars = skip_chars
        self.strict = strict
        self.filename = filename
        self.font_name = None
        self.parse_stage = PARSE_STAGE_INIT
        self.parse_stage_info = "initialization"
        self.startfont = ""
        self.line = None
        self.bbx_width = None
        self.bbx_height = None
        self.bbx_ofs_x = None
        self.bbx_ofs_y = None
        self.content_version = None
        self.metrics_set = None
        self.swidth_x = None
        self.swidth_y = None
        self.dwidth_x = None
        self.dwidth_y = None
        self.swidth1_x = None
        self.swidth1_y = None
        self.dwidth1_x = None
        self.dwidth1_y = None
        self.vvector_x = None
        self.vvector_y = None
        self.char_count = 0
        self.properties = {}
        self.properties_as_array = {}
        self.comments = []
        self.current_filename = None
        self.current_line_number = None
        self.chars = []
        self.debug = False

        self.point_size = None
        self.resolution_x = None
        self.resolution_y = None

        # selected STARTPROPERTIES..ENDPROPERTIES

        self.prop_foundry = None
        self.prop_family_name = None
        self.prop_weight_name = None
        self.prop_slant = None
        self.prop_setwidth_name = None
        self.prop_add_style_name = None
        self.prop_pixel_size = None
        self.prop_point_size = None
        self.prop_resolution_x = None
        self.prop_resolution_y = None
        self.prop_spacing = None
        self.prop_average_width = None
        self.prop_charset_registry = None
        self.prop_charset_encoding = None

        self.prop_ascent = None
        self.prop_descent = None
        self.prop_face_name = None # full name with spaces
        self.prop_font_name = None # full name with spaces
        self.prop_dec_ps_font_name = None
        self.prop_dec_device_fontnames = []
        self.prop_font = None   # xlfd font name

        self.xlfd_foundry = None
        self.xlfd_family_name = None
        self.xlfd_weight_name = None
        self.xlfd_slant = None
        self.xlfd_setwidth_name = None
        self.xlfd_add_style_name = None
        self.xlfd_pixel_size = None
        self.xlfd_point_size = None
        self.xlfd_resolution_x = None
        self.xlfd_resolution_y = None
        self.xlfd_spacing = None
        self.xlfd_average_width = None
        self.xlfd_charset_registry = None
        self.xlfd_charset_encoding = None

        self.parse()

    def parse(self):
        self.parse_file(self.filename)

    def parse_file(self, filename):
        line_number = 0
        with open(self.filename, "r") as file:
            for line in file:
                line_number += 1
                self.parse_line(line, filename, line_number)

        if self.prop_font is not None and is_xlfd(self.prop_font):
            parse_xlfd(self.prop_font, add_attrs_to=self)
        elif self.font_name is not None and is_xlfd(self.font_name):
            parse_xlfd(self.font_name, add_attrs_to=self)

    def parse_line(self, line, filename=None, line_number=None):
        self.current_filename = filename
        self.current_line_number = line_number
        self.line = line
        if self.debug:
            print("%s: %s" % (self.parse_stage_info, repr(self.line)))
        if re.fullmatch('\s*', line): # ignore blank lines
            return
        if self.parse_stage == PARSE_STAGE_INIT:
            return self.parse_line_at_stage_init(line)
        if self.parse_stage == PARSE_STAGE_GLOBAL:
            return self.parse_line_at_stage_global(line)
        if self.parse_stage == PARSE_STAGE_PROPS:
            return self.parse_line_at_stage_props(line)
        if self.parse_stage == PARSE_STAGE_CHARS:
            return self.parse_line_at_stage_chars(line)
        if self.parse_stage == PARSE_STAGE_CHAR:
            return self.parse_line_at_stage_char(line)
        if self.parse_stage == PARSE_STAGE_BITMAP:
            return self.parse_line_at_stage_bitmap(line)
        if self.parse_stage == PARSE_STAGE_ENDFONT:
            return
        raise Exception("unexpected parse stage")

    def parse_line_at_stage_init(self, line):
        [word, *args] = parse_line(line)
        [self.line_word, self.line_args] = [word, args]
        if word == "STARTFONT":
            self.startfont = args[0]
            self.parse_stage = PARSE_STAGE_GLOBAL
            self.parse_stage_info = "global attributes"
        else:
            raise self.parse_error()

    def parse_line_at_stage_global(self, line):
        [word, *args] = parse_line(line)
        [self.line_word, self.line_args] = [word, args]
        if word == "COMMENT":
            self.comments.append(args[0])
        elif word == "FONT":    # ps font name
            self.font_name = args[0]
        elif word == "SIZE":
            self.point_size = int(args[0])
            self.resolution_x = int(args[1])
            self.resolution_y = int(args[2])
        elif word == "FONTBOUNDINGBOX":
            self.bbx_width = int(args[0])
            self.bbx_height = int(args[1])
            self.bbx_ofs_x  = int(args[2])
            self.bbx_ofs_y  = int(args[3])
        elif word == "STARTPROPERTIES":
            self.parse_stage = PARSE_STAGE_PROPS
            self.parse_stage_info = "STARTPROPERTIES"
            if len(args):
                self.property_count = args[0]
            elif not strict:
                self.property_count = None
            else:
                raise self.parse_error()
        elif word == "CONTENTVERSION":
            self.content_version = int(args[0])
        elif word == "METRICSSET":
            self.metrics_set = int(args[0])
        elif word == "SWIDTH":
            self.swidth_x = int(args[0])
            self.swidth_y = int(args[1])
        elif word == "DWIDTH":
            self.dwidth_x = int(args[0])
            self.dwidth_y = int(args[1])
        elif word == "SWIDTH1":
            self.swidth1_x = int(args[0])
            self.swidth1_y = int(args[1])
        elif word == "DWIDTH1":
            self.dwidth1_x = int(args[0])
            self.dwidth1_y = int(args[1])
        elif word == "VVECTOR":
            self.vvector_x = int(args[0])
            self.vvector_y = int(args[1])
        elif word == "CHARS":
            self.parse_stage = PARSE_STAGE_CHARS
            self.parse_stage_info = "STARTCHARS"
            if len(args):
                self.char_count = int(args[0])
            else:
                self.char_count = None
        elif not self.strict and word == "STARTCHAR":
            self.parse_stage = PARSE_STAGE_CHAR
            self.parse_stage_info = "STARTCHAR %s" % args[0]
            self.char = Char(args[0], font=self) # weak ref?
            self.chars.append(self.char)
        elif not self.strict and word == "ENDFONT":
            self.parse_stage = PARSE_STAGE_ENDFONT
            self.parse_stage_info = "ENDFONT"
        else:
            raise self.parse_error()

    def parse_line_at_stage_props(self, line):
        [word, *args] = parse_line(line, allow_comment=False)
        [self.line_word, self.line_args] = [word, args]
        if word == "ENDPROPERTIES":
            self.parse_stage = PARSE_STAGE_GLOBAL
            self.parse_stage_info = "global attributes"
        elif len(args):
            self.properties[word] = args[0]
            self.properties_as_array[word] = args

            if word == "FOUNDRY":
                self.prop_foundry = args[0]
            elif word == "FAMILY_NAME":
                self.prop_family_name = args[0]
            elif word == "WEIGHT_NAME":
                self.prop_weight_name = args[0]
            elif word == "SLANT":
                self.prop_slant = args[0]
            elif word == "SETWIDTH_NAME":
                self.prop_setwidth_name = args[0]
            elif word == "ADD_STYLE_NAME":
                self.prop_add_style_name = args[0]
            elif word == "PIXEL_SIZE":
                self.prop_pixel_size = int(args[0])
            elif word == "POINT_SIZE":
                self.prop_point_size = int(args[0])
            elif word == "RESOLUTION_X":
                self.prop_resolution_x = int(args[0])
            elif word == "RESOLUTION_Y":
                self.prop_resolution_y = int(args[0])
            elif word == "SPACING":
                self.prop_spacing = args[0]
                # P = proportional
                # M = monospaced
                # C = character cell
            elif word == "AVERAGE_WIDTH":
                self.prop_average_width = args[0]
            elif word == "CHARSET_REGISTRY":
                self.prop_charset_registry = args[0]
            elif word == "CHARSET_ENCODING":
                self.prop_charset_encoding = args[0]

            elif word == "FONT_ASCENT":
                self.prop_ascent = int(args[0])
            elif word == "FONT_DESCENT":
                self.prop_descent = int(args[0])
            elif word == "FONT": # xlfd font name
                self.prop_font = args[0]
            elif word == "_DEC_DEVICE_FONTNAMES":
                self.prop_dec_device_fontnames = args
                for arg in args:
                    if re.match('PS=', arg):
                        self.prop_dec_ps_font_name = arg[3:]
                    # FM= refers to DECwindows Font Management
                    # was also sometimes "0x153" or suchlike
        else:
            raise self.parse_error()

    def parse_line_at_stage_chars(self, line):
        if self.skip_chars:
            return
        [word, *args] = parse_line(line)
        [self.line_word, self.line_args] = [word, args]
        if word == "STARTCHAR":
            self.parse_stage = PARSE_STAGE_CHAR
            self.parse_stage_info = "STARTCHAR %s" % args[0]
            self.char = Char(args[0], font=self)
            self.chars.append(self.char)
        elif word == "ENDFONT":
            self.parse_stage = PARSE_STAGE_ENDFONT
            self.parse_stage_info = "ENDFONT"
        else:
            raise self.parse_error()

    def parse_line_at_stage_char(self, line):
        if self.skip_chars:
            return
        [word, *args] = parse_line(line)
        [self.line_word, self.line_args] = [word, args]
        if word == "ENCODING":
            if len(args) == 1:
                self.char.encoding = int(args[0])
            elif len(args) == 2:
                self.char.encoding = int(args[0])
                self.char.alt_encoding = int(args[1])
            else:
                raise self.parse_error()
        elif word == "SWIDTH":
            self.char.swidth_x = int(args[0])
            self.char.swidth_y = int(args[1])
        elif word == "DWIDTH":
            self.char.dwidth_x = int(args[0])
            self.char.dwidth_y = int(args[1])
        elif word == "SWIDTH1":
            self.char.swidth1_x = int(args[0])
            self.char.swidth1_y = int(args[1])
        elif word == "DWIDTH1":
            self.char.dwidth1_x = int(args[0])
            self.char.dwidth1_y = int(args[1])
        elif word == "VVECTOR":
            self.char.vvector_x = int(args[0])
            self.char.vvector_y = int(args[1])
        elif word == "BBX":
            self.char.bbx_width  = int(args[0])
            self.char.bbx_height = int(args[1])
            self.char.bbx_ofs_x  = int(args[2])
            self.char.bbx_ofs_y  = int(args[3])
        elif word == "BITMAP":
            self.parse_stage = PARSE_STAGE_BITMAP
            self.parse_stage_info = "BITMAP"
        elif not self.strict and word == "STARTCHAR":
            self.parse_stage = PARSE_STAGE_CHAR
            self.parse_stage_info = "STARTCHAR %s" % args[0]
            self.char = Char(args[0], font=self)
            self.chars.append(self.char)
        elif not self.strict and word == "ENDFONT":
            self.parse_stage = PARSE_STAGE_ENDFONT
            self.parse_stage_info = "ENDFONT"
        else:
            raise self.parse_error()

    def parse_line_at_stage_bitmap(self, line):
        if self.skip_chars:
            return
        [word, *args] = parse_line(line)
        [self.line_word, self.line_args] = [word, args]
        if not self.strict and word == "ENDFONT":
            self.parse_stage = PARSE_STAGE_ENDFONT
            self.parse_stage_info = "ENDFONT"
        elif word == "ENDCHAR":
            self.parse_stage = PARSE_STAGE_CHARS
            self.parse_stage_info = "CHARS"
        elif re.fullmatch('[0-9A-Fa-f]+', word):
            self.char.bitmap.append(word)
        else:
            raise self.parse_error()

    # these methods do not compute

    def _get_point_size(self, as_tenths=False, default=None):
        mult = 10 if as_tenths else 1
        if self.prop_point_size:
            return round(self.prop_point_size / 10 * mult)
        if self.xlfd_point_size:
            return round(self.xlfd_point_size / 10 * mult)
        if self.point_size:
            return round(self.point_size * mult)
        return default

    def _get_pixel_size(self, default=None):
        if self.prop_pixel_size:
            return self.prop_pixel_size
        if self.xlfd_pixel_size:
            return self.xlfd_pixel_size
        return default

    def _get_resolution_x(self, default=None):
        if self.prop_resolution_x:
            return self.prop_resolution_x
        if self.xlfd_resolution_x:
            return self.xlfd_resolution_x
        if self.resolution_x:
            return self.resolution_x
        return default

    def _get_resolution_y(self, default=None):
        if self.prop_resolution_y:
            return self.prop_resolution_y
        if self.xlfd_resolution_y:
            return self.xlfd_resolution_y
        if self.resolution_y:
            return self.resolution_y
        return default

    def _get_swidth_x(self, default=None):
        if self.swidth_x:
            return self.swidth_x
        return default

    def _get_dwidth_x(self, default=None):
        if self.dwidth_x:
            return self.dwidth_x
        return default

    # these methods compute

    def get_point_size(self, as_tenths=False, must_compute=False, default=None):
        if not must_compute:
            decipt = self._get_point_size(as_tenths=True)
            if decipt:
                return decipt
        px = self._get_pixel_size()
        ry = self._get_resolution_y()
        mult = 10 if as_tenths else 1
        if px and ry:
            return round(px / ry * 72 * mult)
        return default

    def get_pixel_size(self, must_compute=False, default=None):
        if not must_compute:
            px = self._get_pixel_size()
            if px:
                return px
        decipt = self._get_point_size(as_tenths=True)
        ry = self._get_resolution_y()
        if decipt and ry:
            return round(decipt / 10 / 72 * ry)
        return default

    def get_resolution_x(self, must_compute=False, default=None):
        if not must_compute:
            res_x = self._get_resolution_x()
            if not res_x:
                res_x = self._get_resolution_y()
            if res_x:
                return res_x
        px = self._get_pixel_size()
        decipt = self._get_point_size(as_tenths=True)
        if px and decipt:
            return round(px / (decipt / 720))
        return default

    def get_resolution_y(self, must_compute=False, default=None):
        if not must_compute:
            ry = self._get_resolution_y()
            if not ry:
                ry = self._get_resolution_x()
            if ry:
                return ry
        px = self._get_pixel_size()
        decipt = self._get_point_size(as_tenths=True)
        if px and decipt:
            return round(px / (decipt / 720))
        return default

    def get_swidth_x(self, default=None, must_compute=False):
        if not must_compute:
            result = self._get_swidth_x()
            if result:
                return result
        if self.prop_spacing is not None and self.prop_spacing.lower() not in ["m", "c"]:
            return default
        if self.xlfd_spacing is not None and self.prop_spacing.lower() not in ["m", "c"]:
            return default
        if self.dwidth_x:
            pt = self.get_point_size(as_tenths=True, default=0) / 10
            rx = self.get_resolution_x(default=0)
            if pt and rx:
                return round(self.dwidth_x / rx * 72 / pt * 1000)
        swidths = [ch._get_swidth_x(default=0) for ch in self.chars]
        if len(swidths):
            swidth = statistics.mode(swidths)
            if swidth:
                return swidth
        dwidths = [ch._get_dwidth_x(default=0) for ch in self.chars]
        if len(dwidths):
            dwidth = statistics.mode(dwidths)
            if dwidth:
                pt = self.get_point_size(as_tenths=True, default=0) / 10
                rx = self.get_resolution_x(default=0)
                if pt and rx:
                    return round(dwidth / rx * 72 / pt * 1000)
        return default

    def get_dwidth_x(self, default=None, must_compute=False):
        if not must_compute:
            result = self._get_dwidth_x()
            if result:
                return result
        if self.prop_spacing is not None and self.prop_spacing.lower() not in ["m", "c"]:
            return default
        if self.xlfd_spacing is not None and self.prop_spacing.lower() not in ["m", "c"]:
            return default
        if self.swidth_x:
            pt = self.get_point_size(as_tenths=True, default=0) / 10
            rx = self.get_resolution_x(default=0)
            if pt and rx:
                return round(self.swidth_x * rx / 72 * pt / 1000)
        dwidths = [ch._get_dwidth_x(default=0) for ch in self.chars]
        if len(dwidths):
            dwidth = statistics.mode(dwidths)
            if dwidth:
                return dwidth
        swidths = [ch._get_swidth_x(default=0) for ch in self.chars]
        if len(swidths):
            swidth = statistics.mode(swidths)
            if swidth:
                pt = self.get_point_size(as_tenths=True, default=0) / 10
                rx = self.get_resolution_x(default=0)
                if pt and rx:
                    return round(swidth * rx / 72 * pt / 1000)
        return default

    def get_pixel_width(self, default=None, must_compute=False):
        return self.get_dwidth_x(default=default, must_compute=must_compute)

    # these methods do not compute

    def _get_ps_font_name(self, default=None):
        if self.prop_dec_ps_font_name is not None:
            return self.prop_dec_ps_font_name
        if self.font_name is not None and self.font_name[0] != "-":
            return self.font_name
        return default

    def _get_full_name(self, default=None):
        if self.prop_face_name is not None:
            return self.prop_face_name
        if self.prop_full_name is not None:
            return self.prop_full_name
        return default

    def _get_family_name(self, default=None):
        if self.prop_family_name is not None:
            return self.prop_family_name
        if self.xlfd_family_name is not None:
            return self.xlfd_family_name
        return default

    def _get_weight_name(self, default=None):
        if self.prop_weight_name is not None:
            return self.prop_weight_name
        if self.xlfd_weight_name is not None:
            return self.xlfd_weight_name
        return default

    def _get_slant_name(self, default=None):
        slant = self.prop_slant
        if slant is None:
            slant = self.xlfd_slant
        if slant is None:
            return default
        slant = slant.lower()
        if slant == "r":
            return default
        if slant == "o":
            return "Oblique"
        if slant == "i":
            return "Italic"
        return slant.upper()

    def _get_add_style_name(self, default=None):
        if self.prop_add_style_name is not None:
            return self.prop_add_style_name
        if self.xlfd_add_style_name is not None:
            return self.xlfd_add_style_name
        return default

    # these methods do compute

    def get_ps_font_name(self, default=None, must_compute=False):
        if not must_compute:
            result = self._get_ps_font_name()
            if result is not None:
                return result
        family_name = self._get_family_name()
        if family_name is None:
            return default
        weight_name = self._get_weight_name()
        slant_name = self._get_slant_name()
        if weight_name in ["Medium"]:
            weight_name = None
        result = family_name
        if weight_name is not None or slant_name is not None:
            result += "-"
            if weight_name is not None:
                result += weight_name
            if slant_name is not None:
                result += slant_name
        return result

    def get_full_name(self, default=None, must_compute=False):
        if not must_compute:
            result = self._get_full_name()
            if result is not None:
                return result
        family_name = self._get_family_name()
        if family_name is None:
            return default
        weight_name = self._get_weight_name()
        slant_name = self._get_slant_name()
        if weight_name in ["Medium"]:
            weight_name = None
        result = family_name
        if weight_name is not None:
            result += " " + weight_name
        if slant_name is not None:
            result += " " + slant_name
        return result

    def parse_error(self):
        return Exception(
            "unexpected line in %s line %d at %s stage: %s" % (
                self.current_filename,
                self.current_line_number,
                self.parse_stage_info,
                repr(self.line)))

    def show_work_calculating_pixel_width(self):
        print(self.filename)
        s1 = False
        s2 = False
        if self.prop_spacing is not None and self.prop_spacing.lower() not in ["m", "c"]:
            s1 = True
            print(f'    prop_spacing = {self.prop_spacing}; not a monospace font')
        if self.xlfd_spacing is not None and self.prop_spacing.lower() not in ["m", "c"]:
            s2 = True
            print(f'    xlfd_spacing = {self.xlfd_spacing}; not a monospace font')
        if s1 or s2:
            return
        if self.dwidth_x is not None:
            print(f'    dwidth_x = {self.dwidth_x}')
        else:
            print(f'    dwidth_x = (none)')
        if self.swidth_x is not None:
            pt = self.get_point_size(as_tenths=True, default=0) / 10
            rx = self.get_resolution_x(default=0)
            dwidth_x = self.swidth_x * pt / 1000 * rx / 72
            if dwidth_x is not None:
                print(f'    dwidth_x based on swidth_x = {dwidth_x}')
            else:
                print(f'    dwidth_x based on swidth_x = (none)')

        swidths = [ch._get_swidth_x(default=0) for ch in self.chars]
        dwidths = [ch._get_dwidth_x(default=0) for ch in self.chars]
        swidth_values = list(set(swidths))
        dwidth_values = list(set(dwidths))
        if len(swidth_values) == 1:
            print(f'    swidths = {swidth_values}')
        else:
            print(f'    swidths = {swidth_values} ****************************************')
        if len(dwidth_values) == 1:
            print(f'    dwidths = {dwidth_values}')
        else:
            print(f'    dwidths = {dwidth_values} ****************************************')

        swidth = statistics.mode(swidths)
        dwidth = statistics.mode(dwidths)
        print(f'    swidth = {swidth}')
        print(f'    dwidth = {dwidth}')

        computed_swidths = [ch.get_swidth_x(default=0, must_compute=True) for ch in self.chars]
        computed_dwidths = [ch.get_dwidth_x(default=0, must_compute=True) for ch in self.chars]
        computed_swidth_values = list(set(computed_swidths))
        computed_dwidth_values = list(set(computed_dwidths))
        if len(computed_swidth_values) == 1:
            print(f'    computed_swidths = {computed_swidth_values}')
        else:
            print(f'    computed_swidths = {computed_swidth_values} ****************************************')
        if len(computed_dwidth_values) == 1:
            print(f'    computed_dwidths = {computed_dwidth_values}')
        else:
            print(f'    computed_dwidths = {computed_dwidth_values} ****************************************')

        computed_swidth = statistics.mode(computed_swidths)
        computed_dwidth = statistics.mode(computed_dwidths)
        print(f'    computed_swidth = {computed_swidth}')
        print(f'    computed_dwidth = {computed_dwidth}')

def parse_line(line, allow_comment=True, upper=True):
    if allow_comment:
        if match := re.match(r'\s*(comment)\s?', line, flags=re.IGNORECASE):
            return [match.group(1), line]
    words = []
    word = False
    while True:
        if re.fullmatch(r'\s+', line): # line contains only spaces
            break
        if match := re.match(r'\s+', line): # line starts with spaces; ends word
            word = False
            line = line[match.end(0):]
        if not word:            # line starts with new word
            words.append("")
            word = True
        if match := re.match(r'[^"\s]+', line): # starts with unquoted substring
            words[-1] += match.group(0)
            line = line[match.end(0):]
        elif match := re.match(r'"((?:""|[^"])*)"', line): # starts with terminated quoted substring
            words[-1] += match.group(1).replace('""', '"')
            line = line[match.end(0):]
        elif match := re.match(r'"(""|[^"])*', line): # start with unterminated quoted substring
            words[-1] += match.group(1).replace('""', '"')
            line = line[match.end(0):]
            break
        else:
            raise Exception("unexpected condition")
    if not len(words):
        return False
    words[0] = words[0].upper()
    return words

XLFD_PROPS = [
    "FOUNDRY",
    "FAMILY_NAME",
    "WEIGHT_NAME",
    "SLANT",
    "SETWIDTH_NAME",
    "ADD_STYLE_NAME",
    "PIXEL_SIZE",
    "POINT_SIZE",
    "RESOLUTION_X",
    "RESOLUTION_Y",
    "SPACING",
    "AVERAGE_WIDTH",
    "CHARSET_REGISTRY",
    "CHARSET_ENCODING",
]

def is_xlfd(str):
    return re.fullmatch(r'(-((?:[^-\[\]]*|\[.*?\])*)){14}', str)

def parse_xlfd(xlfd_str, as_dict=False, add_attrs_to=None, attr_name_prefix="xlfd_"):
    if not is_xlfd(xlfd_str):
        return None
    if attr_name_prefix is None:
        attr_name_prefix = ""
    xlfd_array = []
    while len(xlfd_array) < 14:
        if match := re.match(r'-((?:[^-\[\]]*|\[.*?\])*)', xlfd_str):
            xlfd_array.append(match.group(1))
            xlfd_str = xlfd_str[match.end(0):]
    for idx in [6, 7, 8, 9]:
        if len(xlfd_array) > idx and xlfd_array[idx] != "": xlfd_array[idx] = int(xlfd_array[idx])
    if add_attrs_to is not None:
        for idx in range(0, min(len(XLFD_PROPS), 14)):
            attr_name = attr_name_prefix + XLFD_PROPS[idx].lower()
            setattr(add_attrs_to, attr_name, xlfd_array[idx])
    if as_dict:
        xlfd_dict = {}
        for idx in range(0, min(len(XLFD_PROPS), 14)):
            prop_name = XLFD_PROPS[idx]
            xlfd_dict[prop_name] = xlfd_array[idx]
        return xlfd_dict
    return xlfd_array

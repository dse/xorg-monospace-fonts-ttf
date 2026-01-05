class Char:

    def __init__(self, glyph_name, font=None):
        self.font = font
        self.glyph_name = glyph_name
        self.encoding = None
        self.alt_encoding = None
        self.bbx_width = None
        self.bbx_height = None
        self.bbx_ofs_x = None
        self.bbx_ofs_y = None
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
        self.bitmap = []

    def _get_swidth_x(self, default=None):
        if self.swidth_x is not None:
            return self.swidth_x
        return default

    def _get_dwidth_x(self, default=None):
        if self.dwidth_x is not None:
            return self.dwidth_x
        return default

    def get_dwidth_x(self, default=None, must_compute=False):
        if not must_compute:
            dw = self._get_dwidth_x()
            if dw:
                return dw
        sw = self._get_swidth_x()
        if sw is None:
            return default
        pt = self.font.get_point_size(as_tenths=True) / 10
        rx = self.font.get_resolution_x()
        if pt and rx:
            return round(sw * pt / 1000 * rx / 72)
        return default

    def get_swidth_x(self, default=None, must_compute=False):
        if not must_compute:
            sw = self._get_swidth_x()
            if sw:
                return sw
        dw = self._get_dwidth_x()
        if dw is None:
            return default
        pt = self.font.get_point_size(as_tenths=True) / 10
        rx = self.font.get_resolution_x()
        if pt and rx:
            return round(dw / pt * 1000 / rx * 72)
        return default

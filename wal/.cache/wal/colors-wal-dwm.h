static const char norm_fg[] = "#7a9ca9";
static const char norm_bg[] = "#efeff4";
static const char norm_border[] = "#3e3e3e";

static const char sel_fg[] = "#7a9ca9";
static const char sel_bg[] = "#447a67";
static const char sel_border[] = "#7a9ca9";

static const char urg_fg[] = "#7a9ca9";
static const char urg_bg[] = "#bf616A";
static const char urg_border[] = "#bf616A";

static const char *colors[][3]      = {
    /*               fg           bg         border                         */
    [SchemeNorm] = { norm_fg,     norm_bg,   norm_border }, // unfocused wins
    [SchemeSel]  = { sel_fg,      sel_bg,    sel_border },  // the focused win
    [SchemeUrg] =  { urg_fg,      urg_bg,    urg_border },
};

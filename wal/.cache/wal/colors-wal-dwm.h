static const char norm_fg[] = "#cac2bb";
static const char norm_bg[] = "#272124";
static const char norm_border[] = "#8d8782";

static const char sel_fg[] = "#cac2bb";
static const char sel_bg[] = "#A18D66";
static const char sel_border[] = "#cac2bb";

static const char urg_fg[] = "#cac2bb";
static const char urg_bg[] = "#848471";
static const char urg_border[] = "#848471";

static const char *colors[][3]      = {
    /*               fg           bg         border                         */
    [SchemeNorm] = { norm_fg,     norm_bg,   norm_border }, // unfocused wins
    [SchemeSel]  = { sel_fg,      sel_bg,    sel_border },  // the focused win
    [SchemeUrg] =  { urg_fg,      urg_bg,    urg_border },
};

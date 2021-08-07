static const char norm_fg[] = "#dcdccc";
static const char norm_bg[] = "#3f3f3f";
static const char norm_border[] = "#828282";

static const char sel_fg[] = "#dcdccc";
static const char sel_bg[] = "#7f9f7f";
static const char sel_border[] = "#dcdccc";

static const char urg_fg[] = "#dcdccc";
static const char urg_bg[] = "#cc9393";
static const char urg_border[] = "#cc9393";

static const char *colors[][3]      = {
    /*               fg           bg         border                         */
    [SchemeNorm] = { norm_fg,     norm_bg,   norm_border }, // unfocused wins
    [SchemeSel]  = { sel_fg,      sel_bg,    sel_border },  // the focused win
    [SchemeUrg] =  { urg_fg,      urg_bg,    urg_border },
};

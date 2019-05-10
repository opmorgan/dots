static const char norm_fg[] = "#b1bcbd";
static const char norm_bg[] = "#070F0D";
static const char norm_border[] = "#7b8384";

static const char sel_fg[] = "#b1bcbd";
static const char sel_bg[] = "#4C524E";
static const char sel_border[] = "#b1bcbd";

static const char urg_fg[] = "#b1bcbd";
static const char urg_bg[] = "#394747";
static const char urg_border[] = "#394747";

static const char *colors[][3]      = {
    /*               fg           bg         border                         */
    [SchemeNorm] = { norm_fg,     norm_bg,   norm_border }, // unfocused wins
    [SchemeSel]  = { sel_fg,      sel_bg,    sel_border },  // the focused win
    [SchemeUrg] =  { urg_fg,      urg_bg,    urg_border },
};

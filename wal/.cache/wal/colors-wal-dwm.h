static const char norm_fg[] = "#dad5c8";
static const char norm_bg[] = "#1c2225";
static const char norm_border[] = "#98958c";

static const char sel_fg[] = "#dad5c8";
static const char sel_bg[] = "#7A8982";
static const char sel_border[] = "#dad5c8";

static const char urg_fg[] = "#dad5c8";
static const char urg_bg[] = "#A59D7C";
static const char urg_border[] = "#A59D7C";

static const char *colors[][3]      = {
    /*               fg           bg         border                         */
    [SchemeNorm] = { norm_fg,     norm_bg,   norm_border }, // unfocused wins
    [SchemeSel]  = { sel_fg,      sel_bg,    sel_border },  // the focused win
    [SchemeUrg] =  { urg_fg,      urg_bg,    urg_border },
};

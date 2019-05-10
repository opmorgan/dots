const char *colorname[] = {

  /* 8 normal colors */
  [0] = "#1c2225", /* black   */
  [1] = "#A59D7C", /* red     */
  [2] = "#7A8982", /* green   */
  [3] = "#929687", /* yellow  */
  [4] = "#A39D88", /* blue    */
  [5] = "#ABA88E", /* magenta */
  [6] = "#A5A893", /* cyan    */
  [7] = "#dad5c8", /* white   */

  /* 8 bright colors */
  [8]  = "#98958c",  /* black   */
  [9]  = "#A59D7C",  /* red     */
  [10] = "#7A8982", /* green   */
  [11] = "#929687", /* yellow  */
  [12] = "#A39D88", /* blue    */
  [13] = "#ABA88E", /* magenta */
  [14] = "#A5A893", /* cyan    */
  [15] = "#dad5c8", /* white   */

  /* special colors */
  [256] = "#1c2225", /* background */
  [257] = "#dad5c8", /* foreground */
  [258] = "#dad5c8",     /* cursor */
};

/* Default colors (colorname index)
 * foreground, background, cursor */
 unsigned int defaultbg = 0;
 unsigned int defaultfg = 257;
 unsigned int defaultcs = 258;
 unsigned int defaultrcs= 258;

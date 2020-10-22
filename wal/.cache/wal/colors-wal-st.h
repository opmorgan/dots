const char *colorname[] = {

  /* 8 normal colors */
  [0] = "#efeff4", /* black   */
  [1] = "#bf616A", /* red     */
  [2] = "#447a67", /* green   */
  [3] = "#D08770", /* yellow  */
  [4] = "#5e81ac", /* blue    */
  [5] = "#7a9ca9", /* magenta */
  [6] = "#B48EAD", /* cyan    */
  [7] = "#3e3e3e", /* white   */

  /* 8 bright colors */
  [8]  = "#3e3e3e",  /* black   */
  [9]  = "#bf616A",  /* red     */
  [10] = "#447a67", /* green   */
  [11] = "#D08770", /* yellow  */
  [12] = "#5e81ac", /* blue    */
  [13] = "#7a9ca9", /* magenta */
  [14] = "#B48EAD", /* cyan    */
  [15] = "#7a9ca9", /* white   */

  /* special colors */
  [256] = "#efeff4", /* background */
  [257] = "#3e3e3e", /* foreground */
  [258] = "#7a9ca9",     /* cursor */
};

/* Default colors (colorname index)
 * foreground, background, cursor */
 unsigned int defaultbg = 0;
 unsigned int defaultfg = 257;
 unsigned int defaultcs = 258;
 unsigned int defaultrcs= 258;

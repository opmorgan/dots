const char *colorname[] = {

  /* 8 normal colors */
  [0] = "#efeff4", /* black   */
  [1] = "#b32530", /* red     */
  [2] = "#447a67", /* green   */
  [3] = "#b68b59", /* yellow  */
  [4] = "#1789a7", /* blue    */
  [5] = "#7a9ca9", /* magenta */
  [6] = "#b32536", /* cyan    */
  [7] = "#3e3e3e", /* white   */

  /* 8 bright colors */
  [8]  = "#3e3e3e",  /* black   */
  [9]  = "#b32530",  /* red     */
  [10] = "#447a67", /* green   */
  [11] = "#b68b59", /* yellow  */
  [12] = "#1789a7", /* blue    */
  [13] = "#7a9ca9", /* magenta */
  [14] = "#b32536", /* cyan    */
  [15] = "#3e3e3e", /* white   */

  /* special colors */
  [256] = "#efeff4", /* background */
  [257] = "#3e3e3e", /* foreground */
  [258] = "#3e3e3e",     /* cursor */
};

/* Default colors (colorname index)
 * foreground, background, cursor */
 unsigned int defaultbg = 0;
 unsigned int defaultfg = 257;
 unsigned int defaultcs = 258;
 unsigned int defaultrcs= 258;

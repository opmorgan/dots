const char *colorname[] = {

  /* 8 normal colors */
  [0] = "#272124", /* black   */
  [1] = "#848471", /* red     */
  [2] = "#A18D66", /* green   */
  [3] = "#B58A6E", /* yellow  */
  [4] = "#C9926A", /* blue    */
  [5] = "#D2B271", /* magenta */
  [6] = "#E1C37C", /* cyan    */
  [7] = "#cac2bb", /* white   */

  /* 8 bright colors */
  [8]  = "#8d8782",  /* black   */
  [9]  = "#848471",  /* red     */
  [10] = "#A18D66", /* green   */
  [11] = "#B58A6E", /* yellow  */
  [12] = "#C9926A", /* blue    */
  [13] = "#D2B271", /* magenta */
  [14] = "#E1C37C", /* cyan    */
  [15] = "#cac2bb", /* white   */

  /* special colors */
  [256] = "#272124", /* background */
  [257] = "#cac2bb", /* foreground */
  [258] = "#cac2bb",     /* cursor */
};

/* Default colors (colorname index)
 * foreground, background, cursor */
 unsigned int defaultbg = 0;
 unsigned int defaultfg = 257;
 unsigned int defaultcs = 258;
 unsigned int defaultrcs= 258;

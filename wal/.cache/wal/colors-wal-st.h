const char *colorname[] = {

  /* 8 normal colors */
  [0] = "#2d2324", /* black   */
  [1] = "#8C8274", /* red     */
  [2] = "#A08D68", /* green   */
  [3] = "#B58B6D", /* yellow  */
  [4] = "#C9916B", /* blue    */
  [5] = "#D2B272", /* magenta */
  [6] = "#E1C37D", /* cyan    */
  [7] = "#cac2bb", /* white   */

  /* 8 bright colors */
  [8]  = "#8d8782",  /* black   */
  [9]  = "#8C8274",  /* red     */
  [10] = "#A08D68", /* green   */
  [11] = "#B58B6D", /* yellow  */
  [12] = "#C9916B", /* blue    */
  [13] = "#D2B272", /* magenta */
  [14] = "#E1C37D", /* cyan    */
  [15] = "#cac2bb", /* white   */

  /* special colors */
  [256] = "#2d2324", /* background */
  [257] = "#cac2bb", /* foreground */
  [258] = "#cac2bb",     /* cursor */
};

/* Default colors (colorname index)
 * foreground, background, cursor */
 unsigned int defaultbg = 0;
 unsigned int defaultfg = 257;
 unsigned int defaultcs = 258;
 unsigned int defaultrcs= 258;

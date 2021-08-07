const char *colorname[] = {

  /* 8 normal colors */
  [0] = "#3f3f3f", /* black   */
  [1] = "#cc9393", /* red     */
  [2] = "#7f9f7f", /* green   */
  [3] = "#d0bf8f", /* yellow  */
  [4] = "#6ca0a3", /* blue    */
  [5] = "#dc8cc3", /* magenta */
  [6] = "#93e0e3", /* cyan    */
  [7] = "#dcdccc", /* white   */

  /* 8 bright colors */
  [8]  = "#828282",  /* black   */
  [9]  = "#cc9393",  /* red     */
  [10] = "#7f9f7f", /* green   */
  [11] = "#d0bf8f", /* yellow  */
  [12] = "#6ca0a3", /* blue    */
  [13] = "#dc8cc3", /* magenta */
  [14] = "#93e0e3", /* cyan    */
  [15] = "#dcdccc", /* white   */

  /* special colors */
  [256] = "#3f3f3f", /* background */
  [257] = "#dcdccc", /* foreground */
  [258] = "#cc9393",     /* cursor */
};

/* Default colors (colorname index)
 * foreground, background, cursor */
 unsigned int defaultbg = 0;
 unsigned int defaultfg = 257;
 unsigned int defaultcs = 258;
 unsigned int defaultrcs= 258;

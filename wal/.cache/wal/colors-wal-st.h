const char *colorname[] = {

  /* 8 normal colors */
  [0] = "#070F0D", /* black   */
  [1] = "#394747", /* red     */
  [2] = "#4C524E", /* green   */
  [3] = "#616D69", /* yellow  */
  [4] = "#AF592F", /* blue    */
  [5] = "#77837B", /* magenta */
  [6] = "#8B857A", /* cyan    */
  [7] = "#b1bcbd", /* white   */

  /* 8 bright colors */
  [8]  = "#7b8384",  /* black   */
  [9]  = "#394747",  /* red     */
  [10] = "#4C524E", /* green   */
  [11] = "#616D69", /* yellow  */
  [12] = "#AF592F", /* blue    */
  [13] = "#77837B", /* magenta */
  [14] = "#8B857A", /* cyan    */
  [15] = "#b1bcbd", /* white   */

  /* special colors */
  [256] = "#070F0D", /* background */
  [257] = "#b1bcbd", /* foreground */
  [258] = "#b1bcbd",     /* cursor */
};

/* Default colors (colorname index)
 * foreground, background, cursor */
 unsigned int defaultbg = 0;
 unsigned int defaultfg = 257;
 unsigned int defaultcs = 258;
 unsigned int defaultrcs= 258;

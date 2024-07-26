%let pgm=utl-plotting-a-regression-line-over-the-conditional-distributions-of-y-for-each-value-of-x-r-sas;

Plotting a regression line over the conditional distributions of y for each value of x r sas

Grahic output

Conditional densities with regression line
https://tinyurl.com/54s44jth
https://github.com/rogerjdeangelis/utl-plotting-a-regression-line-over-the-conditional-distributions-of-y-for-each-value-of-x-r-sas/blob/main/hownormal.pdf

Boxplots with scatter plot overlay
https://tinyurl.com/n9psf5v3
https://github.com/rogerjdeangelis/utl-plotting-a-regression-line-over-the-conditional-distributions-of-y-for-each-value-of-x-r-sas/blob/main/utl-graphics-boxplots-with-jiggled-point-values-boxBee.png


    SOLUTIONS

         1  conditional densities

         2  boxplots with observations
            no here
            see https://tinyurl.com/y4y86cx2

         3  ascii plots

Visualizations of deviations from regression assumptions.

       1 bimodal conditional distributions
       2 non constant variance
       3 uniform distribution


 Visualize regression issues when estimatin income and debt based on education level

github
https://tinyurl.com/ypz65bsv
https://github.com/rogerjdeangelis/utl-plotting-a-regression-line-over-the-conditional-distributions-of-y-for-each-value-of-x-r-sas

Related Repos
--------------------------------------------------------------------------------------------------------------
https://github.com/rogerjdeangelis/utl-graphics-boxplots-with-jiggled-point-values-alongside
https://github.com/rogerjdeangelis/utl_visualizing_suspicious_bivariate_outliers_with_2_dimensional_boxplots
https://github.com/rogerjdeangelis/utl-high-resolution-scatter-plot-with-mutiple-marginal-densities

Rick
http://blogs.sas.com/content/iml/2015/09/10/plot-distrib-reg-model.html

/*               _     _
 _ __  _ __ ___ | |__ | | ___ _ __ ___
| `_ \| `__/ _ \| `_ \| |/ _ \ `_ ` _ \
| |_) | | | (_) | |_) | |  __/ | | | | |
| .__/|_|  \___/|_.__/|_|\___|_| |_| |_|
|_|
*/


/**************************************************************************************************************************/
/*                                                                                                                        */
/*  CREATE THESE GRAPHICS  https://tinyurl.com/54s44jth                                                                   */
/*                                                                                                                        */
/*                  -----------------------------------------------------------------------                               */
/*                  |                                                                     |                               */
/*                  |  Issues with regression                                             |                               */
/*                  |                                                                     |                               */
/*                  |   y=0.52193 + 0.18462*x                                             |                               */
/*                  |   Non Constant Variace                                              |                               */
/*                  |                                                                     |                               */
/*                  |---------------------------------------------------------------------|                               */
/*                  |                                                                     |                               */
/*                  | -1       0       1       2       3       4       5       6       7  |                               */
/*                  ---+-------+-------+-------+-------+-------+-------+-------+-------+---                               */
/*                  |          |                       |               |                  |                               */
/*                  |          | Bimodal               | Umiform       |  Normal          |                               */
/*                y |          |                       |               |                  |                               */
/*                  |          |                       | o             |                  |                               */
/*             5.75 +          |                       |o              |                  +  5.75                         */
/*                  |          |                       |     o o       |                  |                               */
/*             4.75 +          |                       |  o            |                  +  4.75                         */
/*                  |          |                       | oo    o       |                  |                               */
/*             3.75 +          |                       |o              |                  +  3.75                         */
/*                  |          |                       | o  o          |                  |                               */
/*             2.75 +          |                       |               |                  +  2.75                         */
/*                  |          |  ooo                  o      o        | o o              |                               */
/*             1.75 +          |ooo oooo               o o o           | -----o---------  +  1.75                         */
/*                  |          |                    --------------------ooooooooo         |                               */
/*             0.75 +         ---- regression line--   |               |  o  oo           +  0.75                         */
/*                  |  ------- |                       |   o           |       o          |                               */
/*            -0.25 +          |                       |oo     o       |  o               + -0.25                         */
/*                  |          |                       |               |                  |                               */
/*            -1.25 +          |                       |    o oo       |                  + -1.25                         */
/*                  |          | oo  ooo               |o    oo        |                  |                               */
/*            -2.25 +          |o   oooo               | oo            |                  + -2.25                         */
/*                  |          |                       |               |                  |                               */
/*                  ---+-------+-------+-------+-------+-------+-------+-------+-------+---                               */
/*                y | -1       0       1       2       3       4       5       6       7  |  y                            */
/*                  |                                  x                                  |                               */
/*                8 +                                                                     +  8                            */
/*                  |   https://tinyurl.com/y4y86cx2                                      |                               */
/*                  |                                                                     |                               */
/*                  |                                  |       0                          |                               */
/*                6 +                                  |      o   o                       +  6                            */
/*                  |                                  |     o o     o                    |                               */
/*                  |                                  |       o                          |                               */
/*                  |                                  |     o o     o                    |                               */
/*                4 +                               +-----+                               +  4                            */
/*                  |                               |     |   o  oo                       |                               */
/*                  |                               |     |                               |                               */
/*                  |          |         oo         |     |  oo  o o                      |                               */
/*                2 +       *-----*  ooo ooo o      *-----*              *     o  o  o    +  2                            */
/*                  |       |     |        o        |  +  |              |      o o   o   |                               */
/*                  |       |     |                 |     |           *--+--* ooooooooo   |                               */
/*                  |       |     |                 |     |  oo o   o                     |                               */
/*                0 +       |  +  |                 |     |              *        o   o   +  0                            */
/*                  |       |     |                 |     |     o o o                     |                               */
/*                  |       |     |                 +-----+                               |                               */
/*                  |       |     |                    |     o o   oo                     |                               */
/*               -2 +       +-----+  oo oooooo         |                                  + -2                            */
/*                  |                                                                     |                               */
/*                  |                                                                     |                               */
/*                  |                                                                     |                               */
/*               -4 +                                                                     + -4                            */
/*                  ---+-------+-------+-------+-------+-------+-------+-------+-------+---                               */
/*                  | -1       0       1       2       3       4       5       6       7                                  */
/*                                                     x                                                                  */
/*                                                                                                                        */
/**************************************************************************************************************************/

/*                   _
(_)_ __  _ __  _   _| |_
| | `_ \| `_ \| | | | __|
| | | | | |_) | |_| | |_
|_|_| |_| .__/ \__,_|\__|
        |_|
*/

options validvarname=v7;
libname sd1 "d:/sd1";
data sd1.have (rename=(y=income x=educ) );
   retain grp y x;
   call streaminit(4321);
   do x=0,3,5;
     grp=put(x,1.);;
     do reps=1 to 30;
        select(x);
          when (5)
                 y=x*rand('uniform')/100 + round(rand('normal',1,.5));
          when (3)
               y= x*rand('uniform')/100 +round( rand('normal',1,3));
          when (0)
               if reps<18 then
                   y= x*rand('uniform')/100 +round(rand('normal',+2,.01));
               else
                   y= x*rand('uniform')/100 +round( rand('normal',-2,.01));
          otherwise;
        end;
        output;
     end;
   end;
   drop reps;
run;quit;

/**************************************************************************************************************************/
/*                                                                                                                        */
/* SD1.HAVE                                                                                                               */
/*                                                                                                                        */
/*   grp     income     educ   grp     income     educ                                                                    */
/*                                                                                                                        */
/*    0      2.00000      0      3     -1.99231      3                                                                    */
/*    0      2.00000      0      3      3.02659      3                                                                    */
/*    0      2.00000      0      3      0.00760      3                                                                    */
/*    0      2.00000      0      3      5.00403      3                                                                    */
/*    0      2.00000      0      3      0.01954      3                                                                    */
/*    0      2.00000      0      3      4.01568      3                                                                    */
/*    0      2.00000      0      3      6.01594      3                                                                    */
/*    0      2.00000      0      3     -0.98887      3                                                                    */
/*    0      2.00000      0      3     -0.99676      3                                                                    */
/*    0      2.00000      0      3      2.00308      3                                                                    */
/*    0      2.00000      0      3      2.02225      3                                                                    */
/*    0      2.00000      0      3      2.01985      3                                                                    */
/*    0      2.00000      0      3      3.00354      3                                                                    */
/*    0      2.00000      0      3      4.02123      3                                                                    */
/*    0      2.00000      0      3     -1.98266      3                                                                    */
/*    0      2.00000      0      5      1.03828      5                                                                    */
/*    0      2.00000      0      5      1.03085      5                                                                    */
/*    0     -2.00000      0      5      1.03700      5                                                                    */
/*    0     -2.00000      0      5      1.01099      5                                                                    */
/*    0     -2.00000      0      5      2.00991      5                                                                    */
/*    0     -2.00000      0      5      1.03838      5                                                                    */
/*    0     -2.00000      0      5      1.00314      5                                                                    */
/*    0     -2.00000      0      5      1.03414      5                                                                    */
/*    0     -2.00000      0      5      1.02707      5                                                                    */
/*    0     -2.00000      0      5      1.03637      5                                                                    */
/*    0     -2.00000      0      5      1.04114      5                                                                    */
/*    0     -2.00000      0      5      1.04427      5                                                                    */
/*    0     -2.00000      0      5      1.04106      5                                                                    */
/*    0     -2.00000      0      5      1.00707      5                                                                    */
/*    0     -2.00000      0      5      1.01572      5                                                                    */
/*    3      4.00738      3      5      1.01476      5                                                                    */
/*    3      3.01790      3      5      1.03272      5                                                                    */
/*    3      5.02436      3      5      1.04480      5                                                                    */
/*    3     -1.99649      3      5      2.00652      5                                                                    */
/*    3     -1.98885      3      5      1.01449      5                                                                    */
/*    3      0.00372      3      5      0.03796      5                                                                    */
/*    3      5.00787      3      5      0.04393      5                                                                    */
/*    3      4.02002      3      5      1.01362      5                                                                    */
/*    3     -1.97298      3      5      1.02687      5                                                                    */
/*    3     -0.97784      3      5      1.04673      5                                                                    */
/*    3      0.02380      3      5      1.04602      5                                                                    */
/*    3      2.01301      3      5      1.04072      5                                                                    */
/*    3      2.01055      3      5      1.02616      5                                                                    */
/*    3      2.00873      3      5      1.01149      5                                                                    */
/*    3      6.01879      3      5      2.04170      5                                                                    */
/*                                                                                                                        */
/**************************************************************************************************************************/

/*                       _ _ _   _                   _      _                _ _   _
/ |   ___ ___  _ __   __| (_) |_(_) ___  _ __   __ _| |  __| | ___ _ __  ___(_) |_(_) ___  ___
| |  / __/ _ \| `_ \ / _` | | __| |/ _ \| `_ \ / _` | | / _` |/ _ \ `_ \/ __| | __| |/ _ \/ __|
| | | (_| (_) | | | | (_| | | |_| | (_) | | | | (_| | || (_| |  __/ | | \__ \ | |_| |  __/\__ \
|_|  \___\___/|_| |_|\__,_|_|\__|_|\___/|_| |_|\__,_|_| \__,_|\___|_| |_|___/_|\__|_|\___||___/
*/


%utl_rbeginx;
parmcards4;
library(haven)
library(ggplot2)
library(ggridges)
library(dplyr)
df<-read_sas("d:/sd1/have.sas7bdat");
 fit <- lm(df$income ~ df$educ)
 slope <- 1/fit$coefficients[[2]]
 intercept <- fit$coefficients[[1]]/fit$coefficients[[2]] * -1
 pdf("d:/pdf/hownormal.pdf",height=8, width=10)
 ggplot(df, aes(x = income, y = educ, group = educ)) +
  theme(
  panel.background = element_rect(fill = "white"),
  plot.background =  element_rect(fill = "white"),
  panel.grid.major = element_line(color = "grey", size = 0.5)
  )  +
 geom_density_ridges(jittered_points = TRUE) +
 geom_blank() +
 stat_function(fun=function(x) intercept + slope*x, color = "red") +
 scale_y_continuous(breaks=seq(0, 10 , 1),limits=c(0, 10 )) +
 scale_x_continuous(breaks=seq(-5, 8, 1),limits=c(-5, 8)) +
 coord_flip()
 pdf()
;;;;
%utl_rendx;

/**************************************************************************************************************************/
/*                                                                                                                        */
/*   https://tinyurl.com/54s44jth                                                                                         */
/*                                             x                                                                          */
/*            -1       0       1       2       3       4       5       6       7                                          */
/*          ---+-------+-------+-------+-------+-------+-------+-------+-------+---                                       */
/*          |          |                       |               |                  |                                       */
/*          |          | Bimodal               | Umiform       |  Normal          |                                       */
/*        y |          |                       |               |                  |                                       */
/*          |          |                       | o             |                  |                                       */
/*     5.75 +          |                       |o              |                  +  5.75                                 */
/*          |          |                       |     o o       |                  |                                       */
/*     4.75 +          |                       |  o            |                  +  4.75                                 */
/*          |          |                       | oo    o       |                  |                                       */
/*     3.75 +          |                       |o              |                  +  3.75                                 */
/*          |          |                       | o  o          |                  |                                       */
/*     2.75 +          |                       |               |                  +  2.75                                 */
/*          |          |  ooo                  o      o        | o o              |                                       */
/*     1.75 +          |ooo oooo               o o o           | -----o---------  +  1.75                                 */
/*          |          |                    --------------------ooooooooo         |                                       */
/*     0.75 +         ----------------------   |               |  o  oo           +  0.75                                 */
/*          |  ------- |                       |   o           |       o          |                                       */
/*    -0.25 +          |                       |oo     o       |  o               + -0.25                                 */
/*          |          |                       |               |                  |                                       */
/*    -1.25 +          |                       |    o oo       |                  + -1.25                                 */
/*          |          | oo  ooo               |o    oo        |                  |                                       */
/*    -2.25 +          |o   oooo               | oo            |                  + -2.25                                 */
/*          |          |                       |               |                  |                                       */
/*          ---+-------+-------+-------+-------+-------+-------+-------+-------+---                                       */
/*        y   -1       0       1       2       3       4       5       6       7                                          */
/*                                             x                                                                          */
/**************************************************************************************************************************/

/*____                  _ _         _       _
|___ /    __ _ ___  ___(_|_)  _ __ | | ___ | |_ ___
  |_ \   / _` / __|/ __| | | | `_ \| |/ _ \| __/ __|
 ___) | | (_| \__ \ (__| | | | |_) | | (_) | |_\__ \
|____/   \__,_|___/\___|_|_| | .__/|_|\___/ \__|___/
                             |_|
*/

options ls=90 ps=40;
data jitter;
call streaminit(545231);
data jitter;
  set sd1.have;
  x=educ+rand('uniform') +.05;
  y=income+rand('normal',0,.15);
run;quit;

proc reg data=sd1.have;
  model income=educ;
run;quit;

data reg;
  do xx=-1 to 7 by .1;
     yy=0.52193 + 0.18462*xx;
     output;
  end;
run;quit;

data mrg;
   merge jitter(in=a) reg;
   if a;
run;quit;

options ls=80 ps=44;
proc plot data=mrg;
 plot y*x='o' yy*xx='-' / overlay box href=0 3 5 haxis=-1 to 7 by 1 vaxis=-2.25 to 6.25 by 1;
run;quit;

/**************************************************************************************************************************/
/*                                                                                                                        */
/*                                                                                                                        */
/*         ---+-------+-------+-------+-------+-------+-------+-------+-------+---                                        */
/*       y |          |                       | o     o       |                  |                                        */
/*    5.75 +          |                       |               |                  +                                        */
/*         |          |                       |               |                  |                                        */
/*         |          |                       |      oo       |                  |                                        */
/*         |          |                       |o              |                  |                                        */
/*    4.75 +          |                       |               |                  +                                        */
/*         |          |                       |               |                  |                                        */
/*         |          |                       |o   o          |                  |                                        */
/*         |          |                       |  o            |                  |                                        */
/*    3.75 +          |                       |               |                  +                                        */
/*         |          |                       |               |                  |                                        */
/*         |          |                       |               |                  |                                        */
/*         |          |                       | o o           |                  |                                        */
/*    2.75 +          |                       |       o       |                  +                                        */
/*         |          |                       |               |                  |                                        */
/*         |          |o   o                  |               |                  |                                        */
/*         |          | o ooooo               | oooo          |o o o             |                                        */
/*    1.75 +          |o  ooo                 | o             |       ---------  +                                        */
/*         |          |                       |             --------o-           |                                        */
/*         |          |                       | ------------  |oooo oo           |                                        */
/*         |          |               -----------             |ooo oooo          |                                        */
/*    0.75 +          |    -----------        |               |o o               +                                        */
/*         |    -----------                   |               |                  |                                        */
/*         |  ---     |                       |    o          |                  |                                        */
/*         |          |                       |    o o        |  oo              |                                        */
/*   -0.25 +          |                       |      o        |                  +                                        */
/*         |          |                       |               |                  |                                        */
/*         |          |                       | o   o         |                  |                                        */
/*         |          |                       |    o          |                  |                                        */
/*   -1.25 +          |                       |               |                  +                                        */
/*         |          |                       |               |                  |                                        */
/*         |          |  o   o                |               |                  |                                        */
/*         |          |oo ooo                 |   o o         |                  |                                        */
/*   -2.25 +          | o  o  o               | o o           |                  +                                        */
/*         ---+-------+-------+-------+-------+-------+-------+-------+-------+---                                        */
/*           -1       0       1       2       3       4       5       6       7                                           */
/*                                                                                                                        */
/**************************************************************************************************************************/

options ls=80 ps=32;
ods select ssplots;
PROC UNIVARIATE DATA=jitter PLOT;
by educ;
VAR y;
RUN;


/**************************************************************************************************************************/
/*                                                                                                                        */
/*  chematic Plots                                                                                                        */
/*                                                                                                                        */
/*          |                                                                                                             */
/*        6 +                        |                                                                                    */
/*          |                        |                                                                                    */
/*          |                        |                                                                                    */
/*          |                        |                                                                                    */
/*        4 +                     +-----+                                                                                 */
/*          |                     |     |                                                                                 */
/*          |                     |     |                                                                                 */
/*          |                     |     |                                                                                 */
/*        2 +         *-----*     *-----*        0                                                                        */
/*          |         |     |     |  +  |        |                                                                        */
/*          |         |     |     |     |     *--+--*                                                                     */
/*          |         |  +  |     |     |                                                                                 */
/*        0 +         |     |     |     |        *                                                                        */
/*          |         |     |     +-----+                                                                                 */
/*          |         |     |        |                                                                                    */
/*          |         |     |        |                                                                                    */
/*       -2 +         +-----+        |                                                                                    */
/*          |                                                                                                             */
/*          |                                                                                                             */
/*          |                                                                                                             */
/*       -4 +                                                                                                             */
/*           ------------+-----------+-----------+-----------                                                             */
/*     educ                 0           3           5                                                                     */
/*                                                                                                                        */
/**************************************************************************************************************************/

/*              _
  ___ _ __   __| |
 / _ \ `_ \ / _` |
|  __/ | | | (_| |
 \___|_| |_|\__,_|

*/

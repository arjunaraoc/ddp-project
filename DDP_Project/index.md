---
title       : Indian Railways Income Prediction
subtitle    : DDP Project for Coursera Datascience Course
author      : Arjuna Rao Chavala
job         : 
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---

## Project Overview

1. Indian Railways is the biggest railway organisation in the world
2. Lot of data is available from Indian Governement's Open Data platform
3. Passenger trains and Goods trains are the major categories of traffic
4. We investigate the contribution of each to the income of Indian Railways
5. Provide a shiny app for users to experience the power of prediction

--- .class #id 

## Data at a glance
![plot of chunk unnamed-chunk-1](assets/fig/unnamed-chunk-1-1.png) 

--- .class #id


## Prediction algorithm

```
## 
## Call:
## lm(formula = income ~ psgr_trains + goods_trains, data = irfa)
## 
## Residuals:
##       1       2       3       4       5       6       7 
##  3026.5  1950.5 -4713.4 -3159.9   105.0   232.8  2558.5 
## 
## Coefficients:
##                Estimate Std. Error t value Pr(>|t|)    
## (Intercept)  -3.168e+05  3.362e+04  -9.422 0.000707 ***
## psgr_trains   1.740e+01  2.075e+00   8.385 0.001107 ** 
## goods_trains  2.791e+01  5.764e+00   4.842 0.008388 ** 
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
## 
## Residual standard error: 3598 on 4 degrees of freedom
## Multiple R-squared:  0.9839,	Adjusted R-squared:  0.9758 
## F-statistic: 122.1 on 2 and 4 DF,  p-value: 0.0002595
```

--- .class #id

## Shiny app UI
![width](ind.png)



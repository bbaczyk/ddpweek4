---
title       : Developing Data Products
subtitle    : Understanding default data frames in R
author      : Brian M. Baczyk
job         : 
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---

<style>
.title-slide {
  background-color: #EDE0CF; /* #EDE0CF; ; #CA9F9D*/
}
</style>

## Developing Data Products - Week 4 Class Project


R ships with many datasets that are used throughout as examples to support learning
analytical techniques. However, there is no easy way to visualize the dataset, its
contents, and the relationships between variables in the dataset.

This project focuses on data frames that are inlcuded with the base version of R.
There are many other libraries that are available in R, many with their own supporting
data. This project could be easily be extended to provide insight into their datasets.

The next slide will describe the solution, and the fourth slide will provide example output.
The fifth slide will provide the locations of the application, repo, and this slide show.

--- .class #id 

## Developing Data Products - Week 4 Class Project

## Description of the solution

This problem was developed using Shiny to provide a web-based solution for those users
who don't have R installed, or, perhaps are using a mobile device.

In the user interface (ui.R), the solution uses the data() command to build a data frame of 
the datasets available in the base R install. Since this solution focuses on data frames,
the solution next determines the class() of each dataset and removes any that are not dataframes.

The final list is sorted alphabetically and display to the user in the web pages dropdown list. When the user changes the
selection, the left hand side of the page refereshes with the profile of the selected data frame. The profile includes the ouput
of str() and ggpairs(), which is a ggplot enhanced version of the base R function pairs().


--- .class #id

## Developing Data Products - Week 4 Class Project

## Example output - ggpairs(mtcars) dataset

![plot of chunk unnamed-chunk-1](assets/fig/unnamed-chunk-1-1.png)

--- .class #id

## Developing Data Products - Week 4 Class Project

## Code locations

### Github repo: https://github.com/bbaczyk/ddpweek4/gh-pages

### shiny app: https://bbaczyk.shinyapps.io/week4/

### Slide presentation: https://bbaczyk.github.io/ddpweek4/index.html



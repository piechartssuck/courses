---
title: "Tidy and Other Related Open Source Texts"
menu:
  resources:
    parent: Guides
output:
  rmarkdown::html_document:
    toc: true
type: docs
weight: 7
---

<script src="/rmarkdown-libs/kePrint/kePrint.js"></script>

<link href="/rmarkdown-libs/lightable/lightable.css" rel="stylesheet" />

{{% r-walkthrough-header %}}

<style>

table {
  padding: 50px;
  overflow: hidden;
  position: relative;
  display: inline-block;
  vertical-align: top;
  margin: 1.0em;
}

table:hover {
  overflow: visible;
}

td {
  width: 50px;
  position:relative;
  overflow: visible;
}

img {
  -webkit-transition: all 0.5s linear;
          transition: all 0.5s linear;
  -webkit-transform: scale3d(1, 1, 1);
          transform: scale3d(1, 1, 1);
}

td:hover img {
  -webkit-transform: scale3d(1.2, 1.2, 1);
          transform: scale3d(1.2, 1.2, 1);
  transform: scale(3.0);
  transition: all .5s ease-in-out;
  position: relative; 
  width: 100%;
  height: auto;
  z-index: 99;
}

</style>

<br>

<center>
<div class="wrapper">
    <div class="icon leftright">
      <div class="tooltip"><span style=width:200px;>Hover over any title to zoom in</span></div>
      <span><i class="fa-solid fa-expand"></i></span></div>
    <div class="icon info">
      <div class="tooltip"><span style=width:200px;>Click on any cover for the entire text</span></div>
      <span><i class="fa-solid fa-arrow-pointer"></i></span></div>
</div>
<br>
<hr style="width:20%">
</center>
<center>
<table class="table" style="margin-left: auto; margin-right: auto;">
<tbody>
<tr>
<td style="text-align:center;width: 10em; vertical-align: middle !important;color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
<a href="https://adv-r.hadley.nz/" target="_blank"> <img src="/img/opensource/advanced-r.png" alt="Advanced R"></a>
</td>
<td style="text-align:center;width: 10em; vertical-align: middle !important;color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
<a href="https://advanced-r-solutions.rbind.io/" target="_blank"> <img src="/img/opensource/advanced-r-solutions.png" alt="Advanced R Solutions"></a>
</td>
<td style="text-align:center;width: 10em; vertical-align: middle !important;color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
<a href="https://walker-data.com/census-r/index.html" target="_blank"> <img src="/img/opensource/analyzing-us-census-data.png" alt="Analyzing US Census Data: Methods, Maps, and Models in R"></a>
</td>
<td style="text-align:center;width: 10em; vertical-align: middle !important;color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
<a href="https://enriquegit.github.io/behavior-free/" target="_blank"> <img src="/img/opensource/behavior-analysis-with-machine-learning-using-r.png" alt="Behavior Analysis with Machine Learning Using R"></a>
</td>
<td style="text-align:center;width: 10em; vertical-align: middle !important;color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
<a href="https://geocompr.robinlovelace.net/" target="_blank"> <img src="/img/opensource/geocomputation-with-r.png" alt="Geocomputation with R"></a>
</td>
<td style="text-align:center;width: 10em; vertical-align: middle !important;color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
<a href="https://bradleyboehmke.github.io/HOML/" target="_blank"> <img src="/img/opensource/hands-on-machine-learning-with-r.png" alt="Hands-On Machine Learning with R"></a>
</td>
<td style="text-align:center;width: 10em; vertical-align: middle !important;color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
<a href="https://plotly-r.com/" target="_blank"> <img src="/img/opensource/interactive-web-based-data-visualization-with-r-plotly-and-shiny.png" alt="Interactive web-based data visualization with R, Plotly, and Shiny"></a>
</td>
</tr>
<tr>
<td style="text-align:center;width: 10em; vertical-align: middle !important;color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
<a href="https://rafalab.github.io/dsbook/" target="_blank"> <img src="/img/opensource/introduction-to-data-science.png" alt="Introduction to Data Science: Data Analysis and Prediction Algorithms with R"></a>
</td>
<td style="text-align:center;width: 10em; vertical-align: middle !important;color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
<a href="https://book.javascript-for-r.com/" target="_blank"> <img src="/img/opensource/javascript-for-r.png" alt="JavaScript for R"></a>
</td>
<td style="text-align:center;width: 10em; vertical-align: middle !important;color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
<a href="https://mastering-shiny.org/" target="_blank"> <img src="/img/opensource/mastering-shiny.png" alt="Mastering Shiny"></a>
</td>
<td style="text-align:center;width: 10em; vertical-align: middle !important;color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
<a href="https://schmettow.github.io/New_Stats/" target="_blank"> <img src="/img/opensource/new-statistics-for-design-researchers.png" alt="New Statistics for Design Researchers: a Bayesian Workflow in Tidy R"></a>
</td>
<td style="text-align:center;width: 10em; vertical-align: middle !important;color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
<a href="https://unleash-shiny.rinterface.com/welcome.html" target="_blank"> <img src="/img/opensource/outstanding-user-interfaces-with-shiny.png" alt="Outstanding User Interfaces with Shiny"></a>
</td>
<td style="text-align:center;width: 10em; vertical-align: middle !important;color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
<a href="https://bookdown.org/yihui/rmarkdown-cookbook/" target="_blank"> <img src="/img/opensource/r-markdown-cookbook.png" alt="R Markdown Cookbook"></a>
</td>
<td style="text-align:center;width: 10em; vertical-align: middle !important;color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
<a href="https://r4ds.had.co.nz/" target="_blank"> <img src="/img/opensource/r-for-data-science-text.png" alt="R for Data Science"></a>
</td>
</tr>
<tr>
<td style="text-align:center;width: 10em; vertical-align: middle !important;color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
<a href="https://r-pkgs.org/" target="_blank"> <img src="/img/opensource/r-packages.png" alt="R Packages"></a>
</td>
<td style="text-align:center;width: 10em; vertical-align: middle !important;color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
<a href="https://moderndive.com/" target="_blank"> <img src="/img/opensource/statistical-inference-via-data-science.png" alt="Statistical Inference via Data Science: A ModernDive into R and the Tidyverse"></a>
</td>
<td style="text-align:center;width: 10em; vertical-align: middle !important;color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
<a href="https://smltar.com/" target="_blank"> <img src="/img/opensource/supervised-machine-learning-for-text-analysis%20in-r.png" alt="Supervised Machine Learning for Text Analysis in R"></a>
</td>
<td style="text-align:center;width: 10em; vertical-align: middle !important;color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
<a href="https://www.tidytextmining.com/" target="_blank"> <img src="/img/opensource/text-mining-with-r.png" alt="Text Mining with R"></a>
</td>
<td style="text-align:center;width: 10em; vertical-align: middle !important;color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
<a href="https://www.tmwr.org/" target="_blank"> <img src="/img/opensource/tidy-modeling-with-r.png" alt="Tidy Modeling with R"></a>
</td>
<td style="text-align:center;width: 10em; vertical-align: middle !important;color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
<a href="https://bookdown.org/yihui/blogdown/" target="_blank"> <img src="/img/opensource/blogdown-creating-sites-with-r-markdown.png" alt="blogdown: Creating Websites with R Markdown"></a>
</td>
<td style="text-align:center;width: 10em; vertical-align: middle !important;color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
<a href="https://ggplot2-book.org/" target="_blank"> <img src="/img/opensource/ggplot2-elegant-graphics-for-data-analysis.png" alt="ggplot2: Elegant Graphics for Data Analysis"></a>
</td>
</tr>
</tbody>
</table>
</center>

This list only shows a very narrow slice of what are known as modern, or tidy friendly texts that are also in print. Barring a few instances here and there, each title should be accessible to anyone who understands the basic principles of *pipes* and *layers*. If you prefer a more comprehensive and up-to-date repository of nearly all open source texts about R, make sure to visit the impressive and ever growing [Big Book of R](https://www.bigbookofr.com/)! If you feel like I missed a helpful modern open source text, please let me know and I’ll be happy to add it.

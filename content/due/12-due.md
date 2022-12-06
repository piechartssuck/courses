---
title: "Analyzing Open Text Part II"
linktitle: "Week 12: Analyzing Open Text Part II"
output:
  rmarkdown::html_document:
    toc: true
menu:
  due:
    parent: 'To Do List'
    weight: 12
type: docs
weight: 1
---

<script src="/rmarkdown-libs/kePrint/kePrint.js"></script>

<link href="/rmarkdown-libs/lightable/lightable.css" rel="stylesheet" />

{{% aes-header %}}

<center>
<table class=" lightable-paper" style="font-family: &quot;Arial Narrow&quot;, arial, helvetica, sans-serif; width: auto !important; margin-left: auto; margin-right: auto;">
<thead>
<tr>
<th style="text-align:left;color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
Description
</th>
<th style="text-align:center;color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
Details<sup>1</sup>
</th>
<th style="text-align:center;color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
Type<sup>2</sup>
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;width: 25em; color: #ffffff !important;vertical-align: middle !important;color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
Read <i>Smart Literature Review: A Practical Topic Modelling Approach to Exploratory Literature Review</i> in Asmussenm C.B. & Moller, C. (2019)
</td>
<td style="text-align:center;width: 5em; color: #ffffff !important;vertical-align: middle !important;color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
<a href="/readings/12-readings/#read-some-text"><span style="font-size: 25px; color: #89cff0;"><i class="fas fa-info-circle"></i></span></a>
</td>
<td style="text-align:center;width: 5em; color: #ffffff !important;vertical-align: middle !important;color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
<a href="https://doi.org/10.1186/s40537-019-0255-7" target="_blank"><img src="/logos/pdf-ico.png" alt="PDF icon" width="32"> </a>
</td>
</tr>
<tr>
<td style="text-align:left;width: 25em; color: #ffffff !important;vertical-align: middle !important;color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
Read <i>Lexical Analysis of Textual Data</i> in Paice, C.D. (2009)
</td>
<td style="text-align:center;width: 5em; color: #ffffff !important;vertical-align: middle !important;color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
<a href="/readings/12-readings/#read-some-text"><span style="font-size: 25px; color: #89cff0;"><i class="fas fa-info-circle"></i></span></a>
</td>
<td style="text-align:center;width: 5em; color: #ffffff !important;vertical-align: middle !important;color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
<a href="https://doi.org/10.1007/978-0-387-39940-9_941" target="_blank"><img src="/logos/pdf-ico.png" alt="PDF icon" width="32"> </a>
</td>
</tr>
<tr>
<td style="text-align:left;width: 25em; color: #ffffff !important;vertical-align: middle !important;color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
Take a look at a much deeper and engaging walkthrough of topic modeling
</td>
<td style="text-align:center;width: 5em; color: #ffffff !important;vertical-align: middle !important;color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
<a href="/readings/12-readings/#read-some-text"><span style="font-size: 25px; color: #89cff0;"><i class="fas fa-info-circle"></i></span></a>
</td>
<td style="text-align:center;width: 5em; color: #ffffff !important;vertical-align: middle !important;color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
<a href="https://medium.com/swlh/topic-modeling-in-r-with-tidytext-and-textminer-package-latent-dirichlet-allocation-764f4483be73" target="_blank"><img src="/logos/webpage-ico.png" alt="Webpage icon" width="27"> </a>
</td>
</tr>
<tr>
<td style="text-align:left;width: 25em; color: #ffffff !important;vertical-align: middle !important;color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
Review how short texts can be used in topic models
</td>
<td style="text-align:center;width: 5em; color: #ffffff !important;vertical-align: middle !important;color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
<a href="/readings/12-readings/#read-some-text"><span style="font-size: 25px; color: #89cff0;"><i class="fas fa-info-circle"></i></span></a>
</td>
<td style="text-align:center;width: 5em; color: #ffffff !important;vertical-align: middle !important;color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
<a href="https://rpubs.com/jmhardaw/eci588-final-project" target="_blank"><img src="/logos/webpage-ico.png" alt="Webpage icon" width="27"> </a>
</td>
</tr>
<tr>
<td style="text-align:left;width: 25em; color: #ffffff !important;vertical-align: middle !important;color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
Conduct an exploratory literature/systematic review using topic modeling
</td>
<td style="text-align:center;width: 5em; color: #ffffff !important;vertical-align: middle !important;color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
<a href="/readings/12-readings/#read-some-text"><span style="font-size: 25px; color: #89cff0;"><i class="fas fa-info-circle"></i></span></a>
</td>
<td style="text-align:center;width: 5em; color: #ffffff !important;vertical-align: middle !important;color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
<a href="https://cran.r-project.org/web/packages/LDAShiny/vignettes/A_brief_introduction_to_LDAShiny.html" target="_blank"><img src="/logos/webpage-ico.png" alt="Webpage icon" width="27"> </a>
</td>
</tr>
<tr>
<td style="text-align:left;width: 25em; color: #ffffff !important;vertical-align: middle !important;color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
Finish the module <span style="color:#ffc787;font-weight:bold"><i>Communicating with Data in the Tidyverse</i></span>
</td>
<td style="text-align:center;width: 5em; color: #ffffff !important;vertical-align: middle !important;color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
<a href="/modules/12-module/#data-camp"><span style="font-size: 25px; color: #89cff0;"><i class="fas fa-info-circle"></i></span></a>
</td>
<td style="text-align:center;width: 5em; color: #ffffff !important;vertical-align: middle !important;color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
<a href="https://,www.datacamp.com" target="_blank"><img src="/logos/dc-ico.png" alt="DataCamp icon" width="24"> </a>
</td>
</tr>
<tr>
<td style="text-align:left;width: 25em; color: #ffffff !important;vertical-align: middle !important;color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
Review the slideshow <span style="color:#6ac4cd;font-weight:bold">Topic Modeling</span> after class
</td>
<td style="text-align:center;width: 5em; color: #ffffff !important;vertical-align: middle !important;color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
<a href="/tasks/12-task/#inclassnotes"><span style="font-size: 25px; color: #89cff0;"><i class="fas fa-info-circle"></i></span></a>
</td>
<td style="text-align:center;width: 5em; color: #ffffff !important;vertical-align: middle !important;color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
<img src="/logos/slideshow-ico.png" alt="Slideshow icon" width="26">
</td>
</tr>
<tr>
<td style="text-align:left;width: 25em; color: #ffffff !important;vertical-align: middle !important;color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
Continue work on your sixth deliverable <span style="color:#6acda5;font-weight:bold">Revise and Resubmit</span> after recieving feedback on the fifth submission
</td>
<td style="text-align:center;width: 5em; color: #ffffff !important;vertical-align: middle !important;color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
<a href="/deliverables/06-l6/"><span style="font-size: 25px; color: #89cff0;"><i class="fas fa-info-circle"></i></span></a>
</td>
<td style="text-align:center;width: 5em; color: #ffffff !important;vertical-align: middle !important;color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
<a href="https://ecampus.wvu.edu/" target="_blank"><img src="/logos/wvu-gold-ico.png" alt="WVU icon" width="26"> </a>
</td>
</tr>
<tr>
<td style="text-align:left;width: 25em; color: #ffffff !important;vertical-align: middle !important;">
</td>
<td style="text-align:center;width: 5em; color: #ffffff !important;vertical-align: middle !important;">
</td>
<td style="text-align:center;width: 5em; color: #ffffff !important;vertical-align: middle !important;">
</td>
</tr>
</tbody>
<tfoot>
<tr>
<td style="padding: 0; border:0;" colspan="100%">
<sup>1</sup> contains active links
</td>
</tr>
<tr>
<td style="padding: 0; border:0;" colspan="100%">
<sup>2</sup> icons may contain active links
</td>
</tr>
</tfoot>
</table>
</center>

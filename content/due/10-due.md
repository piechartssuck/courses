---
title: "Dimensionality and Principal Components"
linktitle: "Week 10: Dimensionality and Principal Components"
output:
  rmarkdown::html_document:
    toc: true
menu:
  due:
    parent: 'To Do List'
    weight: 10
type: docs
weight: 1
---

<script src="/rmarkdown-libs/kePrint/kePrint.js"></script>

<link href="/rmarkdown-libs/lightable/lightable.css" rel="stylesheet" />

{{% r-walkthrough-header %}}

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
Read <i>Principal Component Analysis</i> in Lever, J., Krzywinski, M., & Altman, N. (2017)
</td>
<td style="text-align:center;width: 5em; color: #ffffff !important;vertical-align: middle !important;color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
<a href="/readings/10-readings/#read-some-text"><span style="font-size: 25px; color: #89cff0;"><i class="fas fa-info-circle"></i></span></a>
</td>
<td style="text-align:center;width: 5em; color: #ffffff !important;vertical-align: middle !important;color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
<img src="/logos/pdf-ico.png" alt="PDF icon" width="32">
</td>
</tr>
<tr>
<td style="text-align:left;width: 25em; color: #ffffff !important;vertical-align: middle !important;color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
Read <i>What is Principal Component Analysis?</i> in Ringnér, K. (2008)
</td>
<td style="text-align:center;width: 5em; color: #ffffff !important;vertical-align: middle !important;color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
<a href="/readings/10-readings/#read-some-text"><span style="font-size: 25px; color: #89cff0;"><i class="fas fa-info-circle"></i></span></a>
</td>
<td style="text-align:center;width: 5em; color: #ffffff !important;vertical-align: middle !important;color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
<img src="/logos/pdf-ico.png" alt="PDF icon" width="32">
</td>
</tr>
<tr>
<td style="text-align:left;width: 25em; color: #ffffff !important;vertical-align: middle !important;color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
Complete the module <span style="color:#ffc787;font-weight:bold"><i>Survey and Measurement Development in R </i></span>
</td>
<td style="text-align:center;width: 5em; color: #ffffff !important;vertical-align: middle !important;color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
<a href="/modules/10-module/#data-camp"><span style="font-size: 25px; color: #89cff0;"><i class="fas fa-info-circle"></i></span></a>
</td>
<td style="text-align:center;width: 5em; color: #ffffff !important;vertical-align: middle !important;color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
<a href="https://www.datacamp.com" target="_blank"><img src="/logos/dc-ico.png" alt="DataCamp icon" width="24"> </a>
</td>
</tr>
<tr>
<td style="text-align:left;width: 25em; color: #ffffff !important;vertical-align: middle !important;color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
Complete and submit the associated <i class="fa-brands fa-r-project"></i> task for the module
</td>
<td style="text-align:center;width: 5em; color: #ffffff !important;vertical-align: middle !important;color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
<a href="/modules/10-module/#r-task"><span style="font-size: 25px; color: #89cff0;"><i class="fas fa-info-circle"></i></span></a>
</td>
<td style="text-align:center;width: 5em; color: #ffffff !important;vertical-align: middle !important;color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
<a href="https://ecampus.wvu.edu" target="_blank"><img src="/logos/Rscript-ico.png" alt="R icon" width="27"> </a>
</td>
</tr>
<tr>
<td style="text-align:left;width: 25em; color: #ffffff !important;vertical-align: middle !important;color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
Go through the slideshow <span style="color:#6ac4cd;font-weight:bold">Principal Component Analysis</span>
</td>
<td style="text-align:center;width: 5em; color: #ffffff !important;vertical-align: middle !important;color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
<a href="/tasks/10-task/"><span style="font-size: 25px; color: #89cff0;"><i class="fas fa-info-circle"></i></span></a>
</td>
<td style="text-align:center;width: 5em; color: #ffffff !important;vertical-align: middle !important;color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
<img src="/logos/slideshow-ico.png" alt="Slideshow icon" width="26">
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

---
title: "Population, Selection, and Coverage"
linktitle: "Week 3: Population, Selection, and Coverage"
output:
  rmarkdown::html_document:
    toc: true
menu:
  due:
    parent: 'To Do List'
    weight: 3
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
Details
</th>
<th style="text-align:center;color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
Link
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;width: 25em; color: #ffffff !important;vertical-align: middle !important;color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
Read <i>Covering the Population and Selecting Who to Survey</i> in Dillman, Smyth, & Christian (2014)
</td>
<td style="text-align:center;width: 5em; color: #ffffff !important;vertical-align: middle !important;color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
<a href="/readings/03-readings/#read-some-text"><span style="font-size: 25px; color: #89cff0;"><i class="fas fa-info-circle"></i></span></a>
</td>
<td style="text-align:center;width: 5em; color: #ffffff !important;vertical-align: middle !important;color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
<a href="https://ebookcentral.proquest.com/lib/wvu/reader.action?docID=1762797&amp;ppg=76" target="_blank"><img src="/logos/library-ico.png" alt="Library icon" width="25"></a>
</td>
</tr>
<tr>
<td style="text-align:left;width: 25em; color: #ffffff !important;vertical-align: middle !important;color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
Complete the module <span style="color:#ffc787;font-weight:bold"><i>Introduction to Data Visualization with ggplot2</i></span>
</td>
<td style="text-align:center;width: 5em; color: #ffffff !important;vertical-align: middle !important;color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
<a href="/modules/03-module/#data-camp"><span style="font-size: 25px; color: #89cff0;"><i class="fas fa-info-circle"></i></span></a>
</td>
<td style="text-align:center;width: 5em; color: #ffffff !important;vertical-align: middle !important;color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
<a href="https://www.datacamp.com" target="_blank"><img src="/logos/dc-ico.png" alt="DataCamp icon" width="24"></a>
</td>
</tr>
<tr>
<td style="text-align:left;width: 25em; color: #ffffff !important;vertical-align: middle !important;color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
Optionally download the package <code><span style="font-size:15px">esquisse</span></code> to help with learning about <code><span style="font-size:15px">ggplot2</span></code> using a more familiar drag and drop approach
</td>
<td style="text-align:center;width: 5em; color: #ffffff !important;vertical-align: middle !important;color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
<a href="/modules/03-module/#codespan-stylefont-size20pxesquissespancode"><span style="font-size: 25px; color: #89cff0;"><i class="fas fa-info-circle"></i></span></a>
</td>
<td style="text-align:center;width: 5em; color: #ffffff !important;vertical-align: middle !important;color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
</tr>
<tr>
<td style="text-align:left;width: 25em; color: #ffffff !important;vertical-align: middle !important;color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
Go through a walkthrough on how to get rid of the particularly annoying Qualtrics plug
</td>
<td style="text-align:center;width: 5em; color: #ffffff !important;vertical-align: middle !important;color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
<a href="/walkthroughs/03-walkthrough/#javascript-in-qualtrics-the-plug"><span style="font-size: 25px; color: #89cff0;"><i class="fas fa-info-circle"></i></span></a>
</td>
<td style="text-align:center;width: 5em; color: #ffffff !important;vertical-align: middle !important;color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
</tr>
<tr>
<td style="text-align:left;width: 25em; color: #ffffff !important;vertical-align: middle !important;color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
Go through the slideshow <span style="color:#6ac4cd;font-weight:bold">Sampling</span>
</td>
<td style="text-align:center;width: 5em; color: #ffffff !important;vertical-align: middle !important;color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
<a href="/tasks/03-task/#learn-about-sampling"><span style="font-size: 25px; color: #89cff0;"><i class="fas fa-info-circle"></i></span></a>
</td>
<td style="text-align:center;width: 5em; color: #ffffff !important;vertical-align: middle !important;color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
<a href="https://wvu.qualtrics.com" target="_blank"><img src="/logos/qualtrics-ico.png" alt="Qualtrics icon" width="29"></a>
</td>
</tr>
<tr>
<td style="text-align:left;width: 25em; color: #ffffff !important;vertical-align: middle !important;color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
Begin on your second deliverable <span style="color:#6acda5;font-weight:bold">Create a Draft </span>
</td>
<td style="text-align:center;width: 5em; color: #ffffff !important;vertical-align: middle !important;color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
<a href="/deliverables/02-l2/"><span style="font-size: 25px; color: #89cff0;"><i class="fas fa-info-circle"></i></span></a>
</td>
<td style="text-align:center;width: 5em; color: #ffffff !important;vertical-align: middle !important;color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
<a href="https://ecampus.wvu.edu" target="_blank"><img src="/logos/wvu-gold-ico.png" alt="WVU icon" width="25"></a>
</td>
</tr>
</tbody>
</table>
</center>

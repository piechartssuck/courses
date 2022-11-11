---
title: "Determing What You Can Determine"
linktitle: "Week 13: Determing What You Can Determine"
output:
  rmarkdown::html_document:
    toc: true
menu:
  due:
    parent: 'To Do List'
    weight: 13
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
Read <i>Understanding Statistical Power in the Context of Applied Research</i> in Baguley (2004)
</td>
<td style="text-align:center;width: 5em; color: #ffffff !important;vertical-align: middle !important;color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
<a href="/readings/13-readings/#read-some-text"><span style="font-size: 25px; color: #89cff0;"><i class="fas fa-info-circle"></i></span></a>
</td>
<td style="text-align:center;width: 5em; color: #ffffff !important;vertical-align: middle !important;color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
<img src="/logos/pdf-ico.png" alt="PDF icon" width="32">
</td>
</tr>
<tr>
<td style="text-align:left;width: 25em; color: #ffffff !important;vertical-align: middle !important;color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
Read <i>Using Effect Size—or Why the P Value Is Not Enough</i> in Sullivan, G.M. & Feinn, R. (2012)
</td>
<td style="text-align:center;width: 5em; color: #ffffff !important;vertical-align: middle !important;color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
<a href="/readings/13-readings/#read-some-text"><span style="font-size: 25px; color: #89cff0;"><i class="fas fa-info-circle"></i></span></a>
</td>
<td style="text-align:center;width: 5em; color: #ffffff !important;vertical-align: middle !important;color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
<img src="/logos/pdf-ico.png" alt="PDF icon" width="32">
</td>
</tr>
<tr>
<td style="text-align:left;width: 25em; color: #ffffff !important;vertical-align: middle !important;color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
Complete the module <span style="color:#ffc787;font-weight:bold"><i>Text Mining with Bag-of-Words in R</i></span>
</td>
<td style="text-align:center;width: 5em; color: #ffffff !important;vertical-align: middle !important;color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
<a href="/modules/13-module/#data-camp"><span style="font-size: 25px; color: #89cff0;"><i class="fas fa-info-circle"></i></span></a>
</td>
<td style="text-align:center;width: 5em; color: #ffffff !important;vertical-align: middle !important;color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
<a href="https://www.datacamp.com" target="_blank"><img src="/logos/dc-ico.png" alt="DataCamp icon" width="24"> </a>
</td>
</tr>
<tr>
<td style="text-align:left;width: 25em; color: #ffffff !important;vertical-align: middle !important;color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
Go through the slideshow <span style="color:#6ac4cd;font-weight:bold">Power and Design</span>
</td>
<td style="text-align:center;width: 5em; color: #ffffff !important;vertical-align: middle !important;color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
<a href="/tasks/13-task/#avoiding-a-terrible-error"><span style="font-size: 25px; color: #89cff0;"><i class="fas fa-info-circle"></i></span></a>
</td>
<td style="text-align:center;width: 5em; color: #ffffff !important;vertical-align: middle !important;color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
<img src="/logos/slideshow-ico.png" alt="Slideshow icon" width="26">
</td>
</tr>
<tr>
<td style="text-align:left;width: 25em; color: #ffffff !important;vertical-align: middle !important;color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
Take a look at some additional <i class="fa-brands fa-r-project"></i> and non software related resources that may help with your understanding of power
</td>
<td style="text-align:center;width: 5em; color: #ffffff !important;vertical-align: middle !important;color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
<a href="/tasks/13-task/#additional-resources"><span style="font-size: 25px; color: #89cff0;"><i class="fas fa-info-circle"></i></span></a>
</td>
<td style="text-align:center;width: 5em; color: #ffffff !important;vertical-align: middle !important;color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
<img src="/logos/list-ico.png" alt="List icon" width="25">
</td>
</tr>
<tr>
<td style="text-align:left;width: 25em; color: #ffffff !important;vertical-align: middle !important;color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
Finish <span style="color:#6acda5;font-weight:bold">Test for Validity and Reliability</span> and submit it by the end of this week
</td>
<td style="text-align:center;width: 5em; color: #ffffff !important;vertical-align: middle !important;color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
<a href="/deliverables/06-l6/"><span style="font-size: 25px; color: #89cff0;"><i class="fas fa-info-circle"></i></span></a>
</td>
<td style="text-align:center;width: 5em; color: #ffffff !important;vertical-align: middle !important;color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
<a href="https://ecampus.wvu.edu" target="_blank"><img src="/logos/wvu-gold-ico.png" alt="WVU icon" width="26"> </a>
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

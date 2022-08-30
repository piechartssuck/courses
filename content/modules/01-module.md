---
title: "Does it Work and Why Does it Work?"
linktitle: "Week 1: Evaluations"
toc: true
output:
  rmarkdown::html_document:
    toc: true
menu:
  trainings:
    parent: Modules
    weight: 1
type: docs
weight: 1
---

<script src="/rmarkdown-libs/kePrint/kePrint.js"></script>

<link href="/rmarkdown-libs/lightable/lightable.css" rel="stylesheet" />

{{% aes-header %}}

## Notes

### for previous participants

If you have participated in Data Camp before and would like to receive credit for assigned modules you have previously completed, make sure to login with the associated username. Please note that you must do this to qualify.

### for new participants

Please take your time with these modules. I suggest setting 3-4 hours for this initial set and go work in a way that’s conducive to your learning. The first module gives you an understand of the R environment while the second deals assigned next week deals with data wrangling and reshaping, namely making sure data is in what we call a “tidy” format. All analyses will be required to be performed in R. Please reach out if you need help!

## Installing R and RStudio (soon to be called Posit)

Go to the [Installing R, RStudio, and tidyverse](/resources/install/) page under Resources to get both R and RStudio installed on your system.

## Data Camp

Please go through and complete the following modules

<center>
<table class=" lightable-paper" style="font-family: &quot;Arial Narrow&quot;, arial, helvetica, sans-serif; margin-left: auto; margin-right: auto;">
<thead>
<tr>
<th style="text-align:center;color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
Link
</th>
<th style="text-align:center;color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
Due by
</th>
<th style="text-align:center;color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
Required
</th>
<th style="text-align:center;color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
Task
</th>
<th style="text-align:left;color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
Module
</th>
<th style="text-align:left;color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
Chapters
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:center;width: 5em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
<a href="/modules/01-module/">Week 1</a>
</td>
<td style="text-align:center;width: 5em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
8/23/22
</td>
<td style="text-align:center;width: 5em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
<svg aria-hidden="true" role="img" viewbox="0 0 512 512" style="height:15px;width:15px;vertical-align:-0.125em;margin-left:auto;margin-right:auto;font-size:inherit;fill:#428bca;overflow:visible;position:relative;">
<path d="M0 256C0 114.6 114.6 0 256 0C397.4 0 512 114.6 512 256C512 397.4 397.4 512 256 512C114.6 512 0 397.4 0 256zM371.8 211.8C382.7 200.9 382.7 183.1 371.8 172.2C360.9 161.3 343.1 161.3 332.2 172.2L224 280.4L179.8 236.2C168.9 225.3 151.1 225.3 140.2 236.2C129.3 247.1 129.3 264.9 140.2 275.8L204.2 339.8C215.1 350.7 232.9 350.7 243.8 339.8L371.8 211.8z"></path>
</svg>
</td>
<td style="text-align:center;width: 5em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
<svg aria-hidden="true" role="img" viewbox="0 0 512 512" style="height:15px;width:15px;vertical-align:-0.125em;margin-left:auto;margin-right:auto;font-size:inherit;fill:#d9534f;overflow:visible;position:relative;">
<path d="M0 256C0 114.6 114.6 0 256 0C397.4 0 512 114.6 512 256C512 397.4 397.4 512 256 512C114.6 512 0 397.4 0 256zM175 208.1L222.1 255.1L175 303C165.7 312.4 165.7 327.6 175 336.1C184.4 346.3 199.6 346.3 208.1 336.1L255.1 289.9L303 336.1C312.4 346.3 327.6 346.3 336.1 336.1C346.3 327.6 346.3 312.4 336.1 303L289.9 255.1L336.1 208.1C346.3 199.6 346.3 184.4 336.1 175C327.6 165.7 312.4 165.7 303 175L255.1 222.1L208.1 175C199.6 165.7 184.4 165.7 175 175C165.7 184.4 165.7 199.6 175 208.1V208.1z"></path>
</svg>
</td>
<td style="text-align:left;width: 8em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
Introduction to R
</td>
<td style="text-align:left;width: 8em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
Intro to basics
</td>
</tr>
<tr>
<td style="text-align:center;width: 5em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:center;width: 5em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:center;width: 5em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:center;width: 5em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:left;width: 8em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:left;width: 8em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
Vectors
</td>
</tr>
<tr>
<td style="text-align:center;width: 5em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:center;width: 5em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:center;width: 5em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:center;width: 5em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:left;width: 8em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:left;width: 8em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
Matrices
</td>
</tr>
<tr>
<td style="text-align:center;width: 5em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:center;width: 5em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:center;width: 5em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:center;width: 5em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:left;width: 8em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:left;width: 8em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
Factors
</td>
</tr>
<tr>
<td style="text-align:center;width: 5em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:center;width: 5em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:center;width: 5em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:center;width: 5em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:left;width: 8em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:left;width: 8em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
Data Frames
</td>
</tr>
<tr>
<td style="text-align:center;width: 5em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:center;width: 5em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:center;width: 5em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:center;width: 5em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:left;width: 8em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:left;width: 8em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
Lists
</td>
</tr>
<tr>
<td style="text-align:center;width: 5em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:center;width: 5em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:center;width: 5em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:center;width: 5em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:left;width: 8em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:left;width: 8em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
</tr>
</tbody>
</table>
</center>

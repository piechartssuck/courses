---
title: "Does it Work and Why Does it Work?"
linktitle: "Week 1: Onboarding"
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
editor_options: 
  chunk_output_type: console
---

<script src="/rmarkdown-libs/kePrint/kePrint.js"></script>

<link href="/rmarkdown-libs/lightable/lightable.css" rel="stylesheet" />

{{% aes-header %}}

## Notes

### for previous participants

If you have participated in Data Camp before and would like to receive credit for assigned modules you have previously completed, make sure to login with the associated username. Please note that you must do this to qualify.

### for new participants

Take your time with these modules. I suggest setting 8-10 hours for this initial set and to spread the walkthroughs out over the week if possible and it is conducive to your learning style. The first module gives you an understand of the R environment while the second deals with data wrangling and reshaping, namely making sure data is in a “tidy” format. We’ll be using this idea moving forward in the course. Please reach out if you need help!

## Installing R and RStudio

Go to the [Installing R, RStudio, and tidyverse](/resources/install/) page under Resources to get both R and RStudio installed on your system.

## Data Camp

<center>
<table class=" lightable-paper" style="font-family: &quot;Arial Narrow&quot;, arial, helvetica, sans-serif; margin-left: auto; margin-right: auto;">
<thead>
<tr>
<th style="text-align:center;color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
Due by
</th>
<th style="text-align:center;color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
Required
</th>
<th style="text-align:left;color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
Course or Project Name
</th>
<th style="text-align:left;color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
Chapters
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:center;width: 10em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
5/22/22
</td>
<td style="text-align:center;width: 10em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
<svg aria-hidden="true" role="img" viewbox="0 0 512 512" style="height:15px;width:15px;vertical-align:-0.125em;margin-left:auto;margin-right:auto;font-size:inherit;fill:#428bca;overflow:visible;position:relative;">
<path d="M504 256c0 136.967-111.033 248-248 248S8 392.967 8 256 119.033 8 256 8s248 111.033 248 248zM227.314 387.314l184-184c6.248-6.248 6.248-16.379 0-22.627l-22.627-22.627c-6.248-6.249-16.379-6.249-22.628 0L216 308.118l-70.059-70.059c-6.248-6.248-16.379-6.248-22.628 0l-22.627 22.627c-6.248 6.248-6.248 16.379 0 22.627l104 104c6.249 6.249 16.379 6.249 22.628.001z"></path>
</svg>
</td>
<td style="text-align:left;width: 25em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
Introduction to R
</td>
<td style="text-align:left;width: 30em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
Intro to basics
</td>
</tr>
<tr>
<td style="text-align:center;width: 10em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:center;width: 10em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:left;width: 25em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:left;width: 30em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
Vectors
</td>
</tr>
<tr>
<td style="text-align:center;width: 10em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:center;width: 10em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:left;width: 25em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:left;width: 30em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
Matrices
</td>
</tr>
<tr>
<td style="text-align:center;width: 10em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:center;width: 10em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:left;width: 25em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:left;width: 30em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
Factors
</td>
</tr>
<tr>
<td style="text-align:center;width: 10em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:center;width: 10em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:left;width: 25em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:left;width: 30em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
Data Frames
</td>
</tr>
<tr>
<td style="text-align:center;width: 10em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:center;width: 10em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:left;width: 25em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:left;width: 30em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
Lists
</td>
</tr>
<tr>
<td style="text-align:center;width: 10em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
5/22/22
</td>
<td style="text-align:center;width: 10em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
<svg aria-hidden="true" role="img" viewbox="0 0 512 512" style="height:15px;width:15px;vertical-align:-0.125em;margin-left:auto;margin-right:auto;font-size:inherit;fill:#428bca;overflow:visible;position:relative;">
<path d="M504 256c0 136.967-111.033 248-248 248S8 392.967 8 256 119.033 8 256 8s248 111.033 248 248zM227.314 387.314l184-184c6.248-6.248 6.248-16.379 0-22.627l-22.627-22.627c-6.248-6.249-16.379-6.249-22.628 0L216 308.118l-70.059-70.059c-6.248-6.248-16.379-6.248-22.628 0l-22.627 22.627c-6.248 6.248-6.248 16.379 0 22.627l104 104c6.249 6.249 16.379 6.249 22.628.001z"></path>
</svg>
</td>
<td style="text-align:left;width: 25em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
Working with Data in the Tidyverse
</td>
<td style="text-align:left;width: 30em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
Explore your data
</td>
</tr>
<tr>
<td style="text-align:center;width: 10em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:center;width: 10em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:left;width: 25em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:left;width: 30em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
Tame your data
</td>
</tr>
<tr>
<td style="text-align:center;width: 10em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:center;width: 10em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:left;width: 25em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:left;width: 30em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
Tidy your data
</td>
</tr>
<tr>
<td style="text-align:center;width: 10em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:center;width: 10em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:left;width: 25em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:left;width: 30em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
Transform your data
</td>
</tr>
</tbody>
</table>
</center>

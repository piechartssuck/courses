---
title: "Analyzing Open Text Part I"
linktitle: "Week 11: Analyzing Open Text Part I"
output:
  rmarkdown::html_document:
    toc: true
menu:
  trainings:
    parent: Modules
    weight: 11
type: docs
weight: 1
---

<script src="/rmarkdown-libs/kePrint/kePrint.js"></script>

<link href="/rmarkdown-libs/lightable/lightable.css" rel="stylesheet" />

{{% r-walkthrough-header %}}

## Data Camp

Please finish up the following module

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
<a href="/modules/06-module/">Week 6</a>
</td>
<td style="text-align:center;width: 5em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
11/1/22
</td>
<td style="text-align:center;width: 5em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
<svg aria-hidden="true" role="img" viewbox="0 0 512 512" style="height:15px;width:15px;vertical-align:-0.125em;margin-left:auto;margin-right:auto;font-size:inherit;fill:#428bca;overflow:visible;position:relative;">
<path d="M243.8 339.8C232.9 350.7 215.1 350.7 204.2 339.8L140.2 275.8C129.3 264.9 129.3 247.1 140.2 236.2C151.1 225.3 168.9 225.3 179.8 236.2L224 280.4L332.2 172.2C343.1 161.3 360.9 161.3 371.8 172.2C382.7 183.1 382.7 200.9 371.8 211.8L243.8 339.8zM512 256C512 397.4 397.4 512 256 512C114.6 512 0 397.4 0 256C0 114.6 114.6 0 256 0C397.4 0 512 114.6 512 256zM256 48C141.1 48 48 141.1 48 256C48 370.9 141.1 464 256 464C370.9 464 464 370.9 464 256C464 141.1 370.9 48 256 48z"></path>
</svg>
</td>
<td style="text-align:center;width: 5em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
<svg aria-hidden="true" role="img" viewbox="0 0 512 512" style="height:15px;width:15px;vertical-align:-0.125em;margin-left:auto;margin-right:auto;font-size:inherit;fill:#428bca;overflow:visible;position:relative;">
<path d="M243.8 339.8C232.9 350.7 215.1 350.7 204.2 339.8L140.2 275.8C129.3 264.9 129.3 247.1 140.2 236.2C151.1 225.3 168.9 225.3 179.8 236.2L224 280.4L332.2 172.2C343.1 161.3 360.9 161.3 371.8 172.2C382.7 183.1 382.7 200.9 371.8 211.8L243.8 339.8zM512 256C512 397.4 397.4 512 256 512C114.6 512 0 397.4 0 256C0 114.6 114.6 0 256 0C397.4 0 512 114.6 512 256zM256 48C141.1 48 48 141.1 48 256C48 370.9 141.1 464 256 464C370.9 464 464 370.9 464 256C464 141.1 370.9 48 256 48z"></path>
</svg>
</td>
<td style="text-align:left;width: 8em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
<span style="color:#ffc787;font-weight:bold;font-style:italic">Introduction to Text Analysis in R</span>
</td>
<td style="text-align:left;width: 8em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
Wrangling Text
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
<span style="color:#ffc787;font-weight:bold;font-style:italic"></span>
</td>
<td style="text-align:left;width: 8em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
Visualizing Text
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
<span style="color:#ffc787;font-weight:bold;font-style:italic"></span>
</td>
<td style="text-align:left;width: 8em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
Sentiment Analysis
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
<span style="color:#ffc787;font-weight:bold;font-style:italic"></span>
</td>
<td style="text-align:left;width: 8em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
Topic Modeling
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
<span style="color:#ffc787;font-weight:bold;font-style:italic"></span>
</td>
<td style="text-align:left;width: 8em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
</tr>
</tbody>
</table>
</center>

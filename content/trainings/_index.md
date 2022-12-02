---
title: "About the Trainings"
menu:
  trainings:
    parent: Overview
    weight: 1
toc: true
output:
  rmarkdown::html_document:
    toc: true
type: docs
weight: 1
shiny: true
---

<script src="/rmarkdown-libs/kePrint/kePrint.js"></script>
<link href="/rmarkdown-libs/lightable/lightable.css" rel="stylesheet" />
<script src="/rmarkdown-libs/kePrint/kePrint.js"></script>
<link href="/rmarkdown-libs/lightable/lightable.css" rel="stylesheet" />
<script src="/rmarkdown-libs/kePrint/kePrint.js"></script>

<link href="/rmarkdown-libs/lightable/lightable.css" rel="stylesheet" />

{{% aes-header %}}

Many class sessions have both interactive **Modules** courtesy of [Data Camp](https://www.datacamp.com/)[^1] and **Walkthroughs** created by me that you will need to work through ***after*** doing the readings and reviewing the corresponding content (if applicable). The lessons are a central part of the class and are focused on using the [tidyverse](https://www.tidyverse.org/) family of packages, though the approaches are certainly not the only ways to wrangle, clean, analyze, and visualize data in R.

## Advice

Carve out some time everyday to go through these. If you try to complete everything in one sitting, it will probably be overwhelming! However if you have familiarity with some modules, please feel free to work ahead.

## Grading

The ultimate point of Data Camp is to get you familiarized with an environment that you likely have never seen or been exposed to. While you should absolutely go through each module, there is certainly no expectation that you will get everything right. In fact, the points that you incur don’t mean anything as far as how you are assessed so please use hints as needed! As with any things data science, you’ll learn by doing. If you have a polar personality type as it pertains to work (i.e. primarily a perfectionist or mostly careless), then the modules will likely prove to be a challenge. The chance that you will be able to comprehend everything by going beyond your limit or conversely assuming it will just come to you is low so please work hard but also take breaks, swear[^2], and look on the Internet, ask peers or reach out for help. Your score is predicated on putting in a solid effort, rather than getting it perfect because thats not realistic when it comes to data.

## Data Camp Schedule

A *tentative* schedule is given below. The **Course** and **Chapter** names represent Data Camp titles[^3]:

### Required

The following modules are required and will count toward your final grade

<table class=" lightable-paper" style="font-family: &quot;Arial Narrow&quot;, arial, helvetica, sans-serif; margin-left: auto; margin-right: auto;">
<thead>
<tr>
<th style="text-align:center;color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
Link
</th>
<th style="text-align:center;color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
Due
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
<path d="M243.8 339.8C232.9 350.7 215.1 350.7 204.2 339.8L140.2 275.8C129.3 264.9 129.3 247.1 140.2 236.2C151.1 225.3 168.9 225.3 179.8 236.2L224 280.4L332.2 172.2C343.1 161.3 360.9 161.3 371.8 172.2C382.7 183.1 382.7 200.9 371.8 211.8L243.8 339.8zM512 256C512 397.4 397.4 512 256 512C114.6 512 0 397.4 0 256C0 114.6 114.6 0 256 0C397.4 0 512 114.6 512 256zM256 48C141.1 48 48 141.1 48 256C48 370.9 141.1 464 256 464C370.9 464 464 370.9 464 256C464 141.1 370.9 48 256 48z"></path>
</svg>
</td>
<td style="text-align:center;width: 5em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
<svg aria-hidden="true" role="img" viewbox="0 0 512 512" style="height:15px;width:15px;vertical-align:-0.125em;margin-left:auto;margin-right:auto;font-size:inherit;fill:#d9534f;overflow:visible;position:relative;">
<path d="M175 175C184.4 165.7 199.6 165.7 208.1 175L255.1 222.1L303 175C312.4 165.7 327.6 165.7 336.1 175C346.3 184.4 346.3 199.6 336.1 208.1L289.9 255.1L336.1 303C346.3 312.4 346.3 327.6 336.1 336.1C327.6 346.3 312.4 346.3 303 336.1L255.1 289.9L208.1 336.1C199.6 346.3 184.4 346.3 175 336.1C165.7 327.6 165.7 312.4 175 303L222.1 255.1L175 208.1C165.7 199.6 165.7 184.4 175 175V175zM512 256C512 397.4 397.4 512 256 512C114.6 512 0 397.4 0 256C0 114.6 114.6 0 256 0C397.4 0 512 114.6 512 256zM256 48C141.1 48 48 141.1 48 256C48 370.9 141.1 464 256 464C370.9 464 464 370.9 464 256C464 141.1 370.9 48 256 48z"></path>
</svg>
</td>
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
Introduction to R
</td>
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
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
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
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
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
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
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
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
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
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
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
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
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
</tr>
<tr>
<td style="text-align:center;width: 5em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
<a href="/modules/02-module/">Week 2</a>
</td>
<td style="text-align:center;width: 5em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
8/30/22
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
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
Introduction to the Tidyverse
</td>
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
Data wrangling
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
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
Data visualization
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
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
Grouping and summarizing
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
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
Types of visualizations
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
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
</tr>
<tr>
<td style="text-align:center;width: 5em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
<a href="/modules/03-module/">Week 3</a>
</td>
<td style="text-align:center;width: 5em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
9/6/22
</td>
<td style="text-align:center;width: 5em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
<svg aria-hidden="true" role="img" viewbox="0 0 512 512" style="height:15px;width:15px;vertical-align:-0.125em;margin-left:auto;margin-right:auto;font-size:inherit;fill:#428bca;overflow:visible;position:relative;">
<path d="M243.8 339.8C232.9 350.7 215.1 350.7 204.2 339.8L140.2 275.8C129.3 264.9 129.3 247.1 140.2 236.2C151.1 225.3 168.9 225.3 179.8 236.2L224 280.4L332.2 172.2C343.1 161.3 360.9 161.3 371.8 172.2C382.7 183.1 382.7 200.9 371.8 211.8L243.8 339.8zM512 256C512 397.4 397.4 512 256 512C114.6 512 0 397.4 0 256C0 114.6 114.6 0 256 0C397.4 0 512 114.6 512 256zM256 48C141.1 48 48 141.1 48 256C48 370.9 141.1 464 256 464C370.9 464 464 370.9 464 256C464 141.1 370.9 48 256 48z"></path>
</svg>
</td>
<td style="text-align:center;width: 5em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
<svg aria-hidden="true" role="img" viewbox="0 0 512 512" style="height:15px;width:15px;vertical-align:-0.125em;margin-left:auto;margin-right:auto;font-size:inherit;fill:#d9534f;overflow:visible;position:relative;">
<path d="M175 175C184.4 165.7 199.6 165.7 208.1 175L255.1 222.1L303 175C312.4 165.7 327.6 165.7 336.1 175C346.3 184.4 346.3 199.6 336.1 208.1L289.9 255.1L336.1 303C346.3 312.4 346.3 327.6 336.1 336.1C327.6 346.3 312.4 346.3 303 336.1L255.1 289.9L208.1 336.1C199.6 346.3 184.4 346.3 175 336.1C165.7 327.6 165.7 312.4 175 303L222.1 255.1L175 208.1C165.7 199.6 165.7 184.4 175 175V175zM512 256C512 397.4 397.4 512 256 512C114.6 512 0 397.4 0 256C0 114.6 114.6 0 256 0C397.4 0 512 114.6 512 256zM256 48C141.1 48 48 141.1 48 256C48 370.9 141.1 464 256 464C370.9 464 464 370.9 464 256C464 141.1 370.9 48 256 48z"></path>
</svg>
</td>
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
Introduction to Data Visualization with ggplot2
</td>
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
Explore your data
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
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
Tame your data
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
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
Tidy your data
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
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
Transform your data
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
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
</tr>
<tr>
<td style="text-align:center;width: 5em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
<a href="/modules/04-module/">Week 4</a>
</td>
<td style="text-align:center;width: 5em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
9/13/22
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
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
Data Manipulation with dplyr
</td>
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
Transforming Data with dplyr
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
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
Aggregating Data
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
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
Selecting and Transforming Data
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
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
Case Study: The babynames Dataset
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
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
</tr>
<tr>
<td style="text-align:center;width: 5em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
<a href="/modules/05-module/">Week 5</a>
</td>
<td style="text-align:center;width: 5em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
9/20/22
</td>
<td style="text-align:center;width: 5em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
<svg aria-hidden="true" role="img" viewbox="0 0 512 512" style="height:15px;width:15px;vertical-align:-0.125em;margin-left:auto;margin-right:auto;font-size:inherit;fill:#428bca;overflow:visible;position:relative;">
<path d="M243.8 339.8C232.9 350.7 215.1 350.7 204.2 339.8L140.2 275.8C129.3 264.9 129.3 247.1 140.2 236.2C151.1 225.3 168.9 225.3 179.8 236.2L224 280.4L332.2 172.2C343.1 161.3 360.9 161.3 371.8 172.2C382.7 183.1 382.7 200.9 371.8 211.8L243.8 339.8zM512 256C512 397.4 397.4 512 256 512C114.6 512 0 397.4 0 256C0 114.6 114.6 0 256 0C397.4 0 512 114.6 512 256zM256 48C141.1 48 48 141.1 48 256C48 370.9 141.1 464 256 464C370.9 464 464 370.9 464 256C464 141.1 370.9 48 256 48z"></path>
</svg>
</td>
<td style="text-align:center;width: 5em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
<svg aria-hidden="true" role="img" viewbox="0 0 512 512" style="height:15px;width:15px;vertical-align:-0.125em;margin-left:auto;margin-right:auto;font-size:inherit;fill:#d9534f;overflow:visible;position:relative;">
<path d="M175 175C184.4 165.7 199.6 165.7 208.1 175L255.1 222.1L303 175C312.4 165.7 327.6 165.7 336.1 175C346.3 184.4 346.3 199.6 336.1 208.1L289.9 255.1L336.1 303C346.3 312.4 346.3 327.6 336.1 336.1C327.6 346.3 312.4 346.3 303 336.1L255.1 289.9L208.1 336.1C199.6 346.3 184.4 346.3 175 336.1C165.7 327.6 165.7 312.4 175 303L222.1 255.1L175 208.1C165.7 199.6 165.7 184.4 175 175V175zM512 256C512 397.4 397.4 512 256 512C114.6 512 0 397.4 0 256C0 114.6 114.6 0 256 0C397.4 0 512 114.6 512 256zM256 48C141.1 48 48 141.1 48 256C48 370.9 141.1 464 256 464C370.9 464 464 370.9 464 256C464 141.1 370.9 48 256 48z"></path>
</svg>
</td>
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
Reshaping Data with tidyr
</td>
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
Tidy Data
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
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
From Wide to Long and Back
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
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
Expanding Data
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
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
Rectangling Data
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
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
</tr>
<tr>
<td style="text-align:center;width: 5em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
<a href="/modules/06-module/">Week 6</a>
</td>
<td style="text-align:center;width: 5em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
9/27/22
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
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
Joining Data with dplyr
</td>
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
Joining Tables
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
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
Left and Right Joins
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
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
Full, Semi, and Anti Joins
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
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
Case Study: Joins on Stack Overflow Data
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
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
</tr>
<tr>
<td style="text-align:center;width: 5em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
<a href="/modules/07-module/">Week 7</a>
</td>
<td style="text-align:center;width: 5em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
10/4/22
</td>
<td style="text-align:center;width: 5em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
<svg aria-hidden="true" role="img" viewbox="0 0 512 512" style="height:15px;width:15px;vertical-align:-0.125em;margin-left:auto;margin-right:auto;font-size:inherit;fill:#428bca;overflow:visible;position:relative;">
<path d="M243.8 339.8C232.9 350.7 215.1 350.7 204.2 339.8L140.2 275.8C129.3 264.9 129.3 247.1 140.2 236.2C151.1 225.3 168.9 225.3 179.8 236.2L224 280.4L332.2 172.2C343.1 161.3 360.9 161.3 371.8 172.2C382.7 183.1 382.7 200.9 371.8 211.8L243.8 339.8zM512 256C512 397.4 397.4 512 256 512C114.6 512 0 397.4 0 256C0 114.6 114.6 0 256 0C397.4 0 512 114.6 512 256zM256 48C141.1 48 48 141.1 48 256C48 370.9 141.1 464 256 464C370.9 464 464 370.9 464 256C464 141.1 370.9 48 256 48z"></path>
</svg>
</td>
<td style="text-align:center;width: 5em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
<svg aria-hidden="true" role="img" viewbox="0 0 512 512" style="height:15px;width:15px;vertical-align:-0.125em;margin-left:auto;margin-right:auto;font-size:inherit;fill:#d9534f;overflow:visible;position:relative;">
<path d="M175 175C184.4 165.7 199.6 165.7 208.1 175L255.1 222.1L303 175C312.4 165.7 327.6 165.7 336.1 175C346.3 184.4 346.3 199.6 336.1 208.1L289.9 255.1L336.1 303C346.3 312.4 346.3 327.6 336.1 336.1C327.6 346.3 312.4 346.3 303 336.1L255.1 289.9L208.1 336.1C199.6 346.3 184.4 346.3 175 336.1C165.7 327.6 165.7 312.4 175 303L222.1 255.1L175 208.1C165.7 199.6 165.7 184.4 175 175V175zM512 256C512 397.4 397.4 512 256 512C114.6 512 0 397.4 0 256C0 114.6 114.6 0 256 0C397.4 0 512 114.6 512 256zM256 48C141.1 48 48 141.1 48 256C48 370.9 141.1 464 256 464C370.9 464 464 370.9 464 256C464 141.1 370.9 48 256 48z"></path>
</svg>
</td>
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
Categorical Data in the Tidyverse
</td>
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
Introduction to Factor Variables
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
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
Manipulating Factor Variables
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
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
Creating Factor Variables
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
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
Case Study on Flight Etiquette
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
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
</tr>
<tr>
<td style="text-align:center;width: 5em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
<a href="/modules/08-module/">Week 8</a>
</td>
<td style="text-align:center;width: 5em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
10/11/22
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
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
Modeling with Data in the Tidyverse
</td>
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
Introduction to Modeling
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
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
Modeling with Basic Regression
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
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
Modeling with Multiple Regression
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
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
Model Assessment and Selection
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
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
</tr>
<tr>
<td style="text-align:center;width: 5em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
<a href="/modules/09-module/">Week 9</a>
</td>
<td style="text-align:center;width: 5em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
10/18/22
</td>
<td style="text-align:center;width: 5em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
<svg aria-hidden="true" role="img" viewbox="0 0 512 512" style="height:15px;width:15px;vertical-align:-0.125em;margin-left:auto;margin-right:auto;font-size:inherit;fill:#428bca;overflow:visible;position:relative;">
<path d="M243.8 339.8C232.9 350.7 215.1 350.7 204.2 339.8L140.2 275.8C129.3 264.9 129.3 247.1 140.2 236.2C151.1 225.3 168.9 225.3 179.8 236.2L224 280.4L332.2 172.2C343.1 161.3 360.9 161.3 371.8 172.2C382.7 183.1 382.7 200.9 371.8 211.8L243.8 339.8zM512 256C512 397.4 397.4 512 256 512C114.6 512 0 397.4 0 256C0 114.6 114.6 0 256 0C397.4 0 512 114.6 512 256zM256 48C141.1 48 48 141.1 48 256C48 370.9 141.1 464 256 464C370.9 464 464 370.9 464 256C464 141.1 370.9 48 256 48z"></path>
</svg>
</td>
<td style="text-align:center;width: 5em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
<svg aria-hidden="true" role="img" viewbox="0 0 512 512" style="height:15px;width:15px;vertical-align:-0.125em;margin-left:auto;margin-right:auto;font-size:inherit;fill:#d9534f;overflow:visible;position:relative;">
<path d="M175 175C184.4 165.7 199.6 165.7 208.1 175L255.1 222.1L303 175C312.4 165.7 327.6 165.7 336.1 175C346.3 184.4 346.3 199.6 336.1 208.1L289.9 255.1L336.1 303C346.3 312.4 346.3 327.6 336.1 336.1C327.6 346.3 312.4 346.3 303 336.1L255.1 289.9L208.1 336.1C199.6 346.3 184.4 346.3 175 336.1C165.7 327.6 165.7 312.4 175 303L222.1 255.1L175 208.1C165.7 199.6 165.7 184.4 175 175V175zM512 256C512 397.4 397.4 512 256 512C114.6 512 0 397.4 0 256C0 114.6 114.6 0 256 0C397.4 0 512 114.6 512 256zM256 48C141.1 48 48 141.1 48 256C48 370.9 141.1 464 256 464C370.9 464 464 370.9 464 256C464 141.1 370.9 48 256 48z"></path>
</svg>
</td>
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
Fundamentals of Bayesian Data Analysis in R
</td>
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
What is Bayesian Data Analysis?
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
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
How does Bayesian inference work?
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
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
Why use Bayesian Data Analysis?
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
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
Bayesian inference with Bayes’ theorem
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
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
</tr>
<tr>
<td style="text-align:center;width: 5em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
<a href="/modules/10-module/">Week 10</a>
</td>
<td style="text-align:center;width: 5em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
10/25/22
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
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
Survey and Measurement Development in R
</td>
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
Preparing to analyze survey data
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
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
Exploratory factor analysis & survey development
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
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
Confirmatory factor analysis & construct validation
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
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
Criterion validity & replication
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
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
</tr>
<tr>
<td style="text-align:center;width: 5em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
<a href="/modules/11-module/">Week 11</a>
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
<svg aria-hidden="true" role="img" viewbox="0 0 512 512" style="height:15px;width:15px;vertical-align:-0.125em;margin-left:auto;margin-right:auto;font-size:inherit;fill:#d9534f;overflow:visible;position:relative;">
<path d="M175 175C184.4 165.7 199.6 165.7 208.1 175L255.1 222.1L303 175C312.4 165.7 327.6 165.7 336.1 175C346.3 184.4 346.3 199.6 336.1 208.1L289.9 255.1L336.1 303C346.3 312.4 346.3 327.6 336.1 336.1C327.6 346.3 312.4 346.3 303 336.1L255.1 289.9L208.1 336.1C199.6 346.3 184.4 346.3 175 336.1C165.7 327.6 165.7 312.4 175 303L222.1 255.1L175 208.1C165.7 199.6 165.7 184.4 175 175V175zM512 256C512 397.4 397.4 512 256 512C114.6 512 0 397.4 0 256C0 114.6 114.6 0 256 0C397.4 0 512 114.6 512 256zM256 48C141.1 48 48 141.1 48 256C48 370.9 141.1 464 256 464C370.9 464 464 370.9 464 256C464 141.1 370.9 48 256 48z"></path>
</svg>
</td>
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
Analyzing Survey Data in R
</td>
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
Introduction to survey data
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
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
Exploring categorical data
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
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
Exploring quantitative data
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
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
Modeling quantitative data
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
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
</tr>
<tr>
<td style="text-align:center;width: 5em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
<a href="/modules/12-module/">Week 12</a>
</td>
<td style="text-align:center;width: 5em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
11/8/22
</td>
<td style="text-align:center;width: 5em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
<svg aria-hidden="true" role="img" viewbox="0 0 512 512" style="height:15px;width:15px;vertical-align:-0.125em;margin-left:auto;margin-right:auto;font-size:inherit;fill:#428bca;overflow:visible;position:relative;">
<path d="M243.8 339.8C232.9 350.7 215.1 350.7 204.2 339.8L140.2 275.8C129.3 264.9 129.3 247.1 140.2 236.2C151.1 225.3 168.9 225.3 179.8 236.2L224 280.4L332.2 172.2C343.1 161.3 360.9 161.3 371.8 172.2C382.7 183.1 382.7 200.9 371.8 211.8L243.8 339.8zM512 256C512 397.4 397.4 512 256 512C114.6 512 0 397.4 0 256C0 114.6 114.6 0 256 0C397.4 0 512 114.6 512 256zM256 48C141.1 48 48 141.1 48 256C48 370.9 141.1 464 256 464C370.9 464 464 370.9 464 256C464 141.1 370.9 48 256 48z"></path>
</svg>
</td>
<td style="text-align:center;width: 5em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
<svg aria-hidden="true" role="img" viewbox="0 0 512 512" style="height:15px;width:15px;vertical-align:-0.125em;margin-left:auto;margin-right:auto;font-size:inherit;fill:#d9534f;overflow:visible;position:relative;">
<path d="M175 175C184.4 165.7 199.6 165.7 208.1 175L255.1 222.1L303 175C312.4 165.7 327.6 165.7 336.1 175C346.3 184.4 346.3 199.6 336.1 208.1L289.9 255.1L336.1 303C346.3 312.4 346.3 327.6 336.1 336.1C327.6 346.3 312.4 346.3 303 336.1L255.1 289.9L208.1 336.1C199.6 346.3 184.4 346.3 175 336.1C165.7 327.6 165.7 312.4 175 303L222.1 255.1L175 208.1C165.7 199.6 165.7 184.4 175 175V175zM512 256C512 397.4 397.4 512 256 512C114.6 512 0 397.4 0 256C0 114.6 114.6 0 256 0C397.4 0 512 114.6 512 256zM256 48C141.1 48 48 141.1 48 256C48 370.9 141.1 464 256 464C370.9 464 464 370.9 464 256C464 141.1 370.9 48 256 48z"></path>
</svg>
</td>
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
Introduction to Text Analysis in R
</td>
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
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
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
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
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
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
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
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
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
</tr>
<tr>
<td style="text-align:center;width: 5em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
<a href="/modules/13-module/">Week 13</a>
</td>
<td style="text-align:center;width: 5em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
11/8/22
</td>
<td style="text-align:center;width: 5em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
<svg aria-hidden="true" role="img" viewbox="0 0 512 512" style="height:15px;width:15px;vertical-align:-0.125em;margin-left:auto;margin-right:auto;font-size:inherit;fill:#428bca;overflow:visible;position:relative;">
<path d="M243.8 339.8C232.9 350.7 215.1 350.7 204.2 339.8L140.2 275.8C129.3 264.9 129.3 247.1 140.2 236.2C151.1 225.3 168.9 225.3 179.8 236.2L224 280.4L332.2 172.2C343.1 161.3 360.9 161.3 371.8 172.2C382.7 183.1 382.7 200.9 371.8 211.8L243.8 339.8zM512 256C512 397.4 397.4 512 256 512C114.6 512 0 397.4 0 256C0 114.6 114.6 0 256 0C397.4 0 512 114.6 512 256zM256 48C141.1 48 48 141.1 48 256C48 370.9 141.1 464 256 464C370.9 464 464 370.9 464 256C464 141.1 370.9 48 256 48z"></path>
</svg>
</td>
<td style="text-align:center;width: 5em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
<svg aria-hidden="true" role="img" viewbox="0 0 512 512" style="height:15px;width:15px;vertical-align:-0.125em;margin-left:auto;margin-right:auto;font-size:inherit;fill:#d9534f;overflow:visible;position:relative;">
<path d="M175 175C184.4 165.7 199.6 165.7 208.1 175L255.1 222.1L303 175C312.4 165.7 327.6 165.7 336.1 175C346.3 184.4 346.3 199.6 336.1 208.1L289.9 255.1L336.1 303C346.3 312.4 346.3 327.6 336.1 336.1C327.6 346.3 312.4 346.3 303 336.1L255.1 289.9L208.1 336.1C199.6 346.3 184.4 346.3 175 336.1C165.7 327.6 165.7 312.4 175 303L222.1 255.1L175 208.1C165.7 199.6 165.7 184.4 175 175V175zM512 256C512 397.4 397.4 512 256 512C114.6 512 0 397.4 0 256C0 114.6 114.6 0 256 0C397.4 0 512 114.6 512 256zM256 48C141.1 48 48 141.1 48 256C48 370.9 141.1 464 256 464C370.9 464 464 370.9 464 256C464 141.1 370.9 48 256 48z"></path>
</svg>
</td>
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
Text Mining with Bag-of-Words in R
</td>
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
Jumping into text mining with bag of words
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
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
Word clouds and more interesting visuals
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
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
Adding to your tm skills
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
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
Battle of the tech giants for talent
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
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
</tr>
<tr>
<td style="text-align:center;width: 5em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
<a href="/modules/14-module/">Week 14</a>
</td>
<td style="text-align:center;width: 5em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
11/15/22
</td>
<td style="text-align:center;width: 5em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
<svg aria-hidden="true" role="img" viewbox="0 0 512 512" style="height:15px;width:15px;vertical-align:-0.125em;margin-left:auto;margin-right:auto;font-size:inherit;fill:#428bca;overflow:visible;position:relative;">
<path d="M243.8 339.8C232.9 350.7 215.1 350.7 204.2 339.8L140.2 275.8C129.3 264.9 129.3 247.1 140.2 236.2C151.1 225.3 168.9 225.3 179.8 236.2L224 280.4L332.2 172.2C343.1 161.3 360.9 161.3 371.8 172.2C382.7 183.1 382.7 200.9 371.8 211.8L243.8 339.8zM512 256C512 397.4 397.4 512 256 512C114.6 512 0 397.4 0 256C0 114.6 114.6 0 256 0C397.4 0 512 114.6 512 256zM256 48C141.1 48 48 141.1 48 256C48 370.9 141.1 464 256 464C370.9 464 464 370.9 464 256C464 141.1 370.9 48 256 48z"></path>
</svg>
</td>
<td style="text-align:center;width: 5em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
<svg aria-hidden="true" role="img" viewbox="0 0 512 512" style="height:15px;width:15px;vertical-align:-0.125em;margin-left:auto;margin-right:auto;font-size:inherit;fill:#d9534f;overflow:visible;position:relative;">
<path d="M175 175C184.4 165.7 199.6 165.7 208.1 175L255.1 222.1L303 175C312.4 165.7 327.6 165.7 336.1 175C346.3 184.4 346.3 199.6 336.1 208.1L289.9 255.1L336.1 303C346.3 312.4 346.3 327.6 336.1 336.1C327.6 346.3 312.4 346.3 303 336.1L255.1 289.9L208.1 336.1C199.6 346.3 184.4 346.3 175 336.1C165.7 327.6 165.7 312.4 175 303L222.1 255.1L175 208.1C165.7 199.6 165.7 184.4 175 175V175zM512 256C512 397.4 397.4 512 256 512C114.6 512 0 397.4 0 256C0 114.6 114.6 0 256 0C397.4 0 512 114.6 512 256zM256 48C141.1 48 48 141.1 48 256C48 370.9 141.1 464 256 464C370.9 464 464 370.9 464 256C464 141.1 370.9 48 256 48z"></path>
</svg>
</td>
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
Sentiment Analysis in R
</td>
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
Fast & dirty: Polarity scoring
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
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
Sentiment analysis the tidytext way
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
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
Visualizing sentiment
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
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
Case study: Airbnb reviews
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
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
</tr>
</tbody>
</table>

### Recommended

The following modules are optional but highly recommended

<center>
<table class=" lightable-paper" style="font-family: &quot;Arial Narrow&quot;, arial, helvetica, sans-serif; margin-left: auto; margin-right: auto;">
<thead>
<tr>
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
<svg aria-hidden="true" role="img" viewbox="0 0 512 512" style="height:15px;width:15px;vertical-align:-0.125em;margin-left:auto;margin-right:auto;font-size:inherit;fill:#d9534f;overflow:visible;position:relative;">
<path d="M175 175C184.4 165.7 199.6 165.7 208.1 175L255.1 222.1L303 175C312.4 165.7 327.6 165.7 336.1 175C346.3 184.4 346.3 199.6 336.1 208.1L289.9 255.1L336.1 303C346.3 312.4 346.3 327.6 336.1 336.1C327.6 346.3 312.4 346.3 303 336.1L255.1 289.9L208.1 336.1C199.6 346.3 184.4 346.3 175 336.1C165.7 327.6 165.7 312.4 175 303L222.1 255.1L175 208.1C165.7 199.6 165.7 184.4 175 175V175zM512 256C512 397.4 397.4 512 256 512C114.6 512 0 397.4 0 256C0 114.6 114.6 0 256 0C397.4 0 512 114.6 512 256zM256 48C141.1 48 48 141.1 48 256C48 370.9 141.1 464 256 464C370.9 464 464 370.9 464 256C464 141.1 370.9 48 256 48z"></path>
</svg>
</td>
<td style="text-align:center;width: 5em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
<svg aria-hidden="true" role="img" viewbox="0 0 512 512" style="height:15px;width:15px;vertical-align:-0.125em;margin-left:auto;margin-right:auto;font-size:inherit;fill:#d9534f;overflow:visible;position:relative;">
<path d="M175 175C184.4 165.7 199.6 165.7 208.1 175L255.1 222.1L303 175C312.4 165.7 327.6 165.7 336.1 175C346.3 184.4 346.3 199.6 336.1 208.1L289.9 255.1L336.1 303C346.3 312.4 346.3 327.6 336.1 336.1C327.6 346.3 312.4 346.3 303 336.1L255.1 289.9L208.1 336.1C199.6 346.3 184.4 346.3 175 336.1C165.7 327.6 165.7 312.4 175 303L222.1 255.1L175 208.1C165.7 199.6 165.7 184.4 175 175V175zM512 256C512 397.4 397.4 512 256 512C114.6 512 0 397.4 0 256C0 114.6 114.6 0 256 0C397.4 0 512 114.6 512 256zM256 48C141.1 48 48 141.1 48 256C48 370.9 141.1 464 256 464C370.9 464 464 370.9 464 256C464 141.1 370.9 48 256 48z"></path>
</svg>
</td>
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
Communicating with Data in the Tidyverse
</td>
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
Custom ggplot2 themes
</td>
</tr>
<tr>
<td style="text-align:center;width: 5em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:center;width: 5em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
Creating a custom and unique visualization
</td>
</tr>
<tr>
<td style="text-align:center;width: 5em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:center;width: 5em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
Introduction to Rmarkdown
</td>
</tr>
<tr>
<td style="text-align:center;width: 5em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:center;width: 5em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
Customizing your RMarkdown report
</td>
</tr>
<tr>
<td style="text-align:center;width: 5em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:center;width: 5em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
</tr>
<tr>
<td style="text-align:center;width: 5em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
<svg aria-hidden="true" role="img" viewbox="0 0 512 512" style="height:15px;width:15px;vertical-align:-0.125em;margin-left:auto;margin-right:auto;font-size:inherit;fill:#d9534f;overflow:visible;position:relative;">
<path d="M175 175C184.4 165.7 199.6 165.7 208.1 175L255.1 222.1L303 175C312.4 165.7 327.6 165.7 336.1 175C346.3 184.4 346.3 199.6 336.1 208.1L289.9 255.1L336.1 303C346.3 312.4 346.3 327.6 336.1 336.1C327.6 346.3 312.4 346.3 303 336.1L255.1 289.9L208.1 336.1C199.6 346.3 184.4 346.3 175 336.1C165.7 327.6 165.7 312.4 175 303L222.1 255.1L175 208.1C165.7 199.6 165.7 184.4 175 175V175zM512 256C512 397.4 397.4 512 256 512C114.6 512 0 397.4 0 256C0 114.6 114.6 0 256 0C397.4 0 512 114.6 512 256zM256 48C141.1 48 48 141.1 48 256C48 370.9 141.1 464 256 464C370.9 464 464 370.9 464 256C464 141.1 370.9 48 256 48z"></path>
</svg>
</td>
<td style="text-align:center;width: 5em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
<svg aria-hidden="true" role="img" viewbox="0 0 512 512" style="height:15px;width:15px;vertical-align:-0.125em;margin-left:auto;margin-right:auto;font-size:inherit;fill:#d9534f;overflow:visible;position:relative;">
<path d="M175 175C184.4 165.7 199.6 165.7 208.1 175L255.1 222.1L303 175C312.4 165.7 327.6 165.7 336.1 175C346.3 184.4 346.3 199.6 336.1 208.1L289.9 255.1L336.1 303C346.3 312.4 346.3 327.6 336.1 336.1C327.6 346.3 312.4 346.3 303 336.1L255.1 289.9L208.1 336.1C199.6 346.3 184.4 346.3 175 336.1C165.7 327.6 165.7 312.4 175 303L222.1 255.1L175 208.1C165.7 199.6 165.7 184.4 175 175V175zM512 256C512 397.4 397.4 512 256 512C114.6 512 0 397.4 0 256C0 114.6 114.6 0 256 0C397.4 0 512 114.6 512 256zM256 48C141.1 48 48 141.1 48 256C48 370.9 141.1 464 256 464C370.9 464 464 370.9 464 256C464 141.1 370.9 48 256 48z"></path>
</svg>
</td>
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
Dealing with Missing Data in R
</td>
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
Why care about missing data?
</td>
</tr>
<tr>
<td style="text-align:center;width: 5em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:center;width: 5em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
Wrangling and tidying up missing values
</td>
</tr>
<tr>
<td style="text-align:center;width: 5em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:center;width: 5em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
Testing missing relationships
</td>
</tr>
<tr>
<td style="text-align:center;width: 5em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:center;width: 5em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
Connecting the dots (Imputation)
</td>
</tr>
<tr>
<td style="text-align:center;width: 5em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:center;width: 5em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
</tr>
<tr>
<td style="text-align:center;width: 5em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
<svg aria-hidden="true" role="img" viewbox="0 0 512 512" style="height:15px;width:15px;vertical-align:-0.125em;margin-left:auto;margin-right:auto;font-size:inherit;fill:#d9534f;overflow:visible;position:relative;">
<path d="M175 175C184.4 165.7 199.6 165.7 208.1 175L255.1 222.1L303 175C312.4 165.7 327.6 165.7 336.1 175C346.3 184.4 346.3 199.6 336.1 208.1L289.9 255.1L336.1 303C346.3 312.4 346.3 327.6 336.1 336.1C327.6 346.3 312.4 346.3 303 336.1L255.1 289.9L208.1 336.1C199.6 346.3 184.4 346.3 175 336.1C165.7 327.6 165.7 312.4 175 303L222.1 255.1L175 208.1C165.7 199.6 165.7 184.4 175 175V175zM512 256C512 397.4 397.4 512 256 512C114.6 512 0 397.4 0 256C0 114.6 114.6 0 256 0C397.4 0 512 114.6 512 256zM256 48C141.1 48 48 141.1 48 256C48 370.9 141.1 464 256 464C370.9 464 464 370.9 464 256C464 141.1 370.9 48 256 48z"></path>
</svg>
</td>
<td style="text-align:center;width: 5em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
<svg aria-hidden="true" role="img" viewbox="0 0 512 512" style="height:15px;width:15px;vertical-align:-0.125em;margin-left:auto;margin-right:auto;font-size:inherit;fill:#d9534f;overflow:visible;position:relative;">
<path d="M175 175C184.4 165.7 199.6 165.7 208.1 175L255.1 222.1L303 175C312.4 165.7 327.6 165.7 336.1 175C346.3 184.4 346.3 199.6 336.1 208.1L289.9 255.1L336.1 303C346.3 312.4 346.3 327.6 336.1 336.1C327.6 346.3 312.4 346.3 303 336.1L255.1 289.9L208.1 336.1C199.6 346.3 184.4 346.3 175 336.1C165.7 327.6 165.7 312.4 175 303L222.1 255.1L175 208.1C165.7 199.6 165.7 184.4 175 175V175zM512 256C512 397.4 397.4 512 256 512C114.6 512 0 397.4 0 256C0 114.6 114.6 0 256 0C397.4 0 512 114.6 512 256zM256 48C141.1 48 48 141.1 48 256C48 370.9 141.1 464 256 464C370.9 464 464 370.9 464 256C464 141.1 370.9 48 256 48z"></path>
</svg>
</td>
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
Intermediate R
</td>
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
Conditionals and Control Flow
</td>
</tr>
<tr>
<td style="text-align:center;width: 5em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:center;width: 5em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
Loops
</td>
</tr>
<tr>
<td style="text-align:center;width: 5em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:center;width: 5em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
Functions
</td>
</tr>
<tr>
<td style="text-align:center;width: 5em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:center;width: 5em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
The apply family
</td>
</tr>
<tr>
<td style="text-align:center;width: 5em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:center;width: 5em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
Utilities
</td>
</tr>
<tr>
<td style="text-align:center;width: 5em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:center;width: 5em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
</tr>
<tr>
<td style="text-align:center;width: 5em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
<svg aria-hidden="true" role="img" viewbox="0 0 512 512" style="height:15px;width:15px;vertical-align:-0.125em;margin-left:auto;margin-right:auto;font-size:inherit;fill:#d9534f;overflow:visible;position:relative;">
<path d="M175 175C184.4 165.7 199.6 165.7 208.1 175L255.1 222.1L303 175C312.4 165.7 327.6 165.7 336.1 175C346.3 184.4 346.3 199.6 336.1 208.1L289.9 255.1L336.1 303C346.3 312.4 346.3 327.6 336.1 336.1C327.6 346.3 312.4 346.3 303 336.1L255.1 289.9L208.1 336.1C199.6 346.3 184.4 346.3 175 336.1C165.7 327.6 165.7 312.4 175 303L222.1 255.1L175 208.1C165.7 199.6 165.7 184.4 175 175V175zM512 256C512 397.4 397.4 512 256 512C114.6 512 0 397.4 0 256C0 114.6 114.6 0 256 0C397.4 0 512 114.6 512 256zM256 48C141.1 48 48 141.1 48 256C48 370.9 141.1 464 256 464C370.9 464 464 370.9 464 256C464 141.1 370.9 48 256 48z"></path>
</svg>
</td>
<td style="text-align:center;width: 5em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
<svg aria-hidden="true" role="img" viewbox="0 0 512 512" style="height:15px;width:15px;vertical-align:-0.125em;margin-left:auto;margin-right:auto;font-size:inherit;fill:#d9534f;overflow:visible;position:relative;">
<path d="M175 175C184.4 165.7 199.6 165.7 208.1 175L255.1 222.1L303 175C312.4 165.7 327.6 165.7 336.1 175C346.3 184.4 346.3 199.6 336.1 208.1L289.9 255.1L336.1 303C346.3 312.4 346.3 327.6 336.1 336.1C327.6 346.3 312.4 346.3 303 336.1L255.1 289.9L208.1 336.1C199.6 346.3 184.4 346.3 175 336.1C165.7 327.6 165.7 312.4 175 303L222.1 255.1L175 208.1C165.7 199.6 165.7 184.4 175 175V175zM512 256C512 397.4 397.4 512 256 512C114.6 512 0 397.4 0 256C0 114.6 114.6 0 256 0C397.4 0 512 114.6 512 256zM256 48C141.1 48 48 141.1 48 256C48 370.9 141.1 464 256 464C370.9 464 464 370.9 464 256C464 141.1 370.9 48 256 48z"></path>
</svg>
</td>
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
String Manipulation with stringr in R
</td>
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
String basics
</td>
</tr>
<tr>
<td style="text-align:center;width: 5em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:center;width: 5em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
Introduction to stringr
</td>
</tr>
<tr>
<td style="text-align:center;width: 5em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:center;width: 5em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
Pattern matching with regular expressions
</td>
</tr>
<tr>
<td style="text-align:center;width: 5em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:center;width: 5em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
More advanced matching and manipulation
</td>
</tr>
<tr>
<td style="text-align:center;width: 5em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:center;width: 5em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
Case studies
</td>
</tr>
</tbody>
</table>
</center>

### Extra Credit

The following modules are optional and may count as extra credit contingent on the successful completion of the data camp course and corresponding assessment to be submitted via eCampus. Please note that each subsequent module is dependent on the previous one.

<center>
<table class=" lightable-paper" style="font-family: &quot;Arial Narrow&quot;, arial, helvetica, sans-serif; margin-left: auto; margin-right: auto;">
<thead>
<tr>
<th style="text-align:center;color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
Due
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
12/9/22
</td>
<td style="text-align:center;width: 5em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
<svg aria-hidden="true" role="img" viewbox="0 0 512 512" style="height:15px;width:15px;vertical-align:-0.125em;margin-left:auto;margin-right:auto;font-size:inherit;fill:#d9534f;overflow:visible;position:relative;">
<path d="M175 175C184.4 165.7 199.6 165.7 208.1 175L255.1 222.1L303 175C312.4 165.7 327.6 165.7 336.1 175C346.3 184.4 346.3 199.6 336.1 208.1L289.9 255.1L336.1 303C346.3 312.4 346.3 327.6 336.1 336.1C327.6 346.3 312.4 346.3 303 336.1L255.1 289.9L208.1 336.1C199.6 346.3 184.4 346.3 175 336.1C165.7 327.6 165.7 312.4 175 303L222.1 255.1L175 208.1C165.7 199.6 165.7 184.4 175 175V175zM512 256C512 397.4 397.4 512 256 512C114.6 512 0 397.4 0 256C0 114.6 114.6 0 256 0C397.4 0 512 114.6 512 256zM256 48C141.1 48 48 141.1 48 256C48 370.9 141.1 464 256 464C370.9 464 464 370.9 464 256C464 141.1 370.9 48 256 48z"></path>
</svg>
</td>
<td style="text-align:center;width: 5em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
<svg aria-hidden="true" role="img" viewbox="0 0 512 512" style="height:15px;width:15px;vertical-align:-0.125em;margin-left:auto;margin-right:auto;font-size:inherit;fill:#428bca;overflow:visible;position:relative;">
<path d="M243.8 339.8C232.9 350.7 215.1 350.7 204.2 339.8L140.2 275.8C129.3 264.9 129.3 247.1 140.2 236.2C151.1 225.3 168.9 225.3 179.8 236.2L224 280.4L332.2 172.2C343.1 161.3 360.9 161.3 371.8 172.2C382.7 183.1 382.7 200.9 371.8 211.8L243.8 339.8zM512 256C512 397.4 397.4 512 256 512C114.6 512 0 397.4 0 256C0 114.6 114.6 0 256 0C397.4 0 512 114.6 512 256zM256 48C141.1 48 48 141.1 48 256C48 370.9 141.1 464 256 464C370.9 464 464 370.9 464 256C464 141.1 370.9 48 256 48z"></path>
</svg>
</td>
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
Analyzing US Census Data in R
</td>
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
Census data in R with tidycensus
</td>
</tr>
<tr>
<td style="text-align:center;width: 5em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:center;width: 5em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:center;width: 5em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
Wrangling US Census Data
</td>
</tr>
<tr>
<td style="text-align:center;width: 5em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:center;width: 5em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:center;width: 5em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
US Census geographic data in R
</td>
</tr>
<tr>
<td style="text-align:center;width: 5em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:center;width: 5em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:center;width: 5em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
Mapping US Census Data
</td>
</tr>
<tr>
<td style="text-align:center;width: 5em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:center;width: 5em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:center;width: 5em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
</tr>
<tr>
<td style="text-align:center;width: 5em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
12/9/22
</td>
<td style="text-align:center;width: 5em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
<svg aria-hidden="true" role="img" viewbox="0 0 512 512" style="height:15px;width:15px;vertical-align:-0.125em;margin-left:auto;margin-right:auto;font-size:inherit;fill:#d9534f;overflow:visible;position:relative;">
<path d="M175 175C184.4 165.7 199.6 165.7 208.1 175L255.1 222.1L303 175C312.4 165.7 327.6 165.7 336.1 175C346.3 184.4 346.3 199.6 336.1 208.1L289.9 255.1L336.1 303C346.3 312.4 346.3 327.6 336.1 336.1C327.6 346.3 312.4 346.3 303 336.1L255.1 289.9L208.1 336.1C199.6 346.3 184.4 346.3 175 336.1C165.7 327.6 165.7 312.4 175 303L222.1 255.1L175 208.1C165.7 199.6 165.7 184.4 175 175V175zM512 256C512 397.4 397.4 512 256 512C114.6 512 0 397.4 0 256C0 114.6 114.6 0 256 0C397.4 0 512 114.6 512 256zM256 48C141.1 48 48 141.1 48 256C48 370.9 141.1 464 256 464C370.9 464 464 370.9 464 256C464 141.1 370.9 48 256 48z"></path>
</svg>
</td>
<td style="text-align:center;width: 5em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
<svg aria-hidden="true" role="img" viewbox="0 0 512 512" style="height:15px;width:15px;vertical-align:-0.125em;margin-left:auto;margin-right:auto;font-size:inherit;fill:#428bca;overflow:visible;position:relative;">
<path d="M243.8 339.8C232.9 350.7 215.1 350.7 204.2 339.8L140.2 275.8C129.3 264.9 129.3 247.1 140.2 236.2C151.1 225.3 168.9 225.3 179.8 236.2L224 280.4L332.2 172.2C343.1 161.3 360.9 161.3 371.8 172.2C382.7 183.1 382.7 200.9 371.8 211.8L243.8 339.8zM512 256C512 397.4 397.4 512 256 512C114.6 512 0 397.4 0 256C0 114.6 114.6 0 256 0C397.4 0 512 114.6 512 256zM256 48C141.1 48 48 141.1 48 256C48 370.9 141.1 464 256 464C370.9 464 464 370.9 464 256C464 141.1 370.9 48 256 48z"></path>
</svg>
</td>
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
Intermediate Data Visualization with ggplot2
</td>
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
Statistics
</td>
</tr>
<tr>
<td style="text-align:center;width: 5em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:center;width: 5em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:center;width: 5em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
Coordinates
</td>
</tr>
<tr>
<td style="text-align:center;width: 5em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:center;width: 5em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:center;width: 5em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
Facets
</td>
</tr>
<tr>
<td style="text-align:center;width: 5em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:center;width: 5em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:center;width: 5em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
Best Practices
</td>
</tr>
<tr>
<td style="text-align:center;width: 5em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:center;width: 5em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:center;width: 5em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
</tr>
<tr>
<td style="text-align:center;width: 5em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
12/9/22
</td>
<td style="text-align:center;width: 5em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
<svg aria-hidden="true" role="img" viewbox="0 0 512 512" style="height:15px;width:15px;vertical-align:-0.125em;margin-left:auto;margin-right:auto;font-size:inherit;fill:#d9534f;overflow:visible;position:relative;">
<path d="M175 175C184.4 165.7 199.6 165.7 208.1 175L255.1 222.1L303 175C312.4 165.7 327.6 165.7 336.1 175C346.3 184.4 346.3 199.6 336.1 208.1L289.9 255.1L336.1 303C346.3 312.4 346.3 327.6 336.1 336.1C327.6 346.3 312.4 346.3 303 336.1L255.1 289.9L208.1 336.1C199.6 346.3 184.4 346.3 175 336.1C165.7 327.6 165.7 312.4 175 303L222.1 255.1L175 208.1C165.7 199.6 165.7 184.4 175 175V175zM512 256C512 397.4 397.4 512 256 512C114.6 512 0 397.4 0 256C0 114.6 114.6 0 256 0C397.4 0 512 114.6 512 256zM256 48C141.1 48 48 141.1 48 256C48 370.9 141.1 464 256 464C370.9 464 464 370.9 464 256C464 141.1 370.9 48 256 48z"></path>
</svg>
</td>
<td style="text-align:center;width: 5em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
<svg aria-hidden="true" role="img" viewbox="0 0 512 512" style="height:15px;width:15px;vertical-align:-0.125em;margin-left:auto;margin-right:auto;font-size:inherit;fill:#428bca;overflow:visible;position:relative;">
<path d="M243.8 339.8C232.9 350.7 215.1 350.7 204.2 339.8L140.2 275.8C129.3 264.9 129.3 247.1 140.2 236.2C151.1 225.3 168.9 225.3 179.8 236.2L224 280.4L332.2 172.2C343.1 161.3 360.9 161.3 371.8 172.2C382.7 183.1 382.7 200.9 371.8 211.8L243.8 339.8zM512 256C512 397.4 397.4 512 256 512C114.6 512 0 397.4 0 256C0 114.6 114.6 0 256 0C397.4 0 512 114.6 512 256zM256 48C141.1 48 48 141.1 48 256C48 370.9 141.1 464 256 464C370.9 464 464 370.9 464 256C464 141.1 370.9 48 256 48z"></path>
</svg>
</td>
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
Introduction to Natural Language Processing in R
</td>
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
True Fundamentals
</td>
</tr>
<tr>
<td style="text-align:center;width: 5em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:center;width: 5em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:center;width: 5em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
Representations of Text
</td>
</tr>
<tr>
<td style="text-align:center;width: 5em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:center;width: 5em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:center;width: 5em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
Applications: Classification and Topic Modeling
</td>
</tr>
<tr>
<td style="text-align:center;width: 5em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:center;width: 5em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:center;width: 5em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
Advanced Techniques
</td>
</tr>
<tr>
<td style="text-align:center;width: 5em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:center;width: 5em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:center;width: 5em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
</tr>
<tr>
<td style="text-align:center;width: 5em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
12/9/22
</td>
<td style="text-align:center;width: 5em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
<svg aria-hidden="true" role="img" viewbox="0 0 512 512" style="height:15px;width:15px;vertical-align:-0.125em;margin-left:auto;margin-right:auto;font-size:inherit;fill:#d9534f;overflow:visible;position:relative;">
<path d="M175 175C184.4 165.7 199.6 165.7 208.1 175L255.1 222.1L303 175C312.4 165.7 327.6 165.7 336.1 175C346.3 184.4 346.3 199.6 336.1 208.1L289.9 255.1L336.1 303C346.3 312.4 346.3 327.6 336.1 336.1C327.6 346.3 312.4 346.3 303 336.1L255.1 289.9L208.1 336.1C199.6 346.3 184.4 346.3 175 336.1C165.7 327.6 165.7 312.4 175 303L222.1 255.1L175 208.1C165.7 199.6 165.7 184.4 175 175V175zM512 256C512 397.4 397.4 512 256 512C114.6 512 0 397.4 0 256C0 114.6 114.6 0 256 0C397.4 0 512 114.6 512 256zM256 48C141.1 48 48 141.1 48 256C48 370.9 141.1 464 256 464C370.9 464 464 370.9 464 256C464 141.1 370.9 48 256 48z"></path>
</svg>
</td>
<td style="text-align:center;width: 5em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
<svg aria-hidden="true" role="img" viewbox="0 0 512 512" style="height:15px;width:15px;vertical-align:-0.125em;margin-left:auto;margin-right:auto;font-size:inherit;fill:#428bca;overflow:visible;position:relative;">
<path d="M243.8 339.8C232.9 350.7 215.1 350.7 204.2 339.8L140.2 275.8C129.3 264.9 129.3 247.1 140.2 236.2C151.1 225.3 168.9 225.3 179.8 236.2L224 280.4L332.2 172.2C343.1 161.3 360.9 161.3 371.8 172.2C382.7 183.1 382.7 200.9 371.8 211.8L243.8 339.8zM512 256C512 397.4 397.4 512 256 512C114.6 512 0 397.4 0 256C0 114.6 114.6 0 256 0C397.4 0 512 114.6 512 256zM256 48C141.1 48 48 141.1 48 256C48 370.9 141.1 464 256 464C370.9 464 464 370.9 464 256C464 141.1 370.9 48 256 48z"></path>
</svg>
</td>
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
Machine Learning in the Tidyverse
</td>
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
Foundations of “tidy” Machine learning
</td>
</tr>
<tr>
<td style="text-align:center;width: 5em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:center;width: 5em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:center;width: 5em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
Multiple Models with broom
</td>
</tr>
<tr>
<td style="text-align:center;width: 5em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:center;width: 5em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:center;width: 5em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
Build, Tune & Evaluate Regression Models
</td>
</tr>
<tr>
<td style="text-align:center;width: 5em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:center;width: 5em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:center;width: 5em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
Build, Tune & Evaluate Classification Models
</td>
</tr>
<tr>
<td style="text-align:center;width: 5em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:center;width: 5em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:center;width: 5em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
</tr>
</tbody>
</table>
</center>

### R Tasks

In some weeks you will be expected to complete an additional R task which are indicated by a <svg aria-hidden="true" role="img" viewBox="0 0 512 512" style="height:15px;width:15px;vertical-align:-0.125em;margin-left:auto;margin-right:auto;font-size:inherit;fill:#428bca;overflow:visible;position:relative;"><path d="M243.8 339.8C232.9 350.7 215.1 350.7 204.2 339.8L140.2 275.8C129.3 264.9 129.3 247.1 140.2 236.2C151.1 225.3 168.9 225.3 179.8 236.2L224 280.4L332.2 172.2C343.1 161.3 360.9 161.3 371.8 172.2C382.7 183.1 382.7 200.9 371.8 211.8L243.8 339.8zM512 256C512 397.4 397.4 512 256 512C114.6 512 0 397.4 0 256C0 114.6 114.6 0 256 0C397.4 0 512 114.6 512 256zM256 48C141.1 48 48 141.1 48 256C48 370.9 141.1 464 256 464C370.9 464 464 370.9 464 256C464 141.1 370.9 48 256 48z"/></svg> in the table above. Collectively these serve as the <b>R Survey EDA</b> noted on the [syllabus](/syllabus/#assignments-and-grades).

### Working Ahead

By no means do you have to wait for a particular module to be assigned. If you wish to enroll in a training - one that is assigned or otherwise - simply search for the name of that course on the Data Camp site. For those modules assigned for this course, you will receive credit after the due date has passed.

## Need Help?

{{% meetings %}}

[^1]: Please note that if you have (1) used Data Camp before and (2) are logged in with the same username, then any module that was successfully completed will not have to be done again.

[^2]: and curse my name if you have to

[^3]: Subject to change with notice.

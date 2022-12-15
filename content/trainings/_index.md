---
title: "About the Trainings"
menu:
  trainings:
    parent: Overview
    weight: 1
type: docs
weight: 1
shiny: true
---

<script src="/rmarkdown-libs/kePrint/kePrint.js"></script>
<link href="/rmarkdown-libs/lightable/lightable.css" rel="stylesheet" />
<script src="/rmarkdown-libs/kePrint/kePrint.js"></script>

<link href="/rmarkdown-libs/lightable/lightable.css" rel="stylesheet" />

{{% r-walkthrough-header %}}

Most class sessions have both interactive **Modules** courtesy of [Data Camp](https://www.datacamp.com/)[^1] and **Walkthroughs** created by me that you will need to work through ***after*** doing the readings and reviewing the corresponding content (if applicable). The lessons are a central part of the class and are focused on using the [tidyverse](https://www.tidyverse.org/) family of packages, though the approaches are certainly not the only ways to wrangle, clean, analyze, and visualize data in R.

## Advice

Carve out some time everyday to go through these. If you try to complete everything in one sitting, it will probably be overwhelming! However if you have familiarity with some modules, please feel free to work ahead.

## Grading

The ultimate point of Data Camp is to get you familiarized with an environment that you likely have never seen or been exposed to. While you should absolutely go through each module, there is certainly no expectation that you will get everything right. In fact, the points that you incur don’t mean anything as far as how you are assessed so please use hints as needed! As with any things data science, you’ll learn by doing. If you have a polar personality type as it pertains to work (i.e. primarily a perfectionist or mostly careless), then the modules will likely prove to be a challenge. The chance that you will be able to comprehend everything by going beyond your limit or conversely assuming it will just come to you is low so please work hard but also take breaks, swear[^2], look on the Internet, ask peers, or reach out for help. Your score is predicated on putting in a solid effort, rather than getting it perfect because that’s not realistic when it comes to data.

## Data Camp Schedule

A *tentative* schedule is given below. The **Course** and **Chapter** names represent Data Camp titles[^3]:

### Required

Modules that do

> <span style="color:#ffffff"><i><b>not require</b> a corresponding task</i> will be assessed only on the successful completion of the data camp course</span>

> <span style="color:#ffffff"><i><b>require</b> a task</i> will be assessed on both the successful completion of the data camp course and corresponding assessment to be submitted via eCampus</span>

<br>

<center>
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
1/29/2023
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
Intro to Basics
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
1/29/2023
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
Intro to Basics
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
<a href="/modules/03-module/">Week 3</a>
</td>
<td style="text-align:center;width: 5em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
1/29/2023
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
Data Wrangling
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
Data Visualization
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
Grouping and Summarizing
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
Types of Visualizations
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
2/12/2023
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
Data Wrangling
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
Data Visualization
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
Grouping and Summarizing
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
Types of Visualizations
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
2/12/2023
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
Data Wrangling
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
Data Visualization
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
Grouping and Summarizing
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
Types of Visualizations
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
2/26/2023
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
Explore Your Data
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
Tame Your Data
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
Tidy Your Data
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
Transform Your Data
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
2/26/2023
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
Explore Your Data
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
Tame Your Data
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
Tidy Your Data
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
Transform Your Data
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
3/19/2023
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
3/19/2023
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
4/2/2023
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
Visualization Best Practices in R
</td>
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
Proportions of a Whole
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
Point Data
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
Single Distributions
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
Comparing Distributions
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
4/2/2023
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
Visualization Best Practices in R
</td>
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
Proportions of a Whole
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
Point Data
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
Single Distributions
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
Comparing Distributions
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
4/16/2023
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
4/16/2023
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
</center>

### Extra Credit

The following modules are optional and may count as extra credit contingnet on the successful completion of the data camp course and corresponding assessment to be submitted via eCampus. Please note that each subsequent module is dependent on the previous one.

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
4/23/2023
</td>
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
<td style="text-align:center;width: 5em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
The apply Family
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
Utilities
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
4/23/2023
</td>
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
String Basics
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
Introduction to stringr
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
Pattern Matching with Regular Expressions
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
More Advanced Matching and Manipulation
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
Case Studies
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
4/23/2023
</td>
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
Text Mining with Bag-of-Words in R
</td>
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
Jumping Into Text Mining with Bag-of-Words
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
Word Clouds and More Interesting Visuals
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
Adding to Your tm Skills
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
Battle of the Tech Giants for Talent
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
4/23/2023
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
Sentiment Analysis in R
</td>
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
Fast & Dirty: Polarity Scoring
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
Sentiment Analysis the tidytext Way
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
Visualizing Sentiment
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
Case Study: Airbnb Reviews
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

## Working Ahead

By no means do you have to wait for a particular module to be assigned. If you wish to enroll in a training - one that is assigned or otherwise - simply search for the name of that course on the Data Camp site. For those modules assigned for this course, you will receive credit after the due date has passed.

## Need Help?

{{% meetings %}}

[^1]: Please note that if you have (1) used Data Camp before and (2) are logged in with the same username, then any module that was successfully completed will not have to be done again.

[^2]: and curse my name if you have to

[^3]: Subject to change with notice.

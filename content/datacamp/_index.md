---
title: "About Data Camp"
menu:
  datacamp:
    parent: Overview
    weight: 1
type: docs
weight: 1
shiny: true
---

<script src="/rmarkdown-libs/kePrint/kePrint.js"></script>

<link href="/rmarkdown-libs/lightable/lightable.css" rel="stylesheet" />

{{% aes-header %}}

### Description

Some class sessions have an interactive lesson that you will work through ***after*** doing the readings and lecture (if applicable). These lessons are a central part of the class—they will teach you how to use R and corresponding packages we’ll use.

Interactive training sections are provided via

<center>
<a href="https://www.datacamp.com/">
<img alt="Data Camp Logo" src="/logos/datacamp.png" width = "400px">
</a>
</center>

### Purpose

The ultimate point of Data Camp[^1] is to get you familiarized with an environment that you likely have never seen or been exposed to. While you should absolutely go through each module, there is certainly no expectation that you will get everything right. In fact, the points that you incur don’t mean anything as far as how you are assessed so please use hints as needed! As with any things data science, you’ll learn by doing. If you are a polar personality type when it comes to work (i.e. primarily a perfectionist or mostly careless), then the modules will likely prove to be a challenge. It is highly unlikely that you will be able to comprehend everything by going beyond your limit or that it will just come to you so please work hard but also take breaks, swear[^2], and ask peers or me for help.

## Grading

The emphasis on Data Camp involves putting in a solid effort, rather than completing everything correctly. The earned grade distribution is as follows:

-   *115%*: Modules are 100% completed. Every task was attempted and answered, and most answers are correct. These are not earned often.
-   *100%*: Modules are 70–99% complete and most answers are correct or on point. This is the expected level of performance.
-   *50%*: Modules are less than 70% complete and/or most answers are incorrect or off-point. This indicates that you need to improve next time. Hopefully people will not earn this often.

Otherwise *0%*.

## Notes

### for previous participants

If you have participated in Data Camp before and would like to receive credit for assigned modules you have previously completed, make sure to login with the associated username. Please note that you must do this to qualify.

### for new participants

Please take your time going through these, especially the initial module. I suggest setting 8-10 hours aside spread the information out over the next two weeks if it is conducive to your learning style. This first module gives you an understand of the R environment. Please reach out if you need help!

## Installing R and RStudio

Go to the [Installing R, RStudio, and tidyverse](/resources/install/) page under Resources to get both R and RStudio installed on your system.

## Schedule

A *tentative* schedule is given below. The **Course** and **Chapter** names represent Data Camp titles[^3]:

<center>
<table class="table table-striped table-hover" style="width: auto !important; margin-left: auto; margin-right: auto;">
<thead>
<tr>
<th style="text-align:center;color: #ffffff !important;background-color: #212121 !important;vertical-align: middle !important;">
Module
</th>
<th style="text-align:left;color: #ffffff !important;background-color: #212121 !important;vertical-align: middle !important;">
Available
</th>
<th style="text-align:center;color: #ffffff !important;background-color: #212121 !important;vertical-align: middle !important;">
Due by
</th>
<th style="text-align:center;color: #ffffff !important;background-color: #212121 !important;vertical-align: middle !important;">
Required
</th>
<th style="text-align:left;color: #ffffff !important;background-color: #212121 !important;vertical-align: middle !important;">
Course
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:center;width: 5em; color: #ffffff !important;background-color: #212121 !important;vertical-align: middle !important;">
1
</td>
<td style="text-align:left;width: 10em; color: #ffffff !important;background-color: #212121 !important;vertical-align: middle !important;">
8/19/21
</td>
<td style="text-align:center;width: 10em; color: #ffffff !important;background-color: #212121 !important;vertical-align: middle !important;">
9/1/21
</td>
<td style="text-align:center;width: 10em; color: #ffffff !important;background-color: #212121 !important;vertical-align: middle !important;">
<svg aria-hidden="true" role="img" viewbox="0 0 512 512" style="height:15px;width:15px;vertical-align:-0.125em;margin-left:auto;margin-right:auto;font-size:inherit;fill:#428bca;overflow:visible;position:relative;">
<path d="M0 256C0 114.6 114.6 0 256 0C397.4 0 512 114.6 512 256C512 397.4 397.4 512 256 512C114.6 512 0 397.4 0 256zM371.8 211.8C382.7 200.9 382.7 183.1 371.8 172.2C360.9 161.3 343.1 161.3 332.2 172.2L224 280.4L179.8 236.2C168.9 225.3 151.1 225.3 140.2 236.2C129.3 247.1 129.3 264.9 140.2 275.8L204.2 339.8C215.1 350.7 232.9 350.7 243.8 339.8L371.8 211.8z"></path>
</svg>
</td>
<td style="text-align:left;width: 30em; color: #ffffff !important;background-color: #212121 !important;vertical-align: middle !important;">
<a href="/datacamp/01-module/">Introduction to R</a>
</td>
</tr>
<tr>
<td style="text-align:center;width: 5em; color: #ffffff !important;background-color: #212121 !important;vertical-align: middle !important;">
2
</td>
<td style="text-align:left;width: 10em; color: #ffffff !important;background-color: #212121 !important;vertical-align: middle !important;">
8/26/21
</td>
<td style="text-align:center;width: 10em; color: #ffffff !important;background-color: #212121 !important;vertical-align: middle !important;">
9/8/21
</td>
<td style="text-align:center;width: 10em; color: #ffffff !important;background-color: #212121 !important;vertical-align: middle !important;">
<svg aria-hidden="true" role="img" viewbox="0 0 512 512" style="height:15px;width:15px;vertical-align:-0.125em;margin-left:auto;margin-right:auto;font-size:inherit;fill:#428bca;overflow:visible;position:relative;">
<path d="M0 256C0 114.6 114.6 0 256 0C397.4 0 512 114.6 512 256C512 397.4 397.4 512 256 512C114.6 512 0 397.4 0 256zM371.8 211.8C382.7 200.9 382.7 183.1 371.8 172.2C360.9 161.3 343.1 161.3 332.2 172.2L224 280.4L179.8 236.2C168.9 225.3 151.1 225.3 140.2 236.2C129.3 247.1 129.3 264.9 140.2 275.8L204.2 339.8C215.1 350.7 232.9 350.7 243.8 339.8L371.8 211.8z"></path>
</svg>
</td>
<td style="text-align:left;width: 30em; color: #ffffff !important;background-color: #212121 !important;vertical-align: middle !important;">
<a href="/datacamp/02-module/">Introduction to the Tidyverse</a>
</td>
</tr>
<tr>
<td style="text-align:center;width: 5em; color: #ffffff !important;background-color: #212121 !important;vertical-align: middle !important;">
3
</td>
<td style="text-align:left;width: 10em; color: #ffffff !important;background-color: #212121 !important;vertical-align: middle !important;">
8/26/21
</td>
<td style="text-align:center;width: 10em; color: #ffffff !important;background-color: #212121 !important;vertical-align: middle !important;">
10/6/21
</td>
<td style="text-align:center;width: 10em; color: #ffffff !important;background-color: #212121 !important;vertical-align: middle !important;">
<svg aria-hidden="true" role="img" viewbox="0 0 512 512" style="height:15px;width:15px;vertical-align:-0.125em;margin-left:auto;margin-right:auto;font-size:inherit;fill:#428bca;overflow:visible;position:relative;">
<path d="M0 256C0 114.6 114.6 0 256 0C397.4 0 512 114.6 512 256C512 397.4 397.4 512 256 512C114.6 512 0 397.4 0 256zM371.8 211.8C382.7 200.9 382.7 183.1 371.8 172.2C360.9 161.3 343.1 161.3 332.2 172.2L224 280.4L179.8 236.2C168.9 225.3 151.1 225.3 140.2 236.2C129.3 247.1 129.3 264.9 140.2 275.8L204.2 339.8C215.1 350.7 232.9 350.7 243.8 339.8L371.8 211.8z"></path>
</svg>
</td>
<td style="text-align:left;width: 30em; color: #ffffff !important;background-color: #212121 !important;vertical-align: middle !important;">
<a href="/datacamp/03-module/">Introduction to Statistics in R</a>
</td>
</tr>
<tr>
<td style="text-align:center;width: 5em; color: #ffffff !important;background-color: #212121 !important;vertical-align: middle !important;">
4
</td>
<td style="text-align:left;width: 10em; color: #ffffff !important;background-color: #212121 !important;vertical-align: middle !important;">
9/23/21
</td>
<td style="text-align:center;width: 10em; color: #ffffff !important;background-color: #212121 !important;vertical-align: middle !important;">
10/20/21
</td>
<td style="text-align:center;width: 10em; color: #ffffff !important;background-color: #212121 !important;vertical-align: middle !important;">
<svg aria-hidden="true" role="img" viewbox="0 0 512 512" style="height:15px;width:15px;vertical-align:-0.125em;margin-left:auto;margin-right:auto;font-size:inherit;fill:#428bca;overflow:visible;position:relative;">
<path d="M0 256C0 114.6 114.6 0 256 0C397.4 0 512 114.6 512 256C512 397.4 397.4 512 256 512C114.6 512 0 397.4 0 256zM371.8 211.8C382.7 200.9 382.7 183.1 371.8 172.2C360.9 161.3 343.1 161.3 332.2 172.2L224 280.4L179.8 236.2C168.9 225.3 151.1 225.3 140.2 236.2C129.3 247.1 129.3 264.9 140.2 275.8L204.2 339.8C215.1 350.7 232.9 350.7 243.8 339.8L371.8 211.8z"></path>
</svg>
</td>
<td style="text-align:left;width: 30em; color: #ffffff !important;background-color: #212121 !important;vertical-align: middle !important;">
<a href="/datacamp/04-module/">Introduction to Data in R</a>
</td>
</tr>
<tr>
<td style="text-align:center;width: 5em; color: #ffffff !important;background-color: #212121 !important;vertical-align: middle !important;">
5
</td>
<td style="text-align:left;width: 10em; color: #ffffff !important;background-color: #212121 !important;vertical-align: middle !important;">
10/21/21
</td>
<td style="text-align:center;width: 10em; color: #ffffff !important;background-color: #212121 !important;vertical-align: middle !important;">
11/3/21
</td>
<td style="text-align:center;width: 10em; color: #ffffff !important;background-color: #212121 !important;vertical-align: middle !important;">
<svg aria-hidden="true" role="img" viewbox="0 0 512 512" style="height:15px;width:15px;vertical-align:-0.125em;margin-left:auto;margin-right:auto;font-size:inherit;fill:#428bca;overflow:visible;position:relative;">
<path d="M0 256C0 114.6 114.6 0 256 0C397.4 0 512 114.6 512 256C512 397.4 397.4 512 256 512C114.6 512 0 397.4 0 256zM371.8 211.8C382.7 200.9 382.7 183.1 371.8 172.2C360.9 161.3 343.1 161.3 332.2 172.2L224 280.4L179.8 236.2C168.9 225.3 151.1 225.3 140.2 236.2C129.3 247.1 129.3 264.9 140.2 275.8L204.2 339.8C215.1 350.7 232.9 350.7 243.8 339.8L371.8 211.8z"></path>
</svg>
</td>
<td style="text-align:left;width: 30em; color: #ffffff !important;background-color: #212121 !important;vertical-align: middle !important;">
<a href="/datacamp/05-module/">Foundations of Inference</a>
</td>
</tr>
<tr>
<td style="text-align:center;width: 5em; color: #ffffff !important;background-color: #212121 !important;vertical-align: middle !important;">
6
</td>
<td style="text-align:left;width: 10em; color: #ffffff !important;background-color: #212121 !important;vertical-align: middle !important;">
10/21/21
</td>
<td style="text-align:center;width: 10em; color: #ffffff !important;background-color: #212121 !important;vertical-align: middle !important;">
11/17/21
</td>
<td style="text-align:center;width: 10em; color: #ffffff !important;background-color: #212121 !important;vertical-align: middle !important;">
<svg aria-hidden="true" role="img" viewbox="0 0 512 512" style="height:15px;width:15px;vertical-align:-0.125em;margin-left:auto;margin-right:auto;font-size:inherit;fill:#428bca;overflow:visible;position:relative;">
<path d="M0 256C0 114.6 114.6 0 256 0C397.4 0 512 114.6 512 256C512 397.4 397.4 512 256 512C114.6 512 0 397.4 0 256zM371.8 211.8C382.7 200.9 382.7 183.1 371.8 172.2C360.9 161.3 343.1 161.3 332.2 172.2L224 280.4L179.8 236.2C168.9 225.3 151.1 225.3 140.2 236.2C129.3 247.1 129.3 264.9 140.2 275.8L204.2 339.8C215.1 350.7 232.9 350.7 243.8 339.8L371.8 211.8z"></path>
</svg>
</td>
<td style="text-align:left;width: 30em; color: #ffffff !important;background-color: #212121 !important;vertical-align: middle !important;">
<a href="/datacamp/06-module/">Inference for Categorical Data in R</a>
</td>
</tr>
<tr>
<td style="text-align:center;width: 5em; color: #ffffff !important;background-color: #212121 !important;vertical-align: middle !important;">
EC1
</td>
<td style="text-align:left;width: 10em; color: #ffffff !important;background-color: #212121 !important;vertical-align: middle !important;">
10/21/21
</td>
<td style="text-align:center;width: 10em; color: #ffffff !important;background-color: #212121 !important;vertical-align: middle !important;">
11/3/21
</td>
<td style="text-align:center;width: 10em; color: #ffffff !important;background-color: #212121 !important;vertical-align: middle !important;">
<svg aria-hidden="true" role="img" viewbox="0 0 512 512" style="height:15px;width:15px;vertical-align:-0.125em;margin-left:auto;margin-right:auto;font-size:inherit;fill:#d9534f;overflow:visible;position:relative;">
<path d="M0 256C0 114.6 114.6 0 256 0C397.4 0 512 114.6 512 256C512 397.4 397.4 512 256 512C114.6 512 0 397.4 0 256zM175 208.1L222.1 255.1L175 303C165.7 312.4 165.7 327.6 175 336.1C184.4 346.3 199.6 346.3 208.1 336.1L255.1 289.9L303 336.1C312.4 346.3 327.6 346.3 336.1 336.1C346.3 327.6 346.3 312.4 336.1 303L289.9 255.1L336.1 208.1C346.3 199.6 346.3 184.4 336.1 175C327.6 165.7 312.4 165.7 303 175L255.1 222.1L208.1 175C199.6 165.7 184.4 165.7 175 175C165.7 184.4 165.7 199.6 175 208.1V208.1z"></path>
</svg>
</td>
<td style="text-align:left;width: 30em; color: #ffffff !important;background-color: #212121 !important;vertical-align: middle !important;">
<a href="/datacamp/01-extra/">Analyzing Survey Data in R</a>
</td>
</tr>
<tr>
<td style="text-align:center;width: 5em; color: #ffffff !important;background-color: #212121 !important;vertical-align: middle !important;">
EC2
</td>
<td style="text-align:left;width: 10em; color: #ffffff !important;background-color: #212121 !important;vertical-align: middle !important;">
11/4/21
</td>
<td style="text-align:center;width: 10em; color: #ffffff !important;background-color: #212121 !important;vertical-align: middle !important;">
11/18/21
</td>
<td style="text-align:center;width: 10em; color: #ffffff !important;background-color: #212121 !important;vertical-align: middle !important;">
<svg aria-hidden="true" role="img" viewbox="0 0 512 512" style="height:15px;width:15px;vertical-align:-0.125em;margin-left:auto;margin-right:auto;font-size:inherit;fill:#d9534f;overflow:visible;position:relative;">
<path d="M0 256C0 114.6 114.6 0 256 0C397.4 0 512 114.6 512 256C512 397.4 397.4 512 256 512C114.6 512 0 397.4 0 256zM175 208.1L222.1 255.1L175 303C165.7 312.4 165.7 327.6 175 336.1C184.4 346.3 199.6 346.3 208.1 336.1L255.1 289.9L303 336.1C312.4 346.3 327.6 346.3 336.1 336.1C346.3 327.6 346.3 312.4 336.1 303L289.9 255.1L336.1 208.1C346.3 199.6 346.3 184.4 336.1 175C327.6 165.7 312.4 165.7 303 175L255.1 222.1L208.1 175C199.6 165.7 184.4 165.7 175 175C165.7 184.4 165.7 199.6 175 208.1V208.1z"></path>
</svg>
</td>
<td style="text-align:left;width: 30em; color: #ffffff !important;background-color: #212121 !important;vertical-align: middle !important;">
<a href="/datacamp/02-extra/">Fundamentals of Bayesian Data Analysis in R</a>
</td>
</tr>
<tr>
<td style="text-align:center;width: 5em; color: #ffffff !important;background-color: #212121 !important;vertical-align: middle !important;">
EC3
</td>
<td style="text-align:left;width: 10em; color: #ffffff !important;background-color: #212121 !important;vertical-align: middle !important;">
10/21/21
</td>
<td style="text-align:center;width: 10em; color: #ffffff !important;background-color: #212121 !important;vertical-align: middle !important;">
12/8/21
</td>
<td style="text-align:center;width: 10em; color: #ffffff !important;background-color: #212121 !important;vertical-align: middle !important;">
<svg aria-hidden="true" role="img" viewbox="0 0 512 512" style="height:15px;width:15px;vertical-align:-0.125em;margin-left:auto;margin-right:auto;font-size:inherit;fill:#d9534f;overflow:visible;position:relative;">
<path d="M0 256C0 114.6 114.6 0 256 0C397.4 0 512 114.6 512 256C512 397.4 397.4 512 256 512C114.6 512 0 397.4 0 256zM175 208.1L222.1 255.1L175 303C165.7 312.4 165.7 327.6 175 336.1C184.4 346.3 199.6 346.3 208.1 336.1L255.1 289.9L303 336.1C312.4 346.3 327.6 346.3 336.1 336.1C346.3 327.6 346.3 312.4 336.1 303L289.9 255.1L336.1 208.1C346.3 199.6 346.3 184.4 336.1 175C327.6 165.7 312.4 165.7 303 175L255.1 222.1L208.1 175C199.6 165.7 184.4 165.7 175 175C165.7 184.4 165.7 199.6 175 208.1V208.1z"></path>
</svg>
</td>
<td style="text-align:left;width: 30em; color: #ffffff !important;background-color: #212121 !important;vertical-align: middle !important;">
<a href="/datacamp/03-extra/">Reporting with R Markdown</a>
</td>
</tr>
</tbody>
</table>
</center>
<hr />

### Need Help?

I always prefer a face to face meeting if possible but since that’s not possible, you can schedule a Zoom via the [Calendar](https://calendly.com/nopiecharts) or contact me within [Slack](https://2021edp613.slack.com) by tagging my name `@Dr. Abhik Roy` in a text box along with your message.

[^1]: If you have (1) used Data Camp before and (2) are logged in with the same username, then any module that was successfully completed will not have to be done again.

[^2]: and curse my name if you have to

[^3]: Subject to change with notice.

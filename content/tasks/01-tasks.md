---
title: "The What and Why of Statistics"
linktitle: "Week 1: The What and Why of Statistics"
menu:
  tasks:
    parent: Homeworks
    weight: 1
type: docs
weight: 2
editor_options: 
  chunk_output_type: console
---
<script src="/rmarkdown-libs/kePrint/kePrint.js"></script>
<link href="/rmarkdown-libs/lightable/lightable.css" rel="stylesheet" />
<script src="/rmarkdown-libs/kePrint/kePrint.js"></script>
<link href="/rmarkdown-libs/lightable/lightable.css" rel="stylesheet" />



<style>
span.boxed {
  border: 0px solid #FFFFFF;
  padding: 5px;
  color: #FFFFFF;
  background-color: #005b96;
  display: inline;
} 

table {
   margin-left: auto;
   margin-right: auto;
}

table thead th { border-bottom: 1px solid #ddd; 
}

th, td { padding: 5px; 
}

table > tbody > tr:hover > td, table > tbody > tr:hover > th {
  background-color: #ffffff;
}
</style>

### Class Slack Account Access
Please sign up for Slack!

1. You will receive an invite for the class [Slack](2021edp613.slack.com) account
2. Register if you already do not have an account. Note that you do not have to use your WVU account, but its not a bad idea.
3. Head to to the channel `#introduce-yourself` and well introduce yourself by tell everyone about yourself, what you hope to achieve out of this course, and something about you that really defines who you are. For example, here is something about me:<br>
<br>
<i>I teach data visualization BUT I am also about 40% colorblind[^1]</i><br><br>
4. (optional) Provide a picture if you are willing. I am a very visual person as are many other people so pictures help a great deal. However, you are not mandated to do so!

### Class Software
Decide whether to sign up for [RStudio.cloud](/resources/install/#rstudio-cloud) or install a [local copy](/resources/install/#rstudio-on-your-computer).

### Homework


<center>
<table>
 <thead>
  <tr>
   <th style="text-align:center;background-color: #ffffff !important;vertical-align: middle !important;"> Chapter </th>
   <th style="text-align:left;background-color: #ffffff !important;vertical-align: middle !important;"> Problems </th>
   <th style="text-align:left;background-color: #ffffff !important;vertical-align: middle !important;"> Source </th>
   <th style="text-align:left;background-color: #ffffff !important;vertical-align: middle !important;"> Pages </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:center;font-weight: bold;background-color: #ffffff !important;vertical-align: middle !important;"> 1 </td>
   <td style="text-align:left;background-color: #ffffff !important;vertical-align: middle !important;"> 3, 4, 6, 7, 8 </td>
   <td style="text-align:left;background-color: #ffffff !important;vertical-align: middle !important;"> Social Statistics for a Diverse Society </td>
   <td style="text-align:left;background-color: #ffffff !important;vertical-align: middle !important;"> 23-25 </td>
  </tr>
</tbody>
</table>
</center>

Notes: 

- Please submit this at the beginning of class next week.
- Remember to follow the [homework guidelines](/tasks/#homeworks) for consideration.

<!--
to the Submission Portal on [ecampus](https://ecampus.wvu.edu/) by 11:59 PM next Wednesday.<br>
-->

#### Solutions

*Posted after class day and time next week.*

<!--
<details><summary>3</summary>
<p>

a. <span class="boxed">Interval–ratio</span>
b. <span class="boxed">Interval–ratio</span>
c. <span class="boxed">Nominal</span>
d. <span class="boxed">Ordinal</span>
e. <span class="boxed">Nominal</span>
f. <span class="boxed">Interval–ratio</span>
g. <span class="boxed">Ordinal</span> 

</p>
</details>

<details><summary>4</summary>
<p>

a. <span class="boxed">Discrete</span>
b. <span class="boxed">Continuous</span> 
c. <span class="boxed">Continuous</span> 

</p>
</details>

<details><summary>6</summary>
<p>

a. Unemployment records could be used to determine the actual number of unemployed; a <span class="boxed">descriptive statistic</span> based upon the population. 
b. A survey is taken to estimate student opinions about the quality of food; <span class="boxed">inferential statistic</span>.
c. National health records can be used to determine the incidence rate of breast cancer among all Asian women, so this would be a <span class="boxed">descriptive statistic</span>. 
d. The ratings will be gathered from a survey, so this is an <span class="boxed">inferential statistic</span>.
e. A university should be able to report GPA by major, so this is a <span class="boxed">descriptive statistic</span> based upon the population. 
f. In theory, the United States records all immigrants to this country. Therefore, the number of South East Asian immigrants would be a <span class="boxed">descriptive statistic</span>. However, because of illegal immigration, surveys are also taken to estimate the total number of legal and unauthorized immigrants. In that event, the number of immigrants would be an <span class="boxed">inferential statistic</span>.

</p>
</details>

<details><summary>7</summary>
<p>

a. <span class="boxed">Annual income</span> 
b. Gender: <span class="boxed">nominal</span><br>
Number of hours worked per week: <span class="boxed">interval ratio</span><br>
Years of education: <span class="boxed">interval ratio</span><br> 
Job title: <span class="boxed">nominal</span>. 
c. This is an application of <span class="boxed">inferential statistics</span>. The researcher is using information based on her sample to predict the annual income of a larger population of young graduates.


</p>
</details>

<details><summary>8</summary>
<p>
At the nominal level, a simple measure of political participation is whether or not someone voted in the most recent general election. This variable would be coded either <span class="boxed">yes</span> or <span class="boxed">no</span>. 

At the ordinal level, a composite measure could be constructed of both voting and political party membership, like this:



<table class="table" style="width: auto !important; margin-left: auto; margin-right: auto;">
 <thead>
  <tr>
   <th style="text-align:left;"> Behavior </th>
   <th style="text-align:center;"> Code </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> Didn’t vote; No membership </td>
   <td style="text-align:center;"> 0 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Voted; No membership OR Membership; Didn’t vote </td>
   <td style="text-align:center;"> 1 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Voted;  Membership </td>
   <td style="text-align:center;"> 2 </td>
  </tr>
</tbody>
</table>

These codes are <span class="boxed">ordinal</span> in scale because the amount of political participation can be ranked from high to low. Other possible ordinal variables can be constructed from other sets of behaviors, such as working in a candidate’s campaign and signing a petition. The key points are to create a variable whose values can be ranked and whose values are not on an interval–ratio scale.

At the <span class="boxed">interval–ratio</span> level, political participation could be measured by the percentage of elections in which a person has voted since becoming eligible to vote, or the amount of money a person donated to political candidates during some specified time period. 

</p>
</details>
-->

[^1]: You just need to know a little math to distinguish colors without ever seeing them.

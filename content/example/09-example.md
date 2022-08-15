---
title: "Getting to Know the Complex Sample Design"
linktitle: "Week 9: Getting to Know the Complex Sample Design"
output:
  blogdown::html_page:
    toc: true
menu:
  example:
    parent: Examples
    weight: 2
type: docs
weight: 1
editor_options: 
  chunk_output_type: console
---
<script src="/rmarkdown-libs/kePrint/kePrint.js"></script>
<link href="/rmarkdown-libs/lightable/lightable.css" rel="stylesheet" />



### Administering Your Survey

#### Synopsis
The choices given in Qualtrics can seem daunting in one instance but limited in another. Even when intending to administer a final survey, the options can be overwhelming. This week we look less at tweaking the survey platform to learn more about the delivery process.

#### Read
Familiarize yourself with the Qualtrics [Distributions](https://www.qualtrics.com/support/survey-platform/distributions-module/distributions-overview/){target="_blank"} options.  

#### What you need^[You may have to right click and download it depending on your browser settings.]
Please download the following example files and unzip them. They are optional templates for the solicitations and gratitude sections outlined below.

- [solicitations.zip](/snippets/text_box_size.txt) text file.

#### Planning
The typical open period of a survey lasts **two weeks** with each of the following processes automated:

- Opening day/time: **8am** on a **Tuesday**. If you have respondents scattered across time zones, then this should align with the ***latest*** 8am. For example, a survey initiated from the Central time zone across the US would technically begin at 7am CST to account for the Eastern Time Zone.
- Initial solicitation: Sent on the same **Tuesday** within 15-30 minutes of the opening time. This is purely intended to give you a cushion for last last minute fixes and changes. Those unfamiliar with Qualtrics will benefit from having the maximum of extra time simply due to the complexity associated with the software.^[Remember once your survey has populated, that's it! Tweaking it afterwards can lead to measurement errors or even a collapse of instrumentation. If you absolutely must amend an item and need advice, please contact me.]
- Opening day/time: **11:59pm** on the second **Tuesday**. Again, if you have respondents scattered across time zones, then this should align with the ***earliest*** 8am. For example, a survey initiated from the Central time zone across the US would technically end at 8am HAST to account for the Hawaii-Aleutian Standard Time Zone.

The process below is recommended and tends to *walk the line* between a lack of and too many reminders. However please use your best judgment.



<center>
<table class="table" style="width: auto !important; margin-left: auto; margin-right: auto;">
 <thead>
  <tr>
   <th style="text-align:center;"> Days </th>
   <th style="text-align:left;"> Description </th>
   <th style="text-align:left;"> Reasoning </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:center;width: 10em; "> -7 to -3 </td>
   <td style="text-align:left;width: 30em; "> Typically administered three to seven days prior to the initial solicitation, groups that may not be aware of a forthcoming survey are sent a priori information. </td>
   <td style="text-align:left;width: 30em; "> Suprising potential respondents can reduce response rates. If you feel that members of your sample could benefit from a *heads up*, then please generate a **simple one paragraph** description informing them of (1) the upcoming online opportunity, (2) the purpose of the survey, and (3) when they will be recieving it. </td>
  </tr>
  <tr>
   <td style="text-align:center;width: 10em; "> 1 </td>
   <td style="text-align:left;width: 30em; "> Initial solicitation adminsitered. </td>
   <td style="text-align:left;width: 30em; "> Respondents tend to avoid optional tasks on Mondays and are traditionally less likely to participate after noon on Wednesdays. This leaves only Tuesday as the optial day per week to send a survey. </td>
  </tr>
  <tr>
   <td style="text-align:center;width: 10em; "> 7 </td>
   <td style="text-align:left;width: 30em; "> First follow-up reminder administered </td>
   <td style="text-align:left;width: 30em; "> A majority of your respondents will typically participate within the first six days. Providing a reminder on the seventh day often yields an additional responses from those who initially wanted to participate, but simply forgot. </td>
  </tr>
  <tr>
   <td style="text-align:center;width: 10em; "> 10 </td>
   <td style="text-align:left;width: 30em; "> Second follow-up reminder administered </td>
   <td style="text-align:left;width: 30em; "> Known as *the small bump*, this follow up solicitation is primarily intended for those individuals who may be undecided about participating. You may or may not observe any additional responses and even if you do, they will likely be minimal. </td>
  </tr>
  <tr>
   <td style="text-align:center;width: 10em; "> 14 </td>
   <td style="text-align:left;width: 30em; "> Final follow-up reminder administered </td>
   <td style="text-align:left;width: 30em; "> Assuming a closing time of 11:59PM, this final notice is administered at the earliest 8am to allow for responses from those in your sample who tend to complete tasks at the last minute. You may or may not observe any additional responses and the frequency is often dependent on the characteristics of your sampling frame. </td>
  </tr>
  <tr>
   <td style="text-align:center;width: 10em; "> +1 to +3 </td>
   <td style="text-align:left;width: 30em; "> Typically administered one to three days after the closing of a survey, those who participated are sent a letter of gratitude. </td>
   <td style="text-align:left;width: 30em; "> In most cases respondents are participating without any amenities - ergo they are doing you a favor. Even if you never intend to survey any of these indivdiuals again, ending a data collection period with a simple gratitude can and often does have lasting ramifications. You simply never know when individuals in your sample could be helpful in the future. The term *never burn your bridges* is synonymous with this task. </td>
  </tr>
</tbody>
</table>

### An Overlooked Yet Extremely Important Option 
Please make sure that you also look over the Survey Options tab before distribution! It is considered to be the heart of your instrument that allows different parts of Qualtrics to interact with each other.
<center>
![Survey Options](/img/examples/SurveyOptions.png){width=70%}
</center>

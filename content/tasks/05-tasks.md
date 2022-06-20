---
title: "Nerds"
linktitle: "Week 5: Nerds"
toc: true
output:
  rmarkdown::html_document:
    toc: true
menu:
  tasks:
    parent: Tasks
    weight: 5
type: docs
weight: 1
---

<script src="/rmarkdown-libs/font-awesome/js/script.js"></script>

{{% aes-header %}}

<style>
.article-style img, 
.article-style video {
  margin-left: 0;
  margin-right: auto;
  margin-top: 0rem;
  margin-bottom: 1rem;
  vertical-align: text-top;
  padding: 0;
  bottom: 0px;
  display: inline;
}
</style>

## R Measurement EDA

1.  Firstly please download the following de-identified data set taken from a larger instrument that was collected from a program evaluation.

    <a onclick="fetch(&#39;data:application/zip;base64,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&#39;).then(res =&gt; res.blob()).then(blob =&gt; {&#10;      const downloadURL = window.URL.createObjectURL(blob);&#10;      const a = document.createElement(&#39;a&#39;);&#10;      document.body.appendChild(a);&#10;      a.href = downloadURL;&#10;      a.download = &#39;R Measurement EDA.zip&#39;; a.click();&#10;      window.URL.revokeObjectURL(downloadURL);&#10;      document.body.removeChild(a);&#10;    });">
    <button class="btn btn-primary hvr-sweep-to-left"><i class="fa fa-save"></i> &nbsp;&nbsp;&nbsp;<span style='color:#ffffff'>Download</span></button>
    </a>

    <br>
    <br>

2.  Unzip the file to find the data set, codebook, and file that ends in `.Rmd`. The latter is called an <a href="https://rmarkdown.rstudio.com/" target="_blank">Rmarkdown</a> file which is essentially the Microsoft Word of the R world without most of the annoyances[^1].

3.  Like before, throw everything into a single folder, open up the `.Rmd` file, and set the working directory. This document serves as a reporting template and directions are included within the body. Please note for additional help, you may use any source other than another human being, especially since the walkthroughs contain the steps needed to complete this task.

4.  After completion, you will need to **knit** this document as a pdf and submit it to <a href="%22https://ecampus.wvu.edu/%22" target="_blank">eCampus</a>. If you think I’ve confused R with a ball of yarn, that hasn’t happened yet. Rather *knitting* a `.Rmd` file is similar to *running* an `.R` script. For more information, please take a look at the brief introduction on Rmarkdown on the <a href="/resources/rmarkdown/" target="_blank">Resources</a>.

<center>
<i>If you are interested, a basic overview and benefits of Rmarkdown can be found in the text <a href="https://r4ds.had.co.nz/r-markdown.html" target="_blank">R for Data Science</a> and a list of standard commands is listed in the <a href="https://www.rstudio.com/wp-content/uploads/2015/02/rmarkdown-cheatsheet.pdf" target="_blank">Rmarkdown Cheat Sheet</a>.</i>
</center>

## Test for Validity and Reliability

This task involves that you use existing or simulated data[^2].

1.  Simulate a “large” data set[^3] using whatever software package you prefer. Below are some links to help you out[^4]

    -   <a href="https://support.microsoft.com/en-us/office/randbetween-function-4cc7f0d1-87dc-4eb7-987f-a469ab381685" target="_blank">Excel</a>

    -   <a href="https://www.qualtrics.com/support/survey-platform/survey-module/survey-tools/generating-test-responses/" target="_blank">Qualtrics</a>

    -   R (there are many ways to accomplish like <a href="https://www.crumplab.com/programmingforpsych/simulating-and-analyzing-data-in-r.html" target="_blank">this</a> or [that](https://github.com/markolalovic/responsesR))[^5]

2.  To assess *validity*, use whatever software you wish to conduct an exploratory factor analysis of your data. For those who use R, take a look at the [EFA walkthrough](/walkthroughs/04-walkthrough/#method-explanatory-factor-analysis).

3.  To assess *reliability*, use whatever software you wish to perform a reliability analysis. For those who use R, take a look at the [Internal Consistency walkthrough](/walkthroughs/03-walkthrough/#computing-the-internal-consistency).

4.  In a single page, describe the purpose of your instrument and what methods you used to assess both validity[^6] and reliability. Use details and specific language in your narrative.

5.  Submit this document to <a target="_blank" href="https://ecampus.wvu.edu/">eCampus</a>.

<br />

<center>
<p id="rounded_corners">
All submissions leading up to the proposal can be found on the main <a href="/tasks/#proposal">Tasks</a> page
<p>
</center>

## Fifth Meetup

Please sign up with the instructor that you did not meet with during the prior week.

<center>

<div class="evener">

<div class="stripe">

<a href='https://calendly.com/nopiecharts/short15' target="_blank"><img src='/logos/calendar-dr-roy.png' alt='Booking with Dr. Roy' width='250'></a>

</div>

<div class="stripe">

<a href='https://calendly.com/carinna-ferguson/611' target="_blank"><img src='/logos/calendar-cari.png' alt='Booking with Carinna Ferguson' width='350'></a>

</div>

</div>

[^1]: <img src='/img/tweets/annoyword.png' alt='Word Shifting Tweet' width='200'>

[^2]: While you are indeed free to use any software to complete this task, please note that only R related questions are supported in this course. This includes assistance regarding details, interpretation, reporting, etc.

[^3]: So how big is a large data set exactly? If you have an idea of what your population numbers might look like. then use that. Otherwise, I suggest starting at 100 cases per item.

[^4]: It is suggested that you attempt this early and to reach out if issues arise. Please note that last minute or weekend assistance is unlikely.

[^5]: Reach out if you would like to simulate data in R but are not able to do so.

[^6]: Yes this may be obvious given its an EFA but for completeness, please go ahead and note it in the submission.

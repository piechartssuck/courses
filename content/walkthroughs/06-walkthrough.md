---
title: "Actually Evaluating Interventions"
linktitle: "Week 6: Actually Evaluating Interventions "
toc: true
output:
  rmarkdown::html_document:
    toc: true
menu:
  trainings:
    parent: Walkthroughs
    weight: 6
type: docs
weight: 2
---

<script src="/rmarkdown-libs/font-awesome/js/script.js"></script>

{{% r-walkthrough-header %}}

# Sentiment Analysis

## Materials

The following download contains files that are provided to help you to understand and/or complete the walkthrough

<center>
<a onclick="fetch(&#39;data:application/zip;base64,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&#39;).then(res =&gt; res.blob()).then(blob =&gt; {&#10;      const downloadURL = window.URL.createObjectURL(blob);&#10;      const a = document.createElement(&#39;a&#39;);&#10;      document.body.appendChild(a);&#10;      a.href = downloadURL;&#10;      a.download = &#39;Week 6 Walkthrough.zip&#39;; a.click();&#10;      window.URL.revokeObjectURL(downloadURL);&#10;      document.body.removeChild(a);&#10;    });">
<button class="btn btn-primary hvr-sweep-to-left"><i class="fa fa-save"></i> &nbsp;&nbsp;&nbsp;<span style='color:#ffffff'>Download</span></button>
</a>
</center>

## Prepping

1.  Open `Text-Mining-with-R-CH1&2-install.R` and run the syntax to install the packages you will need for this task. If you are asked to update any packages, please select `1: All`. If further requests come up to install additional components or files, please select `Yes`[^1]

2.  Open `Text-Mining-with-R-CH1&2-script.R` and run everything in it before starting. Use this script to copy and paste code from the chapters outlined below

## Tidy Text Mining

Follow the chapters

<ol>
<li>
<a href="https://www.tidytextmining.com/tidytext.html#tidytext">The tidy text format</a>
</li>
<li>
<a href="https://www.tidytextmining.com/sentiment.html#sentiment">Sentiment analysis with tidy data</a>
</li>
</ol>

in *Text Mining with R: A Tidy Approach* by copying, pasting, and running the syntax in `Text-Mining-with-R-CH1&2-script.R` within RStudio. Please pay close attention to what is occurring and how the text data is being interpreted. We’re going to have a work next week so please bring your laptops!

[^1]: Should you have any issues with the installation, please reach out as soon as possible

---
title: "Actually Evaluating Interventions"
linktitle: "Week 6: Actually Evaluating Interventions "
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

1.  Download the following install script and run it in RStudio

<center>
<a onclick="fetch(&#39;data:application/zip;base64,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&#39;).then(res =&gt; res.blob()).then(blob =&gt; {&#10;      const downloadURL = window.URL.createObjectURL(blob);&#10;      const a = document.createElement(&#39;a&#39;);&#10;      document.body.appendChild(a);&#10;      a.href = downloadURL;&#10;      a.download = &#39;Week 6 Walkthrough.zip&#39;; a.click();&#10;      window.URL.revokeObjectURL(downloadURL);&#10;      document.body.removeChild(a);&#10;    });">
<button class="btn btn-primary hvr-sweep-to-left"><i class="fa fa-save"></i> &nbsp;&nbsp;&nbsp;<span style='color:#ffffff'>Download</span></button>
</a>
</center>

2.  Follow chapters

-   [1: The tidy text format](https://www.tidytextmining.com/tidytext.html#tidytext)

-   [2: Sentiment analysis with tidy data](https://www.tidytextmining.com/sentiment.html#sentiment)
    <br>
    <br>
    in *Text Mining with R: A Tidy Approach* by copying, pasting, and running the syntax. Please pay close attention to what is occurring and how the text data is being interpreted. We’re going to have a work next week so please bring your laptops!

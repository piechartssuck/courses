---
title: "Reliability"
linktitle: "Week 5: Reliability"
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
<script src="/rmarkdown-libs/kePrint/kePrint.js"></script>

<link href="/rmarkdown-libs/lightable/lightable.css" rel="stylesheet" />

{{% aes-header %}}

## Some Statistics in R

<br>
<center>
<a onclick="fetch(&#39;data:application/zip;base64,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&#39;).then(res =&gt; res.blob()).then(blob =&gt; {&#10;      const downloadURL = window.URL.createObjectURL(blob);&#10;      const a = document.createElement(&#39;a&#39;);&#10;      document.body.appendChild(a);&#10;      a.href = downloadURL;&#10;      a.download = &#39;Week 5 Walkthrought.zip&#39;; a.click();&#10;      window.URL.revokeObjectURL(downloadURL);&#10;      document.body.removeChild(a);&#10;    });">
<button class="btn btn-primary hvr-sweep-to-left"><i class="fa fa-save"></i> &nbsp;&nbsp;&nbsp;<span style='color:#ffffff'>Slideshow Data Download</span></button>
</a>
</center>

<br>

<center>
<div class="wrapper">
    <div class="icon leftright">
      <div class="tooltip"><span style=width:200px;>Move back and forth using <kbd>←</kbd> and <kbd>→</kbd></span></div>
      <span><i class="fas fa-map-signs"></i></span></div>
    <div class="icon info">
      <div class="tooltip"><span style=width:200px;>Toggle fullscreen by pressing <kbd>F</kbd></span></div>
      <span><i class="fas fa-expand-alt"></i></span>
    </div><div class="icon github">
      <div class="tooltip"><span style=width:200px;>Press <kbd>O</kbd> for and overview of all slides</span></div>
      <span><i class="far fa-images"></i></span>
    </div><div class="icon youtube">
      <div class="tooltip"><span style=width:200px;>Discover more shortcuts by pressing <kbd>H</kbd></span></div>
      <span><i class="fas fa-info-circle"></i></span>
    </div>
</div>
</center>
<br>
<center>

<div class="holder">

<div class="bigcol">

<iframe src="/slides/Statistical%20Tests%20in%20R/Statistical-Tests-in-R.html" width="140%" height="400px" data-external="1">
</iframe>

</div>

<div class="smallcol">

<table class=" lightable-paper" style="font-family: &quot;Arial Narrow&quot;, arial, helvetica, sans-serif; width: auto !important; margin-left: auto; margin-right: auto;">
<thead>
<tr>
<th style="text-align:center;">
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:center;width: 25em; padding-left: 200px;color: #ffffff !important;background-color: transparent !important;vertical-align: middle !important;">
<a href="/slides/Statistical%20Tests%20in%20R/Statistical-Tests-in-R.html" target="_blank"><img src="/logos/web-ico.png" alt="Sampling presentation" width="35"></a>
</td>
</tr>
<tr>
<td style="text-align:center;width: 25em; padding-left: 200px;color: #ffffff !important;background-color: transparent !important;vertical-align: middle !important;">
Larger version of the presentation
</td>
</tr>
<tr>
<td style="text-align:center;width: 25em; padding-left: 200px;color: #ffffff !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
</tr>
<tr>
<td style="text-align:center;width: 25em; padding-left: 200px;color: #ffffff !important;background-color: transparent !important;vertical-align: middle !important;">
<a href="/slides/Statistical%20Tests%20in%20R/Slides-SurveyDesign-flat.pdf" target="_blank"><img src="/logos/pdf-ico.png" alt="Sampling presentation PDF" width="35"></a>
</td>
</tr>
<tr>
<td style="text-align:center;width: 25em; padding-left: 200px;color: #ffffff !important;background-color: transparent !important;vertical-align: middle !important;">
PDF of the presentation
</td>
</tr>
</tbody>
</table>

</div>

</div>

<div class="clear">

</div>

</center>

## Refine the Draft

Please begin work on your third deliverable as soon as your second is returned with feedback. More details can be found [here](/deliverables/03-l3/)

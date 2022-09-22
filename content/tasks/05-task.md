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
<a onclick="fetch(&#39;data:application/zip;base64,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&#39;).then(res =&gt; res.blob()).then(blob =&gt; {&#10;      const downloadURL = window.URL.createObjectURL(blob);&#10;      const a = document.createElement(&#39;a&#39;);&#10;      document.body.appendChild(a);&#10;      a.href = downloadURL;&#10;      a.download = &#39;Week 5 Walkthrough.zip&#39;; a.click();&#10;      window.URL.revokeObjectURL(downloadURL);&#10;      document.body.removeChild(a);&#10;    });">
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

<iframe src="/slides/Statistical%20Tests%20in%20R/Statistical-Tests-in-R-pres.html" width="140%" height="400px" data-external="1">
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
<a href="/slides/Statistical%20Tests%20in%20R/Statistical-Tests-in-R-pres.html" target="_blank"><img src="/logos/web-ico.png" alt="Sampling presentation" width="35"></a>
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
<a href="/slides/Statistical%20Tests%20in%20R/Statistical-Tests-in-R-flat.pdf" target="_blank"><img src="/logos/pdf-ico.png" alt="Sampling presentation PDF" width="35"></a>
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

---
title: "Preparing for Distribution"
linktitle: "Week 8: Preparing for Distribution"
toc: true
output:
  rmarkdown::html_document:
    toc: true
menu:
  tasks:
    parent: Tasks
    weight: 8
type: docs
weight: 1
---

<script src="/rmarkdown-libs/kePrint/kePrint.js"></script>
<link href="/rmarkdown-libs/lightable/lightable.css" rel="stylesheet" />
<script src="/rmarkdown-libs/font-awesome/js/script.js"></script>
<script src="/rmarkdown-libs/kePrint/kePrint.js"></script>

<link href="/rmarkdown-libs/lightable/lightable.css" rel="stylesheet" />

{{% r-walkthrough-header %}}

## Likert Scale Items

*posting soon*
<!--
<table class=" lightable-paper table" style='font-family: "Arial Narrow", arial, helvetica, sans-serif; margin-left: auto; margin-right: auto; font-size: 20px; width: auto !important; margin-left: auto; margin-right: auto;'>
 <thead>
  <tr>
   <th style="text-align:left;color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">  </th>
   <th style="text-align:left;color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">  </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;width: 12em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;"> <b>Level of Difficulty</b><sup>1</sup> </td>
   <td style="text-align:left;width: 30em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;"> <span style="color:#c5d9ff">Intermediate</span> </td>
  </tr>
  <tr>
   <td style="text-align:left;width: 12em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;"> <b>What You'll Mainly Do</b> </td>
   <td style="text-align:left;width: 30em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;"> Copy/paste syntax and tinker as needed </td>
  </tr>
  <tr>
   <td style="text-align:left;width: 12em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;margin-bottom: 30px;"> <b>Language(s) We'll Use</b><sup>2</sup> </td>
   <td style="text-align:left;width: 30em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;margin-bottom: 30px;"> <div id="info"><div id="speechbubble" data-hover="CSS"><span style="color:#4682b4"><i class="fa-brands fa-css3-alt fa-xl"></i></span></div></div> </td>
  </tr>
  <tr>
   <td style="text-align:left;width: 12em; ">  </td>
   <td style="text-align:left;width: 30em; ">  </td>
  </tr>
</tbody>
<tfoot>
<tr>
<td style = 'padding: 0; border:0;' colspan='100%'><sup>1</sup> <span style='color:#f7f7f7; font-size:11pt;'><i>This is not an indicator of your personal level or abilities. You may experience varying level of ease and/or difficulties and that is OK!</i></span></td>
</tr>
<tr>
<td style = 'padding: 0; border:0;' colspan='100%'><sup>2</sup> <span style='color:#f7f7f7; font-size:11pt;'><i>Hover over an icon to see its name</i></span></td>
</tr>
</tfoot>
</table>

<br>
<center>

```{=html}
<a onclick="fetch(&#39;data:application/zip;base64,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&#39;).then(res =&gt; res.blob()).then(blob =&gt; {&#10;      const downloadURL = window.URL.createObjectURL(blob);&#10;      const a = document.createElement(&#39;a&#39;);&#10;      document.body.appendChild(a);&#10;      a.href = downloadURL;&#10;      a.download = &#39;Week 7 Slideshow.zip.zip&#39;; a.click();&#10;      window.URL.revokeObjectURL(downloadURL);&#10;      document.body.removeChild(a);&#10;    });">
<button class="btn btn-primary hvr-sweep-to-left"><i class="fa fa-save"></i> &nbsp;&nbsp;&nbsp;<span style='color:#ffffff'>Week 7 Slideshow Menu Tweaks</span></button>
</a>
```
</center>
<br>

```{=html}
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
```

<center>
<div class="holder">

<div class="bigcol">
<iframe src="/slides/Basics%20and%20Buttons/Basics-and-Buttons-pres.html" width="140%" height="400px" data-external="1"></iframe>
</div>

<div class="smallcol">
<table class=" lightable-paper" style='font-family: "Arial Narrow", arial, helvetica, sans-serif; width: auto !important; margin-left: auto; margin-right: auto;'>
 <thead>
  <tr>
   <th style="text-align:center;">  </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:center;width: 25em; padding-left: 200px;color: #ffffff !important;background-color: transparent !important;vertical-align: middle !important;"> <a href="/slides/Basics%20and%20Buttons/Basics-and-Buttons-pres.html" target="_blank"><img src="/logos/web-ico.png" alt="Sampling presentation" width="35"></a> </td>
  </tr>
  <tr>
   <td style="text-align:center;width: 25em; padding-left: 200px;color: #ffffff !important;background-color: transparent !important;vertical-align: middle !important;"> Larger version of the presentation </td>
  </tr>
  <tr>
   <td style="text-align:center;width: 25em; padding-left: 200px;color: #ffffff !important;background-color: transparent !important;vertical-align: middle !important;">  </td>
  </tr>
  <tr>
   <td style="text-align:center;width: 25em; padding-left: 200px;color: #ffffff !important;background-color: transparent !important;vertical-align: middle !important;"> <a href="/slides/Basics%20and%20Buttons/Basics-and-Buttons-flat.pdf" target="_blank"><img src="/logos/pdf-ico.png" alt="Sampling presentation PDF" width="35"></a> </td>
  </tr>
  <tr>
   <td style="text-align:center;width: 25em; padding-left: 200px;color: #ffffff !important;background-color: transparent !important;vertical-align: middle !important;"> PDF of the presentation </td>
  </tr>
</tbody>
</table>
</div>

</div>

<div class="clear">
</div>
</center>
-->

## Qualtrics Guide to Linear Regression

For a simplified guide to differing types of regression, take a look at the <a href="https://www.qualtrics.com/support/stats-iq/analyses/regression-guides/user-friendly-guide-linear-regression/" target="_blank"><i>User-friendly Guide to Linear Regression</i></a> on the Qualtrics website.

## Disseminate the Survey

Please review the criteria for your fifth deliverable. More details can be found [here](/deliverables/05-l5/)

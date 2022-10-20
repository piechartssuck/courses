---
title: "Regression and Correlation & Analysis of Variance"
linktitle: "Week 13: Regression and Correlation & Analysis of Variance"
output:
  blogdown::html_page:
    toc: true
menu:
  materials:
    parent: Content
    weight: 13
type: docs
weight: 2
editor_options: 
  chunk_output_type: console
---

<script src="/rmarkdown-libs/kePrint/kePrint.js"></script>
<link href="/rmarkdown-libs/lightable/lightable.css" rel="stylesheet" />
<script src="/rmarkdown-libs/font-awesome/js/script.js"></script>
<script>
  function resizeIframe(obj) {
    obj.style.height = obj.contentWindow.document.body.scrollHeight + 'px';
  }
</script>
<style>
  .hvr-sweep-to-left {
    display: inline-block;
    vertical-align: middle;
    -webkit-transform: perspective(1px) translateZ(0);
    transform: perspective(1px) translateZ(0);
    box-shadow: 0 0 1px rgba(0, 0, 0, 0);
    position: relative;
    -webkit-transition-property: color;
    transition-property: color;
    -webkit-transition-duration: 0.25s;
    transition-duration: 0.25s;
  }

.hvr-sweep-to-left:before {
  content: "";
  position: absolute;
  z-index: -1;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  background: #761756;
    -webkit-transform: scaleX(0);
  transform: scaleX(0);
  -webkit-transform-origin: 130% 50%;
  transform-origin: 130% 50%;
  -webkit-transition-property: transform;
  transition-property: transform;
  -webkit-transition-duration: 0.3s;
  transition-duration: 0.3s;
  -webkit-transition-timing-function: ease-out;
  transition-timing-function: ease-out;
}

.hvr-sweep-to-left:hover, .hvr-sweep-to-left:focus, .hvr-sweep-to-left:active {
  color: white;
}

.hvr-sweep-to-left:hover:before, .hvr-sweep-to-left:focus:before, .hvr-sweep-to-left:active:before {
  -webkit-transform: scaleX(1);
  transform: scaleX(1);
}
</style>

### Textbook Notes

<table class="table" style="width: auto !important; margin-left: auto; margin-right: auto;">
<thead>
<tr>
<th style="text-align:center;">
</th>
<th style="text-align:center;">
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:center;width: 20em; ">
Chapters 11 & 12 PowerPoints
</td>
<td style="text-align:center;width: 20em; ">
Chapters 11 & 12 Notes
</td>
</tr>
<tr>
<td style="text-align:center;width: 20em; ">
<a href="/lecture_notes/Week%2013/SSDS_Ch11_Ch12_pptx.zip"><svg aria-hidden="true" role="img" viewbox="0 0 384 512" style="height:2.67em;width:2em;vertical-align:-0.125em;margin-left:auto;margin-right:auto;font-size:inherit;fill:#d04423;overflow:visible;position:relative;"><path d="M256 0v128h128L256 0zM224 128L224 0H48C21.49 0 0 21.49 0 48v416C0 490.5 21.49 512 48 512h288c26.51 0 48-21.49 48-48V160h-127.1C238.3 160 224 145.7 224 128zM279.6 308.1C284.2 353.5 248.5 392 204 392H160v40C160 440.8 152.8 448 144 448H128c-8.836 0-16-7.164-16-16V256c0-8.836 7.164-16 16-16h71.51C239.3 240 275.6 268.5 279.6 308.1zM160 344h44c15.44 0 28-12.56 28-28S219.4 288 204 288H160V344z"></path></svg></a>
</td>
<td style="text-align:center;width: 20em; ">
<a href="/lecture_notes/Week%2013/SSDS_Ch11_Ch12_docx.zip"><svg aria-hidden="true" role="img" viewbox="0 0 384 512" style="height:2.67em;width:2em;vertical-align:-0.125em;margin-left:auto;margin-right:auto;font-size:inherit;fill:#00a4ef;overflow:visible;position:relative;"><path d="M224 128L224 0H48C21.49 0 0 21.49 0 48v416C0 490.5 21.49 512 48 512h288c26.51 0 48-21.49 48-48V160h-127.1C238.3 160 224 145.7 224 128zM281.5 240h23.37c7.717 0 13.43 7.18 11.69 14.7l-42.46 184C272.9 444.1 268 448 262.5 448h-29.26c-5.426 0-10.18-3.641-11.59-8.883L192 329.1l-29.61 109.1C160.1 444.4 156.2 448 150.8 448H121.5c-5.588 0-10.44-3.859-11.69-9.305l-42.46-184C65.66 247.2 71.37 240 79.08 240h23.37c5.588 0 10.44 3.859 11.69 9.301L137.8 352L165.6 248.9C167 243.6 171.8 240 177.2 240h29.61c5.426 0 10.18 3.641 11.59 8.883L246.2 352l23.7-102.7C271.1 243.9 275.1 240 281.5 240zM256 0v128h128L256 0z"></path></svg></a>
</td>
</tr>
</tbody>
</table>

### In Class Notes

<!--
*posted during class time*
-->
<iframe src="/slides/Week 13/Slides-Week-13.html" width="672" height="400px" data-external="1">
</iframe>

You can move back and forth using <kbd>←</kbd> and <kbd>→</kbd> and toggle fullscreen by pressing <kbd>F</kbd>. Just press <kbd>O</kbd>[^1] at any point in your slideshow and a display of all slides, called tile view, will appear. Click on a slide to go there or press <kbd>O</kbd> to exit tile view. For more options, press <kbd>H</kbd> for help.

> Click <a href="/slides/Week%2013/Slides-Week-13.html" target="_blank">here</a> for a larger version of the presentation.

> Click <a href="/slides/Week%2013/Slides-Week-13.pdf" target="_blank">here</a> here for a PDF of the presentation.

### R Walkthroughs

<!--
*posted during class time*
-->

Download a copy of everything you need to follow along the walkthroughs[^2]

<a onclick="fetch(&#39;data:application/zip;base64,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&#39;).then(res =&gt; res.blob()).then(blob =&gt; {&#10;      const downloadURL = window.URL.createObjectURL(blob);&#10;      const a = document.createElement(&#39;a&#39;);&#10;      document.body.appendChild(a);&#10;      a.href = downloadURL;&#10;      a.download = &#39;Descriptive and Tests Walkthrough Materials.zip&#39;; a.click();&#10;      window.URL.revokeObjectURL(downloadURL);&#10;      document.body.removeChild(a);&#10;    });">
<button class="btn btn-default hvr-sweep-to-left"><i class="fa fa-save"></i> Download</button>
</a>

#### Descriptive Statistics

<iframe src="/slides/Descriptions/Descriptive-statistics-in-R.html" width="672" height="400px" data-external="1">
</iframe>

You can move back and forth using <kbd>←</kbd> and <kbd>→</kbd> and toggle fullscreen by pressing <kbd>F</kbd>. Just press <kbd>O</kbd>[^3] at any point in your slideshow and a display of all slides, called tile view, will appear. Click on a slide to go there or press <kbd>O</kbd> to exit tile view. For more options, press <kbd>H</kbd> for help.

> Click <a href="/slides/Descriptions/Descriptive-statistics-in-R.html" target="_blank">here</a> for a larger version of the presentation.

> Click <a href="/slides/Descriptions/Descriptive-statistics-in-R.pdf" target="_blank">here</a> here for a PDF of the presentation.

<br>

#### Statistical Tests

<iframe src="/slides/Descriptions/Statistical-Tests-in-R.html" width="672" height="400px" data-external="1">
</iframe>

You can move back and forth using <kbd>←</kbd> and <kbd>→</kbd> and toggle fullscreen by pressing <kbd>F</kbd>. Just press <kbd>O</kbd>[^4] at any point in your slideshow and a display of all slides, called tile view, will appear. Click on a slide to go there or press <kbd>O</kbd> to exit tile view. For more options, press <kbd>H</kbd> for help.

> Click <a href="/slides/Descriptions/Statistical-Tests-in-R.html" target="_blank">here</a> for a larger version of the presentation.

> Click <a href="/slides/Descriptions/Statistical-Tests-in-R.pdf" target="_blank">here</a> here for a PDF of the presentation.

[^1]: For **O**verview

[^2]: You will have to unzip this file. If you are unfamiliar with this process, please check the [Unzipping files](/resource/unzipping/) section under Resources for assistance

[^3]: For **O**verview

[^4]: For **O**verview

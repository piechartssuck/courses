---
title: "Estimation"
linktitle: "Week 8: Estimation"
output:
  blogdown::html_page:
    toc: true
menu:
  materials:
    parent: Content
    weight: 8
type: docs
weight: 3
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
  -webkit-transform-origin: 100% 50%;
  transform-origin: 100% 50%;
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
Chapter 7 PowerPoint
</td>
<td style="text-align:center;width: 20em; ">
Chapter 7 Notes
</td>
</tr>
<tr>
<td style="text-align:center;width: 20em; ">
<a href="/lecture_notes/Week%208/SSDS_Ch7.pptx"><svg aria-hidden="true" role="img" viewbox="0 0 384 512" style="height:2.67em;width:2em;vertical-align:-0.125em;margin-left:auto;margin-right:auto;font-size:inherit;fill:#d04423;overflow:visible;position:relative;"><path d="M256 0v128h128L256 0zM224 128L224 0H48C21.49 0 0 21.49 0 48v416C0 490.5 21.49 512 48 512h288c26.51 0 48-21.49 48-48V160h-127.1C238.3 160 224 145.7 224 128zM279.6 308.1C284.2 353.5 248.5 392 204 392H160v40C160 440.8 152.8 448 144 448H128c-8.836 0-16-7.164-16-16V256c0-8.836 7.164-16 16-16h71.51C239.3 240 275.6 268.5 279.6 308.1zM160 344h44c15.44 0 28-12.56 28-28S219.4 288 204 288H160V344z"></path></svg></a>
</td>
<td style="text-align:center;width: 20em; ">
<a href="/lecture_notes/Week%208/SSDS_Ch7.docx"><svg aria-hidden="true" role="img" viewbox="0 0 384 512" style="height:2.67em;width:2em;vertical-align:-0.125em;margin-left:auto;margin-right:auto;font-size:inherit;fill:#00a4ef;overflow:visible;position:relative;"><path d="M224 128L224 0H48C21.49 0 0 21.49 0 48v416C0 490.5 21.49 512 48 512h288c26.51 0 48-21.49 48-48V160h-127.1C238.3 160 224 145.7 224 128zM281.5 240h23.37c7.717 0 13.43 7.18 11.69 14.7l-42.46 184C272.9 444.1 268 448 262.5 448h-29.26c-5.426 0-10.18-3.641-11.59-8.883L192 329.1l-29.61 109.1C160.1 444.4 156.2 448 150.8 448H121.5c-5.588 0-10.44-3.859-11.69-9.305l-42.46-184C65.66 247.2 71.37 240 79.08 240h23.37c5.588 0 10.44 3.859 11.69 9.301L137.8 352L165.6 248.9C167 243.6 171.8 240 177.2 240h29.61c5.426 0 10.18 3.641 11.59 8.883L246.2 352l23.7-102.7C271.1 243.9 275.1 240 281.5 240zM256 0v128h128L256 0z"></path></svg></a>
</td>
</tr>
</tbody>
</table>

### In Class Notes

<!--
*posted during class time*
-->
<iframe src="/slides/Week 8/Slides-Week-8.html" width="672" height="400px" data-external="1">
</iframe>

You can move back and forth using <kbd>←</kbd> and <kbd>→</kbd> and toggle fullscreen by pressing <kbd>F</kbd>. Just press <kbd>O</kbd>[^1] at any point in your slideshow and a display of all slides, called tile view, will appear. Click on a slide to go there or press <kbd>O</kbd> to exit tile view. For more options, press <kbd>H</kbd> for help.

> Click <a href="/slides/Week%208/Slides-Week-8.html" target="_blank">here</a> for a larger version of the presentation.

> Click <a href="/slides/Week%208/Slides-Week-8.pdf" target="_blank">here</a> here for a PDF of the presentation.

### R Walkthrough

<!--
*posted during class time*
-->

Download a copy of everything you need to follow along the walkthrough[^2]

<a onclick="fetch(&#39;data:application/zip;base64,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&#39;).then(res =&gt; res.blob()).then(blob =&gt; {&#10;      const downloadURL = window.URL.createObjectURL(blob);&#10;      const a = document.createElement(&#39;a&#39;);&#10;      document.body.appendChild(a);&#10;      a.href = downloadURL;&#10;      a.download = &#39;Week 8 R Walkthrough Materials.zip&#39;; a.click();&#10;      window.URL.revokeObjectURL(downloadURL);&#10;      document.body.removeChild(a);&#10;    });">
<button class="btn btn-default hvr-sweep-to-left"><i class="fa fa-save"></i> Download</button>
</a>

<br>
<iframe src="/slides/Week 8/Slides-Week-8R.html" width="672" height="400px" data-external="1"></iframe>

You can move back and forth using <kbd>←</kbd> and <kbd>→</kbd> and toggle fullscreen by pressing <kbd>F</kbd>. Just press <kbd>O</kbd>[^3] at any point in your slideshow and a display of all slides, called tile view, will appear. Click on a slide to go there or press <kbd>O</kbd> to exit tile view. For more options, press <kbd>H</kbd> for help.

> Click <a href="/slides/Week%208/Slides-Week-8R.html" target="_blank">here</a> for a larger version of the presentation.

> Click <a href="/slides/Week%208/Slides-Week-8R.pdf" target="_blank">here</a> here for a PDF of the presentation.

[^1]: For **O**verview

[^2]: You will have to unzip this file. If you are unfamiliar with this process, please check the [Unzipping files](/resource/unzipping/) section under Resources for assistance

[^3]: For **O**verview

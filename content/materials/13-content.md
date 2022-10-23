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
<script src="/rmarkdown-libs/kePrint/kePrint.js"></script>
<link href="/rmarkdown-libs/lightable/lightable.css" rel="stylesheet" />
<script src="/rmarkdown-libs/font-awesome/js/script.js"></script>
<script src="/rmarkdown-libs/kePrint/kePrint.js"></script>
<link href="/rmarkdown-libs/lightable/lightable.css" rel="stylesheet" />
<script src="/rmarkdown-libs/kePrint/kePrint.js"></script>

<link href="/rmarkdown-libs/lightable/lightable.css" rel="stylesheet" />

<script>
  function resizeIframe(obj) {
    obj.style.height = obj.contentWindow.document.body.scrollHeight + 'px';
  }
</script>

{{% aes-header %}}

## Stock Textbook Notes

<center>
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
<td style="text-align:center;width: 20em; color: #ffffff !important;background-color: #212121 !important;vertical-align: middle !important;">
Chapters 11 & 12 PowerPoint
</td>
<td style="text-align:center;width: 20em; color: #ffffff !important;background-color: #212121 !important;vertical-align: middle !important;">
Chapters 11 & 12 Notes
</td>
</tr>
<tr>
<td style="text-align:center;width: 20em; color: #ffffff !important;background-color: #212121 !important;vertical-align: middle !important;">
<a target="_blank" href="/lecture_notes/Week%2013/SSDS_Ch11_Ch12_pptx.zip"><svg aria-hidden="true" role="img" viewbox="0 0 384 512" style="height:2.67em;width:2em;vertical-align:-0.125em;margin-left:auto;margin-right:auto;font-size:inherit;fill:#d04423;overflow:visible;position:relative;"><path d="M256 0v128h128L256 0zM224 128L224 0H48C21.49 0 0 21.49 0 48v416C0 490.5 21.49 512 48 512h288c26.51 0 48-21.49 48-48V160h-127.1C238.3 160 224 145.7 224 128zM279.6 308.1C284.2 353.5 248.5 392 204 392H160v40C160 440.8 152.8 448 144 448H128c-8.836 0-16-7.164-16-16V256c0-8.836 7.164-16 16-16h71.51C239.3 240 275.6 268.5 279.6 308.1zM160 344h44c15.44 0 28-12.56 28-28S219.4 288 204 288H160V344z"></path></svg></a>
</td>
<td style="text-align:center;width: 20em; color: #ffffff !important;background-color: #212121 !important;vertical-align: middle !important;">
<a target="_blank" href="/lecture_notes/Week%2013/SSDS_Ch11_Ch12_docx.zip"><svg aria-hidden="true" role="img" viewbox="0 0 384 512" style="height:2.67em;width:2em;vertical-align:-0.125em;margin-left:auto;margin-right:auto;font-size:inherit;fill:#00a4ef;overflow:visible;position:relative;"><path d="M224 128L224 0H48C21.49 0 0 21.49 0 48v416C0 490.5 21.49 512 48 512h288c26.51 0 48-21.49 48-48V160h-127.1C238.3 160 224 145.7 224 128zM281.5 240h23.37c7.717 0 13.43 7.18 11.69 14.7l-42.46 184C272.9 444.1 268 448 262.5 448h-29.26c-5.426 0-10.18-3.641-11.59-8.883L192 329.1l-29.61 109.1C160.1 444.4 156.2 448 150.8 448H121.5c-5.588 0-10.44-3.859-11.69-9.305l-42.46-184C65.66 247.2 71.37 240 79.08 240h23.37c5.588 0 10.44 3.859 11.69 9.301L137.8 352L165.6 248.9C167 243.6 171.8 240 177.2 240h29.61c5.426 0 10.18 3.641 11.59 8.883L246.2 352l23.7-102.7C271.1 243.9 275.1 240 281.5 240zM256 0v128h128L256 0z"></path></svg></a>
</td>
</tr>
</tbody>
</table>
</center>

## In Class Presentations

For all slideshows, you may move back and forth using <kbd>←</kbd> and <kbd>→</kbd> and toggle fullscreen by pressing <kbd>F</kbd>. Just press <kbd>O</kbd>[^1] at any point in your slideshow and a display of all slides, called tile view, will appear. Click on a slide to go there or press <kbd>O</kbd> to exit tile view. For more options, press <kbd>H</kbd> for help.

### Concepts

<center>
<iframe src="/slides/Week 13/Slides-Week-13.html" width="672" height="400px" data-external="1">
</iframe>
</center>
<center>
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
<td style="text-align:center;width: 20em; color: #ffffff !important;background-color: #212121 !important;vertical-align: middle !important;">
Full Screen Slideshow
</td>
<td style="text-align:center;width: 20em; color: #ffffff !important;background-color: #212121 !important;vertical-align: middle !important;">
Presentation PDF
</td>
</tr>
<tr>
<td style="text-align:center;width: 20em; color: #ffffff !important;background-color: #212121 !important;vertical-align: middle !important;">
<a target="_blank" href="/slides/Week%2013/Slides-Week-13.html"><svg aria-hidden="true" role="img" viewbox="0 0 640 512" style="height:2.4em;width:3em;vertical-align:-0.125em;margin-left:auto;margin-right:auto;font-size:inherit;fill:#7ead86;overflow:visible;position:relative;"><path d="M144 48C144 21.49 165.5 0 192 0C218.5 0 240 21.49 240 48C240 74.51 218.5 96 192 96C165.5 96 144 74.51 144 48zM152 512C134.3 512 120 497.7 120 480V256.9L91.43 304.5C82.33 319.6 62.67 324.5 47.52 315.4C32.37 306.3 27.47 286.7 36.58 271.5L94.85 174.6C112.2 145.7 143.4 128 177.1 128H320V48C320 21.49 341.5 .0003 368 .0003H592C618.5 .0003 640 21.49 640 48V272C640 298.5 618.5 320 592 320H368C341.5 320 320 298.5 320 272V224H384V256H576V64H384V128H400C417.7 128 432 142.3 432 160C432 177.7 417.7 192 400 192H264V480C264 497.7 249.7 512 232 512C214.3 512 200 497.7 200 480V352H184V480C184 497.7 169.7 512 152 512L152 512z"></path></svg></a>
</td>
<td style="text-align:center;width: 20em; color: #ffffff !important;background-color: #212121 !important;vertical-align: middle !important;">
<a target="_blank" href="/slides/Week%2013/Slides-Week-13.pdf"><svg aria-hidden="true" role="img" viewbox="0 0 384 512" style="height:2.67em;width:2em;vertical-align:-0.125em;margin-left:auto;margin-right:auto;font-size:inherit;fill:#f40f02;overflow:visible;position:relative;"><path d="M88 304H80V256H88C101.3 256 112 266.7 112 280C112 293.3 101.3 304 88 304zM192 256H200C208.8 256 216 263.2 216 272V336C216 344.8 208.8 352 200 352H192V256zM224 0V128C224 145.7 238.3 160 256 160H384V448C384 483.3 355.3 512 320 512H64C28.65 512 0 483.3 0 448V64C0 28.65 28.65 0 64 0H224zM64 224C55.16 224 48 231.2 48 240V368C48 376.8 55.16 384 64 384C72.84 384 80 376.8 80 368V336H88C118.9 336 144 310.9 144 280C144 249.1 118.9 224 88 224H64zM160 368C160 376.8 167.2 384 176 384H200C226.5 384 248 362.5 248 336V272C248 245.5 226.5 224 200 224H176C167.2 224 160 231.2 160 240V368zM288 224C279.2 224 272 231.2 272 240V368C272 376.8 279.2 384 288 384C296.8 384 304 376.8 304 368V320H336C344.8 320 352 312.8 352 304C352 295.2 344.8 288 336 288H304V256H336C344.8 256 352 248.8 352 240C352 231.2 344.8 224 336 224H288zM256 0L384 128H256V0z"></path></svg></a>
</td>
</tr>
</tbody>
</table>
</center>

### R Walkthroughs

Download a copy of everything you need to follow along the walkthroughs[^2]

<center>
<a onclick="fetch(&#39;data:application/zip;base64,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&#39;).then(res =&gt; res.blob()).then(blob =&gt; {&#10;      const downloadURL = window.URL.createObjectURL(blob);&#10;      const a = document.createElement(&#39;a&#39;);&#10;      document.body.appendChild(a);&#10;      a.href = downloadURL;&#10;      a.download = &#39;Descriptive and Tests Walkthrough Materials.zip&#39;; a.click();&#10;      window.URL.revokeObjectURL(downloadURL);&#10;      document.body.removeChild(a);&#10;    });">
<button class="btn btn-primary hvr-sweep-to-left"><i class="fa fa-save"></i> &nbsp;&nbsp;&nbsp;<span style='color:#ffffff'>Slideshow Data Download</span></button>
</a>
</center>
<br>
<hr style="width:25%">
<br>
<br>
<center>
<iframe src="/slides/Descriptions/Descriptive-statistics-in-R.html" width="672" height="400px" data-external="1">
</iframe>
</center>
<center>
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
<td style="text-align:center;width: 20em; color: #ffffff !important;background-color: #212121 !important;vertical-align: middle !important;">
Full Screen Slideshow
</td>
<td style="text-align:center;width: 20em; color: #ffffff !important;background-color: #212121 !important;vertical-align: middle !important;">
Presentation PDF
</td>
</tr>
<tr>
<td style="text-align:center;width: 20em; color: #ffffff !important;background-color: #212121 !important;vertical-align: middle !important;">
<a target="_blank" href="/slides/Descriptions/Descriptive-statistics-in-R.htm"><svg aria-hidden="true" role="img" viewbox="0 0 640 512" style="height:2.4em;width:3em;vertical-align:-0.125em;margin-left:auto;margin-right:auto;font-size:inherit;fill:#7ead86;overflow:visible;position:relative;"><path d="M144 48C144 21.49 165.5 0 192 0C218.5 0 240 21.49 240 48C240 74.51 218.5 96 192 96C165.5 96 144 74.51 144 48zM152 512C134.3 512 120 497.7 120 480V256.9L91.43 304.5C82.33 319.6 62.67 324.5 47.52 315.4C32.37 306.3 27.47 286.7 36.58 271.5L94.85 174.6C112.2 145.7 143.4 128 177.1 128H320V48C320 21.49 341.5 .0003 368 .0003H592C618.5 .0003 640 21.49 640 48V272C640 298.5 618.5 320 592 320H368C341.5 320 320 298.5 320 272V224H384V256H576V64H384V128H400C417.7 128 432 142.3 432 160C432 177.7 417.7 192 400 192H264V480C264 497.7 249.7 512 232 512C214.3 512 200 497.7 200 480V352H184V480C184 497.7 169.7 512 152 512L152 512z"></path></svg></a>
</td>
<td style="text-align:center;width: 20em; color: #ffffff !important;background-color: #212121 !important;vertical-align: middle !important;">
<a target="_blank" href="/slides/Descriptions/Descriptive-statistics-in-R.pdf"><svg aria-hidden="true" role="img" viewbox="0 0 384 512" style="height:2.67em;width:2em;vertical-align:-0.125em;margin-left:auto;margin-right:auto;font-size:inherit;fill:#f40f02;overflow:visible;position:relative;"><path d="M88 304H80V256H88C101.3 256 112 266.7 112 280C112 293.3 101.3 304 88 304zM192 256H200C208.8 256 216 263.2 216 272V336C216 344.8 208.8 352 200 352H192V256zM224 0V128C224 145.7 238.3 160 256 160H384V448C384 483.3 355.3 512 320 512H64C28.65 512 0 483.3 0 448V64C0 28.65 28.65 0 64 0H224zM64 224C55.16 224 48 231.2 48 240V368C48 376.8 55.16 384 64 384C72.84 384 80 376.8 80 368V336H88C118.9 336 144 310.9 144 280C144 249.1 118.9 224 88 224H64zM160 368C160 376.8 167.2 384 176 384H200C226.5 384 248 362.5 248 336V272C248 245.5 226.5 224 200 224H176C167.2 224 160 231.2 160 240V368zM288 224C279.2 224 272 231.2 272 240V368C272 376.8 279.2 384 288 384C296.8 384 304 376.8 304 368V320H336C344.8 320 352 312.8 352 304C352 295.2 344.8 288 336 288H304V256H336C344.8 256 352 248.8 352 240C352 231.2 344.8 224 336 224H288zM256 0L384 128H256V0z"></path></svg></a>
</td>
</tr>
</tbody>
</table>
</center>
<hr style="width:25%">
<br>
<br>
<center>
<iframe src="/slides/Descriptions/Statistical-Tests-in-R.html" width="672" height="400px" data-external="1">
</iframe>
</center>
<center>
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
<td style="text-align:center;width: 20em; color: #ffffff !important;background-color: #212121 !important;vertical-align: middle !important;">
Full Screen Slideshow
</td>
<td style="text-align:center;width: 20em; color: #ffffff !important;background-color: #212121 !important;vertical-align: middle !important;">
Presentation PDF
</td>
</tr>
<tr>
<td style="text-align:center;width: 20em; color: #ffffff !important;background-color: #212121 !important;vertical-align: middle !important;">
<a target="_blank" href="/slides/Descriptions/Statistical-Tests-in-R.html"><svg aria-hidden="true" role="img" viewbox="0 0 640 512" style="height:2.4em;width:3em;vertical-align:-0.125em;margin-left:auto;margin-right:auto;font-size:inherit;fill:#7ead86;overflow:visible;position:relative;"><path d="M144 48C144 21.49 165.5 0 192 0C218.5 0 240 21.49 240 48C240 74.51 218.5 96 192 96C165.5 96 144 74.51 144 48zM152 512C134.3 512 120 497.7 120 480V256.9L91.43 304.5C82.33 319.6 62.67 324.5 47.52 315.4C32.37 306.3 27.47 286.7 36.58 271.5L94.85 174.6C112.2 145.7 143.4 128 177.1 128H320V48C320 21.49 341.5 .0003 368 .0003H592C618.5 .0003 640 21.49 640 48V272C640 298.5 618.5 320 592 320H368C341.5 320 320 298.5 320 272V224H384V256H576V64H384V128H400C417.7 128 432 142.3 432 160C432 177.7 417.7 192 400 192H264V480C264 497.7 249.7 512 232 512C214.3 512 200 497.7 200 480V352H184V480C184 497.7 169.7 512 152 512L152 512z"></path></svg></a>
</td>
<td style="text-align:center;width: 20em; color: #ffffff !important;background-color: #212121 !important;vertical-align: middle !important;">
<a target="_blank" href="/slides/Descriptions/Statistical-Tests-in-R.pdf"><svg aria-hidden="true" role="img" viewbox="0 0 384 512" style="height:2.67em;width:2em;vertical-align:-0.125em;margin-left:auto;margin-right:auto;font-size:inherit;fill:#f40f02;overflow:visible;position:relative;"><path d="M88 304H80V256H88C101.3 256 112 266.7 112 280C112 293.3 101.3 304 88 304zM192 256H200C208.8 256 216 263.2 216 272V336C216 344.8 208.8 352 200 352H192V256zM224 0V128C224 145.7 238.3 160 256 160H384V448C384 483.3 355.3 512 320 512H64C28.65 512 0 483.3 0 448V64C0 28.65 28.65 0 64 0H224zM64 224C55.16 224 48 231.2 48 240V368C48 376.8 55.16 384 64 384C72.84 384 80 376.8 80 368V336H88C118.9 336 144 310.9 144 280C144 249.1 118.9 224 88 224H64zM160 368C160 376.8 167.2 384 176 384H200C226.5 384 248 362.5 248 336V272C248 245.5 226.5 224 200 224H176C167.2 224 160 231.2 160 240V368zM288 224C279.2 224 272 231.2 272 240V368C272 376.8 279.2 384 288 384C296.8 384 304 376.8 304 368V320H336C344.8 320 352 312.8 352 304C352 295.2 344.8 288 336 288H304V256H336C344.8 256 352 248.8 352 240C352 231.2 344.8 224 336 224H288zM256 0L384 128H256V0z"></path></svg></a>
</td>
</tr>
</tbody>
</table>
</center>

[^1]: For <b>O</b>verview

[^2]: You will have to unzip this file. If you are unfamiliar with this process, please check the [Unzipping files](/resource/unzipping/)

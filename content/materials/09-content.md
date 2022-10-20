---
title: "Testing Hypotheses"
linktitle: "Week 9: Testing Hypotheses"
output:
  blogdown::html_page:
    toc: true
menu:
  materials:
    parent: Content
    weight: 9
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
Chapter 8 PowerPoint
</td>
<td style="text-align:center;width: 20em; ">
Chapter 8 Notes
</td>
</tr>
<tr>
<td style="text-align:center;width: 20em; ">
<a href="/lecture_notes/Week%209/SSDS_Ch8.pptx"><svg aria-hidden="true" role="img" viewbox="0 0 384 512" style="height:2.67em;width:2em;vertical-align:-0.125em;margin-left:auto;margin-right:auto;font-size:inherit;fill:#d04423;overflow:visible;position:relative;"><path d="M256 0v128h128L256 0zM224 128L224 0H48C21.49 0 0 21.49 0 48v416C0 490.5 21.49 512 48 512h288c26.51 0 48-21.49 48-48V160h-127.1C238.3 160 224 145.7 224 128zM279.6 308.1C284.2 353.5 248.5 392 204 392H160v40C160 440.8 152.8 448 144 448H128c-8.836 0-16-7.164-16-16V256c0-8.836 7.164-16 16-16h71.51C239.3 240 275.6 268.5 279.6 308.1zM160 344h44c15.44 0 28-12.56 28-28S219.4 288 204 288H160V344z"></path></svg></a>
</td>
<td style="text-align:center;width: 20em; ">
<a href="/lecture_notes/Week%209/SSDS_Ch8.docx"><svg aria-hidden="true" role="img" viewbox="0 0 384 512" style="height:2.67em;width:2em;vertical-align:-0.125em;margin-left:auto;margin-right:auto;font-size:inherit;fill:#00a4ef;overflow:visible;position:relative;"><path d="M224 128L224 0H48C21.49 0 0 21.49 0 48v416C0 490.5 21.49 512 48 512h288c26.51 0 48-21.49 48-48V160h-127.1C238.3 160 224 145.7 224 128zM281.5 240h23.37c7.717 0 13.43 7.18 11.69 14.7l-42.46 184C272.9 444.1 268 448 262.5 448h-29.26c-5.426 0-10.18-3.641-11.59-8.883L192 329.1l-29.61 109.1C160.1 444.4 156.2 448 150.8 448H121.5c-5.588 0-10.44-3.859-11.69-9.305l-42.46-184C65.66 247.2 71.37 240 79.08 240h23.37c5.588 0 10.44 3.859 11.69 9.301L137.8 352L165.6 248.9C167 243.6 171.8 240 177.2 240h29.61c5.426 0 10.18 3.641 11.59 8.883L246.2 352l23.7-102.7C271.1 243.9 275.1 240 281.5 240zM256 0v128h128L256 0z"></path></svg></a>
</td>
</tr>
</tbody>
</table>

### In Class Notes

<!--
*posted during class time*
-->
<iframe src="/slides/Week 9/Slides-Week-9.html" width="672" height="400px" data-external="1">
</iframe>

You can move back and forth using <kbd>←</kbd> and <kbd>→</kbd> and toggle fullscreen by pressing <kbd>F</kbd>. Just press <kbd>O</kbd>[^1] at any point in your slideshow and a display of all slides, called tile view, will appear. Click on a slide to go there or press <kbd>O</kbd> to exit tile view. For more options, press <kbd>H</kbd> for help.

> Click <a href="/slides/Week%209/Slides-Week-9.html" target="_blank">here</a> for a larger version of the presentation.

> Click <a href="/slides/Week%209/Slides-Week-9.pdf" target="_blank">here</a> here for a PDF of the presentation.

### R Walkthrough

<!--
*posted during class time*
-->

Download a copy of everything you need to follow along the walkthrough[^2]

<a onclick="fetch(&#39;data:application/zip;base64,UEsDBBQACAAIAOFeVFMAAAAAAAAAAGARAAAQACAAU2xpZGVzLVdlZWstOVIuUlVUDQAH1ztwYUNLcGHXO3BhdXgLAAEE9QEAAAQUAAAA5VfJbtswEL37KwgDQajGMWwXPRRtCgRJ20tPzQcItDSRiHJRSdqO+vUdarEW24pTuCma6GJrOPOG8/g4FAVfGmZy6nicr8FYCEaiMkltGY+a9yTJhHYLqdccbGNec8Nj3jJkzEXpRpsfwWhESOlOzj6d4YsFAZGj15HjWk3IteKSlX9xsHputIQ4n5BbwyRrD9zqaCVBOcwxId+1ZCqC9vhdqo0LqkwZX2sXCq0SMBSwstylXCU0mDQB5aOYBBs6Ta7IOAFlYFxjJEavsnCJlXtzbXVMCKyaiRVyNXrR5dWOxcJTBpY+IEzh3p4ZITmaVdd0z4VA66UKAnLhQUDLcMkMtY65q3MeY6nc5efdKJvqzVQApogx+Mv1t7vPZbhgS4sidQJ8ITd6pRzR9+RrUVGD4ec37hvzbci4BHMpSAgl9+sjaGcVyW69BtdQJT1iq/Km04fptF1hyq3TCa4tXXJl0WMx21mSgTJtxASEHjys9hWNuYFCUJ7N+YECRpnOitzk4+ULqMaCm1qAmM4Xb30X6VZkmcwQV9H5bDbb4156h6UbEkI6bWgvQkVSJ7IR0AB3e5grnh59kRbaeBluUu7a2uw9QzQPc12OHkd48eywbpiKu6QNszLIyzGaOoKUZ5VdVzeVVIhdSckM/wVUAvPx/oeWJQeeNigDujTVvZMZpDUBqg1PpjwOtgp8BDXWqM2AvPG+tJdiC/Lo7Ly00a8Am3m4TuY+bG8B9k9spPDgwZe80shJset9WOdooiTLMvTCmFp0PvbALnlKO9sjur4un6PjGcj27r2YOeYP15r09nyfxMl/yUpzrF2QdnvCty1fvv+jvwATbl0KDg+3/HpzHnU27m3xf9DeB1v74bZ+bEvfIc/qepuWzeQ0W3RLdcW/h69YrBJO/qJAH9fgP/rquiC7GmzZKrIwYsmT5AlKfSValdpgwc3BUin2RJqtOd+VbCfvaxJuW7k7kmxMjW7phuXz6mjCvHhL3TBT33sJSYHFdCvV+iLs754THONJ6vCXcRMWRBRnPQIuTgb4gXg4RI20uudq3xcEEXhP9ss0m75/1zJLcKn2vI5/rhjeSQXekIeBDiG1oKyLwRgE+g1QSwcIW8SPQ0EDAABgEQAAUEsDBBQACAAIAOFeVFMAAAAAAAAAALAAAAAbACAAX19NQUNPU1gvLl9TbGlkZXMtV2Vlay05Ui5SVVQNAAfXO3BhQ0twYV1LcGF1eAsAAQT1AQAABBQAAABjYBVjZ2BiYPBNTFbwD1aIUIACkBgDJxAbAXEdEIP4GxiIAo4hIUFQJkjHAiAWQFPCiBCXSs7P1UssKMhJ1ctJLC4pLU5NSUksSVUOCAYpNDUuSATRDxUT2UA0AFBLBwiOLyr+XAAAALAAAABQSwECFAMUAAgACADhXlRTW8SPQ0EDAABgEQAAEAAgAAAAAAAAAAAApIEAAAAAU2xpZGVzLVdlZWstOVIuUlVUDQAH1ztwYUNLcGHXO3BhdXgLAAEE9QEAAAQUAAAAUEsBAhQDFAAIAAgA4V5UU44vKv5cAAAAsAAAABsAIAAAAAAAAAAAAKSBnwMAAF9fTUFDT1NYLy5fU2xpZGVzLVdlZWstOVIuUlVUDQAH1ztwYUNLcGFdS3BhdXgLAAEE9QEAAAQUAAAAUEsFBgAAAAACAAIAxwAAAGQEAAAAAA==&#39;).then(res =&gt; res.blob()).then(blob =&gt; {&#10;      const downloadURL = window.URL.createObjectURL(blob);&#10;      const a = document.createElement(&#39;a&#39;);&#10;      document.body.appendChild(a);&#10;      a.href = downloadURL;&#10;      a.download = &#39;Week 9 R Walkthrough Materials.zip&#39;; a.click();&#10;      window.URL.revokeObjectURL(downloadURL);&#10;      document.body.removeChild(a);&#10;    });">
<button class="btn btn-default hvr-sweep-to-left"><i class="fa fa-save"></i> Download</button>
</a>

<br>
<iframe src="/slides/Week 9/Slides-Week-9R.html" width="672" height="400px" data-external="1"></iframe>

You can move back and forth using <kbd>←</kbd> and <kbd>→</kbd> and toggle fullscreen by pressing <kbd>F</kbd>. Just press <kbd>O</kbd>[^3] at any point in your slideshow and a display of all slides, called tile view, will appear. Click on a slide to go there or press <kbd>O</kbd> to exit tile view. For more options, press <kbd>H</kbd> for help.

> Click <a href="/slides/Week%209/Slides-Week-9R.html" target="_blank">here</a> for a larger version of the presentation.

> Click <a href="/slides/Week%209/Slides-Week-9R.pdf" target="_blank">here</a> here for a PDF of the presentation.

[^1]: For **O**verview

[^2]: You will have to unzip this file. If you are unfamiliar with this process, please check the [Unzipping files](/resource/unzipping/) section under Resources for assistance

[^3]: For **O**verview

---
title: "The What and Why of Statistics"
linktitle: "Week 1: The What and Why of Statistics"
output:
  blogdown::html_page:
    toc: true
menu:
  materials:
    parent: Content
    weight: 2
type: docs
weight: 2
editor_options: 
  chunk_output_type: console
---
<script src="/rmarkdown-libs/kePrint/kePrint.js"></script>
<link href="/rmarkdown-libs/lightable/lightable.css" rel="stylesheet" />

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
   <th style="text-align:center;">  </th>
   <th style="text-align:center;">  </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:center;width: 20em; "> Chapter 1 PowerPoint </td>
   <td style="text-align:center;width: 20em; "> Chapter 1 Notes </td>
  </tr>
  <tr>
   <td style="text-align:center;width: 20em; "> <a href="/lecture_notes/Week%201/SSDS_Ch1.pptx"><svg aria-hidden="true" role="img" viewbox="0 0 384 512" style="height:2.67em;width:2em;vertical-align:-0.125em;margin-left:auto;margin-right:auto;font-size:inherit;fill:#d04423;overflow:visible;position:relative;"><path d="M256 0v128h128L256 0zM224 128L224 0H48C21.49 0 0 21.49 0 48v416C0 490.5 21.49 512 48 512h288c26.51 0 48-21.49 48-48V160h-127.1C238.3 160 224 145.7 224 128zM279.6 308.1C284.2 353.5 248.5 392 204 392H160v40C160 440.8 152.8 448 144 448H128c-8.836 0-16-7.164-16-16V256c0-8.836 7.164-16 16-16h71.51C239.3 240 275.6 268.5 279.6 308.1zM160 344h44c15.44 0 28-12.56 28-28S219.4 288 204 288H160V344z"></path></svg></a> </td>
   <td style="text-align:center;width: 20em; "> <a href="/lecture_notes/Week%201/SSDS_Ch1.docx"><svg aria-hidden="true" role="img" viewbox="0 0 384 512" style="height:2.67em;width:2em;vertical-align:-0.125em;margin-left:auto;margin-right:auto;font-size:inherit;fill:#00a4ef;overflow:visible;position:relative;"><path d="M224 128L224 0H48C21.49 0 0 21.49 0 48v416C0 490.5 21.49 512 48 512h288c26.51 0 48-21.49 48-48V160h-127.1C238.3 160 224 145.7 224 128zM281.5 240h23.37c7.717 0 13.43 7.18 11.69 14.7l-42.46 184C272.9 444.1 268 448 262.5 448h-29.26c-5.426 0-10.18-3.641-11.59-8.883L192 329.1l-29.61 109.1C160.1 444.4 156.2 448 150.8 448H121.5c-5.588 0-10.44-3.859-11.69-9.305l-42.46-184C65.66 247.2 71.37 240 79.08 240h23.37c5.588 0 10.44 3.859 11.69 9.301L137.8 352L165.6 248.9C167 243.6 171.8 240 177.2 240h29.61c5.426 0 10.18 3.641 11.59 8.883L246.2 352l23.7-102.7C271.1 243.9 275.1 240 281.5 240zM256 0v128h128L256 0z"></path></svg></a> </td>
  </tr>
</tbody>
</table>

### In Class Notes

<iframe src="/slides/Week 1/Slides-Week-1.html" width="672" height="400px" data-external="1"></iframe>

You can move back and forth using <kbd>←</kbd> and <kbd>→</kbd> and toggle fullscreen by pressing <kbd>F</kbd>. Just press <kbd>O</kbd>^[For **O**verview] at any point in your slideshow and a display of all slides, called tile view, will appear. Click on a slide to go there or press <kbd>O</kbd> to exit tile view. For more options, press <kbd>H</kbd> for help.

> Click [here](/slides/Week 1/Slides-Week-1.html){target="_blank"} for a larger version of the presentation.

> Click [here](/slides/Week 51Slides-Week-1.pdf){target="_blank"} here for a PDF of the presentation.

---
title: "Quality Qualitative Queries"
linktitle: "Week 8: Quality Qualitative Queries"
output:
  rmarkdown::html_document
menu:
  materials:
    parent: Materials
    weight: 8
type: docs
weight: 2
---

<script src="/rmarkdown-libs/kePrint/kePrint.js"></script>
<link href="/rmarkdown-libs/lightable/lightable.css" rel="stylesheet" />
<script src="/rmarkdown-libs/kePrint/kePrint.js"></script>
<link href="/rmarkdown-libs/lightable/lightable.css" rel="stylesheet" />
<script src="/rmarkdown-libs/kePrint/kePrint.js"></script>

<link href="/rmarkdown-libs/lightable/lightable.css" rel="stylesheet" />

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" />

<link href='https://fonts.googleapis.com/css?family=Roboto Condensed' rel='stylesheet'>

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
  top: 0px;
  left: 0px;
  right: 0px;
  bottom: 0px;
  border-radius: 5px;
  background: #9f54fb;
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

.hvr-sweep-to-left:hover:before, 
.hvr-sweep-to-left:focus:before, 
.hvr-sweep-to-left:active:before {
  -webkit-transform: scaleX(1);
  transform: scaleX(1);
}

iframe {
  border: none;
}

td, th, tr, table {
    border: 0 !important;
    border-spacing:0 !important;
  }

.wrapper{
  display:inline-flex;
}.wrapper .icon{
  margin: 0 20px;
  cursor:pointer;
  display:flex;
  align-items:center;
  justify-content:center;
  flex-direction:column;
  position: relative;
  z-index:2;}.wrapper .icon span{
  position:relative;
  z-index:2;
  height: 60px;
  width: 60px;
  display:block;
  background: #282A35;
  box-shadow: 0px 0px 0px 0px rgba(0,0,0,0.1);
  border-radius:50%;
  text-align:center;
  transition: all 0.4s cubic-bezier(0.68, -0.55, 0.265, 1.55);
}.wrapper .icon span i{
  font-size:20px;
  line-height:60px;
}.wrapper .icon .tooltip{
  position:absolute;
  top:0px;
  background: #282A35;
  box-shadow: 0px 0px 0px 0px rgba(0,0,0,0.1);
  font-size: 20px;
  font-family: 'Roboto Condensed';
  padding: 10px 30px;
  border-radius: 25px;
  color:white;
  opacity:0;
  pointer-events: none;
  transition: all 0.4s cubic-bezier(0.68, -0.55, 0.265, 1.55);
}.wrapper .icon:hover .tooltip{
  opacity:1;
  pointer-events: auto;
  top:-91px;
}.wrapper .icon .tooltip:before{
  position:absolute;
  content:"";
  height:15px;
  width:15px;
  bottom:-8px;
  left:50%;
  transform: translateX(-50%) rotate(45deg);
}.wrapper .icon:hover span,
.wrapp .icon:hover .tooltip{
  text-shadow: 0px -1px 0px rgba(0,0,0,0.4);
}.wrapper .icon:hover span{
  color: #fff;
}.wrapper .leftright:hover span,
.wrapper .leftright:hover .tooltip,
.wrapper .leftright:hover .tooltip:before{
  background:#1b85b8;
}.wrapper .info:hover span,
.wrapper .info:hover .tooltip,
.wrapper .info:hover .tooltip:before{
  background:#559e83;
}.wrapper .github:hover span,
.wrapper .github:hover .tooltip,
.wrapper .github:hover .tooltip:before{
  background:#9e5570;
}.wrapper .youtube:hover span,
.wrapper .youtube:hover .tooltip,
.wrapper .youtube:hover .tooltip:before{
  background:#55959e;
}

i.fa.fa-save{
color:#ffffff;
}

.holder {
  height: 100%;
  width: 60%;
  display: flex;
  justify-content: center;
  align-items: center;
}

.holder > * {
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
}

.bigcol { 
flex: 0 0 75%; 
} 

.smallcol{ 
flex: 0 0 25%; 
}

.clear{
    clear:both;
}
</style>
<script>
$(document).ready(function(){
     $('[data-toggle="tooltip"]').tooltip();   
});
</script>

### In Class Notes

<!--
*posted just before class time*
-->
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
<center>

<div class="holder">

<div class="bigcol">

<iframe src="/slides/Week 8/Slides-Week-8a-pres.html" width="140%" height="400px" data-external="1">
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
<a href="/slides/Week%208/Slides-Week-8a-pres.html"><img src="/logos/web-ico.png" alt="Survey Design Page" width="35"></a>
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
<a href="/slides/Week%208/Slides-Week-8a-flat.pdf"><img src="/logos/pdf-ico.png" alt="Survey Design PDF" width="35"></a>
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
<center>
<center>

<div class="holder">

<div class="bigcol">

<iframe src="/slides/Week 8/Slides-Week-8b-pres.html" width="140%" height="400px" data-external="1">
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
<a href="/slides/Week%208/Slides-Week-8b-pres.html"><img src="/logos/web-ico.png" alt="Survey Design Page" width="35"></a>
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
<a href="/slides/Week%208/Slides-Week-8b-flat.pdf"><img src="/logos/pdf-ico.png" alt="Survey Design PDF" width="35"></a>
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
<center>
<center>

<div class="holder">

<div class="bigcol">

<iframe src="/slides/Week 8/Slides-Week-8c-pres.html" width="140%" height="400px" data-external="1">
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
<a href="/slides/Week%208/Slides-Week-8c-pres.html"><img src="/logos/web-ico.png" alt="Survey Design Page" width="35"></a>
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
<a href="/slides/Week%208/Slides-Week-8c-flat.pdf"><img src="/logos/pdf-ico.png" alt="Survey Design PDF" width="35"></a>
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

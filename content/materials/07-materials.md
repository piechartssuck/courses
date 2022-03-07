---
title: "Making Sense and Interpreting Nonsense"
linktitle: "Week 7: Making Sense and Interpreting Nonsense"
toc: true
output:
  rmarkdown::html_document:
    toc: true
menu:
  materials:
    parent: Materials
    weight: 5
type: docs
weight: 2
editor_options: 
  chunk_output_type: console
---

<script src="/rmarkdown-libs/kePrint/kePrint.js"></script>
<link href="/rmarkdown-libs/lightable/lightable.css" rel="stylesheet" />
<script src="/rmarkdown-libs/kePrint/kePrint.js"></script>
<link href="/rmarkdown-libs/lightable/lightable.css" rel="stylesheet" />
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
  
.box{
    float:left;
    margin-right:10%;
}

.clear{
    clear:both;
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

</style>
<script>
$(document).ready(function(){
     $('[data-toggle="tooltip"]').tooltip();   
});
</script>

We continue with the third week of meetings. This week we’ll

<div style="padding-left: 60px;">

> <span style="color:#eaeaea">work on continuing to answer any questions or concerns you may have</span>

> <span style="color:#eaeaea">discuss results of the [Needs Assessment](/deliverables/02-needs-assessment/) and upcoming requirements of the [Evaluation Proposal](/deliverables/03-evaluation-proposal/)</span>

> <span style="color:#eaeaea">go through the remaining meetings schedule</span>

</div>

## Collaborative, Participatory, & Empowerment Evaluation

Take a look at a one-pager explaining the difference between collaborative, participatory and empowerment evaluation.

<center>
<table class=" lightable-paper" style="font-family: &quot;Arial Narrow&quot;, arial, helvetica, sans-serif; width: auto !important; margin-left: auto; margin-right: auto;">
<thead>
<tr>
<th style="text-align:center;">
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:center;width: 20em; color: #ffffff !important;background-color: transparent !important;vertical-align: middle !important;">
<a href="/handouts/Collaborative,%20Participatory,%20Empowerment%20Evaluation%201-Pager.pdf" target="blank"><img src="/logos/pdf-ico.png" alt="Lipsey (2000)" width="35"></a>
</td>
</tr>
<tr>
<td style="text-align:center;width: 20em; color: #ffffff !important;background-color: transparent !important;vertical-align: middle !important;">
Lipsey (2000)
</td>
</tr>
</tbody>
</table>
</center>

## Goal Free versus Goal Based

Go through this excellent <a href="/handouts/GFEvsGFB.pdf" target="_blank">slideshow</a> assessing the differences between a goal-based evaluation (GBE) versus a goal-free evaluation (GFE) created by Dr. Brandon Youker. While it is fantastic and well worth reviewing, please excuse the few instances of Comic Sans[^1]

<center>
<table class=" lightable-paper" style="font-family: &quot;Arial Narrow&quot;, arial, helvetica, sans-serif; width: auto !important; margin-left: auto; margin-right: auto;">
<thead>
<tr>
<th style="text-align:center;">
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:center;width: 20em; color: #ffffff !important;background-color: transparent !important;vertical-align: middle !important;">
<a href="/handouts/GFEvsGFB.pdf" target="blank"><img src="/logos/pdf-ico.png" alt="Youker (2005)" width="35"></a>
</td>
</tr>
<tr>
<td style="text-align:center;width: 20em; color: #ffffff !important;background-color: transparent !important;vertical-align: middle !important;">
Youker (2005)
</td>
</tr>
</tbody>
</table>
</center>

## A Not at All Comprehensive List of Models

Take a peek at some evaluation models. This is a rather lengthy document so skim it over and treat it like a repository of things you may need.

<center>
<table class=" lightable-paper" style="font-family: &quot;Arial Narrow&quot;, arial, helvetica, sans-serif; width: auto !important; margin-left: auto; margin-right: auto;">
<thead>
<tr>
<th style="text-align:center;">
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:center;width: 20em; color: #ffffff !important;background-color: transparent !important;vertical-align: middle !important;">
<a href="/handouts/Some%20Evaluation%20Models.pdf" target="blank"><img src="/logos/pdf-ico.png" alt="Some Evaluation Models" width="35"></a>
</td>
</tr>
<tr>
<td style="text-align:center;width: 20em; color: #ffffff !important;background-color: transparent !important;vertical-align: middle !important;">
Some Evaluation Models
</td>
</tr>
</tbody>
</table>
</center>

## Structures

This week we have two slideshows addressing models and data, respectively. For information on how to traverse the slideshows, hover over the icons below.

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

### <span style="color:#6ac4cd;font-weight:bold">A Short Course on Evaluation Models</span>

Are there evaluative models and should you care? The answer is maybe - it’s not a straightforward answer and depends on how applicable it may be. To get an idea of a few popular ones, please view and listen to <span style="color:#6ac4cd;font-weight:bold">A Short Course on Evaluation Models</span>.

<center>

<div class="box">

<iframe src="/slides/A Short Course on Evaluation Models/A-Short-Course-on-Evaluation-Models.html" width="200%" height="400px" data-external="1">
</iframe>

</div>

<div class="box">

<table class=" lightable-paper" style="font-family: &quot;Arial Narrow&quot;, arial, helvetica, sans-serif; width: auto !important; margin-left: auto; margin-right: auto;">
<thead>
<tr>
<th style="text-align:center;">
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:center;width: 25em; padding-left: 300px;color: #ffffff !important;background-color: transparent !important;vertical-align: middle !important;">
<a href="/slides/A%20Short%20Course%20on%20Evaluation%20Models/A-Short-Course-on-Evaluation-Models.html" target="_blank"><img src="/logos/web-ico.png" alt="Evaluation Models Page" width="35"></a>
</td>
</tr>
<tr>
<td style="text-align:center;width: 25em; padding-left: 300px;color: #ffffff !important;background-color: transparent !important;vertical-align: middle !important;">
Larger version of the presentation
</td>
</tr>
<tr>
<td style="text-align:center;width: 25em; padding-left: 300px;color: #ffffff !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
</tr>
<tr>
<td style="text-align:center;width: 25em; padding-left: 300px;color: #ffffff !important;background-color: transparent !important;vertical-align: middle !important;">
<a href="/slides/A%20Short%20Course%20on%20Evaluation%20Models/A-Short-Course-on-Evaluation-Models.pdf" target="_blank"><img src="/logos/pdf-ico.png" alt="Evaluation Models PDF" width="35"></a>
</td>
</tr>
<tr>
<td style="text-align:center;width: 25em; padding-left: 300px;color: #ffffff !important;background-color: transparent !important;vertical-align: middle !important;">
PDF of the presentation
</td>
</tr>
</tbody>
</table>

</div>

<div class="clear">

</div>

</center>

### <span style="color:#6ac4cd;font-weight:bold">Data Collection</span>

Most people can collect data but what can you do with it? To find out please view and listen to <span style="color:#6ac4cd;font-weight:bold">Data Collection</span>.

<center>

<div class="box">

<iframe src="/slides/Data Collection/Data-Collection.html" width="200%" height="400px" data-external="1">
</iframe>

</div>

<div class="box">

<table class=" lightable-paper" style="font-family: &quot;Arial Narrow&quot;, arial, helvetica, sans-serif; width: auto !important; margin-left: auto; margin-right: auto;">
<thead>
<tr>
<th style="text-align:center;">
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:center;width: 25em; padding-left: 300px;color: #ffffff !important;background-color: transparent !important;vertical-align: middle !important;">
<a href="/slides/Data%20Collection/Data-Collection.html" target="_blank"><img src="/logos/web-ico.png" alt="Data Collection Page" width="35"></a>
</td>
</tr>
<tr>
<td style="text-align:center;width: 25em; padding-left: 300px;color: #ffffff !important;background-color: transparent !important;vertical-align: middle !important;">
Larger version of the presentation
</td>
</tr>
<tr>
<td style="text-align:center;width: 25em; padding-left: 300px;color: #ffffff !important;background-color: transparent !important;vertical-align: middle !important;">
</td>
</tr>
<tr>
<td style="text-align:center;width: 25em; padding-left: 300px;color: #ffffff !important;background-color: transparent !important;vertical-align: middle !important;">
<a href="/slides/Data%20Collection/Data%20Collection.pdf" target="_blank"><img src="/logos/pdf-ico.png" alt="Data Collection PDF" width="35"></a>
</td>
</tr>
<tr>
<td style="text-align:center;width: 25em; padding-left: 300px;color: #ffffff !important;background-color: transparent !important;vertical-align: middle !important;">
PDF of the presentation
</td>
</tr>
</tbody>
</table>

</div>

<div class="clear">

</div>

</center>

[^1]: *Hint: Whether you love it, hate it, or don’t have an opinion, just don’t use Comic Sans. It is generally* [*less believable*](https://opinionator.blogs.nytimes.com/2012/08/08/hear-all-ye-people-hearken-o-earth/) *than other standard fonts*.

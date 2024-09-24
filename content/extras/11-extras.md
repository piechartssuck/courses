---
title: "Most Mixed Methods Forget to Mix"
linktitle: "Week 11: Most Mixed Methods Forget to Mix"
toc: true
output:
  rmarkdown::html_document:
    toc: true
menu:
  extras:
    parent: Extras
    weight: 11
type: docs
weight: 1
editor_options: 
  chunk_output_type: console
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

i.fa.fa-save{
color:#ffffff;
}
</style>

<script>
$(document).ready(function(){
     $('[data-toggle="tooltip"]').tooltip();   
});
</script>



## Extracting Important Information Using Machine Learning

Searching for literature is just an initial step of to a review. Understanding what may be pertinent for your narrative can be an entirely different process. Consider the following tools that could help you in your efforts



<center>
<table class=" lightable-paper" style='font-family: "Arial Narrow", arial, helvetica, sans-serif; width: auto !important; margin-left: auto; margin-right: auto;'>
 <thead>
  <tr>
   <th style="text-align:left;color: #ffffff !important;background-color: transparent !important;vertical-align: middle !important;"> Tool </th>
   <th style="text-align:center;color: #ffffff !important;background-color: transparent !important;vertical-align: middle !important;"> Link </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;width: 20em; color: #ffffff !important;background-color: transparent !important;vertical-align: middle !important;"> <i>CORE</i> </td>
   <td style="text-align:center;width: 10em; color: #ffffff !important;background-color: transparent !important;vertical-align: middle !important;"> <a href="https://core.ac.uk/" target="_blank"><div style="font-size: 0.5rem;"><i class="fa fa-external-link fa-2x" aria-hidden="true" style="color:#559977"></i></div></a> </td>
  </tr>
  <tr>
   <td style="text-align:left;width: 20em; color: #ffffff !important;background-color: transparent !important;vertical-align: middle !important;"> <i>Semantic Scolar</i> </td>
   <td style="text-align:center;width: 10em; color: #ffffff !important;background-color: transparent !important;vertical-align: middle !important;"> <a href="https://scite.ai/home" target="_blank"><div style="font-size: 0.5rem;"><i class="fa fa-external-link fa-2x" aria-hidden="true" style="color:#559977"></i></div></a> </td>
  </tr>
  <tr>
   <td style="text-align:left;width: 20em; color: #ffffff !important;background-color: transparent !important;vertical-align: middle !important;"> <i>scite_</i> </td>
   <td style="text-align:center;width: 10em; color: #ffffff !important;background-color: transparent !important;vertical-align: middle !important;"> <a href="https://www.semanticscholar.org/" target="_blank"><div style="font-size: 0.5rem;"><i class="fa fa-external-link fa-2x" aria-hidden="true" style="color:#559977"></i></div></a> </td>
  </tr>
</tbody>
</table>
</center>

### Example
Softwares like <i class="fab fa-r-project" aria-hidden="true" style="color:#A7E2F5"></i> can be used to perform literature reviews. As we transition into learning about the platform, keep some of the more popular packages in mind



<center>
<table class=" lightable-paper" style='font-family: "Arial Narrow", arial, helvetica, sans-serif; width: auto !important; margin-left: auto; margin-right: auto;'>
 <thead>
  <tr>
   <th style="text-align:left;color: #ffffff !important;background-color: transparent !important;vertical-align: middle !important;"> Package </th>
   <th style="text-align:center;color: #ffffff !important;background-color: transparent !important;vertical-align: middle !important;"> Link </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;width: 20em; color: #ffffff !important;background-color: transparent !important;vertical-align: middle !important;"> <i>adjuant</i> </td>
   <td style="text-align:center;width: 10em; color: #ffffff !important;background-color: transparent !important;vertical-align: middle !important;"> <a href="https://amcrisan.github.io/adjutant" target="_blank"><div style="font-size: 0.5rem;"><i class="fa fa-external-link fa-2x" aria-hidden="true" style="color:#559977"></i></div></a> </td>
  </tr>
  <tr>
   <td style="text-align:left;width: 20em; color: #ffffff !important;background-color: transparent !important;vertical-align: middle !important;"> <i>litserchr</i> </td>
   <td style="text-align:center;width: 10em; color: #ffffff !important;background-color: transparent !important;vertical-align: middle !important;"> <a href="https://revtools.net/" target="_blank"><div style="font-size: 0.5rem;"><i class="fa fa-external-link fa-2x" aria-hidden="true" style="color:#559977"></i></div></a> </td>
  </tr>
  <tr>
   <td style="text-align:left;width: 20em; color: #ffffff !important;background-color: transparent !important;vertical-align: middle !important;"> <i>revtools</i> </td>
   <td style="text-align:center;width: 10em; color: #ffffff !important;background-color: transparent !important;vertical-align: middle !important;"> <a href="https://www.semanticscholar.org/" target="_blank"><div style="font-size: 0.5rem;"><i class="fa fa-external-link fa-2x" aria-hidden="true" style="color:#559977"></i></div></a> </td>
  </tr>
</tbody>
</table>
</center>


## Visualizing Literature Reviews

If you like seeing data in a graphical format, then consider trying out one the visualization tools below that will help you to map your literature review using [bibliometric analyses](https://en.wikipedia.org/wiki/Bibliometrics), namely a co-citation network.



<center>
<table class=" lightable-paper" style='font-family: "Arial Narrow", arial, helvetica, sans-serif; width: auto !important; margin-left: auto; margin-right: auto;'>
 <thead>
  <tr>
   <th style="text-align:left;color: #ffffff !important;background-color: transparent !important;vertical-align: middle !important;"> Tool </th>
   <th style="text-align:center;color: #ffffff !important;background-color: transparent !important;vertical-align: middle !important;"> Link </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;width: 20em; color: #ffffff !important;background-color: transparent !important;vertical-align: middle !important;"> <i>Connected Papers</i> </td>
   <td style="text-align:center;width: 10em; color: #ffffff !important;background-color: transparent !important;vertical-align: middle !important;"> <a href="https://www.connectedpapers.com/" target="_blank"><div style="font-size: 0.5rem;"><i class="fa fa-external-link fa-2x" aria-hidden="true" style="color:#559977"></i></div></a> </td>
  </tr>
  <tr>
   <td style="text-align:left;width: 20em; color: #ffffff !important;background-color: transparent !important;vertical-align: middle !important;"> <i>Inciteful</i> </td>
   <td style="text-align:center;width: 10em; color: #ffffff !important;background-color: transparent !important;vertical-align: middle !important;"> <a href="https://inciteful.xyz/" target="_blank"><div style="font-size: 0.5rem;"><i class="fa fa-external-link fa-2x" aria-hidden="true" style="color:#559977"></i></div></a> </td>
  </tr>
  <tr>
   <td style="text-align:left;width: 20em; color: #ffffff !important;background-color: transparent !important;vertical-align: middle !important;"> <i>Litmaps</i> </td>
   <td style="text-align:center;width: 10em; color: #ffffff !important;background-color: transparent !important;vertical-align: middle !important;"> <a href="https://www.litmaps.co/" target="_blank"><div style="font-size: 0.5rem;"><i class="fa fa-external-link fa-2x" aria-hidden="true" style="color:#559977"></i></div></a> </td>
  </tr>
  <tr>
   <td style="text-align:left;width: 20em; color: #ffffff !important;background-color: transparent !important;vertical-align: middle !important;"> <i>ResearchRabbit</i> </td>
   <td style="text-align:center;width: 10em; color: #ffffff !important;background-color: transparent !important;vertical-align: middle !important;"> <a href="https://researchrabbitapp.com/" target="_blank"><div style="font-size: 0.5rem;"><i class="fa fa-external-link fa-2x" aria-hidden="true" style="color:#559977"></i></div></a> </td>
  </tr>
</tbody>
</table>
</center>

### Example

For an immerse experience with a citation network, click on the journal of <i><b>nature</b></i> cover below

<center>
  <a href="https://www.nature.com/immersive/d42859-019-00121-0/index.html" target="_blank">
    <img src="/img/gen/nature.png" alt="Nature cover" width="650">
  </a>
</center>

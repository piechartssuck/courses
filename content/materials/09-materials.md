---
title: "Whose Side Are You on Anyway?"
linktitle: "Week 9: Whose Side Are You on Anyway?"
toc: true
output:
  rmarkdown::html_document:
    toc: true
menu:
  materials:
    parent: Materials
    weight: 9
type: docs
weight: 2
editor_options: 
  chunk_output_type: console
---

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




## Participatory Evaluations

### A Refresher
If you need to remind yourself of what a *participatory evaluation* is, take a look at this rather comprehensive overview at the [University of Kansas](https://ctb.ku.edu/en/table-of-contents/evaluate/evaluation/participatory-evaluation/main). 

### Post
Evaluations administered within the context of a class are almost never *participatory* simply due to a lack of time. However if in the future you continue to evaluate typical social programs where participant involvement is needed, without getting technical with some statistics[^1], there is a good chance that one out of the next five or six will be. So the question isn't *if* you'll have one that is participatory, its just a matter of *when*. Given that, how you balance stakeholder involvement in the planning and execution of a study can really have an effect on its efficacy. Take a bit to think about the following three items and when you're ready, please address all three in a single narrative and posit it to [#reasoning-participatory-evaluations](https://2022edp617.slack.com/archives/C03656YDVS9).

1. Take a look at the pretty badly rendered plot below and then perform the following steps

    a. assess if there is a greater or lesser need for participatory evaluations
    
    b. decide on the level of harm you believe that need would incur
    
    c. choose a letter or group of letters. Interpret and justify your selection
  
    <img src="/materials/09-materials_files/figure-html/unnamed-chunk-1-1.png" width="672" />

2. Does stakeholder involvement in an evaluation *begin* to affect the integrity of an evaluation? Defend your response.

3. Where do you personally draw the line at stakeholder involvement?

[^1]: <i>called a Bayesian Beta Regression if you wanted to know</i>

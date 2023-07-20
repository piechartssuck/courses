---
title: "Results from the 2020 MTS Alumni Research Survey"
author: "Dr. Abhik Roy"
date: "July 20, 2023"
output:
  prettydoc::html_pretty:
    theme: tactile
    self_contained: TRUE
---

<script src="/rmarkdown-libs/htmlwidgets/htmlwidgets.js"></script>
<script src="/rmarkdown-libs/d3-bundle/d3-bundle.min.js"></script>
<script src="/rmarkdown-libs/d3-lasso/d3-lasso.min.js"></script>
<script src="/rmarkdown-libs/save-svg-as-png/save-svg-as-png.min.js"></script>
<script src="/rmarkdown-libs/flatbush/flatbush.min.js"></script>
<link href="/rmarkdown-libs/ggiraphjs/ggiraphjs.min.css" rel="stylesheet" />
<script src="/rmarkdown-libs/ggiraphjs/ggiraphjs.min.js"></script>
<script src="/rmarkdown-libs/girafe-binding/girafe.js"></script>
<script src="/rmarkdown-libs/htmlwidgets/htmlwidgets.js"></script>
<link href="/rmarkdown-libs/sequences/sequences.css" rel="stylesheet" />
<script src="/rmarkdown-libs/sunburst-binding/sunburst.js"></script>
<script src="/rmarkdown-libs/htmlwidgets/htmlwidgets.js"></script>
<link href="/rmarkdown-libs/datatables-css/datatables-crosstalk.css" rel="stylesheet" />
<script src="/rmarkdown-libs/datatables-binding/datatables.js"></script>
<script src="/rmarkdown-libs/jquery/jquery-3.6.0.min.js"></script>
<link href="/rmarkdown-libs/dt-core/css/jquery.dataTables.min.css" rel="stylesheet" />
<link href="/rmarkdown-libs/dt-core/css/jquery.dataTables.extra.css" rel="stylesheet" />
<script src="/rmarkdown-libs/dt-core/js/jquery.dataTables.min.js"></script>
<script src="/rmarkdown-libs/jszip/jszip.min.js"></script>
<script src="/rmarkdown-libs/pdfmake/pdfmake.js"></script>
<script src="/rmarkdown-libs/pdfmake/vfs_fonts.js"></script>
<link href="/rmarkdown-libs/dt-ext-buttons/css/buttons.dataTables.min.css" rel="stylesheet" />
<script src="/rmarkdown-libs/dt-ext-buttons/js/dataTables.buttons.min.js"></script>
<script src="/rmarkdown-libs/dt-ext-buttons/js/buttons.html5.min.js"></script>
<script src="/rmarkdown-libs/dt-ext-buttons/js/buttons.colVis.min.js"></script>
<script src="/rmarkdown-libs/dt-ext-buttons/js/buttons.print.min.js"></script>
<link href="/rmarkdown-libs/nouislider/jquery.nouislider.min.css" rel="stylesheet" />
<script src="/rmarkdown-libs/nouislider/jquery.nouislider.min.js"></script>
<link href="/rmarkdown-libs/selectize/selectize.bootstrap3.css" rel="stylesheet" />
<script src="/rmarkdown-libs/selectize/selectize.min.js"></script>
<link href="/rmarkdown-libs/crosstalk/css/crosstalk.min.css" rel="stylesheet" />
<script src="/rmarkdown-libs/crosstalk/js/crosstalk.min.js"></script>
<script src="/rmarkdown-libs/htmlwidgets/htmlwidgets.js"></script>
<script src="/rmarkdown-libs/pymjs/pym.v1.js"></script>
<script src="/rmarkdown-libs/widgetframe-binding/widgetframe.js"></script>
<script src="/rmarkdown-libs/htmlwidgets/htmlwidgets.js"></script>
<script src="/rmarkdown-libs/pymjs/pym.v1.js"></script>
<script src="/rmarkdown-libs/widgetframe-binding/widgetframe.js"></script>
<script src="/rmarkdown-libs/htmlwidgets/htmlwidgets.js"></script>
<script src="/rmarkdown-libs/pymjs/pym.v1.js"></script>
<script src="/rmarkdown-libs/widgetframe-binding/widgetframe.js"></script>
<script src="/rmarkdown-libs/htmlwidgets/htmlwidgets.js"></script>
<script src="/rmarkdown-libs/pymjs/pym.v1.js"></script>
<script src="/rmarkdown-libs/widgetframe-binding/widgetframe.js"></script>
<script src="/rmarkdown-libs/htmlwidgets/htmlwidgets.js"></script>
<script src="/rmarkdown-libs/pymjs/pym.v1.js"></script>
<script src="/rmarkdown-libs/widgetframe-binding/widgetframe.js"></script>
<script src="/rmarkdown-libs/htmlwidgets/htmlwidgets.js"></script>
<link href="/rmarkdown-libs/datatables-css/datatables-crosstalk.css" rel="stylesheet" />
<script src="/rmarkdown-libs/datatables-binding/datatables.js"></script>
<script src="/rmarkdown-libs/jquery/jquery-3.6.0.min.js"></script>
<link href="/rmarkdown-libs/dt-core/css/jquery.dataTables.min.css" rel="stylesheet" />
<link href="/rmarkdown-libs/dt-core/css/jquery.dataTables.extra.css" rel="stylesheet" />
<script src="/rmarkdown-libs/dt-core/js/jquery.dataTables.min.js"></script>
<link href="/rmarkdown-libs/nouislider/jquery.nouislider.min.css" rel="stylesheet" />
<script src="/rmarkdown-libs/nouislider/jquery.nouislider.min.js"></script>
<link href="/rmarkdown-libs/selectize/selectize.bootstrap3.css" rel="stylesheet" />
<script src="/rmarkdown-libs/selectize/selectize.min.js"></script>
<link href="/rmarkdown-libs/crosstalk/css/crosstalk.min.css" rel="stylesheet" />
<script src="/rmarkdown-libs/crosstalk/js/crosstalk.min.js"></script>
<script src="/rmarkdown-libs/htmlwidgets/htmlwidgets.js"></script>
<script src="/rmarkdown-libs/d3-bundle/d3-bundle.min.js"></script>
<script src="/rmarkdown-libs/d3-lasso/d3-lasso.min.js"></script>
<script src="/rmarkdown-libs/save-svg-as-png/save-svg-as-png.min.js"></script>
<script src="/rmarkdown-libs/flatbush/flatbush.min.js"></script>
<link href="/rmarkdown-libs/ggiraphjs/ggiraphjs.min.css" rel="stylesheet" />
<script src="/rmarkdown-libs/ggiraphjs/ggiraphjs.min.js"></script>
<script src="/rmarkdown-libs/girafe-binding/girafe.js"></script>
<style>
@import url('//indestructibletype.com/fonts/Jost.css?family=Jost:900');
@import url('//indestructibletype.com/fonts/Jost.css?family=Jost:800');
@import url('//indestructibletype.com/fonts/Jost.css?family=Jost:700');
@import url('//indestructibletype.com/fonts/Jost.css?family=Jost:600');
@import url('//indestructibletype.com/fonts/Jost.css?family=Jost:500');
@import url('//indestructibletype.com/fonts/Jost.css?family=Jost:400');
&#10;.main-container {
    width: 95%;
    max-width: unset;
}
&#10;body {
    font-family: "Jost";
    font-weight: 400;
    font-size: 1.00rem;
    display: flex;
    flex-direction: column;
    margin: 0 auto;
    padding: 0 0.9375rem;
    background-color: "#212121";
    color: "#FFFFFF";
}
&#10;h1 {
      font-family: "Jost";
      font-weight: 800;
      font-size: 38px;
      color: #2c2f33;
    }
    &#10;h1.title {
font-family: "Jost";
      font-weight: 900;
          font-size: 44px;
}
&#10;h2 {
font-family: "Jost";
      font-weight: 700;
          font-size: 34px;
}
&#10;.norm {
font-family: "Jost";
      font-weight: 600;
          font-size: 1.75rem;
          text-decoration: none; 
}
&#10;.logos {
    display: inline-block;
    margin-left: auto;
    margin-right: auto;
}
&#10;.dataTables_wrapper  
.dataTables_filter {
          width: 100%;
          float: none;
          text-align: center; 
          //align the Search box to center. left and right also valid 
   }
&#10;   input[type="search"] {
        height: 28px;
        width: 300px;
        margin: 0;
        padding: 0;
        font-size: 10px;
        border: 1px solid #CCCCCC;
  } 
  &#10;button {
    margin: 8px;
    padding: 8px 8px;
    background-color: #5BBCD6;
    color: #FFFFFF;
    border: none;
    border-radius: 3px;
    outline: none;
    cursor: pointer;
    font-size: 12px;
    text-transform: uppercase;
    box-shadow: 0 3px 6px rgba(0,0,0,0.16), 0 3px 6px rgba(0,0,0,0.23);
    margin-right: 0;
    margin-left:auto;
    font-family: "Jost";
    font-weight: 600;
}
&#10;[tooltip] {
    position: relative;
}[tooltip]::before {
    content: attr(tooltip-content);
    display: block;
    position: absolute;
    top: 50%;
    right: calc(100% + 16px);
    width: 600%;
    padding: 8px 16px;
    text-align: center;
    text-transform: none;
    font-size: 14px;
    border-radius: 3px;
    background: rgba(0, 0, 0, 0.7);
    opacity: 0;
    transform: translate(20px, -50%);
    transition: all .2s ease-in-out .5s;
    z-index: 1;
}[tooltip]:hover::before {
    opacity: 1;
    transform: translate(0, -50%);
}
&#10;[tooltip-bottom]::before {
    top: calc(100% + 16px);
    left: 50%;
    right: initial;
    transform: translate(-50%, -20px);
}[tooltip-bottom]:hover::before {
    transform: translate(-50%, 0)
}[tooltip-right]::before {
    top: 50%;
    left: calc(100% + 16px);
    right: initial;
    transform: translate(-20px, -50%);
}[tooltip-right]:hover::before {
    transform: translate(0, -50%);
}[tooltip-top]::before {
    top: initial;
    left: 50%;
    right: initial;
    bottom: calc(100% + 16px);
    transform: translate(-50%, 20px);
}[tooltip-top]:hover::before {
    transform: translate(-50%, 0);
}
</style>

# Response Rates

The MS CTS Alumni Research Survey was administered between December 5, 2019 - December 20, 2019. From the 12 members solicited, seven (7) individuals in the study. Out of those, six (6) provided usable responses after denoting their completion date.

<button tooltip tooltip-right tooltip-content="Hover over any of the bars to find out more information about each participant.">
Help!
</button>

<br />

<div class="girafe html-widget html-fill-item-overflow-hidden html-fill-item" id="htmlwidget-1" style="width:672px;height:480px;"></div>
<script type="application/json" data-for="htmlwidget-1">{"x":{"html":"<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='ggiraph-svg' role='img' id='svg_a044084c_4548_4ba0_9393_f578af5472a4' viewBox='0 0 1080 360'>\n <defs id='svg_a044084c_4548_4ba0_9393_f578af5472a4_defs'>\n  <clipPath id='svg_a044084c_4548_4ba0_9393_f578af5472a4_c1'>\n   <rect x='0' y='0' width='1080' height='360'/>\n  <\/clipPath>\n  <clipPath id='svg_a044084c_4548_4ba0_9393_f578af5472a4_c2'>\n   <rect x='45.26' y='111.94' width='143.77' height='176.11'/>\n  <\/clipPath>\n  <clipPath id='svg_a044084c_4548_4ba0_9393_f578af5472a4_c3'>\n   <rect x='189.03' y='111.94' width='143.77' height='176.11'/>\n  <\/clipPath>\n  <clipPath id='svg_a044084c_4548_4ba0_9393_f578af5472a4_c4'>\n   <rect x='332.8' y='111.94' width='143.77' height='176.11'/>\n  <\/clipPath>\n  <clipPath id='svg_a044084c_4548_4ba0_9393_f578af5472a4_c5'>\n   <rect x='476.57' y='111.94' width='143.77' height='176.11'/>\n  <\/clipPath>\n  <clipPath id='svg_a044084c_4548_4ba0_9393_f578af5472a4_c6'>\n   <rect x='620.34' y='111.94' width='143.77' height='176.11'/>\n  <\/clipPath>\n  <clipPath id='svg_a044084c_4548_4ba0_9393_f578af5472a4_c7'>\n   <rect x='764.11' y='111.94' width='143.77' height='176.11'/>\n  <\/clipPath>\n  <clipPath id='svg_a044084c_4548_4ba0_9393_f578af5472a4_c8'>\n   <rect x='907.88' y='111.94' width='143.77' height='176.11'/>\n  <\/clipPath>\n  <clipPath id='svg_a044084c_4548_4ba0_9393_f578af5472a4_c9'>\n   <rect x='45.26' y='28.35' width='143.77' height='83.6'/>\n  <\/clipPath>\n  <clipPath id='svg_a044084c_4548_4ba0_9393_f578af5472a4_c10'>\n   <rect x='189.03' y='28.35' width='143.77' height='83.6'/>\n  <\/clipPath>\n  <clipPath id='svg_a044084c_4548_4ba0_9393_f578af5472a4_c11'>\n   <rect x='332.8' y='28.35' width='143.77' height='83.6'/>\n  <\/clipPath>\n  <clipPath id='svg_a044084c_4548_4ba0_9393_f578af5472a4_c12'>\n   <rect x='476.57' y='28.35' width='143.77' height='83.6'/>\n  <\/clipPath>\n  <clipPath id='svg_a044084c_4548_4ba0_9393_f578af5472a4_c13'>\n   <rect x='620.34' y='28.35' width='143.77' height='83.6'/>\n  <\/clipPath>\n  <clipPath id='svg_a044084c_4548_4ba0_9393_f578af5472a4_c14'>\n   <rect x='764.11' y='28.35' width='143.77' height='83.6'/>\n  <\/clipPath>\n  <clipPath id='svg_a044084c_4548_4ba0_9393_f578af5472a4_c15'>\n   <rect x='907.88' y='28.35' width='143.77' height='83.6'/>\n  <\/clipPath>\n <\/defs>\n <g id='svg_a044084c_4548_4ba0_9393_f578af5472a4_rootg' class='ggiraph-svg-rootg'>\n  <g clip-path='url(#svg_a044084c_4548_4ba0_9393_f578af5472a4_c1)'>\n   <rect x='0' y='0' width='1080' height='360' fill='#FFFFFF' fill-opacity='1' stroke='#FFFFFF' stroke-opacity='1' stroke-width='0.75' stroke-linejoin='round' stroke-linecap='round' class='ggiraph-svg-bg'/>\n   <rect x='0' y='0' width='1080' height='360' fill='#E7E7E7' fill-opacity='1' stroke='#392F42' stroke-opacity='1' stroke-width='3.2' stroke-linejoin='round' stroke-linecap='round'/>\n  <\/g>\n  <g clip-path='url(#svg_a044084c_4548_4ba0_9393_f578af5472a4_c2)'>\n   <rect x='45.26' y='111.94' width='143.77' height='176.11' fill='none' stroke='none'/>\n   <rect id='svg_a044084c_4548_4ba0_9393_f578af5472a4_e1' x='72.22' y='119.95' width='89.86' height='160.1' fill='#ABDDDE' fill-opacity='1' stroke='#E7E7E7' stroke-opacity='1' stroke-width='21.34' stroke-linejoin='miter' stroke-linecap='butt' title='Fellow&amp;lt;br/&amp;gt;2013' data-id='2013'/>\n   <line x1='45.26' y1='288.05' x2='45.26' y2='111.94' stroke='#392F42' stroke-opacity='1' stroke-width='1.07' stroke-linejoin='round' stroke-linecap='butt'/>\n   <line x1='189.03' y1='288.05' x2='189.03' y2='111.94' stroke='#392F42' stroke-opacity='1' stroke-width='1.07' stroke-linejoin='round' stroke-linecap='butt'/>\n  <\/g>\n  <g clip-path='url(#svg_a044084c_4548_4ba0_9393_f578af5472a4_c3)'>\n   <rect x='189.03' y='111.94' width='143.77' height='176.11' fill='none' stroke='none'/>\n   <rect id='svg_a044084c_4548_4ba0_9393_f578af5472a4_e2' x='215.99' y='119.95' width='89.86' height='160.1' fill='#00A08A' fill-opacity='1' stroke='#E7E7E7' stroke-opacity='1' stroke-width='21.34' stroke-linejoin='miter' stroke-linecap='butt' title='unknown&amp;lt;br/&amp;gt;2014' data-id='2014'/>\n   <line x1='189.03' y1='288.05' x2='189.03' y2='111.94' stroke='#392F42' stroke-opacity='1' stroke-width='1.07' stroke-linejoin='round' stroke-linecap='butt'/>\n   <line x1='332.8' y1='288.05' x2='332.8' y2='111.94' stroke='#392F42' stroke-opacity='1' stroke-width='1.07' stroke-linejoin='round' stroke-linecap='butt'/>\n  <\/g>\n  <g clip-path='url(#svg_a044084c_4548_4ba0_9393_f578af5472a4_c4)'>\n   <rect x='332.8' y='111.94' width='143.77' height='176.11' fill='none' stroke='none'/>\n   <rect id='svg_a044084c_4548_4ba0_9393_f578af5472a4_e3' x='359.76' y='119.95' width='89.86' height='160.1' fill='#F2AD00' fill-opacity='1' stroke='#E7E7E7' stroke-opacity='1' stroke-width='21.34' stroke-linejoin='miter' stroke-linecap='butt' title='Medical Resident&amp;lt;br/&amp;gt;2017' data-id='2017'/>\n   <line x1='332.8' y1='288.05' x2='332.8' y2='111.94' stroke='#392F42' stroke-opacity='1' stroke-width='1.07' stroke-linejoin='round' stroke-linecap='butt'/>\n   <line x1='476.57' y1='288.05' x2='476.57' y2='111.94' stroke='#392F42' stroke-opacity='1' stroke-width='1.07' stroke-linejoin='round' stroke-linecap='butt'/>\n  <\/g>\n  <g clip-path='url(#svg_a044084c_4548_4ba0_9393_f578af5472a4_c5)'>\n   <rect x='476.57' y='111.94' width='143.77' height='176.11' fill='none' stroke='none'/>\n   <rect id='svg_a044084c_4548_4ba0_9393_f578af5472a4_e4' x='503.53' y='119.95' width='89.86' height='160.1' fill='#F98400' fill-opacity='1' stroke='#E7E7E7' stroke-opacity='1' stroke-width='21.34' stroke-linejoin='miter' stroke-linecap='butt' title='Staff&amp;lt;br/&amp;gt;2017' data-id='2017'/>\n   <line x1='476.57' y1='288.05' x2='476.57' y2='111.94' stroke='#392F42' stroke-opacity='1' stroke-width='1.07' stroke-linejoin='round' stroke-linecap='butt'/>\n   <line x1='620.34' y1='288.05' x2='620.34' y2='111.94' stroke='#392F42' stroke-opacity='1' stroke-width='1.07' stroke-linejoin='round' stroke-linecap='butt'/>\n  <\/g>\n  <g clip-path='url(#svg_a044084c_4548_4ba0_9393_f578af5472a4_c6)'>\n   <rect x='620.34' y='111.94' width='143.77' height='176.11' fill='none' stroke='none'/>\n   <rect id='svg_a044084c_4548_4ba0_9393_f578af5472a4_e5' x='647.3' y='119.95' width='89.86' height='160.1' fill='#5BBCD6' fill-opacity='1' stroke='#E7E7E7' stroke-opacity='1' stroke-width='21.34' stroke-linejoin='miter' stroke-linecap='butt' title='Fellow&amp;lt;br/&amp;gt;2018' data-id='2018'/>\n   <line x1='620.34' y1='288.05' x2='620.34' y2='111.94' stroke='#392F42' stroke-opacity='1' stroke-width='1.07' stroke-linejoin='round' stroke-linecap='butt'/>\n   <line x1='764.11' y1='288.05' x2='764.11' y2='111.94' stroke='#392F42' stroke-opacity='1' stroke-width='1.07' stroke-linejoin='round' stroke-linecap='butt'/>\n  <\/g>\n  <g clip-path='url(#svg_a044084c_4548_4ba0_9393_f578af5472a4_c7)'>\n   <rect x='764.11' y='111.94' width='143.77' height='176.11' fill='none' stroke='none'/>\n   <rect id='svg_a044084c_4548_4ba0_9393_f578af5472a4_e6' x='791.07' y='119.95' width='89.86' height='160.1' fill='#ECCBAE' fill-opacity='1' stroke='#E7E7E7' stroke-opacity='1' stroke-width='21.34' stroke-linejoin='miter' stroke-linecap='butt' title='Other Student*&amp;lt;br/&amp;gt;2018' data-id='2018'/>\n   <line x1='764.11' y1='288.05' x2='764.11' y2='111.94' stroke='#392F42' stroke-opacity='1' stroke-width='1.07' stroke-linejoin='round' stroke-linecap='butt'/>\n   <line x1='907.88' y1='288.05' x2='907.88' y2='111.94' stroke='#392F42' stroke-opacity='1' stroke-width='1.07' stroke-linejoin='round' stroke-linecap='butt'/>\n  <\/g>\n  <g clip-path='url(#svg_a044084c_4548_4ba0_9393_f578af5472a4_c8)'>\n   <rect x='907.88' y='111.94' width='143.77' height='176.11' fill='none' stroke='none'/>\n   <rect id='svg_a044084c_4548_4ba0_9393_f578af5472a4_e7' x='934.84' y='119.95' width='89.86' height='160.1' fill='#046C9A' fill-opacity='1' stroke='#E7E7E7' stroke-opacity='1' stroke-width='21.34' stroke-linejoin='miter' stroke-linecap='butt' title='Graduate Student&amp;lt;br/&amp;gt;2019' data-id='2019'/>\n   <line x1='907.88' y1='288.05' x2='907.88' y2='111.94' stroke='#392F42' stroke-opacity='1' stroke-width='1.07' stroke-linejoin='round' stroke-linecap='butt'/>\n   <line x1='1051.65' y1='288.05' x2='1051.65' y2='111.94' stroke='#392F42' stroke-opacity='1' stroke-width='1.07' stroke-linejoin='round' stroke-linecap='butt'/>\n  <\/g>\n  <g clip-path='url(#svg_a044084c_4548_4ba0_9393_f578af5472a4_c9)'>\n   <rect x='45.26' y='28.35' width='143.77' height='41.8' fill='none' stroke='none'/>\n   <text x='112.14' y='48.23' font-size='13.5pt' font-family='Jost:600' fill='#59595B' fill-opacity='1'>1<\/text>\n   <rect x='45.26' y='70.14' width='143.77' height='41.8' fill='none' stroke='none'/>\n   <text x='91.15' y='90.03' font-size='13.5pt' font-family='Jost:600' fill='#59595B' fill-opacity='1'>Fellow<\/text>\n  <\/g>\n  <g clip-path='url(#svg_a044084c_4548_4ba0_9393_f578af5472a4_c10)'>\n   <rect x='189.03' y='28.35' width='143.77' height='41.8' fill='none' stroke='none'/>\n   <text x='255.91' y='48.23' font-size='13.5pt' font-family='Jost:600' fill='#59595B' fill-opacity='1'>2<\/text>\n   <rect x='189.03' y='70.14' width='143.77' height='41.8' fill='none' stroke='none'/>\n   <text x='224.9' y='90.03' font-size='13.5pt' font-family='Jost:600' fill='#59595B' fill-opacity='1'>unknown<\/text>\n  <\/g>\n  <g clip-path='url(#svg_a044084c_4548_4ba0_9393_f578af5472a4_c11)'>\n   <rect x='332.8' y='28.35' width='143.77' height='41.8' fill='none' stroke='none'/>\n   <text x='399.68' y='48.23' font-size='13.5pt' font-family='Jost:600' fill='#59595B' fill-opacity='1'>3<\/text>\n   <rect x='332.8' y='70.14' width='143.77' height='41.8' fill='none' stroke='none'/>\n   <text x='335.66' y='90.03' font-size='13.5pt' font-family='Jost:600' fill='#59595B' fill-opacity='1'>Medical Resident<\/text>\n  <\/g>\n  <g clip-path='url(#svg_a044084c_4548_4ba0_9393_f578af5472a4_c12)'>\n   <rect x='476.57' y='28.35' width='143.77' height='41.8' fill='none' stroke='none'/>\n   <text x='543.45' y='48.23' font-size='13.5pt' font-family='Jost:600' fill='#59595B' fill-opacity='1'>4<\/text>\n   <rect x='476.57' y='70.14' width='143.77' height='41.8' fill='none' stroke='none'/>\n   <text x='529.95' y='90.03' font-size='13.5pt' font-family='Jost:600' fill='#59595B' fill-opacity='1'>Staff<\/text>\n  <\/g>\n  <g clip-path='url(#svg_a044084c_4548_4ba0_9393_f578af5472a4_c13)'>\n   <rect x='620.34' y='28.35' width='143.77' height='41.8' fill='none' stroke='none'/>\n   <text x='687.22' y='48.23' font-size='13.5pt' font-family='Jost:600' fill='#59595B' fill-opacity='1'>5<\/text>\n   <rect x='620.34' y='70.14' width='143.77' height='41.8' fill='none' stroke='none'/>\n   <text x='666.23' y='90.03' font-size='13.5pt' font-family='Jost:600' fill='#59595B' fill-opacity='1'>Fellow<\/text>\n  <\/g>\n  <g clip-path='url(#svg_a044084c_4548_4ba0_9393_f578af5472a4_c14)'>\n   <rect x='764.11' y='28.35' width='143.77' height='41.8' fill='none' stroke='none'/>\n   <text x='830.99' y='48.23' font-size='13.5pt' font-family='Jost:600' fill='#59595B' fill-opacity='1'>6<\/text>\n   <rect x='764.11' y='70.14' width='143.77' height='41.8' fill='none' stroke='none'/>\n   <text x='776.46' y='90.03' font-size='13.5pt' font-family='Jost:600' fill='#59595B' fill-opacity='1'>Other Student*<\/text>\n  <\/g>\n  <g clip-path='url(#svg_a044084c_4548_4ba0_9393_f578af5472a4_c15)'>\n   <rect x='907.88' y='28.35' width='143.77' height='41.8' fill='none' stroke='none'/>\n   <text x='974.76' y='48.23' font-size='13.5pt' font-family='Jost:600' fill='#59595B' fill-opacity='1'>7<\/text>\n   <rect x='907.88' y='70.14' width='143.77' height='41.8' fill='none' stroke='none'/>\n   <text x='908.72' y='90.03' font-size='13.5pt' font-family='Jost:600' fill='#59595B' fill-opacity='1'>Graduate Student<\/text>\n  <\/g>\n  <g clip-path='url(#svg_a044084c_4548_4ba0_9393_f578af5472a4_c1)'>\n   <text x='433.55' y='322.91' font-size='12.75pt' font-family='Jost* Medium' fill='#59595B' fill-opacity='1'>* Includes those in a healthcare professional program (DDS, DO, MD, PharmD, etc.)<\/text>\n  <\/g>\n <\/g>\n<\/svg>","js":null,"uid":"svg_a044084c_4548_4ba0_9393_f578af5472a4","ratio":3,"settings":{"tooltip":{"css":".tooltip_SVGID_ { background-color: #5e3c58;\n                border-radius:5px;\n                border: 1px solid #737373;\n                stroke:black;\n                color: #FFFFFF;\n                font-family: Jost*;\n                font-style: normal;\n                font-weight: 700;\n                padding:10px;\n                text-align: left !important;\n                cursor:pointer; ; position:absolute;pointer-events:none;z-index:999;}","placement":"doc","opacity":0.85,"offx":20,"offy":-10,"use_cursor_pos":true,"use_fill":false,"use_stroke":true,"delay_over":200,"delay_out":1000},"hover":{"css":".hover_data_SVGID_ { fill:#c7bbc9; }","reactive":false,"nearest_distance":null},"hover_inv":{"css":""},"hover_key":{"css":".hover_key_SVGID_ { fill:orange;stroke:black;cursor:pointer; }\ntext.hover_key_SVGID_ { stroke:none;fill:orange; }\ncircle.hover_key_SVGID_ { fill:orange;stroke:black; }\nline.hover_key_SVGID_, polyline.hover_key_SVGID_ { fill:none;stroke:orange; }\nrect.hover_key_SVGID_, polygon.hover_key_SVGID_, path.hover_key_SVGID_ { fill:orange;stroke:none; }\nimage.hover_key_SVGID_ { stroke:orange; }","reactive":true},"hover_theme":{"css":".hover_theme_SVGID_ { fill:orange;stroke:black;cursor:pointer; }\ntext.hover_theme_SVGID_ { stroke:none;fill:orange; }\ncircle.hover_theme_SVGID_ { fill:orange;stroke:black; }\nline.hover_theme_SVGID_, polyline.hover_theme_SVGID_ { fill:none;stroke:orange; }\nrect.hover_theme_SVGID_, polygon.hover_theme_SVGID_, path.hover_theme_SVGID_ { fill:orange;stroke:none; }\nimage.hover_theme_SVGID_ { stroke:orange; }","reactive":true},"select":{"css":".select_data_SVGID_ { fill:#C6CDF7; }","type":"multiple","only_shiny":true,"selected":[]},"select_inv":{"css":""},"select_key":{"css":".select_key_SVGID_ { fill:red;stroke:black;cursor:pointer; }\ntext.select_key_SVGID_ { stroke:none;fill:red; }\ncircle.select_key_SVGID_ { fill:red;stroke:black; }\nline.select_key_SVGID_, polyline.select_key_SVGID_ { fill:none;stroke:red; }\nrect.select_key_SVGID_, polygon.select_key_SVGID_, path.select_key_SVGID_ { fill:red;stroke:none; }\nimage.select_key_SVGID_ { stroke:red; }","type":"single","only_shiny":true,"selected":[]},"select_theme":{"css":".select_theme_SVGID_ { fill:red;stroke:black;cursor:pointer; }\ntext.select_theme_SVGID_ { stroke:none;fill:red; }\ncircle.select_theme_SVGID_ { fill:red;stroke:black; }\nline.select_theme_SVGID_, polyline.select_theme_SVGID_ { fill:none;stroke:red; }\nrect.select_theme_SVGID_, polygon.select_theme_SVGID_, path.select_theme_SVGID_ { fill:red;stroke:none; }\nimage.select_theme_SVGID_ { stroke:red; }","type":"single","only_shiny":true,"selected":[]},"zoom":{"min":1,"max":13,"duration":300},"toolbar":{"position":"bottomleft","pngname":"diagram","tooltips":null,"hidden":[],"delay_over":200,"delay_out":500},"sizing":{"rescale":true,"width":0.95}}},"evals":[],"jsHooks":[]}</script>

# Feedback

Respondents generally indicated that they enrolled in the program to strengthen their research skills and abilities followed by seeking a mechanism for a mentored research experience.

<button tooltip tooltip-right tooltip-content="Hover over any of the rings to find out more about the sequence of responses.">
Help!
</button>
<div class="sunburst html-widget " id="htmlwidget-2" style="width:100%;height:600px; position:relative;">
<div>
<div class="sunburst-main">
<div class="sunburst-sequence"></div>
<div class="sunburst-chart">
<div class="sunburst-explanation" style="visibility:hidden;"></div>
</div>
</div>
<div class="sunburst-sidebar">
<input type="checkbox" class="sunburst-togglelegend" style="visibility:hidden;">Legend</input>
<div class="sunburst-legend" style="visibility:hidden;"></div>
</div>
</div>
</div>
<script type="application/json" data-for="htmlwidget-2">{"x":{"data":{"children":[{"name":"Being/becoming competitive for a faculty position","children":[{"name":"This was a reason for me to enroll","size":1,"colname":"level2"},{"name":"This was accomplished prior to graduation","size":2,"colname":"level2"}],"colname":"level1"},{"name":"Being/becoming competitive for a residency or fellowship","children":[{"name":"This was a reason for me to enroll","size":2,"colname":"level2"},{"name":"This was accomplished prior to graduation","size":2,"colname":"level2"}],"colname":"level1"},{"name":"Gaining or fulfilling professional development needs","children":[{"name":"This was a reason for me to enroll","size":2,"colname":"level2"},{"name":"This was accomplished prior to graduation","size":2,"colname":"level2"}],"colname":"level1"},{"name":"Other reason","children":[{"name":"Knowledge","size":1,"colname":"level2"},{"name":"Mentor","size":1,"colname":"level2"},{"name":"Statistics","size":1,"colname":"level2"}],"colname":"level1"},{"name":"Seeking a formal mechanism for a mentored research experience","children":[{"name":"This was a reason for me to enroll","size":3,"colname":"level2"},{"name":"This was accomplished prior to graduation","size":1,"colname":"level2"}],"colname":"level1"},{"name":"Strengthening your specific research skills and abilities","children":[{"name":"This was a reason for me to enroll","size":6,"colname":"level2"},{"name":"This was accomplished prior to graduation","size":2,"colname":"level2"}],"colname":"level1"}],"name":"root"},"options":{"legendOrder":null,"colors":["#E6A0C4","#C6CDF7","#81A88D","#e4f1e7","#ff9b83","#719f9f","#D3DDDC","#FD6467","#1b85b8","#85D4E3","#F4B5BD"],"valueField":"size","percent":true,"count":false,"explanation":null,"breadcrumb":[],"legend":false,"sortFunction":null,"sumNodes":true}},"evals":[],"jsHooks":[]}</script>

<br>
<br>
This can be further explored in the following table.
<br>

<div class="datatables html-widget html-fill-item-overflow-hidden html-fill-item" id="htmlwidget-3" style="width:100%;height:auto;"></div>
<script type="application/json" data-for="htmlwidget-3">{"x":{"filter":"top","vertical":false,"filterHTML":"<tr>\n  <td><\/td>\n  <td data-type=\"character\" style=\"vertical-align: top;\">\n    <div class=\"form-group\" style=\"margin-bottom: auto;\">\n      <input type=\"search\" placeholder=\"All\" class=\"form-control\" style=\"width: 100%;\"/>\n    <\/div>\n  <\/td>\n  <td data-type=\"character\" style=\"vertical-align: top;\">\n    <div class=\"form-group\" style=\"margin-bottom: auto;\">\n      <input type=\"search\" placeholder=\"All\" class=\"form-control\" style=\"width: 100%;\"/>\n    <\/div>\n  <\/td>\n  <td data-type=\"integer\" style=\"vertical-align: top;\">\n    <div class=\"form-group\" style=\"margin-bottom: auto;\">\n      <input type=\"search\" placeholder=\"All\" class=\"form-control\" style=\"width: 100%;\"/>\n    <\/div>\n    <div style=\"display: none;position: absolute;width: 200px;opacity: 1\">\n      <div data-min=\"1\" data-max=\"6\"><\/div>\n      <span style=\"float: left;\"><\/span>\n      <span style=\"float: right;\"><\/span>\n    <\/div>\n  <\/td>\n  <td data-type=\"character\" style=\"vertical-align: top;\">\n    <div class=\"form-group\" style=\"margin-bottom: auto;\">\n      <input type=\"search\" placeholder=\"All\" class=\"form-control\" style=\"width: 100%;\"/>\n    <\/div>\n  <\/td>\n<\/tr>","extensions":["Buttons"],"data":[["1","2","3","4","5","6","7","8","9","10","11","12","13"],["Being/becoming competitive for a faculty position","Being/becoming competitive for a faculty position","Being/becoming competitive for a residency or fellowship","Being/becoming competitive for a residency or fellowship","Gaining or fulfilling professional development needs","Gaining or fulfilling professional development needs","Other reason","Other reason","Other reason","Seeking a formal mechanism for a mentored research experience","Seeking a formal mechanism for a mentored research experience","Strengthening your specific research skills and abilities","Strengthening your specific research skills and abilities"],["This was a reason for me to enroll","This was accomplished prior to graduation","This was a reason for me to enroll","This was accomplished prior to graduation","This was a reason for me to enroll","This was accomplished prior to graduation","Knowledge","Mentor","Statistics","This was a reason for me to enroll","This was accomplished prior to graduation","This was a reason for me to enroll","This was accomplished prior to graduation"],[1,2,2,2,2,2,1,1,1,3,1,6,2],["3.85%","7.69%","7.69%","7.69%","7.69%","7.69%","3.85%","3.85%","3.85%","11.54%","3.85%","23.08%","7.69%"]],"container":"<table class=\"stripe row-border hover\">\n  <thead>\n    <tr>\n      <th> <\/th>\n      <th>Item<\/th>\n      <th>Choice<\/th>\n      <th>Frequency<\/th>\n      <th>Percent<\/th>\n    <\/tr>\n  <\/thead>\n<\/table>","options":{"dom":"Bfrtip","pageLength":5,"scrollX":true,"scrollCollapse":true,"buttons":["copy","print",{"extend":"collection","buttons":["csv","excel","pdf"],"text":"Download"}],"columnDefs":[{"className":"dt-center","targets":[3,4]},{"orderable":false,"targets":0}],"initComplete":"\n                          function(settings, json) {\n                          $(this.api().table().body()).css({\n                          'background-color': '#972D15',\n                          'outline-color': '#972D15',\n                          'margin':'120px',\n                          'color': '#39312F',\n                          'text-align': 'left',\n                          'font-family': 'Jost*',\n                          'font-weight': '400',\n                          'font-size': '15px',\n                          'border-radius': '25px'\n                          });\n                          $(this.api().table().header()).css({\n                          'background-color': '#74A089',\n                          'color': '#FAF9F7',\n                          'outline-color': '#972D15',\n                          'margin':'120px',\n                          'text-align': 'left',\n                          'font-family': 'Jost',\n                          'font-weight': '600',\n                          'font-size': '16px',\n                          'border-radius': '25px'\n                          });\n                          }\n                          ","order":[],"autoWidth":false,"orderClasses":false,"orderCellsTop":true,"lengthMenu":[5,10,25,50,100]},"selection":{"mode":"multiple","selected":null,"target":"row","selectable":null}},"evals":["options.initComplete"],"jsHooks":[]}</script>

<br>
Respondents denoted multiple reasons for joining the program with many selecting that the *curriculum aligned with the skills that they either* (1) *needed* or (2) *wished to develop* with *program flexibility* and *availibility on the web* as the most noted motives.

# Basis for Enrollment

<button tooltip tooltip-right tooltip-content="Hover over any of the vertical bars to highlight the rankings by each respondent.">
Help!
</button>
<div id="htmlwidget-4" style="width:1000px;height:570px;" class="widgetframe html-widget "></div>
<!-- widgetframe widget-href="widget_unnamed-chunk-4.html" -->
<script type="application/json" data-for="htmlwidget-4">{"x":{"url":"widget_unnamed-chunk-4.html","options":{"xdomain":"*","allowfullscreen":false,"lazyload":false}},"evals":[],"jsHooks":[]}</script>

# Personal Confidence in Program Related Tasks

Gains in confidence were reported across most dimensions. These sentiments were echoed by high satisfaction ratings of extracurricular components.

<button tooltip tooltip-right tooltip-content="The left and right circles represent participant confidence before and after completion. Hover over any of the colored bands or arc to discover more information about the responses.">
Help!
</button>
<div id="htmlwidget-5" style="width:1000px;height:550px;" class="widgetframe html-widget "></div>
<!-- widgetframe widget-href="widget_unnamed-chunk-5.html" -->
<script type="application/json" data-for="htmlwidget-5">{"x":{"url":"widget_unnamed-chunk-5.html","options":{"xdomain":"*","allowfullscreen":false,"lazyload":false}},"evals":[],"jsHooks":[]}</script>

# Quality of Extracurricular Components

<button tooltip tooltip-right tooltip-content="This circle represents responses to the quality of certain program activities. Hover over any of the colored bands or arc to discover more information about the responses.">
Help!
</button>

<br/>

<div id="htmlwidget-6" style="width:1000px;height:550px;" class="widgetframe html-widget "></div>
<!-- widgetframe widget-href="widget_unnamed-chunk-6.html" -->
<script type="application/json" data-for="htmlwidget-6">{"x":{"url":"widget_unnamed-chunk-6.html","options":{"xdomain":"*","allowfullscreen":false,"lazyload":false}},"evals":[],"jsHooks":[]}</script>

# Research Activities

A majority of those who responded (67%) denoted that they were required to perform research in their respective career roles.

<button tooltip tooltip-right tooltip-content="Each number represents an individual respondent. Hover over any of the vertical bars to see how many participants responded in a particular way.">
Help!
</button>
<div id="htmlwidget-7" style="width:900px;height:550px;" class="widgetframe html-widget "></div>
<!-- widgetframe widget-href="widget_unnamed-chunk-7.html" -->
<script type="application/json" data-for="htmlwidget-7">{"x":{"url":"widget_unnamed-chunk-7.html","options":{"xdomain":"*","allowfullscreen":false,"lazyload":false}},"evals":[],"jsHooks":[]}</script>

# Program Benefits, Drawbacks and Challenges

Five out of six participants noted that the program was beneficial. Additionally only one alumni discussed any challenges associated with the program, though the situation was resolved. A summarized tree is included with specific responses provided in the table.

<button tooltip tooltip-right tooltip-content="You can collapse and expand on this hierarchical tree by single clicking on any circle. Hovering over any circle will provide a pop-up with respondent counts (denoted by leafCount).">
Help!
</button>
<div id="htmlwidget-8" style="width:900px;height:550px;" class="widgetframe html-widget "></div>
<!-- widgetframe widget-href="widget_unnamed-chunk-8.html" -->
<script type="application/json" data-for="htmlwidget-8">{"x":{"url":"widget_unnamed-chunk-8.html","options":{"xdomain":"*","allowfullscreen":false,"lazyload":false}},"evals":[],"jsHooks":[]}</script>

# Gauging Loyalty

An assessment of respondent Net Promoter Scores ®, 33% of the participants are loyal enthusiasts who are likely to encourage others to apply while 50% are satisfied but will not necessarily be active promoters of the program.

<button tooltip tooltip-right tooltip-content="Hovering over any band will provide a pop-up with respondent counts.">
Help!
</button>
<div class="datatables html-widget html-fill-item-overflow-hidden html-fill-item" id="htmlwidget-9" style="width:100%;height:auto;"></div>
<script type="application/json" data-for="htmlwidget-9">{"x":{"filter":"top","vertical":false,"filterHTML":"<tr>\n  <td><\/td>\n  <td data-type=\"character\" style=\"vertical-align: top;\">\n    <div class=\"form-group\" style=\"margin-bottom: auto;\">\n      <input type=\"search\" placeholder=\"All\" class=\"form-control\" style=\"width: 100%;\"/>\n    <\/div>\n  <\/td>\n  <td data-type=\"character\" style=\"vertical-align: top;\">\n    <div class=\"form-group\" style=\"margin-bottom: auto;\">\n      <input type=\"search\" placeholder=\"All\" class=\"form-control\" style=\"width: 100%;\"/>\n    <\/div>\n  <\/td>\n  <td data-type=\"character\" style=\"vertical-align: top;\">\n    <div class=\"form-group\" style=\"margin-bottom: auto;\">\n      <input type=\"search\" placeholder=\"All\" class=\"form-control\" style=\"width: 100%;\"/>\n    <\/div>\n  <\/td>\n  <td data-type=\"character\" style=\"vertical-align: top;\">\n    <div class=\"form-group\" style=\"margin-bottom: auto;\">\n      <input type=\"search\" placeholder=\"All\" class=\"form-control\" style=\"width: 100%;\"/>\n    <\/div>\n  <\/td>\n<\/tr>","data":[["1","2","3","4","5","6","7"],["Benefits","Benefits","Benefits","Benefits","Benefits","Drawback","Challenge"],["It met my goal of increasing my research skills and diversifying my professional portfolio. Note that my rating of the extracurricular offerings was based on my personal experience at the time and not necessarily a reflection of current services.","Stats course, programming course, grant writing have all benefited me.","Better grasp for clinical research.","More experience in developing my own research projects. Not an expert but now I am more aware of what I don't know and what I do know.","Provided a framework for grant writing, statistics, and provided collaborations would not have previously obtained","I have already done MPH and the courses were very similar","I explained my ethical view of the issue encountered. After multiple conversations, my mentor left it up to me to make the changes I proposed or not. I told my mentor that I would indeed like to proceed with the changes, made them, and confirmed with my mentor that I had so ensure everyone would be on the same page."],["Goal Achievement","Content Related","Research Related","Experiential Learning","Foundational Gains","Prior Experience","Conflict on ethical views"],[null,null,null,null,null,null,"Resolved"]],"container":"<table class=\"stripe row-border hover\">\n  <thead>\n    <tr>\n      <th> <\/th>\n      <th>Feedback<\/th>\n      <th>Explanation<\/th>\n      <th>Summary<\/th>\n      <th>Status<\/th>\n    <\/tr>\n  <\/thead>\n<\/table>","options":{"dom":"Bfrtip","scrollX":true,"scrollCollapse":true,"buttons":["copy","print",{"extend":"collection","buttons":["csv","excel","pdf"],"text":"Download"}],"columnDefs":[{"className":"dt-center","targets":[3,4]},{"orderable":false,"targets":0}],"pageLength":5,"lengthMenu":[5,10,15,20],"initComplete":"\n                          function(settings, json) {\n                          $(this.api().table().body()).css({\n                          'background-color': '#972D15',\n                          'outline-color': '#972D15',\n                          'margin':'120px',\n                          'color': '#39312F',\n                          'text-align': 'left',\n                          'font-family': 'Jost',\n                          'font-weight': '400',\n                          'font-size': '15px',\n                          'border-radius': '25px'\n                          });\n                          $(this.api().table().header()).css({\n                          'background-color': '#74A089',\n                          'color': '#FAF9F7',\n                          'outline-color': '#972D15',\n                          'margin':'120px',\n                          'text-align': 'left',\n                          'font-family': 'Jost',\n                          'font-weight': '600',\n                          'font-size': '16px',\n                          'border-radius': '25px'\n                          });\n                          }\n                          ","order":[],"autoWidth":false,"orderClasses":false,"orderCellsTop":true},"selection":{"mode":"multiple","selected":null,"target":"row","selectable":null}},"evals":["options.initComplete"],"jsHooks":[]}</script>
<div class="girafe html-widget html-fill-item-overflow-hidden html-fill-item" id="htmlwidget-10" style="width:672px;height:480px;"></div>
<script type="application/json" data-for="htmlwidget-10">{"x":{"html":"<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='ggiraph-svg' role='img' id='svg_bd9f5ea5_4891_442e_96bb_8bf2e10b82c5' viewBox='0 0 720 360'>\n <defs id='svg_bd9f5ea5_4891_442e_96bb_8bf2e10b82c5_defs'>\n  <clipPath id='svg_bd9f5ea5_4891_442e_96bb_8bf2e10b82c5_c1'>\n   <rect x='0' y='0' width='720' height='360'/>\n  <\/clipPath>\n  <clipPath id='svg_bd9f5ea5_4891_442e_96bb_8bf2e10b82c5_c2'>\n   <rect x='45.26' y='28.35' width='646.39' height='300.57'/>\n  <\/clipPath>\n <\/defs>\n <g id='svg_bd9f5ea5_4891_442e_96bb_8bf2e10b82c5_rootg' class='ggiraph-svg-rootg'>\n  <g clip-path='url(#svg_bd9f5ea5_4891_442e_96bb_8bf2e10b82c5_c1)'>\n   <rect x='0' y='0' width='720' height='360' fill='#FFFFFF' fill-opacity='1' stroke='#FFFFFF' stroke-opacity='1' stroke-width='0.75' stroke-linejoin='round' stroke-linecap='round' class='ggiraph-svg-bg'/>\n   <rect x='0' y='0' width='720' height='360' fill='#E7E7E7' fill-opacity='1' stroke='#392F42' stroke-opacity='1' stroke-width='3.2' stroke-linejoin='round' stroke-linecap='round'/>\n  <\/g>\n  <g clip-path='url(#svg_bd9f5ea5_4891_442e_96bb_8bf2e10b82c5_c2)'>\n   <rect id='svg_bd9f5ea5_4891_442e_96bb_8bf2e10b82c5_e1' x='54.77' y='42.01' width='57.03' height='273.24' fill='#D2D4DC' fill-opacity='1' stroke='none' title='No&amp;lt;br/&amp;gt;respondents&amp;lt;br/&amp;gt;gave the&amp;lt;br/&amp;gt;program 1&amp;lt;br/&amp;gt;out of 10' data-id='1'/>\n   <rect id='svg_bd9f5ea5_4891_442e_96bb_8bf2e10b82c5_e2' x='118.14' y='42.01' width='57.03' height='273.24' fill='#D2D4DC' fill-opacity='1' stroke='none' title='No&amp;lt;br/&amp;gt;respondents&amp;lt;br/&amp;gt;gave the&amp;lt;br/&amp;gt;program 2&amp;lt;br/&amp;gt;out of 10' data-id='2'/>\n   <rect id='svg_bd9f5ea5_4891_442e_96bb_8bf2e10b82c5_e3' x='181.51' y='42.01' width='57.03' height='273.24' fill='#D2D4DC' fill-opacity='1' stroke='none' title='No&amp;lt;br/&amp;gt;respondents&amp;lt;br/&amp;gt;gave the&amp;lt;br/&amp;gt;program 3&amp;lt;br/&amp;gt;out of 10' data-id='3'/>\n   <rect id='svg_bd9f5ea5_4891_442e_96bb_8bf2e10b82c5_e4' x='244.88' y='42.01' width='57.03' height='273.24' fill='#D2D4DC' fill-opacity='1' stroke='none' title='No&amp;lt;br/&amp;gt;respondents&amp;lt;br/&amp;gt;gave the&amp;lt;br/&amp;gt;program 4&amp;lt;br/&amp;gt;out of 10' data-id='4'/>\n   <rect id='svg_bd9f5ea5_4891_442e_96bb_8bf2e10b82c5_e5' x='308.25' y='42.01' width='57.03' height='273.24' fill='#D2D4DC' fill-opacity='1' stroke='none' title='No&amp;lt;br/&amp;gt;respondents&amp;lt;br/&amp;gt;gave the&amp;lt;br/&amp;gt;program 5&amp;lt;br/&amp;gt;out of 10' data-id='5'/>\n   <rect id='svg_bd9f5ea5_4891_442e_96bb_8bf2e10b82c5_e6' x='371.63' y='42.01' width='57.03' height='273.24' fill='#FD6467' fill-opacity='1' stroke='none' title='1&amp;lt;br/&amp;gt;respondent&amp;lt;br/&amp;gt;gave the&amp;lt;br/&amp;gt;program 6&amp;lt;br/&amp;gt;out of 10' data-id='6'/>\n   <rect id='svg_bd9f5ea5_4891_442e_96bb_8bf2e10b82c5_e7' x='435' y='42.01' width='57.03' height='273.24' fill='#D2D4DC' fill-opacity='1' stroke='none' title='No&amp;lt;br/&amp;gt;respondents&amp;lt;br/&amp;gt;gave the&amp;lt;br/&amp;gt;program 7&amp;lt;br/&amp;gt;out of 10' data-id='7'/>\n   <rect id='svg_bd9f5ea5_4891_442e_96bb_8bf2e10b82c5_e8' x='498.37' y='42.01' width='57.03' height='273.24' fill='#FDD262' fill-opacity='1' stroke='none' title='3&amp;lt;br/&amp;gt;respondents&amp;lt;br/&amp;gt;gave the&amp;lt;br/&amp;gt;program 8&amp;lt;br/&amp;gt;out of 10' data-id='8'/>\n   <rect id='svg_bd9f5ea5_4891_442e_96bb_8bf2e10b82c5_e9' x='561.74' y='42.01' width='57.03' height='273.24' fill='#D2D4DC' fill-opacity='1' stroke='none' title='No&amp;lt;br/&amp;gt;respondents&amp;lt;br/&amp;gt;gave the&amp;lt;br/&amp;gt;program 9&amp;lt;br/&amp;gt;out of 10' data-id='9'/>\n   <rect id='svg_bd9f5ea5_4891_442e_96bb_8bf2e10b82c5_e10' x='625.11' y='42.01' width='57.03' height='273.24' fill='#7294D4' fill-opacity='1' stroke='none' title='2&amp;lt;br/&amp;gt;respondents&amp;lt;br/&amp;gt;gave the&amp;lt;br/&amp;gt;program 10&amp;lt;br/&amp;gt;out of 10' data-id='10'/>\n  <\/g>\n <\/g>\n<\/svg>","js":null,"uid":"svg_bd9f5ea5_4891_442e_96bb_8bf2e10b82c5","ratio":2,"settings":{"tooltip":{"css":".tooltip_SVGID_ { background-color: #5e3c58;\n                border-radius:5px;\n                border: 1px solid #737373;\n                stroke:black;\n                color: #FFFFFF;\n                font-family: Jost*;\n                font-style: normal;\n                font-weight: 700;\n                padding:10px;\n                text-align: left !important;\n                cursor:pointer; ; position:absolute;pointer-events:none;z-index:999;}","placement":"doc","opacity":1,"offx":20,"offy":-10,"use_cursor_pos":true,"use_fill":false,"use_stroke":true,"delay_over":200,"delay_out":1000},"hover":{"css":".hover_data_SVGID_ { fill:#c7bbc9; }","reactive":false,"nearest_distance":null},"hover_inv":{"css":""},"hover_key":{"css":".hover_key_SVGID_ { fill:orange;stroke:black;cursor:pointer; }\ntext.hover_key_SVGID_ { stroke:none;fill:orange; }\ncircle.hover_key_SVGID_ { fill:orange;stroke:black; }\nline.hover_key_SVGID_, polyline.hover_key_SVGID_ { fill:none;stroke:orange; }\nrect.hover_key_SVGID_, polygon.hover_key_SVGID_, path.hover_key_SVGID_ { fill:orange;stroke:none; }\nimage.hover_key_SVGID_ { stroke:orange; }","reactive":true},"hover_theme":{"css":".hover_theme_SVGID_ { fill:orange;stroke:black;cursor:pointer; }\ntext.hover_theme_SVGID_ { stroke:none;fill:orange; }\ncircle.hover_theme_SVGID_ { fill:orange;stroke:black; }\nline.hover_theme_SVGID_, polyline.hover_theme_SVGID_ { fill:none;stroke:orange; }\nrect.hover_theme_SVGID_, polygon.hover_theme_SVGID_, path.hover_theme_SVGID_ { fill:orange;stroke:none; }\nimage.hover_theme_SVGID_ { stroke:orange; }","reactive":true},"select":{"css":".select_data_SVGID_ { fill:#C6CDF7; }","type":"multiple","only_shiny":true,"selected":[]},"select_inv":{"css":""},"select_key":{"css":".select_key_SVGID_ { fill:red;stroke:black;cursor:pointer; }\ntext.select_key_SVGID_ { stroke:none;fill:red; }\ncircle.select_key_SVGID_ { fill:red;stroke:black; }\nline.select_key_SVGID_, polyline.select_key_SVGID_ { fill:none;stroke:red; }\nrect.select_key_SVGID_, polygon.select_key_SVGID_, path.select_key_SVGID_ { fill:red;stroke:none; }\nimage.select_key_SVGID_ { stroke:red; }","type":"single","only_shiny":true,"selected":[]},"select_theme":{"css":".select_theme_SVGID_ { fill:red;stroke:black;cursor:pointer; }\ntext.select_theme_SVGID_ { stroke:none;fill:red; }\ncircle.select_theme_SVGID_ { fill:red;stroke:black; }\nline.select_theme_SVGID_, polyline.select_theme_SVGID_ { fill:none;stroke:red; }\nrect.select_theme_SVGID_, polygon.select_theme_SVGID_, path.select_theme_SVGID_ { fill:red;stroke:none; }\nimage.select_theme_SVGID_ { stroke:red; }","type":"single","only_shiny":true,"selected":[]},"zoom":{"min":1,"max":10,"duration":300},"toolbar":{"position":"bottomleft","pngname":"diagram","tooltips":null,"hidden":[],"delay_over":200,"delay_out":500},"sizing":{"rescale":true,"width":0.75}}},"evals":[],"jsHooks":[]}</script>
<hr>
<p>
Analyses, visuals and markdowns were originally created using <a class="norm" href="https://www.r-project.org/">R</a> and <a class="norm" href="https://www.rstudio.com/">R Studio</a>. Data sets are under the ownership of WVCTSI principle investigators while all original source code and the contents of this report are owned and maintained by Abhik Roy. All rights reserved.
</p>
<center>
<br />
<a class="norm" rel="license" href="http://creativecommons.org/licenses/by-nc-sa/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-nc-sa/4.0/88x31.png" /></a><br /><br />This work is licensed under a <a class="norm" rel="license" href="http://creativecommons.org/licenses/by-nc-sa/4.0/">Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License</a>.
</center>
<br>
<hr>
<br>
<center>
[<img src="www/PERC_TEC_logo.png" width="450" alt="PERC-TEC Logo" />](https://perc.cehs.wvu.edu/)
</center>

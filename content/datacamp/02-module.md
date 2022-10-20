---
title: "Introduction to the Tidyverse"
linktitle: "Introduction to the Tidyverse"
menu:
  datacamp:
    parent: Modules
    weight: 2
type: docs
weight: 1
editor_options: 
  chunk_output_type: console
---
<script src="/rmarkdown-libs/kePrint/kePrint.js"></script>
<link href="/rmarkdown-libs/lightable/lightable.css" rel="stylesheet" />





<table class="table table-striped table-hover" style="width: auto !important; margin-left: auto; margin-right: auto;">
 <thead>
  <tr>
   <th style="text-align:center;vertical-align: middle !important;"> Module </th>
   <th style="text-align:center;vertical-align: middle !important;"> Available </th>
   <th style="text-align:center;vertical-align: middle !important;"> Due by </th>
   <th style="text-align:center;vertical-align: middle !important;"> Required </th>
   <th style="text-align:center;vertical-align: middle !important;"> Course </th>
   <th style="text-align:left;vertical-align: middle !important;"> Chapters </th>
   <th style="text-align:left;vertical-align: middle !important;"> Link </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:center;width: 5em; vertical-align: middle !important;"> 2 </td>
   <td style="text-align:center;width: 10em; vertical-align: middle !important;"> 8/26/21 </td>
   <td style="text-align:center;width: 10em; vertical-align: middle !important;"> 9/8/21 </td>
   <td style="text-align:center;width: 5em; vertical-align: middle !important;"> <svg aria-hidden="true" role="img" viewbox="0 0 512 512" style="height:15px;width:15px;vertical-align:-0.125em;margin-left:auto;margin-right:auto;font-size:inherit;fill:#428bca;overflow:visible;position:relative;"><path d="M0 256C0 114.6 114.6 0 256 0C397.4 0 512 114.6 512 256C512 397.4 397.4 512 256 512C114.6 512 0 397.4 0 256zM371.8 211.8C382.7 200.9 382.7 183.1 371.8 172.2C360.9 161.3 343.1 161.3 332.2 172.2L224 280.4L179.8 236.2C168.9 225.3 151.1 225.3 140.2 236.2C129.3 247.1 129.3 264.9 140.2 275.8L204.2 339.8C215.1 350.7 232.9 350.7 243.8 339.8L371.8 211.8z"></path></svg> </td>
   <td style="text-align:center;width: 15em; vertical-align: middle !important;"> [Introduction to the Tidyverse](/datacamp/02-module/) </td>
   <td style="text-align:left;width: 15em; vertical-align: middle !important;"> Data wrangling </td>
   <td style="text-align:left;width: 5em; vertical-align: middle !important;"> [![/logos/dc_small.png{width=20px}](/logos/dc-ico.png 'Slack Icon'){width=20px}](https://www.datacamp.com/){target='_blank'} </td>
  </tr>
  <tr>
   <td style="text-align:center;width: 5em; vertical-align: middle !important;">  </td>
   <td style="text-align:center;width: 10em; vertical-align: middle !important;">  </td>
   <td style="text-align:center;width: 10em; vertical-align: middle !important;">  </td>
   <td style="text-align:center;width: 5em; vertical-align: middle !important;">  </td>
   <td style="text-align:center;width: 15em; vertical-align: middle !important;">  </td>
   <td style="text-align:left;width: 15em; vertical-align: middle !important;"> Data visualization </td>
   <td style="text-align:left;width: 5em; vertical-align: middle !important;">  </td>
  </tr>
  <tr>
   <td style="text-align:center;width: 5em; vertical-align: middle !important;">  </td>
   <td style="text-align:center;width: 10em; vertical-align: middle !important;">  </td>
   <td style="text-align:center;width: 10em; vertical-align: middle !important;">  </td>
   <td style="text-align:center;width: 5em; vertical-align: middle !important;">  </td>
   <td style="text-align:center;width: 15em; vertical-align: middle !important;">  </td>
   <td style="text-align:left;width: 15em; vertical-align: middle !important;"> Grouping and summarizing </td>
   <td style="text-align:left;width: 5em; vertical-align: middle !important;">  </td>
  </tr>
  <tr>
   <td style="text-align:center;width: 5em; vertical-align: middle !important;">  </td>
   <td style="text-align:center;width: 10em; vertical-align: middle !important;">  </td>
   <td style="text-align:center;width: 10em; vertical-align: middle !important;">  </td>
   <td style="text-align:center;width: 5em; vertical-align: middle !important;">  </td>
   <td style="text-align:center;width: 15em; vertical-align: middle !important;">  </td>
   <td style="text-align:left;width: 15em; vertical-align: middle !important;"> Types of visualizations </td>
   <td style="text-align:left;width: 5em; vertical-align: middle !important;">  </td>
  </tr>
  <tr>
   <td style="text-align:center;width: 5em; vertical-align: middle !important;">  </td>
   <td style="text-align:center;width: 10em; vertical-align: middle !important;">  </td>
   <td style="text-align:center;width: 10em; vertical-align: middle !important;">  </td>
   <td style="text-align:center;width: 5em; vertical-align: middle !important;"> <svg aria-hidden="true" role="img" viewbox="0 0 512 512" style="height:15px;width:15px;vertical-align:-0.125em;margin-left:auto;margin-right:auto;font-size:inherit;fill:#d9534f;overflow:visible;position:relative;"><path d="M0 256C0 114.6 114.6 0 256 0C397.4 0 512 114.6 512 256C512 397.4 397.4 512 256 512C114.6 512 0 397.4 0 256zM175 208.1L222.1 255.1L175 303C165.7 312.4 165.7 327.6 175 336.1C184.4 346.3 199.6 346.3 208.1 336.1L255.1 289.9L303 336.1C312.4 346.3 327.6 346.3 336.1 336.1C346.3 327.6 346.3 312.4 336.1 303L289.9 255.1L336.1 208.1C346.3 199.6 346.3 184.4 336.1 175C327.6 165.7 312.4 165.7 303 175L255.1 222.1L208.1 175C199.6 165.7 184.4 165.7 175 175C165.7 184.4 165.7 199.6 175 208.1V208.1z"></path></svg> </td>
   <td style="text-align:center;width: 15em; vertical-align: middle !important;">  </td>
   <td style="text-align:left;width: 15em; vertical-align: middle !important;"> Dr. Semmelweis and the Discovery of Handwashing </td>
   <td style="text-align:left;width: 5em; vertical-align: middle !important;">  </td>
  </tr>
</tbody>
</table>

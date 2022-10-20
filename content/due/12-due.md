---
title: "The Chi Square Test and Measures of Association"
linktitle: "Week 12: The Chi Square Test and Measures of Association"
output:
  blogdown::html_page:
    toc: true
menu:
  due:
    parent: "To Do"
    weight: 12
type: docs
weight: 1
editor_options: 
  chunk_output_type: console
---
<script src="/rmarkdown-libs/kePrint/kePrint.js"></script>
<link href="/rmarkdown-libs/lightable/lightable.css" rel="stylesheet" />
<script src="/rmarkdown-libs/kePrint/kePrint.js"></script>
<link href="/rmarkdown-libs/lightable/lightable.css" rel="stylesheet" />




### What to do for Week 12 after class ends



<table class="table" style="width: auto !important; margin-left: auto; margin-right: auto;">
 <thead>
  <tr>
   <th style="text-align:center;"> Submit </th>
   <th style="text-align:left;"> Description </th>
   <th style="text-align:center;"> Location </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:center;width: 10em; "> <svg aria-hidden="true" role="img" viewbox="0 0 448 512" style="height:1em;width:0.88em;vertical-align:-0.125em;margin-left:auto;margin-right:auto;font-size:inherit;fill:#4682b4;overflow:visible;position:relative;"><path d="M0 96C0 60.65 28.65 32 64 32H384C419.3 32 448 60.65 448 96V416C448 451.3 419.3 480 384 480H64C28.65 480 0 451.3 0 416V96z"></path></svg> </td>
   <td style="text-align:left;"> Review the solution set from the Chapter 9 homework set </td>
   <td style="text-align:center;"> [Link](/tasks/10-tasks/#solutions) </td>
  </tr>
  <tr>
   <td style="text-align:center;width: 10em; "> <svg aria-hidden="true" role="img" viewbox="0 0 448 512" style="height:1em;width:0.88em;vertical-align:-0.125em;margin-left:auto;margin-right:auto;font-size:inherit;fill:#4682b4;overflow:visible;position:relative;"><path d="M384 32C419.3 32 448 60.65 448 96V416C448 451.3 419.3 480 384 480H64C28.65 480 0 451.3 0 416V96C0 60.65 28.65 32 64 32H384zM339.8 211.8C350.7 200.9 350.7 183.1 339.8 172.2C328.9 161.3 311.1 161.3 300.2 172.2L192 280.4L147.8 236.2C136.9 225.3 119.1 225.3 108.2 236.2C97.27 247.1 97.27 264.9 108.2 275.8L172.2 339.8C183.1 350.7 200.9 350.7 211.8 339.8L339.8 211.8z"></path></svg> </td>
   <td style="text-align:left;"> Complete problems 1, 2, 3, 5, 7, 13 in Chapter 10 </td>
   <td style="text-align:center;"> [Link](/tasks/12-tasks/#homework) </td>
  </tr>
  <tr>
   <td style="text-align:center;width: 10em; "> <svg aria-hidden="true" role="img" viewbox="0 0 448 512" style="height:1em;width:0.88em;vertical-align:-0.125em;margin-left:auto;margin-right:auto;font-size:inherit;fill:#4682b4;overflow:visible;position:relative;"><path d="M384 32C419.3 32 448 60.65 448 96V416C448 451.3 419.3 480 384 480H64C28.65 480 0 451.3 0 416V96C0 60.65 28.65 32 64 32H384zM339.8 211.8C350.7 200.9 350.7 183.1 339.8 172.2C328.9 161.3 311.1 161.3 300.2 172.2L192 280.4L147.8 236.2C136.9 225.3 119.1 225.3 108.2 236.2C97.27 247.1 97.27 264.9 108.2 275.8L172.2 339.8C183.1 350.7 200.9 350.7 211.8 339.8L339.8 211.8z"></path></svg> </td>
   <td style="text-align:left;"> Finish the *Foundations of Inference* </td>
   <td style="text-align:center;"> [Link](/datacamp/05-module/) </td>
  </tr>
  <tr>
   <td style="text-align:center;width: 10em; "> <svg aria-hidden="true" role="img" viewbox="0 0 448 512" style="height:1em;width:0.88em;vertical-align:-0.125em;margin-left:auto;margin-right:auto;font-size:inherit;fill:#4682b4;overflow:visible;position:relative;"><path d="M384 32C419.3 32 448 60.65 448 96V416C448 451.3 419.3 480 384 480H64C28.65 480 0 451.3 0 416V96C0 60.65 28.65 32 64 32H384zM339.8 211.8C350.7 200.9 350.7 183.1 339.8 172.2C328.9 161.3 311.1 161.3 300.2 172.2L192 280.4L147.8 236.2C136.9 225.3 119.1 225.3 108.2 236.2C97.27 247.1 97.27 264.9 108.2 275.8L172.2 339.8C183.1 350.7 200.9 350.7 211.8 339.8L339.8 211.8z"></path></svg> </td>
   <td style="text-align:left;"> Begin or continue the first ***optional*** extra credit module *Analyzing Survey Data in R* </td>
   <td style="text-align:center;"> [Link](/datacamp/07-module/) </td>
  </tr>
  <tr>
   <td style="text-align:center;width: 10em; "> <svg aria-hidden="true" role="img" viewbox="0 0 448 512" style="height:1em;width:0.88em;vertical-align:-0.125em;margin-left:auto;margin-right:auto;font-size:inherit;fill:#4682b4;overflow:visible;position:relative;"><path d="M384 32C419.3 32 448 60.65 448 96V416C448 451.3 419.3 480 384 480H64C28.65 480 0 451.3 0 416V96C0 60.65 28.65 32 64 32H384zM339.8 211.8C350.7 200.9 350.7 183.1 339.8 172.2C328.9 161.3 311.1 161.3 300.2 172.2L192 280.4L147.8 236.2C136.9 225.3 119.1 225.3 108.2 236.2C97.27 247.1 97.27 264.9 108.2 275.8L172.2 339.8C183.1 350.7 200.9 350.7 211.8 339.8L339.8 211.8z"></path></svg> </td>
   <td style="text-align:left;"> Begin or continue the second ***optional*** extra credit module *Fundamentals of Bayesian Data Analysis in R* </td>
   <td style="text-align:center;"> [Link](/datacamp/08-module/) </td>
  </tr>
  <tr>
   <td style="text-align:center;width: 10em; "> <svg aria-hidden="true" role="img" viewbox="0 0 448 512" style="height:1em;width:0.88em;vertical-align:-0.125em;margin-left:auto;margin-right:auto;font-size:inherit;fill:#4682b4;overflow:visible;position:relative;"><path d="M384 32C419.3 32 448 60.65 448 96V416C448 451.3 419.3 480 384 480H64C28.65 480 0 451.3 0 416V96C0 60.65 28.65 32 64 32H384zM339.8 211.8C350.7 200.9 350.7 183.1 339.8 172.2C328.9 161.3 311.1 161.3 300.2 172.2L192 280.4L147.8 236.2C136.9 225.3 119.1 225.3 108.2 236.2C97.27 247.1 97.27 264.9 108.2 275.8L172.2 339.8C183.1 350.7 200.9 350.7 211.8 339.8L339.8 211.8z"></path></svg> </td>
   <td style="text-align:left;"> Begin or continue the third ***optional*** extra credit module *Reporting with R Markdown* </td>
   <td style="text-align:center;"> [Link](/datacamp/09-module/) </td>
  </tr>
</tbody>
</table>

<br />

### What to do for Week 13 before coming to class^[For preparation.]



<table class="table" style="width: auto !important; margin-left: auto; margin-right: auto;">
 <thead>
  <tr>
   <th style="text-align:center;"> Area </th>
   <th style="text-align:left;"> Description </th>
   <th style="text-align:center;"> Location </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:center;width: 10em; "> <svg aria-hidden="true" role="img" viewbox="0 0 448 512" style="height:1em;width:0.88em;vertical-align:-0.125em;margin-left:auto;margin-right:auto;font-size:inherit;fill:steelblue;overflow:visible;position:relative;"><path d="M448 336v-288C448 21.49 426.5 0 400 0H96C42.98 0 0 42.98 0 96v320c0 53.02 42.98 96 96 96h320c17.67 0 32-14.33 32-31.1c0-11.72-6.607-21.52-16-27.1v-81.36C441.8 362.8 448 350.2 448 336zM143.1 128h192C344.8 128 352 135.2 352 144C352 152.8 344.8 160 336 160H143.1C135.2 160 128 152.8 128 144C128 135.2 135.2 128 143.1 128zM143.1 192h192C344.8 192 352 199.2 352 208C352 216.8 344.8 224 336 224H143.1C135.2 224 128 216.8 128 208C128 199.2 135.2 192 143.1 192zM384 448H96c-17.67 0-32-14.33-32-32c0-17.67 14.33-32 32-32h288V448z"></path></svg> </td>
   <td style="text-align:left;width: 30em; "> Read *Regression and Correlation* &amp; *Analysis of Variance* in the text </td>
   <td style="text-align:center;width: 10em; "> [Link](/readings/13-reading/#book-stuff) </td>
  </tr>
  <tr>
   <td style="text-align:center;width: 10em; "> <svg aria-hidden="true" role="img" viewbox="0 0 576 512" style="height:1em;width:1.12em;vertical-align:-0.125em;margin-left:auto;margin-right:auto;font-size:inherit;fill:steelblue;overflow:visible;position:relative;"><path d="M96 96h384v288h64V72C544 50 525.1 32 504 32H72C49.1 32 32 50 32 72V384h64V96zM560 416H416v-48c0-8.838-7.164-16-16-16h-160C231.2 352 224 359.2 224 368V416H16C7.164 416 0 423.2 0 432v32C0 472.8 7.164 480 16 480h544c8.836 0 16-7.164 16-16v-32C576 423.2 568.8 416 560 416z"></path></svg> </td>
   <td style="text-align:left;width: 30em; "> Download Chapter 11 &amp; 12 Powerpoints and Lecture Textbook Notes </td>
   <td style="text-align:center;width: 10em; "> [Link](/materials/13-content/#textbook-notes) </td>
  </tr>
</tbody>
</table>

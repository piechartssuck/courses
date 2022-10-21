---
title: "Introduction to Statistics in R"
linktitle: "Introduction to Statistics in R"
menu:
  datacamp:
    parent: Modules
    weight: 3
type: docs
weight: 1
editor_options: 
  chunk_output_type: console
---
<script src="/rmarkdown-libs/kePrint/kePrint.js"></script>
<link href="/rmarkdown-libs/lightable/lightable.css" rel="stylesheet" />



<style>
table > tbody > tr:hover > td, table > tbody > tr:hover > th {
  background-color: #ffffff;
}
</style>



<table class="table table-striped table-hover" style="width: auto !important; margin-left: auto; margin-right: auto;">
 <thead>
  <tr>
   <th style="text-align:center;background-color: #ffffff !important;vertical-align: middle !important;"> Module </th>
   <th style="text-align:center;background-color: #ffffff !important;vertical-align: middle !important;"> Available </th>
   <th style="text-align:center;background-color: #ffffff !important;vertical-align: middle !important;"> Due by </th>
   <th style="text-align:center;background-color: #ffffff !important;vertical-align: middle !important;"> Required </th>
   <th style="text-align:left;background-color: #ffffff !important;vertical-align: middle !important;"> Chapters </th>
   <th style="text-align:center;background-color: #ffffff !important;vertical-align: middle !important;"> Link </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:center;width: 5em; background-color: #ffffff !important;vertical-align: middle !important;"> 3 </td>
   <td style="text-align:center;width: 10em; background-color: #ffffff !important;vertical-align: middle !important;"> 8/26/21 </td>
   <td style="text-align:center;width: 10em; background-color: #ffffff !important;vertical-align: middle !important;"> 10/6/21 </td>
   <td style="text-align:center;width: 10em; background-color: #ffffff !important;vertical-align: middle !important;"> <svg aria-hidden="true" role="img" viewbox="0 0 512 512" style="height:15px;width:15px;vertical-align:-0.125em;margin-left:auto;margin-right:auto;font-size:inherit;fill:#428bca;overflow:visible;position:relative;"><path d="M0 256C0 114.6 114.6 0 256 0C397.4 0 512 114.6 512 256C512 397.4 397.4 512 256 512C114.6 512 0 397.4 0 256zM371.8 211.8C382.7 200.9 382.7 183.1 371.8 172.2C360.9 161.3 343.1 161.3 332.2 172.2L224 280.4L179.8 236.2C168.9 225.3 151.1 225.3 140.2 236.2C129.3 247.1 129.3 264.9 140.2 275.8L204.2 339.8C215.1 350.7 232.9 350.7 243.8 339.8L371.8 211.8z"></path></svg> </td>
   <td style="text-align:left;width: 10em; background-color: #ffffff !important;vertical-align: middle !important;"> Summary Statistics </td>
   <td style="text-align:center;background-color: #ffffff !important;vertical-align: middle !important;"> <a href="https://www.datacamp.com/users/sign_in">
 <img alt="Data Camp Logo" src="/logos/dc-ico.png" width="20px">
 </a> </td>
  </tr>
  <tr>
   <td style="text-align:center;width: 5em; background-color: #ffffff !important;vertical-align: middle !important;">  </td>
   <td style="text-align:center;width: 10em; background-color: #ffffff !important;vertical-align: middle !important;">  </td>
   <td style="text-align:center;width: 10em; background-color: #ffffff !important;vertical-align: middle !important;">  </td>
   <td style="text-align:center;width: 10em; background-color: #ffffff !important;vertical-align: middle !important;"> <svg aria-hidden="true" role="img" viewbox="0 0 512 512" style="height:15px;width:15px;vertical-align:-0.125em;margin-left:auto;margin-right:auto;font-size:inherit;fill:#428bca;overflow:visible;position:relative;"><path d="M0 256C0 114.6 114.6 0 256 0C397.4 0 512 114.6 512 256C512 397.4 397.4 512 256 512C114.6 512 0 397.4 0 256zM371.8 211.8C382.7 200.9 382.7 183.1 371.8 172.2C360.9 161.3 343.1 161.3 332.2 172.2L224 280.4L179.8 236.2C168.9 225.3 151.1 225.3 140.2 236.2C129.3 247.1 129.3 264.9 140.2 275.8L204.2 339.8C215.1 350.7 232.9 350.7 243.8 339.8L371.8 211.8z"></path></svg> </td>
   <td style="text-align:left;width: 10em; background-color: #ffffff !important;vertical-align: middle !important;"> Random Numbers and Probability </td>
   <td style="text-align:center;background-color: #ffffff !important;vertical-align: middle !important;">  </td>
  </tr>
  <tr>
   <td style="text-align:center;width: 5em; background-color: #ffffff !important;vertical-align: middle !important;">  </td>
   <td style="text-align:center;width: 10em; background-color: #ffffff !important;vertical-align: middle !important;">  </td>
   <td style="text-align:center;width: 10em; background-color: #ffffff !important;vertical-align: middle !important;">  </td>
   <td style="text-align:center;width: 10em; background-color: #ffffff !important;vertical-align: middle !important;"> <svg aria-hidden="true" role="img" viewbox="0 0 512 512" style="height:15px;width:15px;vertical-align:-0.125em;margin-left:auto;margin-right:auto;font-size:inherit;fill:#428bca;overflow:visible;position:relative;"><path d="M0 256C0 114.6 114.6 0 256 0C397.4 0 512 114.6 512 256C512 397.4 397.4 512 256 512C114.6 512 0 397.4 0 256zM371.8 211.8C382.7 200.9 382.7 183.1 371.8 172.2C360.9 161.3 343.1 161.3 332.2 172.2L224 280.4L179.8 236.2C168.9 225.3 151.1 225.3 140.2 236.2C129.3 247.1 129.3 264.9 140.2 275.8L204.2 339.8C215.1 350.7 232.9 350.7 243.8 339.8L371.8 211.8z"></path></svg> </td>
   <td style="text-align:left;width: 10em; background-color: #ffffff !important;vertical-align: middle !important;"> More Distributions and the Central Limit Theorem </td>
   <td style="text-align:center;background-color: #ffffff !important;vertical-align: middle !important;">  </td>
  </tr>
  <tr>
   <td style="text-align:center;width: 5em; background-color: #ffffff !important;vertical-align: middle !important;">  </td>
   <td style="text-align:center;width: 10em; background-color: #ffffff !important;vertical-align: middle !important;">  </td>
   <td style="text-align:center;width: 10em; background-color: #ffffff !important;vertical-align: middle !important;">  </td>
   <td style="text-align:center;width: 10em; background-color: #ffffff !important;vertical-align: middle !important;"> <svg aria-hidden="true" role="img" viewbox="0 0 512 512" style="height:15px;width:15px;vertical-align:-0.125em;margin-left:auto;margin-right:auto;font-size:inherit;fill:#428bca;overflow:visible;position:relative;"><path d="M0 256C0 114.6 114.6 0 256 0C397.4 0 512 114.6 512 256C512 397.4 397.4 512 256 512C114.6 512 0 397.4 0 256zM371.8 211.8C382.7 200.9 382.7 183.1 371.8 172.2C360.9 161.3 343.1 161.3 332.2 172.2L224 280.4L179.8 236.2C168.9 225.3 151.1 225.3 140.2 236.2C129.3 247.1 129.3 264.9 140.2 275.8L204.2 339.8C215.1 350.7 232.9 350.7 243.8 339.8L371.8 211.8z"></path></svg> </td>
   <td style="text-align:left;width: 10em; background-color: #ffffff !important;vertical-align: middle !important;"> Correlation and Experimental Design </td>
   <td style="text-align:center;background-color: #ffffff !important;vertical-align: middle !important;">  </td>
  </tr>
</tbody>
</table>

---
title: "Reporting with R Markdown"
linktitle: "Reporting with R Markdown"
menu:
  datacamp:
    parent: Modules
    weight: 8
type: docs
weight: 1
editor_options: 
  chunk_output_type: console
---

<script src="/rmarkdown-libs/kePrint/kePrint.js"></script>

<link href="/rmarkdown-libs/lightable/lightable.css" rel="stylesheet" />

{{% aes-header %}}

<table class="table table-striped table-hover" style="width: auto !important; margin-left: auto; margin-right: auto;">
<thead>
<tr>
<th style="text-align:center;color: #ffffff !important;background-color: #212121 !important;vertical-align: middle !important;">
Module
</th>
<th style="text-align:center;color: #ffffff !important;background-color: #212121 !important;vertical-align: middle !important;">
Available
</th>
<th style="text-align:center;color: #ffffff !important;background-color: #212121 !important;vertical-align: middle !important;">
Due by
</th>
<th style="text-align:center;color: #ffffff !important;background-color: #212121 !important;vertical-align: middle !important;">
Required
</th>
<th style="text-align:left;color: #ffffff !important;background-color: #212121 !important;vertical-align: middle !important;">
Chapters
</th>
<th style="text-align:center;color: #ffffff !important;background-color: #212121 !important;vertical-align: middle !important;">
Link
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:center;width: 5em; color: #ffffff !important;background-color: #212121 !important;vertical-align: middle !important;">
EC3
</td>
<td style="text-align:center;width: 10em; color: #ffffff !important;background-color: #212121 !important;vertical-align: middle !important;">
10/21/21
</td>
<td style="text-align:center;width: 10em; color: #ffffff !important;background-color: #212121 !important;vertical-align: middle !important;">
12/8/21
</td>
<td style="text-align:center;width: 10em; color: #ffffff !important;background-color: #212121 !important;vertical-align: middle !important;">
<svg aria-hidden="true" role="img" viewbox="0 0 512 512" style="height:15px;width:15px;vertical-align:-0.125em;margin-left:auto;margin-right:auto;font-size:inherit;fill:#d9534f;overflow:visible;position:relative;">
<path d="M0 256C0 114.6 114.6 0 256 0C397.4 0 512 114.6 512 256C512 397.4 397.4 512 256 512C114.6 512 0 397.4 0 256zM175 208.1L222.1 255.1L175 303C165.7 312.4 165.7 327.6 175 336.1C184.4 346.3 199.6 346.3 208.1 336.1L255.1 289.9L303 336.1C312.4 346.3 327.6 346.3 336.1 336.1C346.3 327.6 346.3 312.4 336.1 303L289.9 255.1L336.1 208.1C346.3 199.6 346.3 184.4 336.1 175C327.6 165.7 312.4 165.7 303 175L255.1 222.1L208.1 175C199.6 165.7 184.4 165.7 175 175C165.7 184.4 165.7 199.6 175 208.1V208.1z"></path>
</svg>
</td>
<td style="text-align:left;width: 10em; color: #ffffff !important;background-color: #212121 !important;vertical-align: middle !important;">
Getting Started with R Markdown
</td>
<td style="text-align:center;color: #ffffff !important;background-color: #212121 !important;vertical-align: middle !important;">
<a href="https://www.datacamp.com">
<img alt="Data Camp Logo" src="/logos/dc-ico.png" width="20px">
</a>
</td>
</tr>
<tr>
<td style="text-align:center;width: 5em; color: #ffffff !important;background-color: #212121 !important;vertical-align: middle !important;">
</td>
<td style="text-align:center;width: 10em; color: #ffffff !important;background-color: #212121 !important;vertical-align: middle !important;">
</td>
<td style="text-align:center;width: 10em; color: #ffffff !important;background-color: #212121 !important;vertical-align: middle !important;">
</td>
<td style="text-align:center;width: 10em; color: #ffffff !important;background-color: #212121 !important;vertical-align: middle !important;">
<svg aria-hidden="true" role="img" viewbox="0 0 512 512" style="height:15px;width:15px;vertical-align:-0.125em;margin-left:auto;margin-right:auto;font-size:inherit;fill:#d9534f;overflow:visible;position:relative;">
<path d="M0 256C0 114.6 114.6 0 256 0C397.4 0 512 114.6 512 256C512 397.4 397.4 512 256 512C114.6 512 0 397.4 0 256zM175 208.1L222.1 255.1L175 303C165.7 312.4 165.7 327.6 175 336.1C184.4 346.3 199.6 346.3 208.1 336.1L255.1 289.9L303 336.1C312.4 346.3 327.6 346.3 336.1 336.1C346.3 327.6 346.3 312.4 336.1 303L289.9 255.1L336.1 208.1C346.3 199.6 346.3 184.4 336.1 175C327.6 165.7 312.4 165.7 303 175L255.1 222.1L208.1 175C199.6 165.7 184.4 165.7 175 175C165.7 184.4 165.7 199.6 175 208.1V208.1z"></path>
</svg>
</td>
<td style="text-align:left;width: 10em; color: #ffffff !important;background-color: #212121 !important;vertical-align: middle !important;">
Adding Analyses and Visualizations
</td>
<td style="text-align:center;color: #ffffff !important;background-color: #212121 !important;vertical-align: middle !important;">
</td>
</tr>
<tr>
<td style="text-align:center;width: 5em; color: #ffffff !important;background-color: #212121 !important;vertical-align: middle !important;">
</td>
<td style="text-align:center;width: 10em; color: #ffffff !important;background-color: #212121 !important;vertical-align: middle !important;">
</td>
<td style="text-align:center;width: 10em; color: #ffffff !important;background-color: #212121 !important;vertical-align: middle !important;">
</td>
<td style="text-align:center;width: 10em; color: #ffffff !important;background-color: #212121 !important;vertical-align: middle !important;">
<svg aria-hidden="true" role="img" viewbox="0 0 512 512" style="height:15px;width:15px;vertical-align:-0.125em;margin-left:auto;margin-right:auto;font-size:inherit;fill:#d9534f;overflow:visible;position:relative;">
<path d="M0 256C0 114.6 114.6 0 256 0C397.4 0 512 114.6 512 256C512 397.4 397.4 512 256 512C114.6 512 0 397.4 0 256zM175 208.1L222.1 255.1L175 303C165.7 312.4 165.7 327.6 175 336.1C184.4 346.3 199.6 346.3 208.1 336.1L255.1 289.9L303 336.1C312.4 346.3 327.6 346.3 336.1 336.1C346.3 327.6 346.3 312.4 336.1 303L289.9 255.1L336.1 208.1C346.3 199.6 346.3 184.4 336.1 175C327.6 165.7 312.4 165.7 303 175L255.1 222.1L208.1 175C199.6 165.7 184.4 165.7 175 175C165.7 184.4 165.7 199.6 175 208.1V208.1z"></path>
</svg>
</td>
<td style="text-align:left;width: 10em; color: #ffffff !important;background-color: #212121 !important;vertical-align: middle !important;">
Improving the Report
</td>
<td style="text-align:center;color: #ffffff !important;background-color: #212121 !important;vertical-align: middle !important;">
</td>
</tr>
<tr>
<td style="text-align:center;width: 5em; color: #ffffff !important;background-color: #212121 !important;vertical-align: middle !important;">
</td>
<td style="text-align:center;width: 10em; color: #ffffff !important;background-color: #212121 !important;vertical-align: middle !important;">
</td>
<td style="text-align:center;width: 10em; color: #ffffff !important;background-color: #212121 !important;vertical-align: middle !important;">
</td>
<td style="text-align:center;width: 10em; color: #ffffff !important;background-color: #212121 !important;vertical-align: middle !important;">
<svg aria-hidden="true" role="img" viewbox="0 0 512 512" style="height:15px;width:15px;vertical-align:-0.125em;margin-left:auto;margin-right:auto;font-size:inherit;fill:#d9534f;overflow:visible;position:relative;">
<path d="M0 256C0 114.6 114.6 0 256 0C397.4 0 512 114.6 512 256C512 397.4 397.4 512 256 512C114.6 512 0 397.4 0 256zM175 208.1L222.1 255.1L175 303C165.7 312.4 165.7 327.6 175 336.1C184.4 346.3 199.6 346.3 208.1 336.1L255.1 289.9L303 336.1C312.4 346.3 327.6 346.3 336.1 336.1C346.3 327.6 346.3 312.4 336.1 303L289.9 255.1L336.1 208.1C346.3 199.6 346.3 184.4 336.1 175C327.6 165.7 312.4 165.7 303 175L255.1 222.1L208.1 175C199.6 165.7 184.4 165.7 175 175C165.7 184.4 165.7 199.6 175 208.1V208.1z"></path>
</svg>
</td>
<td style="text-align:left;width: 10em; color: #ffffff !important;background-color: #212121 !important;vertical-align: middle !important;">
Customizing the Report
</td>
<td style="text-align:center;color: #ffffff !important;background-color: #212121 !important;vertical-align: middle !important;">
</td>
</tr>
</tbody>
</table>

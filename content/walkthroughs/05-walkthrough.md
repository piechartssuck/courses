---
title: "Reliability"
linktitle: "Week 5: Reliability "
toc: true
output:
  rmarkdown::html_document:
    toc: true
menu:
  trainings:
    parent: Walkthroughs
    weight: 5
type: docs
weight: 2
---

<script src="/rmarkdown-libs/kePrint/kePrint.js"></script>
<link href="/rmarkdown-libs/lightable/lightable.css" rel="stylesheet" />
<script src="/rmarkdown-libs/font-awesome/js/script.js"></script>
<script src="/rmarkdown-libs/kePrint/kePrint.js"></script>
<link href="/rmarkdown-libs/lightable/lightable.css" rel="stylesheet" />
<script src="/rmarkdown-libs/kePrint/kePrint.js"></script>
<link href="/rmarkdown-libs/lightable/lightable.css" rel="stylesheet" />
<script src="/rmarkdown-libs/kePrint/kePrint.js"></script>
<link href="/rmarkdown-libs/lightable/lightable.css" rel="stylesheet" />
<script src="/rmarkdown-libs/kePrint/kePrint.js"></script>

<link href="/rmarkdown-libs/lightable/lightable.css" rel="stylesheet" />

{{% r-walkthrough-header %}}

## Reverse Coding and Internal Consistency

<table class=" lightable-paper table" style="font-family: &quot;Arial Narrow&quot;, arial, helvetica, sans-serif; margin-left: auto; margin-right: auto; font-size: 20px; width: auto !important; margin-left: auto; margin-right: auto;">
<thead>
<tr>
<th style="text-align:left;color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</th>
<th style="text-align:left;color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;width: 12em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
<b>Level of Difficulty</b><sup>1</sup>
</td>
<td style="text-align:left;width: 30em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
<span style="color:#c5d9ff">Novice</span>
</td>
</tr>
<tr>
<td style="text-align:left;width: 12em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
<b>What You’ll Mainly Do</b>
</td>
<td style="text-align:left;width: 30em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
Load an external csv file and type in syntax
</td>
</tr>
<tr>
<td style="text-align:left;width: 12em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;margin-bottom: 30px;">
<b>Language(s) We’ll Use</b><sup>2</sup>
</td>
<td style="text-align:left;width: 30em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;margin-bottom: 30px;">

<div id="info">

<div id="speechbubble" data-hover="R">

<span style="color:#4682b4"><i class="fa-brands fa-r-project fa-xl"></i></span>

</div>

</div>

</td>
</tr>
<tr>
<td style="text-align:left;width: 12em; ">
</td>
<td style="text-align:left;width: 30em; ">
</td>
</tr>
</tbody>
<tfoot>
<tr>
<td style="padding: 0; border:0;" colspan="100%">
<sup>1</sup> <span style="color:#f7f7f7; font-size:11pt;"><i>This is not an indicator of your personal level or abilities. You may experience varying level of ease and/or difficulties and that is OK!</i></span>
</td>
</tr>
<tr>
<td style="padding: 0; border:0;" colspan="100%">
<sup>2</sup> <span style="color:#f7f7f7; font-size:11pt;"><i>Hover over an icon to see its name</i></span>
</td>
</tr>
</tfoot>
</table>

## Prerequisites

-   Please go and take the <a href="https://openpsychometrics.org/tests/IPIP-BFFM/" target="_blank">Big Five Personality Test</a>

-   Read this short synopsis on the test from <a href="https://projects.fivethirtyeight.com/personality-quiz/" target="_blank">FiveThirtyEight</a>.

## Materials

The following download contains files that are provided to help you to understand and/or complete the walkthrough

<center>
<a onclick="fetch(&#39;data:application/zip;base64,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&#39;).then(res =&gt; res.blob()).then(blob =&gt; {&#10;      const downloadURL = window.URL.createObjectURL(blob);&#10;      const a = document.createElement(&#39;a&#39;);&#10;      document.body.appendChild(a);&#10;      a.href = downloadURL;&#10;      a.download = &#39;Week 5 Walkthrought.zip&#39;; a.click();&#10;      window.URL.revokeObjectURL(downloadURL);&#10;      document.body.removeChild(a);&#10;    });">
<button class="btn btn-primary hvr-sweep-to-left"><i class="fa fa-save"></i> &nbsp;&nbsp;&nbsp;<span style='color:#ffffff'>Download</span></button>
</a>
</center>

## Prepping

1.  Open up RStudio and create a new script by going to **File \> New File \> R Script**. Save this in an easily accessible folder. Now unzip this week’s data set and take the files - `Big5data.csv`, `Big5codebook.csv`, `Big5measures.csv`, `Reverse Coding and Internal Consistency install.R`, and `Reverse Coding and Internal Consistency script.R` - and drop them all in a folder of their own. *If you aren’t familiar with how directories and file paths work on a computer, consider keeping both your R script and data sets in the same folder. It just makes life easier.*

2.  Open the file `Reverse Coding and Internal Consistency install.R` and run the syntax to install the packages you will need for this task. If you are asked to update any packages, please select `1: All`.

3.  Now please go ahead and load up the following libraries

<div class="rounded">

``` r
library("tidyverse")
library("psych")
```

    ## 
    ## Attaching package: 'psych'

    ## The following object is masked from 'package:fontawesome':
    ## 
    ##     fa

    ## The following objects are masked from 'package:ggplot2':
    ## 
    ##     %+%, alpha

``` r
library("corrr")
library("surveytools2")
```

    ## 
    ## Attaching package: 'surveytools2'

    ## The following object is masked from 'package:base':
    ## 
    ##     replace

</div>

4.  set the working directory to the location of the script by running

<div class="rounded">

``` r
setwd(dirname(rstudioapi::getActiveDocumentContext()$path))
```

</div>

in your console or by selecting **Session \> Set Working Directory \> To Source File Location**

## Walkthrough

### Data Files

We’ll be looking at a very truncated data set from the 2018 BigFive Personality Test. The full data set is a huge file with 1 million answers to the 50 personality items! You can access it [here](https://openpsychometrics.org/_rawdata/IPIP-FFM-data-8Nov2018.zip) but be warned that opening a file that size can take a long time or may even crash some computers depending on their processing power and RAM. If you are interested in or confused by the formatting, it is a tab separated csv file.

#### Side Note: Loading the Entire Data Set

If you want to give the entire data set a go, in RStudio you can use

<div class="rounded">

``` r
toobig_five_data <- read_delim("data-final.csv", delim="\t") 
```

</div>

to save it to the `big_five_data` variable which you can access by running

<div class="rounded">

``` r
toobig_five_data
```

</div>

At this point you probably want to just open up the csv files in Excel and if that is what works, then by all means. While I try to run everything in R, sometimes its just easier to double click it. The problem really lies in the size of a data set. The larger the data set, the more power and time it takes for excel to load it up. With R you avoid this whole idea and the set loads up within seconds, rather than minutes. If you try loading the original data set in both R and Excel, the difference is very apparent.

In any case, we will be working with data strictly in R, but never feel bad about opening and wrangling a data set using another application like Excel. For all of my snarkiness towards anything Microsoft, Excel has some nice qualities but don’t tell anyone I ever wrote that.

### Loading a Local Data Set

Let’s turn back to the data set we’ll be using. To load the data set, codebook, and measures, run the following

<div class="rounded">

``` r
big_five_data <- read_csv("Big5data.csv")
```

</div>

    ## Rows: 100 Columns: 50
    ## ── Column specification ────────────────────────────────────────────────────────
    ## Delimiter: ","
    ## dbl (50): EXT1, EXT2, EXT3, EXT4, EXT5, EXT6, EXT7, EXT8, EXT9, EXT10, EST1,...
    ## 
    ## ℹ Use `spec()` to retrieve the full column specification for this data.
    ## ℹ Specify the column types or set `show_col_types = FALSE` to quiet this message.

<div class="rounded">

``` r
big_five_codebook <- read_csv("Big5codebook.csv")
```

</div>

    ## Rows: 50 Columns: 2
    ## ── Column specification ────────────────────────────────────────────────────────
    ## Delimiter: ","
    ## chr (2): ID, Item
    ## 
    ## ℹ Use `spec()` to retrieve the full column specification for this data.
    ## ℹ Specify the column types or set `show_col_types = FALSE` to quiet this message.

<div class="rounded">

``` r
big_five_measures <- read_csv("Big5measures.csv")
```

</div>

    ## Rows: 5 Columns: 2
    ## ── Column specification ────────────────────────────────────────────────────────
    ## Delimiter: ","
    ## chr (1): Description
    ## dbl (1): Measure
    ## 
    ## ℹ Use `spec()` to retrieve the full column specification for this data.
    ## ℹ Specify the column types or set `show_col_types = FALSE` to quiet this message.

and take a look at each

<div class="rounded">

``` r
big_five_data %>%
  head()
```

    ## # A tibble: 6 × 50
    ##    EXT1  EXT2  EXT3  EXT4  EXT5  EXT6  EXT7  EXT8  EXT9 EXT10  EST1  EST2  EST3
    ##   <dbl> <dbl> <dbl> <dbl> <dbl> <dbl> <dbl> <dbl> <dbl> <dbl> <dbl> <dbl> <dbl>
    ## 1     3     2     3     4     4     2     3     3     4     2     4     3     5
    ## 2     1     5     1     5     1     4     1     5     4     5     4     2     4
    ## 3     2     5     4     3     1     5     1     3     4     5     2     5     5
    ## 4     2     3     3     3     3     2     2     4     2     3     5     1     5
    ## 5     3     4     3     3     3     3     3     2     3     4     3     5     3
    ## 6     3     1     5     1     4     1     5     4     4     2     5     2     5
    ## # … with 37 more variables: EST4 <dbl>, EST5 <dbl>, EST6 <dbl>, EST7 <dbl>,
    ## #   EST8 <dbl>, EST9 <dbl>, EST10 <dbl>, AGR1 <dbl>, AGR2 <dbl>, AGR3 <dbl>,
    ## #   AGR4 <dbl>, AGR5 <dbl>, AGR6 <dbl>, AGR7 <dbl>, AGR8 <dbl>, AGR9 <dbl>,
    ## #   AGR10 <dbl>, CSN1 <dbl>, CSN2 <dbl>, CSN3 <dbl>, CSN4 <dbl>, CSN5 <dbl>,
    ## #   CSN6 <dbl>, CSN7 <dbl>, CSN8 <dbl>, CSN9 <dbl>, CSN10 <dbl>, OPN1 <dbl>,
    ## #   OPN2 <dbl>, OPN3 <dbl>, OPN4 <dbl>, OPN5 <dbl>, OPN6 <dbl>, OPN7 <dbl>,
    ## #   OPN8 <dbl>, OPN9 <dbl>, OPN10 <dbl>

</div>

with respondents self-report under the five factors Extroversion (`EXT`), Agreeableness (`AGR`), Conscientiousness (`CSN`), Emotional Stability (`EST`), and Intellect/Imagination (`OPN`).

<div class="rounded">

``` r
big_five_codebook
```

    ## # A tibble: 50 × 2
    ##    ID    Item                                           
    ##    <chr> <chr>                                          
    ##  1 EXT1  I am the life of the party.                    
    ##  2 EXT2  I don't talk a lot.                            
    ##  3 EXT3  I feel comfortable around people.              
    ##  4 EXT4  I keep in the background.                      
    ##  5 EXT5  I start conversations.                         
    ##  6 EXT6  I have little to say.                          
    ##  7 EXT7  I talk to a lot of different people at parties.
    ##  8 EXT8  I don't like to draw attention to myself.      
    ##  9 EXT9  I don't mind being the center of attention.    
    ## 10 EXT10 I am quiet around strangers.                   
    ## # … with 40 more rows

</div>

<div class="rounded">

``` r
big_five_measures
```

    ## # A tibble: 5 × 2
    ##   Measure Description      
    ##     <dbl> <chr>            
    ## 1       5 Agree            
    ## 2       4 Somewhat Agree   
    ## 3       3 Neutral          
    ## 4       2 Somewhat Disagree
    ## 5       1 Disagree

</div>

For this walkthrough, let’s just concentrate on the Extroversion items which are given by `EXT.` That means we should probably pair down both the data set and codebook. For data sets with multiple columns, we can use the `select()` syntax. Moreover since we are looking at all of the columns that have `EXT`, we can pull only those using the `starts_with()` command. For more examples of options that can be used with `select()`, take a look <a href="https://dplyr.tidyverse.org/reference/select.html" target="_blank">here</a>.

<div class="rounded">

``` r
big_five_data_EXT <- 
  big_five_data %>%
  select(starts_with("EXT"))
```

</div>

and then we’ll do something similar to the codebook. While we can’t simply select columns because all of the variables are in a single column. Much like in Excel, we can filter rows. To do this in R, we use the `filter()` command.

<div class="rounded">

``` r
big_five_codebook_EXT <- 
  big_five_codebook %>%
  filter(str_detect(ID, "EXT"))
```

</div>

<div class="rounded">

``` r
big_five_data_EXT
```

    ## # A tibble: 100 × 10
    ##     EXT1  EXT2  EXT3  EXT4  EXT5  EXT6  EXT7  EXT8  EXT9 EXT10
    ##    <dbl> <dbl> <dbl> <dbl> <dbl> <dbl> <dbl> <dbl> <dbl> <dbl>
    ##  1     3     2     3     4     4     2     3     3     4     2
    ##  2     1     5     1     5     1     4     1     5     4     5
    ##  3     2     5     4     3     1     5     1     3     4     5
    ##  4     2     3     3     3     3     2     2     4     2     3
    ##  5     3     4     3     3     3     3     3     2     3     4
    ##  6     3     1     5     1     4     1     5     4     4     2
    ##  7     3     3     4     2     5     2     5     2     4     3
    ##  8     3     4     1     3     0     4     1     4     2     5
    ##  9     2     4     2     4     4     1     3     1     2     5
    ## 10     3     4     4     2     3     2     3     5     1     4
    ## # … with 90 more rows

``` r
big_five_codebook_EXT
```

    ## # A tibble: 10 × 2
    ##    ID    Item                                           
    ##    <chr> <chr>                                          
    ##  1 EXT1  I am the life of the party.                    
    ##  2 EXT2  I don't talk a lot.                            
    ##  3 EXT3  I feel comfortable around people.              
    ##  4 EXT4  I keep in the background.                      
    ##  5 EXT5  I start conversations.                         
    ##  6 EXT6  I have little to say.                          
    ##  7 EXT7  I talk to a lot of different people at parties.
    ##  8 EXT8  I don't like to draw attention to myself.      
    ##  9 EXT9  I don't mind being the center of attention.    
    ## 10 EXT10 I am quiet around strangers.

</div>

## Method: Reverse Coding

Sometimes items can be worded ‘backwards’. In these situation, scales need to be reversed to point in the same direction.

### Example

For example both these questions might be used to measure the same underlying construct or idea.

1.  I really like being alone
2.  I really *don’t* enjoy large gatherings

In this situation, if we used the same response scale for each participants’ responses they would simply cancel out.

When aligning the direction, we typically reverse code the one that has a negative, aka the negatively-keyed item. In this case is the second example since it includes the word *don’t*. There are exceptions to this rule, but they are narrowly defined. For example, someone who states that they “really *don’t* enjoy large gatherings” doesn’t automatically imply they like being alone. In fact, there are arguably an infinite number of possibilities of things they do like! The only time you can be code all items in either direction are in circumstances where there is a binary choice (e.g. Yes/No questions).

But wait…there’s more! You also have to consider the intent of the questions and the participants. This second and final check is crucial to reporting reliable and consistent results and is the primary reason why many surveys are simply not good.

<center>
:::
</center>

<br />

Getting back to the main data set, let’s again look at the codebook.

<div class="rounded">

``` r
big_five_codebook_EXT
```

    ## # A tibble: 10 × 2
    ##    ID    Item                                           
    ##    <chr> <chr>                                          
    ##  1 EXT1  I am the life of the party.                    
    ##  2 EXT2  I don't talk a lot.                            
    ##  3 EXT3  I feel comfortable around people.              
    ##  4 EXT4  I keep in the background.                      
    ##  5 EXT5  I start conversations.                         
    ##  6 EXT6  I have little to say.                          
    ##  7 EXT7  I talk to a lot of different people at parties.
    ##  8 EXT8  I don't like to draw attention to myself.      
    ##  9 EXT9  I don't mind being the center of attention.    
    ## 10 EXT10 I am quiet around strangers.

</div>

Well it certainly looks like `EXT2`, `EXT4`, `EXT6`, `EXT8` and `EXT10` are all negative in the context of of assessing extroversion. Furthermore while `EXT9` includes the term *don’t*, it doesn’t orient the statement in a negative way so it stays the way it is.

Remember that command we needed from the `surveytools2` package? Well it was to reverse code in a tidy way

<div class="rounded">

``` r
big_five_data_EXT_rev <- 
  big_five_data_EXT %>%
  mutate(EXT2 = reverse_code(EXT2),
         EXT4 = reverse_code(EXT4),
         EXT6 = reverse_code(EXT6),
         EXT8 = reverse_code(EXT8),
         EXT10 = reverse_code(EXT10))

big_five_data_EXT_rev
```

    ## # A tibble: 100 × 10
    ##     EXT1  EXT2  EXT3  EXT4  EXT5  EXT6  EXT7  EXT8  EXT9 EXT10
    ##    <dbl> <dbl> <dbl> <dbl> <dbl> <dbl> <dbl> <dbl> <dbl> <dbl>
    ##  1     3     4     3     1     4     3     3     2     4     3
    ##  2     1     1     1     0     1     1     1     0     4     0
    ##  3     2     1     4     2     1     0     1     2     4     0
    ##  4     2     3     3     2     3     3     2     1     2     2
    ##  5     3     2     3     2     3     2     3     3     3     1
    ##  6     3     5     5     4     4     4     5     1     4     3
    ##  7     3     3     4     3     5     3     5     3     4     2
    ##  8     3     2     1     2     0     1     1     1     2     0
    ##  9     2     2     2     1     4     4     3     4     2     0
    ## 10     3     2     4     3     3     3     3     0     1     1
    ## # … with 90 more rows

</div>

Let’s take a look at a sample of the first six rows between the two tables to see if the columns were indeed reverse coded.

<center>
<table class=" lightable-paper table table-hover table-condensed table-responsive" style="font-size: 13ptpx; font-family: Roboto Condensed; margin-left: auto; margin-right: auto; width: auto !important; margin-left: auto; margin-right: auto;">
<thead>
<tr>
<th style="padding-bottom:0; padding-left:3px;padding-right:3px;text-align: center; font-size: 15pt;" colspan="10">

<div style="">

Original Data Set

</div>

</th>
</tr>
<tr>
<th style="text-align:center;color: #f7f7f7 !important;vertical-align: middle !important;">
EXT1
</th>
<th style="text-align:center;color: #f7f7f7 !important;vertical-align: middle !important;">
EXT2
</th>
<th style="text-align:center;color: #f7f7f7 !important;vertical-align: middle !important;">
EXT3
</th>
<th style="text-align:center;color: #f7f7f7 !important;vertical-align: middle !important;">
EXT4
</th>
<th style="text-align:center;color: #f7f7f7 !important;vertical-align: middle !important;">
EXT5
</th>
<th style="text-align:center;color: #f7f7f7 !important;vertical-align: middle !important;">
EXT6
</th>
<th style="text-align:center;color: #f7f7f7 !important;vertical-align: middle !important;">
EXT7
</th>
<th style="text-align:center;color: #f7f7f7 !important;vertical-align: middle !important;">
EXT8
</th>
<th style="text-align:center;color: #f7f7f7 !important;vertical-align: middle !important;">
EXT9
</th>
<th style="text-align:center;color: #f7f7f7 !important;vertical-align: middle !important;">
EXT10
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:center;background-color: transparent !important;color: #f7f7f7 !important;vertical-align: middle !important;">
3
</td>
<td style="text-align:center;color: #212121 !important;background-color: #317256 !important;color: #f7f7f7 !important;vertical-align: middle !important;">
2
</td>
<td style="text-align:center;background-color: transparent !important;color: #f7f7f7 !important;vertical-align: middle !important;">
3
</td>
<td style="text-align:center;color: #212121 !important;background-color: #317256 !important;color: #f7f7f7 !important;vertical-align: middle !important;">
4
</td>
<td style="text-align:center;background-color: transparent !important;color: #f7f7f7 !important;vertical-align: middle !important;">
4
</td>
<td style="text-align:center;color: #212121 !important;background-color: #317256 !important;color: #f7f7f7 !important;vertical-align: middle !important;">
2
</td>
<td style="text-align:center;background-color: transparent !important;color: #f7f7f7 !important;vertical-align: middle !important;">
3
</td>
<td style="text-align:center;color: #212121 !important;background-color: #317256 !important;color: #f7f7f7 !important;vertical-align: middle !important;">
3
</td>
<td style="text-align:center;background-color: transparent !important;color: #f7f7f7 !important;vertical-align: middle !important;">
4
</td>
<td style="text-align:center;color: #212121 !important;background-color: #317256 !important;color: #f7f7f7 !important;vertical-align: middle !important;">
2
</td>
</tr>
<tr>
<td style="text-align:center;background-color: transparent !important;color: #f7f7f7 !important;vertical-align: middle !important;">
1
</td>
<td style="text-align:center;color: #212121 !important;background-color: #317256 !important;color: #f7f7f7 !important;vertical-align: middle !important;">
5
</td>
<td style="text-align:center;background-color: transparent !important;color: #f7f7f7 !important;vertical-align: middle !important;">
1
</td>
<td style="text-align:center;color: #212121 !important;background-color: #317256 !important;color: #f7f7f7 !important;vertical-align: middle !important;">
5
</td>
<td style="text-align:center;background-color: transparent !important;color: #f7f7f7 !important;vertical-align: middle !important;">
1
</td>
<td style="text-align:center;color: #212121 !important;background-color: #317256 !important;color: #f7f7f7 !important;vertical-align: middle !important;">
4
</td>
<td style="text-align:center;background-color: transparent !important;color: #f7f7f7 !important;vertical-align: middle !important;">
1
</td>
<td style="text-align:center;color: #212121 !important;background-color: #317256 !important;color: #f7f7f7 !important;vertical-align: middle !important;">
5
</td>
<td style="text-align:center;background-color: transparent !important;color: #f7f7f7 !important;vertical-align: middle !important;">
4
</td>
<td style="text-align:center;color: #212121 !important;background-color: #317256 !important;color: #f7f7f7 !important;vertical-align: middle !important;">
5
</td>
</tr>
<tr>
<td style="text-align:center;background-color: transparent !important;color: #f7f7f7 !important;vertical-align: middle !important;">
2
</td>
<td style="text-align:center;color: #212121 !important;background-color: #317256 !important;color: #f7f7f7 !important;vertical-align: middle !important;">
5
</td>
<td style="text-align:center;background-color: transparent !important;color: #f7f7f7 !important;vertical-align: middle !important;">
4
</td>
<td style="text-align:center;color: #212121 !important;background-color: #317256 !important;color: #f7f7f7 !important;vertical-align: middle !important;">
3
</td>
<td style="text-align:center;background-color: transparent !important;color: #f7f7f7 !important;vertical-align: middle !important;">
1
</td>
<td style="text-align:center;color: #212121 !important;background-color: #317256 !important;color: #f7f7f7 !important;vertical-align: middle !important;">
5
</td>
<td style="text-align:center;background-color: transparent !important;color: #f7f7f7 !important;vertical-align: middle !important;">
1
</td>
<td style="text-align:center;color: #212121 !important;background-color: #317256 !important;color: #f7f7f7 !important;vertical-align: middle !important;">
3
</td>
<td style="text-align:center;background-color: transparent !important;color: #f7f7f7 !important;vertical-align: middle !important;">
4
</td>
<td style="text-align:center;color: #212121 !important;background-color: #317256 !important;color: #f7f7f7 !important;vertical-align: middle !important;">
5
</td>
</tr>
<tr>
<td style="text-align:center;background-color: transparent !important;color: #f7f7f7 !important;vertical-align: middle !important;">
2
</td>
<td style="text-align:center;color: #212121 !important;background-color: #317256 !important;color: #f7f7f7 !important;vertical-align: middle !important;">
3
</td>
<td style="text-align:center;background-color: transparent !important;color: #f7f7f7 !important;vertical-align: middle !important;">
3
</td>
<td style="text-align:center;color: #212121 !important;background-color: #317256 !important;color: #f7f7f7 !important;vertical-align: middle !important;">
3
</td>
<td style="text-align:center;background-color: transparent !important;color: #f7f7f7 !important;vertical-align: middle !important;">
3
</td>
<td style="text-align:center;color: #212121 !important;background-color: #317256 !important;color: #f7f7f7 !important;vertical-align: middle !important;">
2
</td>
<td style="text-align:center;background-color: transparent !important;color: #f7f7f7 !important;vertical-align: middle !important;">
2
</td>
<td style="text-align:center;color: #212121 !important;background-color: #317256 !important;color: #f7f7f7 !important;vertical-align: middle !important;">
4
</td>
<td style="text-align:center;background-color: transparent !important;color: #f7f7f7 !important;vertical-align: middle !important;">
2
</td>
<td style="text-align:center;color: #212121 !important;background-color: #317256 !important;color: #f7f7f7 !important;vertical-align: middle !important;">
3
</td>
</tr>
<tr>
<td style="text-align:center;background-color: transparent !important;color: #f7f7f7 !important;vertical-align: middle !important;">
3
</td>
<td style="text-align:center;color: #212121 !important;background-color: #317256 !important;color: #f7f7f7 !important;vertical-align: middle !important;">
4
</td>
<td style="text-align:center;background-color: transparent !important;color: #f7f7f7 !important;vertical-align: middle !important;">
3
</td>
<td style="text-align:center;color: #212121 !important;background-color: #317256 !important;color: #f7f7f7 !important;vertical-align: middle !important;">
3
</td>
<td style="text-align:center;background-color: transparent !important;color: #f7f7f7 !important;vertical-align: middle !important;">
3
</td>
<td style="text-align:center;color: #212121 !important;background-color: #317256 !important;color: #f7f7f7 !important;vertical-align: middle !important;">
3
</td>
<td style="text-align:center;background-color: transparent !important;color: #f7f7f7 !important;vertical-align: middle !important;">
3
</td>
<td style="text-align:center;color: #212121 !important;background-color: #317256 !important;color: #f7f7f7 !important;vertical-align: middle !important;">
2
</td>
<td style="text-align:center;background-color: transparent !important;color: #f7f7f7 !important;vertical-align: middle !important;">
3
</td>
<td style="text-align:center;color: #212121 !important;background-color: #317256 !important;color: #f7f7f7 !important;vertical-align: middle !important;">
4
</td>
</tr>
<tr>
<td style="text-align:center;background-color: transparent !important;color: #f7f7f7 !important;vertical-align: middle !important;">
3
</td>
<td style="text-align:center;color: #212121 !important;background-color: #317256 !important;color: #f7f7f7 !important;vertical-align: middle !important;">
1
</td>
<td style="text-align:center;background-color: transparent !important;color: #f7f7f7 !important;vertical-align: middle !important;">
5
</td>
<td style="text-align:center;color: #212121 !important;background-color: #317256 !important;color: #f7f7f7 !important;vertical-align: middle !important;">
1
</td>
<td style="text-align:center;background-color: transparent !important;color: #f7f7f7 !important;vertical-align: middle !important;">
4
</td>
<td style="text-align:center;color: #212121 !important;background-color: #317256 !important;color: #f7f7f7 !important;vertical-align: middle !important;">
1
</td>
<td style="text-align:center;background-color: transparent !important;color: #f7f7f7 !important;vertical-align: middle !important;">
5
</td>
<td style="text-align:center;color: #212121 !important;background-color: #317256 !important;color: #f7f7f7 !important;vertical-align: middle !important;">
4
</td>
<td style="text-align:center;background-color: transparent !important;color: #f7f7f7 !important;vertical-align: middle !important;">
4
</td>
<td style="text-align:center;color: #212121 !important;background-color: #317256 !important;color: #f7f7f7 !important;vertical-align: middle !important;">
2
</td>
</tr>
</tbody>
</table>
</center>

<br>

<center>
<table class=" lightable-paper" style="font-size: 13ptpx; font-family: &quot;Arial Narrow&quot;, arial, helvetica, sans-serif; width: auto !important; margin-left: auto; margin-right: auto;">
<thead>
<tr>
<th style="padding-bottom:0; padding-left:3px;padding-right:3px;text-align: center; font-size: 15pt;" colspan="10">

<div style="">

Data Set with Reverse Coded Columns

</div>

</th>
</tr>
<tr>
<th style="text-align:center;color: #f7f7f7 !important;vertical-align: middle !important;">
EXT1
</th>
<th style="text-align:center;color: #f7f7f7 !important;vertical-align: middle !important;">
EXT2
</th>
<th style="text-align:center;color: #f7f7f7 !important;vertical-align: middle !important;">
EXT3
</th>
<th style="text-align:center;color: #f7f7f7 !important;vertical-align: middle !important;">
EXT4
</th>
<th style="text-align:center;color: #f7f7f7 !important;vertical-align: middle !important;">
EXT5
</th>
<th style="text-align:center;color: #f7f7f7 !important;vertical-align: middle !important;">
EXT6
</th>
<th style="text-align:center;color: #f7f7f7 !important;vertical-align: middle !important;">
EXT7
</th>
<th style="text-align:center;color: #f7f7f7 !important;vertical-align: middle !important;">
EXT8
</th>
<th style="text-align:center;color: #f7f7f7 !important;vertical-align: middle !important;">
EXT9
</th>
<th style="text-align:center;color: #f7f7f7 !important;vertical-align: middle !important;">
EXT10
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:center;background-color: transparent !important;color: #f7f7f7 !important;vertical-align: middle !important;">
3
</td>
<td style="text-align:center;color: #212121 !important;background-color: #317256 !important;color: #f7f7f7 !important;vertical-align: middle !important;">
4
</td>
<td style="text-align:center;background-color: transparent !important;color: #f7f7f7 !important;vertical-align: middle !important;">
3
</td>
<td style="text-align:center;color: #212121 !important;background-color: #317256 !important;color: #f7f7f7 !important;vertical-align: middle !important;">
1
</td>
<td style="text-align:center;background-color: transparent !important;color: #f7f7f7 !important;vertical-align: middle !important;">
4
</td>
<td style="text-align:center;color: #212121 !important;background-color: #317256 !important;color: #f7f7f7 !important;vertical-align: middle !important;">
3
</td>
<td style="text-align:center;background-color: transparent !important;color: #f7f7f7 !important;vertical-align: middle !important;">
3
</td>
<td style="text-align:center;color: #212121 !important;background-color: #317256 !important;color: #f7f7f7 !important;vertical-align: middle !important;">
2
</td>
<td style="text-align:center;background-color: transparent !important;color: #f7f7f7 !important;vertical-align: middle !important;">
4
</td>
<td style="text-align:center;color: #212121 !important;background-color: #317256 !important;color: #f7f7f7 !important;vertical-align: middle !important;">
3
</td>
</tr>
<tr>
<td style="text-align:center;background-color: transparent !important;color: #f7f7f7 !important;vertical-align: middle !important;">
1
</td>
<td style="text-align:center;color: #212121 !important;background-color: #317256 !important;color: #f7f7f7 !important;vertical-align: middle !important;">
1
</td>
<td style="text-align:center;background-color: transparent !important;color: #f7f7f7 !important;vertical-align: middle !important;">
1
</td>
<td style="text-align:center;color: #212121 !important;background-color: #317256 !important;color: #f7f7f7 !important;vertical-align: middle !important;">
0
</td>
<td style="text-align:center;background-color: transparent !important;color: #f7f7f7 !important;vertical-align: middle !important;">
1
</td>
<td style="text-align:center;color: #212121 !important;background-color: #317256 !important;color: #f7f7f7 !important;vertical-align: middle !important;">
1
</td>
<td style="text-align:center;background-color: transparent !important;color: #f7f7f7 !important;vertical-align: middle !important;">
1
</td>
<td style="text-align:center;color: #212121 !important;background-color: #317256 !important;color: #f7f7f7 !important;vertical-align: middle !important;">
0
</td>
<td style="text-align:center;background-color: transparent !important;color: #f7f7f7 !important;vertical-align: middle !important;">
4
</td>
<td style="text-align:center;color: #212121 !important;background-color: #317256 !important;color: #f7f7f7 !important;vertical-align: middle !important;">
0
</td>
</tr>
<tr>
<td style="text-align:center;background-color: transparent !important;color: #f7f7f7 !important;vertical-align: middle !important;">
2
</td>
<td style="text-align:center;color: #212121 !important;background-color: #317256 !important;color: #f7f7f7 !important;vertical-align: middle !important;">
1
</td>
<td style="text-align:center;background-color: transparent !important;color: #f7f7f7 !important;vertical-align: middle !important;">
4
</td>
<td style="text-align:center;color: #212121 !important;background-color: #317256 !important;color: #f7f7f7 !important;vertical-align: middle !important;">
2
</td>
<td style="text-align:center;background-color: transparent !important;color: #f7f7f7 !important;vertical-align: middle !important;">
1
</td>
<td style="text-align:center;color: #212121 !important;background-color: #317256 !important;color: #f7f7f7 !important;vertical-align: middle !important;">
0
</td>
<td style="text-align:center;background-color: transparent !important;color: #f7f7f7 !important;vertical-align: middle !important;">
1
</td>
<td style="text-align:center;color: #212121 !important;background-color: #317256 !important;color: #f7f7f7 !important;vertical-align: middle !important;">
2
</td>
<td style="text-align:center;background-color: transparent !important;color: #f7f7f7 !important;vertical-align: middle !important;">
4
</td>
<td style="text-align:center;color: #212121 !important;background-color: #317256 !important;color: #f7f7f7 !important;vertical-align: middle !important;">
0
</td>
</tr>
<tr>
<td style="text-align:center;background-color: transparent !important;color: #f7f7f7 !important;vertical-align: middle !important;">
2
</td>
<td style="text-align:center;color: #212121 !important;background-color: #317256 !important;color: #f7f7f7 !important;vertical-align: middle !important;">
3
</td>
<td style="text-align:center;background-color: transparent !important;color: #f7f7f7 !important;vertical-align: middle !important;">
3
</td>
<td style="text-align:center;color: #212121 !important;background-color: #317256 !important;color: #f7f7f7 !important;vertical-align: middle !important;">
2
</td>
<td style="text-align:center;background-color: transparent !important;color: #f7f7f7 !important;vertical-align: middle !important;">
3
</td>
<td style="text-align:center;color: #212121 !important;background-color: #317256 !important;color: #f7f7f7 !important;vertical-align: middle !important;">
3
</td>
<td style="text-align:center;background-color: transparent !important;color: #f7f7f7 !important;vertical-align: middle !important;">
2
</td>
<td style="text-align:center;color: #212121 !important;background-color: #317256 !important;color: #f7f7f7 !important;vertical-align: middle !important;">
1
</td>
<td style="text-align:center;background-color: transparent !important;color: #f7f7f7 !important;vertical-align: middle !important;">
2
</td>
<td style="text-align:center;color: #212121 !important;background-color: #317256 !important;color: #f7f7f7 !important;vertical-align: middle !important;">
2
</td>
</tr>
<tr>
<td style="text-align:center;background-color: transparent !important;color: #f7f7f7 !important;vertical-align: middle !important;">
3
</td>
<td style="text-align:center;color: #212121 !important;background-color: #317256 !important;color: #f7f7f7 !important;vertical-align: middle !important;">
2
</td>
<td style="text-align:center;background-color: transparent !important;color: #f7f7f7 !important;vertical-align: middle !important;">
3
</td>
<td style="text-align:center;color: #212121 !important;background-color: #317256 !important;color: #f7f7f7 !important;vertical-align: middle !important;">
2
</td>
<td style="text-align:center;background-color: transparent !important;color: #f7f7f7 !important;vertical-align: middle !important;">
3
</td>
<td style="text-align:center;color: #212121 !important;background-color: #317256 !important;color: #f7f7f7 !important;vertical-align: middle !important;">
2
</td>
<td style="text-align:center;background-color: transparent !important;color: #f7f7f7 !important;vertical-align: middle !important;">
3
</td>
<td style="text-align:center;color: #212121 !important;background-color: #317256 !important;color: #f7f7f7 !important;vertical-align: middle !important;">
3
</td>
<td style="text-align:center;background-color: transparent !important;color: #f7f7f7 !important;vertical-align: middle !important;">
3
</td>
<td style="text-align:center;color: #212121 !important;background-color: #317256 !important;color: #f7f7f7 !important;vertical-align: middle !important;">
1
</td>
</tr>
<tr>
<td style="text-align:center;background-color: transparent !important;color: #f7f7f7 !important;vertical-align: middle !important;">
3
</td>
<td style="text-align:center;color: #212121 !important;background-color: #317256 !important;color: #f7f7f7 !important;vertical-align: middle !important;">
5
</td>
<td style="text-align:center;background-color: transparent !important;color: #f7f7f7 !important;vertical-align: middle !important;">
5
</td>
<td style="text-align:center;color: #212121 !important;background-color: #317256 !important;color: #f7f7f7 !important;vertical-align: middle !important;">
4
</td>
<td style="text-align:center;background-color: transparent !important;color: #f7f7f7 !important;vertical-align: middle !important;">
4
</td>
<td style="text-align:center;color: #212121 !important;background-color: #317256 !important;color: #f7f7f7 !important;vertical-align: middle !important;">
4
</td>
<td style="text-align:center;background-color: transparent !important;color: #f7f7f7 !important;vertical-align: middle !important;">
5
</td>
<td style="text-align:center;color: #212121 !important;background-color: #317256 !important;color: #f7f7f7 !important;vertical-align: middle !important;">
1
</td>
<td style="text-align:center;background-color: transparent !important;color: #f7f7f7 !important;vertical-align: middle !important;">
4
</td>
<td style="text-align:center;color: #212121 !important;background-color: #317256 !important;color: #f7f7f7 !important;vertical-align: middle !important;">
3
</td>
</tr>
</tbody>
</table>
</center>

<br>

That looks correct! Notice that in the <a style="color: #FFFFFF; background-color: #317256">green</a> columns, the numbers flip along the neutral measure (3), or maybe a better observation is that the numerical complement is correct if adding two corresponding cells equals 5. If you have had any upper level mathematics courses, you may notice these as a modulo or mod 5 system.

## Computing the Internal Consistency

There are many approaches when assessing reliability, namely those associated with interviews, experiments, surveys, trials, etc. Internal consistency is foremost one of many existing methods used to measure reliability, and it is typically useful in assessing items (e.g from a protocol, questionnaire, test, etc). It essentially **estimates to what degree total scores on an instrument would change or vary if different items were used**. Here are four but really three approaches used by a majority of practitioners:

### Composite Reliability

Getting a bit ahead of ourselves, composite reliability is based on the factor lodgings in a confirmatory factor analysis (CFA). We’ll cover this soon!

### Cronbach’s alpha

By far the most utilized approach, it is also very procedural which is typically viewed as beneficial by many evaluators. There are many ways to tell R to compute alpha ($\alpha$) but by far the simplest may be to use the `psych` package

<div class="rounded">

``` r
psych::alpha(big_five_data_EXT_rev)
```

    ## 
    ## Reliability analysis   
    ## Call: psych::alpha(x = big_five_data_EXT_rev)
    ## 
    ##   raw_alpha std.alpha G6(smc) average_r S/N   ase mean   sd median_r
    ##        0.9       0.9    0.91      0.48 9.1 0.015  2.7 0.95     0.49
    ## 
    ##     95% confidence boundaries 
    ##          lower alpha upper
    ## Feldt     0.87   0.9  0.93
    ## Duhachek  0.87   0.9  0.93
    ## 
    ##  Reliability if an item is dropped:
    ##       raw_alpha std.alpha G6(smc) average_r S/N alpha se  var.r med.r
    ## EXT1       0.89      0.90    0.91      0.49 8.5    0.016 0.0123  0.50
    ## EXT2       0.89      0.89    0.90      0.47 8.1    0.017 0.0115  0.49
    ## EXT3       0.89      0.89    0.90      0.47 8.0    0.017 0.0111  0.49
    ## EXT4       0.89      0.89    0.90      0.46 7.7    0.017 0.0126  0.45
    ## EXT5       0.89      0.89    0.89      0.46 7.8    0.017 0.0098  0.46
    ## EXT6       0.89      0.89    0.90      0.48 8.4    0.016 0.0104  0.49
    ## EXT7       0.89      0.89    0.90      0.47 7.9    0.017 0.0119  0.46
    ## EXT8       0.90      0.90    0.91      0.50 9.1    0.015 0.0092  0.50
    ## EXT9       0.89      0.89    0.90      0.48 8.3    0.016 0.0128  0.50
    ## EXT10      0.89      0.89    0.90      0.47 7.8    0.017 0.0120  0.47
    ## 
    ##  Item statistics 
    ##         n raw.r std.r r.cor r.drop mean  sd
    ## EXT1  100  0.67  0.67  0.61   0.59  2.8 1.2
    ## EXT2  100  0.73  0.74  0.71   0.66  3.4 1.2
    ## EXT3  100  0.75  0.75  0.72   0.68  3.2 1.3
    ## EXT4  100  0.79  0.79  0.78   0.73  2.0 1.2
    ## EXT5  100  0.79  0.79  0.78   0.73  3.3 1.3
    ## EXT6  100  0.68  0.68  0.65   0.60  2.7 1.3
    ## EXT7  100  0.78  0.77  0.74   0.70  2.9 1.5
    ## EXT8  100  0.59  0.59  0.53   0.49  1.8 1.3
    ## EXT9  100  0.71  0.71  0.67   0.63  3.3 1.3
    ## EXT10 100  0.78  0.78  0.75   0.71  1.4 1.3
    ## 
    ## Non missing response frequency for each item
    ##          0    1    2    3    4    5 miss
    ## EXT1  0.01 0.18 0.19 0.34 0.21 0.07    0
    ## EXT2  0.00 0.09 0.13 0.30 0.26 0.22    0
    ## EXT3  0.00 0.14 0.17 0.17 0.34 0.18    0
    ## EXT4  0.12 0.24 0.24 0.28 0.11 0.01    0
    ## EXT5  0.02 0.11 0.13 0.20 0.38 0.16    0
    ## EXT6  0.08 0.14 0.13 0.35 0.29 0.01    0
    ## EXT7  0.01 0.24 0.13 0.27 0.16 0.19    0
    ## EXT8  0.24 0.21 0.21 0.24 0.09 0.01    0
    ## EXT9  0.01 0.11 0.20 0.15 0.33 0.20    0
    ## EXT10 0.33 0.23 0.21 0.15 0.07 0.01    0

</div>

There is a lot there and most of those outcomes are useful, but for reliability we really care about the `raw_alpha`, or the *the standardized alpha based upon the correlations*. For a raw `$\alpha$` score, the following breakdown is widely accepted but not without controversy.

<center>
<table class=" lightable-paper" style="font-family: &quot;Arial Narrow&quot;, arial, helvetica, sans-serif; width: auto !important; margin-left: auto; margin-right: auto;">
<thead>
<tr>
<th style="text-align:center;color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
Cronbach’s Alpha
</th>
<th style="text-align:center;color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
Measure of Internal Consistency
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:center;width: 15em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
`\alpha\geq0.90`
</td>
<td style="text-align:center;width: 15em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
Excellent
</td>
</tr>
<tr>
<td style="text-align:center;width: 15em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
`0.70 &gt;\alpha\geq0.90`
</td>
<td style="text-align:center;width: 15em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
Good
</td>
</tr>
<tr>
<td style="text-align:center;width: 15em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
`0.80 &gt;\alpha\geq0.70`
</td>
<td style="text-align:center;width: 15em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
Acceptable
</td>
</tr>
<tr>
<td style="text-align:center;width: 15em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
`0.70 &gt;\alpha\geq0.60`
</td>
<td style="text-align:center;width: 15em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
Poor
</td>
</tr>
<tr>
<td style="text-align:center;width: 15em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
`\alpha &lt; 0.50`
</td>
<td style="text-align:center;width: 15em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
Unacceptable
</td>
</tr>
</tbody>
</table>
</center>

Note that the thresholds themselves do not have any logical grounding, rather what is an acceptable threshold may be situation dependent.

If you’d like to access the alpha value easily, implement this

<div class="rounded">

``` r
psych::alpha(big_five_data_EXT_rev)$total$raw_alpha
```

    ## [1] 0.9002546

</div>

which for a **quick and dirty** measure of reliability seems to be pretty Good!

### Inter-item Correlation

This is foremost an **average** which uses correlations.

<div class="rounded">

``` r
big_five_data_EXT_rev %>%
  correlate()
```

    ## Correlation computed with
    ## • Method: 'pearson'
    ## • Missing treated using: 'pairwise.complete.obs'

    ## # A tibble: 10 × 11
    ##    term    EXT1   EXT2   EXT3   EXT4   EXT5   EXT6   EXT7   EXT8   EXT9  EXT10
    ##    <chr>  <dbl>  <dbl>  <dbl>  <dbl>  <dbl>  <dbl>  <dbl>  <dbl>  <dbl>  <dbl>
    ##  1 EXT1  NA      0.363  0.443  0.494  0.454  0.289  0.546  0.363  0.478  0.435
    ##  2 EXT2   0.363 NA      0.415  0.500  0.644  0.628  0.506  0.315  0.438  0.543
    ##  3 EXT3   0.443  0.415 NA      0.577  0.631  0.379  0.566  0.295  0.496  0.629
    ##  4 EXT4   0.494  0.500  0.577 NA      0.471  0.595  0.540  0.501  0.452  0.636
    ##  5 EXT5   0.454  0.644  0.631  0.471 NA      0.495  0.649  0.246  0.582  0.551
    ##  6 EXT6   0.289  0.628  0.379  0.595  0.495 NA      0.356  0.373  0.315  0.544
    ##  7 EXT7   0.546  0.506  0.566  0.540  0.649  0.356 NA      0.359  0.559  0.509
    ##  8 EXT8   0.363  0.315  0.295  0.501  0.246  0.373  0.359 NA      0.450  0.396
    ##  9 EXT9   0.478  0.438  0.496  0.452  0.582  0.315  0.559  0.450 NA      0.391
    ## 10 EXT10  0.435  0.543  0.629  0.636  0.551  0.544  0.509  0.396  0.391 NA

</div>

The package gives an `NA` for variables that try to correlate with themselves. By default each variable should be perfectly correlated with itself but who cares? With the diagonal owned by `NA`s, we can obtain the average correlation of each item with all others by computing the means for each column `EXT1` - `EXT10`.

<div class="rounded">

``` r
inter_measure  <- 
  big_five_data_EXT_rev %>% 
  correlate() %>% 
  select(-term) %>% 
  colMeans(na.rm = TRUE)
```

    ## Correlation computed with
    ## • Method: 'pearson'
    ## • Missing treated using: 'pairwise.complete.obs'

``` r
inter_measure 
```

    ##      EXT1      EXT2      EXT3      EXT4      EXT5      EXT6      EXT7      EXT8 
    ## 0.4295075 0.4834744 0.4922734 0.5295312 0.5249037 0.4414833 0.5100294 0.3665847 
    ##      EXT9     EXT10 
    ## 0.4623084 0.5150927

</div>

We can check the variables that are more strongly correlated with the other items in the `EXT` group. The same information is presented by arranging categories and descending internal consistency measures, respectively.

<div class="rounded">

``` r
big_five_correlations_cat <- 
  data.frame(inter_measure) %>%
  rownames_to_column() %>%
  as_tibble() %>%
  arrange(desc(inter_measure)) 

big_five_correlations_num <- 
  big_five_correlations_cat %>%
  left_join(big_five_codebook, c("rowname" = "ID"))

big_five_correlations_cat
```

    ## # A tibble: 10 × 2
    ##    rowname inter_measure
    ##    <chr>           <dbl>
    ##  1 EXT4            0.530
    ##  2 EXT5            0.525
    ##  3 EXT10           0.515
    ##  4 EXT7            0.510
    ##  5 EXT3            0.492
    ##  6 EXT2            0.483
    ##  7 EXT9            0.462
    ##  8 EXT6            0.441
    ##  9 EXT1            0.430
    ## 10 EXT8            0.367

``` r
big_five_correlations_num 
```

    ## # A tibble: 10 × 3
    ##    rowname inter_measure Item                                           
    ##    <chr>           <dbl> <chr>                                          
    ##  1 EXT4            0.530 I keep in the background.                      
    ##  2 EXT5            0.525 I start conversations.                         
    ##  3 EXT10           0.515 I am quiet around strangers.                   
    ##  4 EXT7            0.510 I talk to a lot of different people at parties.
    ##  5 EXT3            0.492 I feel comfortable around people.              
    ##  6 EXT2            0.483 I don't talk a lot.                            
    ##  7 EXT9            0.462 I don't mind being the center of attention.    
    ##  8 EXT6            0.441 I have little to say.                          
    ##  9 EXT1            0.430 I am the life of the party.                    
    ## 10 EXT8            0.367 I don't like to draw attention to myself.

</div>

### Side Note: Getting a Jump on Joins

Next week we’ll get more into depth about joins, namely the `left_join()` but for now if you can’t wrap your head around what happened in that step, that is absolutely fine! If you want to get a basic rundown on joins, take a look at [STAT545](https://stat545.com/join-cheatsheet.html).

In any case, it looks like `EXT4`, `EXT5`, `EXT10`, and `EXT7` have the strongest correlation. The list below has been arranged to represent the data in descending order of measure.

<center>
<table class=" lightable-paper" style="font-size: 13ptpx; font-family: &quot;Arial Narrow&quot;, arial, helvetica, sans-serif; width: auto !important; margin-left: auto; margin-right: auto;">
<thead>
<tr>
<th style="text-align:left;color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
Variable
</th>
<th style="text-align:center;color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
Internal Consistency Measure
</th>
<th style="text-align:left;color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
Item
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;width: 5em; font-weight: bold;color: #f7f7f7 !important;background-color: #0091ad !important;vertical-align: middle !important;">
EXT4
</td>
<td style="text-align:center;width: 20em; color: #f7f7f7 !important;background-color: #0091ad !important;vertical-align: middle !important;">
0.5295312
</td>
<td style="text-align:left;width: 10em; color: #f7f7f7 !important;background-color: #0091ad !important;vertical-align: middle !important;">
I keep in the background.
</td>
</tr>
<tr>
<td style="text-align:left;width: 5em; font-weight: bold;color: #f7f7f7 !important;background-color: #1780a1 !important;vertical-align: middle !important;">
EXT5
</td>
<td style="text-align:center;width: 20em; color: #f7f7f7 !important;background-color: #1780a1 !important;vertical-align: middle !important;">
0.5249037
</td>
<td style="text-align:left;width: 10em; color: #f7f7f7 !important;background-color: #1780a1 !important;vertical-align: middle !important;">
I start conversations.
</td>
</tr>
<tr>
<td style="text-align:left;width: 5em; font-weight: bold;color: #f7f7f7 !important;background-color: #2e6f95 !important;vertical-align: middle !important;">
EXT10
</td>
<td style="text-align:center;width: 20em; color: #f7f7f7 !important;background-color: #2e6f95 !important;vertical-align: middle !important;">
0.5150927
</td>
<td style="text-align:left;width: 10em; color: #f7f7f7 !important;background-color: #2e6f95 !important;vertical-align: middle !important;">
I am quiet around strangers.
</td>
</tr>
<tr>
<td style="text-align:left;width: 5em; font-weight: bold;color: #f7f7f7 !important;background-color: #455e89 !important;vertical-align: middle !important;">
EXT7
</td>
<td style="text-align:center;width: 20em; color: #f7f7f7 !important;background-color: #455e89 !important;vertical-align: middle !important;">
0.5100294
</td>
<td style="text-align:left;width: 10em; color: #f7f7f7 !important;background-color: #455e89 !important;vertical-align: middle !important;">
I talk to a lot of different people at parties.
</td>
</tr>
<tr>
<td style="text-align:left;width: 5em; font-weight: bold;color: #f7f7f7 !important;background-color: #5c4d7d !important;vertical-align: middle !important;">
EXT3
</td>
<td style="text-align:center;width: 20em; color: #f7f7f7 !important;background-color: #5c4d7d !important;vertical-align: middle !important;">
0.4922734
</td>
<td style="text-align:left;width: 10em; color: #f7f7f7 !important;background-color: #5c4d7d !important;vertical-align: middle !important;">
I feel comfortable around people.
</td>
</tr>
<tr>
<td style="text-align:left;width: 5em; font-weight: bold;color: #f7f7f7 !important;background-color: #723c70 !important;vertical-align: middle !important;">
EXT2
</td>
<td style="text-align:center;width: 20em; color: #f7f7f7 !important;background-color: #723c70 !important;vertical-align: middle !important;">
0.4834744
</td>
<td style="text-align:left;width: 10em; color: #f7f7f7 !important;background-color: #723c70 !important;vertical-align: middle !important;">
I don’t talk a lot.
</td>
</tr>
<tr>
<td style="text-align:left;width: 5em; font-weight: bold;color: #f7f7f7 !important;background-color: #892b64 !important;vertical-align: middle !important;">
EXT9
</td>
<td style="text-align:center;width: 20em; color: #f7f7f7 !important;background-color: #892b64 !important;vertical-align: middle !important;">
0.4623084
</td>
<td style="text-align:left;width: 10em; color: #f7f7f7 !important;background-color: #892b64 !important;vertical-align: middle !important;">
I don’t mind being the center of attention.
</td>
</tr>
<tr>
<td style="text-align:left;width: 5em; font-weight: bold;color: #f7f7f7 !important;background-color: #a01a58 !important;vertical-align: middle !important;">
EXT6
</td>
<td style="text-align:center;width: 20em; color: #f7f7f7 !important;background-color: #a01a58 !important;vertical-align: middle !important;">
0.4414833
</td>
<td style="text-align:left;width: 10em; color: #f7f7f7 !important;background-color: #a01a58 !important;vertical-align: middle !important;">
I have little to say.
</td>
</tr>
<tr>
<td style="text-align:left;width: 5em; font-weight: bold;color: #f7f7f7 !important;background-color: #b7094c !important;vertical-align: middle !important;">
EXT1
</td>
<td style="text-align:center;width: 20em; color: #f7f7f7 !important;background-color: #b7094c !important;vertical-align: middle !important;">
0.4295075
</td>
<td style="text-align:left;width: 10em; color: #f7f7f7 !important;background-color: #b7094c !important;vertical-align: middle !important;">
I am the life of the party.
</td>
</tr>
<tr>
<td style="text-align:left;width: 5em; font-weight: bold;color: #f7f7f7 !important;background-color: #cf0a56 !important;vertical-align: middle !important;">
EXT8
</td>
<td style="text-align:center;width: 20em; color: #f7f7f7 !important;background-color: #cf0a56 !important;vertical-align: middle !important;">
0.3665847
</td>
<td style="text-align:left;width: 10em; color: #f7f7f7 !important;background-color: #cf0a56 !important;vertical-align: middle !important;">
I don’t like to draw attention to myself.
</td>
</tr>
</tbody>
</table>
</center>

<br />

and the overall average inter-item correlation can be found by

<div class="rounded">

``` r
mean(inter_measure)
```

    ## [1] 0.4755189

</div>

### Item-total Correlation

The item-total correlation is similar to the correlation described previously. We are calculating the average but this time, we’re doing it by row rather than by column. To do that we sum

<div class="rounded">

``` r
agg_scores <- 
  big_five_data_EXT_rev %>% 
  mutate(score = rowMeans(select(.,1:10))) %>% 
  correlate() %>% 
  focus(score) %>%
  arrange(desc(score))
```

    ## Correlation computed with
    ## • Method: 'pearson'
    ## • Missing treated using: 'pairwise.complete.obs'

``` r
agg_scores
```

    ## # A tibble: 10 × 2
    ##    term  score
    ##    <chr> <dbl>
    ##  1 EXT4  0.791
    ##  2 EXT5  0.789
    ##  3 EXT7  0.776
    ##  4 EXT10 0.775
    ##  5 EXT3  0.749
    ##  6 EXT2  0.732
    ##  7 EXT9  0.714
    ##  8 EXT6  0.680
    ##  9 EXT1  0.666
    ## 10 EXT8  0.594

</div>

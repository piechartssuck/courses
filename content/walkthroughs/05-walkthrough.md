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

# Reverse Coding and Internal Consistency

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
<a onclick="fetch(&#39;data:application/zip;base64,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&#39;).then(res =&gt; res.blob()).then(blob =&gt; {&#10;      const downloadURL = window.URL.createObjectURL(blob);&#10;      const a = document.createElement(&#39;a&#39;);&#10;      document.body.appendChild(a);&#10;      a.href = downloadURL;&#10;      a.download = &#39;Week 5 Walkthrough.zip&#39;; a.click();&#10;      window.URL.revokeObjectURL(downloadURL);&#10;      document.body.removeChild(a);&#10;    });">
<button class="btn btn-primary hvr-sweep-to-left"><i class="fa fa-save"></i> &nbsp;&nbsp;&nbsp;<span style='color:#ffffff'>Download</span></button>
</a>
</center>

## Prepping

1.  Open up RStudio and create a new script by going to **File \> New File \> R Script**. Save this in an easily accessible folder. Now unzip this week’s data set and take the files - `Big5data.csv`, `Big5codebook.csv`, `Big5measures.csv`, `Reverse Coding and Internal Consistency install.R`, and `Reverse Coding and Internal Consistency script.R` - and drop them all in a folder of their own. *If you aren’t familiar with how directories and file paths work on a computer, consider keeping both your R script and data sets in the same folder. It just makes life easier.*

2.  Open the file `Reverse Coding and Internal Consistency install.R` and run the syntax to install the packages you will need for this task. If you are asked to update any packages, please select `1: All`.

3.  

4.  Now please go ahead and load up the following libraries

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
\`
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

---
title: "The Basics"
linktitle: "Week 2: The Basics "
toc: true
output:
  rmarkdown::html_document:
    toc: true
menu:
  trainings:
    parent: Walkthroughs
    weight: 2
type: docs
weight: 2
---

<script src="/rmarkdown-libs/font-awesome/js/script.js"></script>
<script src="/rmarkdown-libs/kePrint/kePrint.js"></script>

<link href="/rmarkdown-libs/lightable/lightable.css" rel="stylesheet" />

{{% r-walkthrough-header %}}

## Getting Prepped

### Download Walthrough Materials[^1]

<a onclick="fetch(&#39;data:application/zip;base64,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&#39;).then(res =&gt; res.blob()).then(blob =&gt; {&#10;      const downloadURL = window.URL.createObjectURL(blob);&#10;      const a = document.createElement(&#39;a&#39;);&#10;      document.body.appendChild(a);&#10;      a.href = downloadURL;&#10;      a.download = &#39;Week 2 Walkthrough.zip&#39;; a.click();&#10;      window.URL.revokeObjectURL(downloadURL);&#10;      document.body.removeChild(a);&#10;    });">
<button class="btn btn-primary hvr-sweep-to-left"><i class="fa fa-save"></i> &nbsp;&nbsp;&nbsp;<span style='color:#ffffff'>Download</span></button>
</a>

### Set your Working Directory

Your *working directory* is simply where your script will look for anything it needs like external data sets. There are a few ways to go about doing this which we will cover. However for now, just do the following:

1.  Open up a new script by going to `File > New File > R Script`.
2.  Save it and any data like the `drinks.csv` file in a preferably empty folder and name it whatever you like.
3.  Go to the menu bar and select `Session > Set Working Directory > To Source File Location`.

In this session, we will expand on the the <span class="rpackage">tidyverse</span> family of packages along with some help using data from the site <a href="https://fivethirtyeight.com/" target="_blank">FiveThirtyEight</a> using the aptly named package <span class="rpackage">fivethirtyeight</span>.

If you have already downloaded <span class="rpackage">tidyverse</span>, then please skip ahead to the next paragraph. If not, please do the following:

1.  select **Tools \> Install Packages**
2.  type in <span class="rpackage">tidyverse</span> and make sure that **Install dependencies** is selected.

<img src="../../../../../../../../../img/install/install-r-tidyverse.png" width="60%" />

Alternatively, you can simply run the following command in the console

<div class="rounded">

``` r
install.packages("tidyverse", dependencies = TRUE)
```

</div>

<img src="../../../../../../../../../img/install/installtidy_console.png" width="90%" />
In either case, now load up the package by typing in following in the script area

<div class="rounded">

``` r
library("tidyverse")
```

</div>

<img src="../../../../../../../../../img/install/loadtidy_scriptarea.png" width="90%" />

Now try doing the same for <span class="rpackage">fivethirtyeight</span> by running

<div class="rounded">

``` r
install.packages("fivethirtyeight", dependencies = TRUE)
```

</div>

followed by

<div class="rounded">

``` r
library("fivethirtyeight")
```

</div>

Please note that once a package is on your computer, you never have to install it again unless it is somehow deleted. This means from now on you will only have to use the second command <span class="library">library</span>`(`<span class="rpackage">“THAT PACKAGE”</span>`)` to use that package.

Before moving on, here is a good place to reiterate how you can use `?` to find more information. When you look at the package list for <span class="rpackage">fivethirtyeight</span>, not all of the names do a great job of describing what that data set consists of. To see this, type in `fivethirtyeight::` and scroll through the pop up list of available data sets and commands. Let’s say the data set `tarantino` caught your eye but you weren’t really sure what it consisted of. Hovering over the set in that pop up list tells you that it *contains data behind the story A Complete Catalog Of Every Time Someone Cursed Or Bled Out In A Quentin Tarantino Movie*.

OK well that’s a good start but to be able to do anything with that data, we really need to know what its variables are. To do this, run the command below

<div class="rounded">

``` r
?tarantino
```

</div>

You should have noticed the **Help** tab on the lower right hand window is prominent and there is a significant amount of information explaining the data set including the variable names and corresponding descriptions.

### Data Files

Data sets used in R are typically accessible in three ways, through these certainly are not the only approaches.

<table class=" lightable-paper" style="font-family: &quot;Arial Narrow&quot;, arial, helvetica, sans-serif; width: auto !important; margin-left: auto; margin-right: auto;">
<thead>
<tr>
<th style="text-align:left;color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
Approach
</th>
<th style="text-align:left;color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
Description
</th>
<th style="text-align:center;color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
Source
</th>
<th style="text-align:left;color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
Command
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;width: 10em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
Fetch
</td>
<td style="text-align:left;width: 30em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
You can get grab files directly from the Internet.<sup>2</sup>
</td>
<td style="text-align:center;width: 10em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
drinks data
</td>
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
<span class="kable">data(‘drinks’, package = ‘fivethirtyeight’)</span><sup>3</sup>
</td>
</tr>
<tr>
<td style="text-align:left;width: 10em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
Download
</td>
<td style="text-align:left;width: 30em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
Used typically for examples, demonstartions and testing, many packages have data already included.
</td>
<td style="text-align:center;width: 10em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
drinks data
</td>
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;">
<span class="kable">drinks &lt- read_csv(‘drinks.csv’)</span><sup>4</sup>
</td>
</tr>
<tr>
<td style="text-align:left;width: 10em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;border-bottom: 1px solid">
Extract<sup>1</sup>
</td>
<td style="text-align:left;width: 30em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;border-bottom: 1px solid">
R specific file formats include <span class="kable">.RData</span> and <span class="kable">.rda</span> but it can load most, if not all types inlcuding popular choices such as a <span class="kable">.csv</span>, <span class="kable">.xlsx</span>, and <span class="kable">.sav</span>.
</td>
<td style="text-align:center;width: 10em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;border-bottom: 1px solid">
drinks data
</td>
<td style="text-align:left;width: 20em; color: #f7f7f7 !important;background-color: transparent !important;vertical-align: middle !important;border-bottom: 1px solid">
<span class="kable">drinks &lt- read_csv(‘https://raw.githubusercontent.com/fivethirtyeight/data/master/alcohol-consumption/drinks.csv’)</span><sup>4</sup>
</td>
</tr>
</tbody>
<tfoot>
<tr>
<td style="padding: 0; border:0;" colspan="100%">
<sup>1</sup> <span style="color:#f7f7f7; font-size:10pt;"><i>If applicable</i></span>
</td>
</tr>
<tr>
<td style="padding: 0; border:0;" colspan="100%">
<sup>2</sup> <span style="color:#f7f7f7;">You can also scrape tables off of webpages</span>
</td>
</tr>
<tr>
<td style="padding: 0; border:0;" colspan="100%">
<sup>3</sup> <span style="color:#f7f7f7;">To see the entire list, you can run the command <span class="kable">data()</span></span>
</td>
</tr>
<tr>
<td style="padding: 0; border:0;" colspan="100%">
<sup>4</sup> <span style="color:#f7f7f7;">You can also use <span class="kable">=</span> instead of <span class="kable">&lt-</span> though that may get you into trouble later so it is not recommended</span>
</td>
</tr>
</tfoot>
</table>

In any case, type the following into your console and you should the following output regardless of approach taken

<div class="rounded">

``` r
drinks
```

    ## # A tibble: 193 × 5
    ##    country          beer_servings spirit_servings wine_servings total_litres_of…
    ##    <chr>                    <int>           <int>         <int>            <dbl>
    ##  1 Afghanistan                  0               0             0              0  
    ##  2 Albania                     89             132            54              4.9
    ##  3 Algeria                     25               0            14              0.7
    ##  4 Andorra                    245             138           312             12.4
    ##  5 Angola                     217              57            45              5.9
    ##  6 Antigua & Barbu…           102             128            45              4.9
    ##  7 Argentina                  193              25           221              8.3
    ##  8 Armenia                     21             179            11              3.8
    ##  9 Australia                  261              72           212             10.4
    ## 10 Austria                    279              75           191              9.7
    ## # … with 183 more rows

</div>

If you attempted to load the csv, then you may realize that RStudio puts up both `read.csv()` with a `.` and `read_csv()` with a `_` as possibilities. The former is what we call a base command, or one that is pre-built into R. However, you will likely want to stick to the latter `read_csv()` which is from the `readr` package which is albeit faster and returns a `tibble` instead of a `data frame`. This is just a tidy data frame. You can check what type of variable you have by using `class(VARIABLE NAME)` on it. For example, the following

<div class="rounded">

``` r
class(drinks)
```

    ## [1] "tbl_df"     "tbl"        "data.frame"

</div>

tells us that we not only have a data frame, but a tibble as well as well as some other formats we’ll ignore for the time being. If you want more information, please see <a href="http://r4ds.had.co.nz/tibbles.html#introduction-4" target="_blank">Ch 10: Tibbles</a> in <a href="http://r4ds.had.co.nz/" target="_blank">R for Data Science</a>.

Note that we loaded the file directly from a web address URL, but say you had it as a local file on your computer in the same directory as your R script. The commands

<div class="rounded">

``` r
drinks <- read_csv("drinks.csv")

drinks
```

</div>

or

<div class="rounded">

``` r
drinks <- read_csv("drinks.csv"); drinks
```

</div>

work just as well.

### Chopping Up a Data Set

You may already know that the single bracket, `[`, is useful to select rows and columns in simple cases.

<div class="rounded">

``` r
drinks[c(1, 2, 3, 4, 5), ]
```

    ## # A tibble: 5 × 5
    ##   country     beer_servings spirit_servings wine_servings total_litres_of_pure_…
    ##   <chr>               <int>           <int>         <int>                  <dbl>
    ## 1 Afghanistan             0               0             0                    0  
    ## 2 Albania                89             132            54                    4.9
    ## 3 Algeria                25               0            14                    0.7
    ## 4 Andorra               245             138           312                   12.4
    ## 5 Angola                217              57            45                    5.9

</div>

There are `tidyverse` options to handle this via the package `dplyr` to select rows by number, to select rows by certain criteria, or to select columns.

For example, to select rows 1–5, we can use the `slice()` command.

<div class="rounded">

``` r
slice(drinks, 1:5)
```

    ## # A tibble: 5 × 5
    ##   country     beer_servings spirit_servings wine_servings total_litres_of_pure_…
    ##   <chr>               <int>           <int>         <int>                  <dbl>
    ## 1 Afghanistan             0               0             0                    0  
    ## 2 Albania                89             132            54                    4.9
    ## 3 Algeria                25               0            14                    0.7
    ## 4 Andorra               245             138           312                   12.4
    ## 5 Angola                217              57            45                    5.9

</div>

Base R allows you to choose the column `beer_servings` from the `drinks` data frame in a number of ways. For example, each of the following

<div class="rounded">

``` r
drinks[, "beer_servings"]
drinks$beer_servings
drinks[["beer_servings"]]
```

</div>

yields

<div class="rounded">

    ##   [1]   0  89  25 245 217 102 193  21 261 279  21 122  42   0 143 142 295 263
    ##  [19]  34  23 167  76 173 245  31 231  25  88  37 144  57 147 240  17  15 130
    ##  [37]  79 159   1  76   0 149 230  93 192 361   0  32 224  15  52 193 162   6
    ##  [55]  52  92  18 224  20  77 263 127 347   8  52 346  31 133 199  53   9  28
    ##  [73]  93   1  69 234 233   9   5   0   9 313  63  85  82  77   6 124  58  21
    ##  [91]   0  31  62 281  20  82  19   0 343 236  26   8  13   0   5 149   0   0
    ## [109]  98 238  62   0  77  31  12  47   5 376  49   5 251 203  78   3  42 188
    ## [127] 169  22   0 306 285  44 213 163  71 343 194   1 140 109 297 247  43 194
    ## [145] 171 120 105   0  56   0   9 283 157  25  60 196 270  56   0 225 284  16
    ## [163]   8 128  90 152 185   5   2  99 106   1  36  36 197  51  51  19   6  45
    ## [181] 206  16 219  36 249 115  25  21 333 111   6  32  64

</div>

Unlike `[`, the `[[` and `$` operators can only select a single column and return a vector.[^2]
The `dplyr` function `select()` **always** returns a tibble, and never a vector, even if only one column is selected.

For example, note that selecting rows 1–5 of the `beer_servings` column using base R gives us a vector.

<div class="rounded">

``` r
drinks[1:5, "beer_servings"]
```

    ## # A tibble: 5 × 1
    ##   beer_servings
    ##           <int>
    ## 1             0
    ## 2            89
    ## 3            25
    ## 4           245
    ## 5           217

</div>

Whereas in the `dplyr` world, the same series of functions can be performed using a pipe operator: `%>%` which retains the table like format.

<div class="rounded">

``` r
drinks %>%
  slice(1:5) %>%
  select(beer_servings)
```

    ## # A tibble: 5 × 1
    ##   beer_servings
    ##           <int>
    ## 1             0
    ## 2            89
    ## 3            25
    ## 4           245
    ## 5           217

</div>

This example may seem verbose, but later we can produce more complicated transformations of the data by chaining together simple functions. For example, it is far easier to use them to select multiple columns like so

<div class="rounded">

``` r
drinks %>%
  slice(1:5) %>%
  select(country, beer_servings)
```

    ## # A tibble: 5 × 2
    ##   country     beer_servings
    ##   <chr>               <int>
    ## 1 Afghanistan             0
    ## 2 Albania                89
    ## 3 Algeria                25
    ## 4 Andorra               245
    ## 5 Angola                217

</div>

or to get rid of a column

<div class="rounded">

``` r
drinks %>%
  slice(1:5) %>%
  select(-spirit_servings)
```

    ## # A tibble: 5 × 4
    ##   country     beer_servings wine_servings total_litres_of_pure_alcohol
    ##   <chr>               <int>         <int>                        <dbl>
    ## 1 Afghanistan             0             0                          0  
    ## 2 Albania                89            54                          4.9
    ## 3 Algeria                25            14                          0.7
    ## 4 Andorra               245           312                         12.4
    ## 5 Angola                217            45                          5.9

</div>

We’ll cover more about pipes next week!

### Saving Objects

There are two types of saves you should consider at this point

-   The workspace save
-   An output save

The workspace save is everything you see in your RStudio window (e.g. the syntax, script, outputs, etc). When you close out of RStudio, you may be asked to save your workspace which essentially means the next time you load a saved script up, you’ll pick up exactly where you left off.

While convenient, it is not recommended that do this. Like rebooting a computer, you really want to have a fresh start every time RStudio starts up. While certainly not mandated, you never know what piece of rogue commands could have affected your progress when you last saved the file. Opting not to save an image of your workspace removes all of the previous commands while keeping your script intact.

An output save occurs when you are trying to save a data set or result in a particular format. Firstly, you have to ensure that you have both downloaded and loaded a necessary package.

Let’s say we want to export our `drinks` output to a csv file. Well luckily we have the package `readr` already loaded and it has the command `write_csv()` that does exactly what we want. The command requires that you note the variable name, `drinks`, and what you want to call it which in this case I am calling <span class="rpackage">new_drinks.csv</span>. If you are wondering, you absolutely have to write out the format type at the end which is a `.csv` in this case.

<div class="rounded">

``` r
write_csv(drinks, "new_drinks.csv")
```

</div>

Well that’s great but say we wanted to save it as a SPSS file. Running

<div class="rounded">

``` r
?write_csv
```

</div>

doesn’t yield any information about saving any data set or output as a SPSS file. If we run a simple Google search (e.g. with the terms *save SPSS R tidy*) and click on the first link, it seems like packages <a href="https://stats.oarc.ucla.edu/r/faq/how-to-input-data-into-r/" target="_blank"><code>foreign</code></a> and <a href="https://haven.tidyverse.org/" target="_blank"><code>haven</code></a> (reads and) saves a data frame as a SPSS file with the latter doing so in a tidy format - having packages that do keep your data tidy will make your life **so much easier**! Now we can just do the following

<div class="rounded">

``` r
write_sav(drinks, "new_drinks.sav") 
```

</div>

Now you are free to go use SPSS for some reason.

### Style Guide

Following a consistent style is important for your code to be readable by you and others. The preferred style is the <a href="http://style.tidyverse.org/" target="_blank">tidyverse style guide</a>, though any clean and consitent styling is acceptable. Here are some packages that may help you

-   The <a href="https://github.com/jimhester/lintr" target="_blank">lintr</a> package will check files for style errors, though novice R users may want to hold off on using this for now.

-   The <a href="https://styler.r-lib.org/" target="_blank">styler</a> package provides functions for automatically formatting R code according to style guides and is great for beginners.

You will initially be expected to turn in a script with any submission where R is needed. Much like any writing, if your script is easy to read, then it is most likely easy to grade. A messy script without comments, spacing, and style may lead to misunderstandings. Long story short: make it look good and easy to interpret and your score will reflect that! With that said, you’ll receive a template that will hopefully be helpful.

If you want a warning about styling your script, open RStudio and go to the **Tools \> Global Options \> Code \> Diagnostics** pane. Then check the box to activate style warnings. On this pane, there are other options that can be set in order to increase or decrease the amount of warnings while writing in RStudio.

[^1]: For more on using projects read <a href="https://www.tidyverse.org/articles/2017/12/workflow-vs-script/" target="_blank">Project-oriented workflow</a>.

[^2]: Please see the discussion in
    <a href="http://r4ds.had.co.nz/tibbles.html#tibbles-vs.data.frame" target="_blank">R for DataScience</a> on how <span class="footnote">tibble</span> objects differ from base <span class="footnote">data.frame</span> objects in how the single bracket <span class="footnote">\[</span> is handled.

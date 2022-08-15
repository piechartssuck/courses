---
title: "Coding and Recoding Scaled Items"
linktitle: "Week 11: Coding and Recoding Scaled Items"
output:
  blogdown::html_page:
    toc: true
menu:
  example:
    parent: Examples
    weight: 3
type: docs
weight: 3
editor_options: 
  chunk_output_type: console
---
<script src="/rmarkdown-libs/kePrint/kePrint.js"></script>
<link href="/rmarkdown-libs/lightable/lightable.css" rel="stylesheet" />



<script src="//yihui.org/js/math-code.js"></script>
<!-- Just one possible MathJax CDN below. You may use others. -->
<script async
  src="//mathjax.rstudio.com/latest/MathJax.js?config=TeX-MML-AM_CHTML">
</script>

## Take This

First things first, please go and take the [Big Five Personality Test](https://openpsychometrics.org/tests/IPIP-BFFM/){target="_blank"}. What do you think?

## Read Up

Now go and read this short synopsis on the test from [FiveThirtyEight](https://projects.fivethirtyeight.com/personality-quiz/){target="_blank"}.

## Data Files

Please download the files below. Note you may have to right click and download each file if your browser renders `.csv` files automatically:

- [`Big5data.csv`](/data/Big5data.csv)
- [`Big5codebook.csv`](/data/Big5codebook.csv)
- [`Big5measures.csv`](/data/Big5measures.csv)

## Prerequisites {-}

Open up R and create a new script by going to **File > New File > R Script**. Save this in an easily accessible folder. Now take the files `Big5data.csv`, `Big5codebook.csv` and `Big5measures.csv` and drop them all in the same folder as your new script. Until you get use to directories and file paths, consider keeping both your R script and data sets in the same folder. It just makes life easier.

Before we load the libraries, we're going to grab a package called `surveytools2` that is not on CRAN (the main R repository of packages). In fact, many packages aren't on CRAN since the process to get accepted is relatively hectic! In any case, there is a command within the `surveytools2` package that will make our lives easier which we'll go over shortly. To install, please run the following commands


```r
install.packages("remotes")

remotes::install_github("peterhurford/surveytools2")
```

Now go ahead and load up the following libraries or download and load up if needed


```r
library("tidyverse")
library("psych")
library("corrr")
library("surveytools2")
```

```
## 
## Attaching package: 'surveytools2'
```

```
## The following object is masked from 'package:base':
## 
##     replace
```

and then set the working directory to the location of the script by running


```r
setwd(dirname(rstudioapi::getActiveDocumentContext()$path))
```

or by selecting **Session > Set Working Directory > To Source File Location**.

## Data Files

We'll be looking at a very truncated data set from the **2018 BigFive Personality Test**. The full data set is a huge file with 1 million answers to the 50 personality items! You can access it [here](
https://openpsychometrics.org/_rawdata/IPIP-FFM-data-8Nov2018.zip) but be warned that opening a file that size can take a long time or may even crash some computers depending on their processing power and RAM. It is a tab separated `.csv` file. 

### Side Note

I am not certain how to load it in Excel but in R you can use


```r
toobig_five_data <- read_delim("data-final.csv", delim="\t") 
```

to save it to the `big_five_data` variable which you can access by running


```r
toobig_five_data
```

At this point you probably want to just open up the `.csv` files in Excel and if that is what works, then by all means. While I try to run everything in R, sometimes its just easier to double click it. The problem really lies in the size of a data set. The larger the data set, the more power and time it takes for excel to load it up both into its program and to show it to you. Its really that second part that's the killer! With R you avoid the latter step which means your data set loads up within seconds, rather than minutes. If you try loading the original data set in both R and Excel, the difference is very apparent. 

In any case, we will be working with data strictly in R but never feel bad about opening a data set using another application like Excel. For all of my snarkiness towards anything Office, Excel has some nice qualities.

## Loading a Local Data Set

Let's load the data set, codebook, and measures


```r
big_five_data <- read_csv("Big5data.csv")
```


```
## Rows: 100 Columns: 50
## ── Column specification ────────────────────────────────────────────────────────
## Delimiter: ","
## dbl (50): EXT1, EXT2, EXT3, EXT4, EXT5, EXT6, EXT7, EXT8, EXT9, EXT10, EST1,...
## 
## ℹ Use `spec()` to retrieve the full column specification for this data.
## ℹ Specify the column types or set `show_col_types = FALSE` to quiet this message.
```


```r
big_five_codebook <- read_csv("Big5codebook.csv")
```


```
## Rows: 50 Columns: 2
## ── Column specification ────────────────────────────────────────────────────────
## Delimiter: ","
## chr (2): ID, Item
## 
## ℹ Use `spec()` to retrieve the full column specification for this data.
## ℹ Specify the column types or set `show_col_types = FALSE` to quiet this message.
```


```r
big_five_measures <- read_csv("Big5measures.csv")
```


```
## Rows: 5 Columns: 2
## ── Column specification ────────────────────────────────────────────────────────
## Delimiter: ","
## chr (1): Description
## dbl (1): Measure
## 
## ℹ Use `spec()` to retrieve the full column specification for this data.
## ℹ Specify the column types or set `show_col_types = FALSE` to quiet this message.
```

and take a look at each


```r
big_five_data %>%
  head()
```

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
```

with respondents self-report under the five factors Extroversion (`EXT`), Agreeableness (`AGR`), Conscientiousness (`CSN`), Emotional Stability (`EST`), and Intellect/Imagination (`OPN`).


```r
big_five_codebook
```

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
```


```r
big_five_measures
```

```
## # A tibble: 5 × 2
##   Measure Description      
##     <dbl> <chr>            
## 1       5 Agree            
## 2       4 Somewhat Agree   
## 3       3 Neutral          
## 4       2 Somewhat Disagree
## 5       1 Disagree
```

For this walkthrough, let's just concentrate on the Extroversion items which are given by `EXT.` That means we should probably pair down both the data set and codebook. For data sets with multiple columns, we can use the `select()` syntax. Moreover since we are looking at all of the columns that have `EXT`, we can pull only those using the `starts_with()` command. For more examples of options that can be used with `select()`, take a look [here](https://dplyr.tidyverse.org/reference/select.html){target="_blank"}. 


```r
big_five_data_EXT <- big_five_data %>%
                      select(starts_with("EXT"))
```

and then we'll do something similar to the codebook. While we can't simply select columns because all of the variables are in a single column. Much like in Excel, we can filter rows. To do this in R, we use the `filter()` command.


```r
big_five_codebook_EXT <- big_five_codebook %>%
                          filter(str_detect(ID, "EXT"))
```


```r
big_five_data_EXT
```

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
```

```r
big_five_codebook_EXT
```

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
```

## Reverse Coding

Sometimes items can be worded ‘backwards’. In these situation, scales need to be reversed to point in the same direction. 

### Why Does This Matter?

From a methodological perspective, if all of your scales are not pointed the right direction you will likely get confusing or conflicting figures, or even worse report false outcomes resulting in Type I and Type II errors! Of course you may also just get lucky and your findings will be spot on. However, if you don't really want to leave it up to chance to give you the actual outcomes of your survey, then **reverse coding** is something you should consider before performing any analysis. And yes this absolutely still applies if you are certain that everything was perfect before your survey was administered.

### Example

For example both these questions might be used to measure the same underlying construct or idea.

1. I really like being alone
2. I really *don't* enjoy large gatherings

In this situation, if we used the same response scale for each participants’ responses they would simply cancel out. 

When aligning the direction, we typically reverse code the one that has a negative, aka the negatively-keyed item. In this case is the second example since it includes the word *don't*. There are exceptions to this rule, but they are narrowly defined. For example, someone who states that they "really *don't* enjoy large gatherings" doesn't automatically imply they like being alone. In fact, there are arguably an infinite number of possibilities of things they do like! The only time you can be code all items in either direction are in circumstances where there is a binary choice (e.g. Yes/No questions).

But wait...there's more! You also have to consider the intent of the questions and the participants. This second and final check is crucial to reporting reliable and consistent results.<br />
:::

Getting back to the main data set, let's again look at the codebook.  


```r
big_five_codebook_EXT
```

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
```

Well it certainly looks like `EXT2`, `EXT4`, `EXT6`, `EXT8` and `EXT10` are all negative in the context of of assessing extroversion. Furthermore while `EXT9` includes the term *don't*, it doesn't orient the statement in a negative way so it stays the way it is. 

Remember that command we needed from the `surveytools2` package? Well it was to reverse code in a tidy way


```r
big_five_data_EXT_rev <- big_five_data_EXT %>%
                        mutate(EXT2 = reverse_code(EXT2),
                               EXT4 = reverse_code(EXT4),
                               EXT6 = reverse_code(EXT6),
                               EXT8 = reverse_code(EXT8),
                               EXT10 = reverse_code(EXT10))

big_five_data_EXT_rev
```

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
```

Let's take a look at a sample of the first six rows between the two tables to see if the columns were indeed reverse coded.

<div align="center">


```
## # A tibble: 6 × 10
##    EXT1  EXT2  EXT3  EXT4  EXT5  EXT6  EXT7  EXT8  EXT9 EXT10
##   <dbl> <dbl> <dbl> <dbl> <dbl> <dbl> <dbl> <dbl> <dbl> <dbl>
## 1     3     2     3     4     4     2     3     3     4     2
## 2     1     5     1     5     1     4     1     5     4     5
## 3     2     5     4     3     1     5     1     3     4     5
## 4     2     3     3     3     3     2     2     4     2     3
## 5     3     4     3     3     3     3     3     2     3     4
## 6     3     1     5     1     4     1     5     4     4     2
```


```
## # A tibble: 6 × 10
##    EXT1  EXT2  EXT3  EXT4  EXT5  EXT6  EXT7  EXT8  EXT9 EXT10
##   <dbl> <dbl> <dbl> <dbl> <dbl> <dbl> <dbl> <dbl> <dbl> <dbl>
## 1     3     4     3     1     4     3     3     2     4     3
## 2     1     1     1     0     1     1     1     0     4     0
## 3     2     1     4     2     1     0     1     2     4     0
## 4     2     3     3     2     3     3     2     1     2     2
## 5     3     2     3     2     3     2     3     3     3     1
## 6     3     5     5     4     4     4     5     1     4     3
```

</div>

That looks correct! Notice that in the <a style="color:	#FFFFFF; background-color: #419873">green</a> columns, the numbers flip along the neutral measure (3), or maybe a better observation is that the numerical complement is correct if adding two corresponding cells equals 5. If you have had any upper level mathematics courses, you may notice these as a modulo or mod 5 system.

## Computing the Internal Consistency 

There are many approaches when assessing reliability, namely those associated with interviews, experiments, surveys, trials, etc. Internal consistency is foremost one of many existing methods used to measure reliability, and it is typically useful in assessing items (e.g from a protocol, questionnaire, test, etc). It essentially **estimates to what degree total scores on an instrument would change or vary if different items were used**. Here are four but really three approaches used by a majority of practitioners:

### Composite Reliability

Getting a bit ahead of ourselves, composite reliability is based on the factor lodgings in a confirmatory factor analysis (CFA). While we do cover exploratory factor analysis (EFA) in this course, we simply don't have bandwidth time to address CFAs as well. Please consider learning about them as they are used to test how well the measured variables represent the number of constructs within an or across instrument(s).

### Cronbach’s alpha

By far the most utilized approach, it is also very procedural which is typically viewed as beneficial by many evaluators. There are many ways to tell R to compute alpha `\(\left(\alpha\right)\)` but by far the simplest may be to use the `psych` package


```r
psych::alpha(big_five_data_EXT_rev)
```

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
```

There is a lot there and most of those outcomes are useful, but for reliability we really care about the `raw_alpha`, or the *the standardized alpha based upon the correlations*. For a raw `\(\alpha\)` score, the following breakdown is widely accepted but not without controversy. 

<div align="center">

| Cronbach's Alpha       | Measure of Internal Consistency |
|------------------------|---------------------------------|
| `\(\alpha \geq 0.90\)`     | Excellent                       |
| `\(0.70 >\alpha\geq0.90\)` | Good                            |
| `\(0.80 >\alpha\geq0.70\)` | Acceptable                      |
| `\(0.70 >\alpha\geq0.60\)` | Poor                            |
| `\(\alpha < 0.50\)`        | Unacceptable                    |
|                        |                                 |

</div>

Note that the thresholds themselves do not have any logical grounding, rather what is an acceptable threshold may be situation dependent. 

If you’d like to access the alpha value easily, implement this


```r
psych::alpha(big_five_data_EXT_rev)$total$raw_alpha
```

```
## [1] 0.9002546
```

which for a **quick and dirty** measure of reliability seems to be pretty Good!


### Inter-item Correlation

This is foremost an **average** which uses correlations. 


```r
big_five_data_EXT_rev %>%
  correlate()
```

```
## 
## Correlation method: 'pearson'
## Missing treated using: 'pairwise.complete.obs'
```

```
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
```

The package gives an `NA` for variables that try to correlate with themselves. By default each variable should be perfectly correlated with itself but who cares?  With the diagonal owned by `NA`s, we can obtain the average correlation of each item with all others by computing the means for each column `EXT1` - `EXT10`.


```r
inter_measure  <- big_five_data_EXT_rev %>% 
                    correlate() %>% 
                    select(-term) %>% 
                    colMeans(na.rm = TRUE)
```

```
## 
## Correlation method: 'pearson'
## Missing treated using: 'pairwise.complete.obs'
```

```r
inter_measure 
```

```
##      EXT1      EXT2      EXT3      EXT4      EXT5      EXT6      EXT7      EXT8 
## 0.4295075 0.4834744 0.4922734 0.5295312 0.5249037 0.4414833 0.5100294 0.3665847 
##      EXT9     EXT10 
## 0.4623084 0.5150927
```

We can check the variables that are more strongly correlated with the other items in the `EXT` group. The same information is presented by arranging categories and descending internal consistency measures, respectively.


```r
big_five_correlations_cat <- data.frame(inter_measure) %>%
                               rownames_to_column() %>%
                               as_tibble() %>%
                               arrange(desc(inter_measure)) 

big_five_correlations_num <- big_five_correlations_cat %>%
                               left_join(big_five_codebook, c("rowname" = "ID"))

big_five_correlations_cat
```

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
```

```r
big_five_correlations_num 
```

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
```

Note we'll talk about a `left_join()` and other types of `joins` next week but for now if you can't wrap your head around what happened in that step, that's fine! If you want to get a head start on `joins`, go over to [STAT545](https://stat545.com/join-cheatsheet.html) and as usual, peers, the Internet and I are available to help. 

In any case, it looks like `EXT4`, `EXT5`, `EXT10`, and `EXT7` have the strongest correlation. The list below has been arranged to represent the data in descending order of measure.

<div align="center">
<table class="table table-striped table-hover table-condensed table-responsive" style="font-size: 13px; width: auto !important; margin-left: auto; margin-right: auto;">
 <thead>
  <tr>
   <th style="text-align:center;"> Variable </th>
   <th style="text-align:center;"> Internal Consistency Measure </th>
   <th style="text-align:center;"> Item </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:center;color: white !important;background-color: #5AA85C !important;"> EXT4 </td>
   <td style="text-align:center;color: white !important;background-color: #5AA85C !important;"> 0.5295312 </td>
   <td style="text-align:center;color: white !important;background-color: #5AA85C !important;"> I keep in the background. </td>
  </tr>
  <tr>
   <td style="text-align:center;color: white !important;background-color: #599D68 !important;"> EXT5 </td>
   <td style="text-align:center;color: white !important;background-color: #599D68 !important;"> 0.5249037 </td>
   <td style="text-align:center;color: white !important;background-color: #599D68 !important;"> I start conversations. </td>
  </tr>
  <tr>
   <td style="text-align:center;color: white !important;background-color: #56916F !important;"> EXT10 </td>
   <td style="text-align:center;color: white !important;background-color: #56916F !important;"> 0.5150927 </td>
   <td style="text-align:center;color: white !important;background-color: #56916F !important;"> I am quiet around strangers. </td>
  </tr>
  <tr>
   <td style="text-align:center;color: white !important;background-color: #538572 !important;"> EXT7 </td>
   <td style="text-align:center;color: white !important;background-color: #538572 !important;"> 0.5100294 </td>
   <td style="text-align:center;color: white !important;background-color: #538572 !important;"> I talk to a lot of different people at parties. </td>
  </tr>
  <tr>
   <td style="text-align:center;color: white !important;background-color: #4F7972 !important;"> EXT3 </td>
   <td style="text-align:center;color: white !important;background-color: #4F7972 !important;"> 0.4922734 </td>
   <td style="text-align:center;color: white !important;background-color: #4F7972 !important;"> I feel comfortable around people. </td>
  </tr>
  <tr>
   <td style="text-align:center;color: white !important;background-color: #4B6C6D !important;"> EXT2 </td>
   <td style="text-align:center;color: white !important;background-color: #4B6C6D !important;"> 0.4834744 </td>
   <td style="text-align:center;color: white !important;background-color: #4B6C6D !important;"> I don't talk a lot. </td>
  </tr>
  <tr>
   <td style="text-align:center;color: white !important;background-color: #465B61 !important;"> EXT9 </td>
   <td style="text-align:center;color: white !important;background-color: #465B61 !important;"> 0.4623084 </td>
   <td style="text-align:center;color: white !important;background-color: #465B61 !important;"> I don't mind being the center of attention. </td>
  </tr>
  <tr>
   <td style="text-align:center;color: white !important;background-color: #404C55 !important;"> EXT6 </td>
   <td style="text-align:center;color: white !important;background-color: #404C55 !important;"> 0.4414833 </td>
   <td style="text-align:center;color: white !important;background-color: #404C55 !important;"> I have little to say. </td>
  </tr>
  <tr>
   <td style="text-align:center;color: white !important;background-color: #393F49 !important;"> EXT1 </td>
   <td style="text-align:center;color: white !important;background-color: #393F49 !important;"> 0.4295075 </td>
   <td style="text-align:center;color: white !important;background-color: #393F49 !important;"> I am the life of the party. </td>
  </tr>
  <tr>
   <td style="text-align:center;color: white !important;background-color: #32333E !important;"> EXT8 </td>
   <td style="text-align:center;color: white !important;background-color: #32333E !important;"> 0.3665847 </td>
   <td style="text-align:center;color: white !important;background-color: #32333E !important;"> I don't like to draw attention to myself. </td>
  </tr>
</tbody>
</table>
</div>

and the overall average inter-item correlation can be found by


```r
mean(inter_measure)
```

```
## [1] 0.4755189
```


### Item-total Correlation

The item-total correlation is similar to the correlation described previously. We are calculating the average but this time, we're doing it by row rather than by column. To do that we sum 


```r
agg_scores <- big_five_data_EXT_rev %>% 
  mutate(score = rowMeans(select(.,1:10))) %>% 
  correlate() %>% 
  focus(score) %>%
  arrange(desc(score))
```

```
## 
## Correlation method: 'pearson'
## Missing treated using: 'pairwise.complete.obs'
```

```r
agg_scores
```

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
```

Well that is quite enough for now. There are other ways to assess reliability. As you move to the deliverable for this week, keep in mind that none of these could yield good measures for internal consistency. You may have to look around the internet for other R commands and packages that may be a better fit. As usual, you always have your peers and me in times of frustration with R.

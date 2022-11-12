---
title: Installing R, RStudio, and tidyverse
menu:
  resources:
    parent: Guides
toc: true
output:
  rmarkdown::html_document:
    toc: true
type: docs
weight: 3
---

{{% r-walkthrough-header %}}

<script src="https://code.iconify.design/iconify-icon/1.0.1/iconify-icon.min.js"></script>
<style>
details summary::-webkit-details-marker {
  display:none;
  }

ul {
  list-style-type: none;
  margin-left: 40px;
  }

.flex-group {
  display: inline-flex;
  justify-content: flex-start;
  padding: 0 auto;
  column-gap: 10px;
}

.flex-group .flex {
  display: inline-flex;
  flex: 1 1 auto;
  align-items: center;
}

</style>

You will do all of your work in this class with the open source (and free!) programming language [R](https://cran.r-project.org/). You will use [RStudio](https://www.rstudio.com/) as the main program to access R. Think of R as an engine and RStudio as a car dashboard—R handles all the calculations and the actual statistics, while RStudio provides a nice interface for running R code.

<!--
# RStudio.cloud

Both R and RStudio are free, but it can sometimes be a pain to install and configure. To make life easier, you can use the free version of [RStudio.cloud](http://rstudio.cloud/) which lets you run a full instance of RStudio in your web browser with some limited capacity. However this means you won't have to install anything on your computer to get started with R. Over the course of the semester, you may want to wean yourself off of the service and install both R and RStudio these things locally.
-->

Here’s how you install both R and RStudio Desktop on your computer. Please do the following in order.

## First: Install the *engine* <iconify-icon inline icon="carbon:logo-r-script" style="color: #1f65b8; vertical-align: -0.25em;" width="48"></iconify-icon>

1.  Go to the <a target="_blank" href="https://cran.r-project.org/">CRAN (Collective R Archive Network)</a> website

2.  Click on <span style="color:#89bbff;">Download R for XXX</span>, where <span style="color:#89bbff;">XXX</span> is either Mac, Windows, or Linux:
    <img src="../../../../../../../../../img/install/install-r-links.png" width="60%" />

3.  Select your operating system below for further instructions

-   <details>
    <summary>
    <b><span style="color:#949494">macOS</span></b>   <i class="fa-brands fa-apple"></i>
    </summary>

    -   <span style="color:#ffffff">Scroll down to the <span style="color:#89bbff;">.pkg</span> file that corresponds to your architecture (Intel or ARM). As of this writing, the version for each is <span style="color:#89bbff;">R-4.2.1.pkg</span> but download the most current variant</span>
        <img src="../../../../../../../../../img/install/install-r-mac1.png" width="100%" />
    -   <span style="color:#ffffff">Then download and install <span style="color:#89bbff;"><a target="_blank" href="https://www.xquartz.org/">XQuartz</a></span></span>
        <img src="../../../../../../../../../img/install/install-r-mac2.png" width="100%" />

    </details>

-   <details>
    <summary>
    <b><span style="color:#737373">Windows</span></b>   <i class="fa-brands fa-windows"></i>
    </summary>

    -   <span style="color:#ffffff">Click <span style="color:#89bbff;">base</span> (or <span style="color:#89bbff; font-weight: bold;">install R for the first time</span>) and download it</span>
        <img src="../../../../../../../../../img/install/install-r-windows1.png" width="100%" />
    -   <span style="color:#ffffff">Then download and install <span style="color:#89bbff;"><a target="_blank" href="https://cran.r-project.org/bin/windows/Rtools/">Rtools</a></span></span>
        <img src="../../../../../../../../../img/install/install-r-windows2.png" width="100%" />

    </details>

4.  Double click on the downloaded files (likely in your **Downloads** folder). Click yes through all the prompts to install like any other program.

## Second: Install the *dashboard* <iconify-icon inline icon="file-icons:rstudio" style="color: #75aadb; vertical-align: -0.25em;" width="48"></iconify-icon> <span style="color:#ffffff;">Studio</span>

1.  Download [RStudio](https://www.rstudio.com/products/rstudio/download/#download) Desktop

2.  The website should automatically detect your operating system (macOS, Windows, Linux, etc.) and will display a big download button for it:

    <img src="../../../../../../../../../img/install/install-r-rstudio-mac.png" width="75%" />

    <img src="../../../../../../../../../img/install/install-r-rstudio-windows.png" width="75%" />

    If not, scroll down a little to the large table and choose the version of RStudio that matches your operating system.

    <img src="../../../../../../../../../img/install/install-r-rstudio-options.png" width="85%" />

3.  Double click on the downloaded file (again, check your **Downloads** folder if you cannot locate it). Click yes through all the prompts to install like any other program.

4.  Double click on **RStudio** (not R) to run it.

<hr style="width:25%">
Once R and RStudio Desktop are both installed, you can ignore R and only use RStudio - the nicer graphical user interface (GUI) - uses R automatically so you won’t ever have to interact with it directly sans updating the software.
<br>
<br>
<hr style="width:25%">

## <span class="flex-group"><span class="flex">Third: Install the</span> <span class="flex"><img src="../../hex-stickers/tidyverse.png" alt="tidyverse hex sticker" style="width:150px;"/></span><span class="flex">Package</span></span>

R packages are easy to install with RStudio. Select the packages panel, click on `Install`, type the name of the package you want to install, and press enter. Unless you absolutely know it is not needed, please make sure that the **Install dependencies** is selected

<img src="../../../../../../../../../img/install/install-r-package-panel.png" width="30%" />

This can sometimes be tedious when you’re installing lots of packages, though. The [tidyverse](https://www.tidyverse.org/), for instance, consists of dozens of packages (e.g. including `ggplot2` used for creating custom data visualizations) that all work together. Rather than install each individually, you can install a single bundle to get them all at the same time. Here is a list of all of the packages and their basic functionality[^1]. Its absolutely fine that you may not be familiar with most of the terminology in the picture!

<img src="../../hex-stickers/tidyverse_packages_fns.png" alt="tidyverse hex sticker" style="width:470px;"/>

Go to the packages panel in RStudio, click on `Install`, type `tidyverse`, and press enter. You’ll see a bunch of output in the RStudio console as all the tidyverse packages are installed.

<img src="../../../../../../../../../img/install/install-r-tidyverse.png" width="50%" />

Notice also that RStudio will generate a line of code for you and run it: `install.packages("tidyverse")`. You can also just paste and run this instead of using the packages panel. To test that the package was installed properly, please type in `library(tidyverse)` as shown below.

<img src="../../../../../../../../../img/install/installtidy_console.png" width="90%" />

[^1]: Edited from [R Coding for Data Science - 2020/21](https://bookdown.org/michela_cameletti/rcodingfordatascience/lecture-4-21122020.html)

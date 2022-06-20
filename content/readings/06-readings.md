---
title: "Now You Know"
linktitle: "Week 6: Now You Know"
toc: true
output:
  blogdown::html_page:
    toc: true
menu:
  readings:
    parent: Readings
    weight: 6
type: docs
weight: 1
editor_options: 
  chunk_output_type: console
---

{{% aes-header %}}

<style>
.article-style img, 
.article-style video {
  margin-left: 0;
  margin-right: auto;
  margin-top: 0rem;
  margin-bottom: 1rem;
  vertical-align: text-top;
  padding: 0;
  bottom: 0px;
  display: inline;
}
</style>

### Respond to Posts

If you have not yet done so, read the article you chose not to talk about last week from

> <a href="https://edp611summer2022.slack.com/archives/C03JWNF6ZT9" style='color:#ff8384;'>\#wk5-nerds</a>

Pick *one* post where the your peer discusses that paper and provide a critique of their narrative. Specifically point out areas of agreement and disagreement and cite evidence from said article as support.

### Watch a Video

You’ve probably noticed that this page doesn’t have any required readings. That’s not a mistake, rather we’re going to take a look at a technique called the *Principle Component Analysis (PCA)*. To start off, take a look at the aptly named video *Principle Component Analysis (PCA) Concepts in 5 Minutes* by Josh Starmer. He provides a fantastic breakdown of this high level concept being explored this week

<p align="center">
<iframe width="560" height="315" src="https://www.youtube.com/embed/HMOI_lkzW08" title="StatQuest PCA in 5 Minutes" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen>
</iframe>
</p>

### Play with PCA

Now go learn about PCAs interactively via
[Principal Component Analysis Explained Visually](https://setosa.io/ev/principal-component-analysis/)

### See PCA Applied

To get an idea of how PCAs are applied outside of academic circles, please follow along below. The first and third steps below come courtesy of [Dr. Julia Silge](https://juliasilge.com/about/) who works at RStudio. Just keep in mind that the point is not to understand everything, but rather to gain exposure to the benefits of PCAs viewed through the lens of an example.

1.  First learn a bit about [*dimensionality reduction*](https://www.tmwr.org/dimensionality.html) (Section 16.1) from the excellent[^1] text *Tidy Modeling with R*.

2.  Take a look at [PCA with tidyverse](https://bjnnowak.netlify.app/2021/09/15/r-pca-with-tidyverse/) where a PCA is used to explore the evolution of songs’ from the 1970’s onward. If you don’t care how it was done - ergo the R code, then just look at the visualizations to get a feel for what a PCA can do.

3.  If you’re interested in the original concept and possibly getting your hands dirty, head over to Dr. Silge’s walkthrough and screencast [*Dimensionality Reduction for \#TidyTuesday Billboard Top 100 songs*](https://juliasilge.com/blog/billboard-100/)[^2].

[^1]: An extremely biased point of view.

[^2]: <img src='/logos/tidytuesday.png' alt='#TidyTuesday logo' width='250'><br> Are you interested in data visualization? Would you rather not pay hundreds or thousands of dollars to be locked into a software package? Do you like having a huge community that is willing to help out? Well then consider checking out [\#TidyTuesday](https://github.com/rfordatascience/tidytuesday)! The event is an extremely warm, friendly, and welcoming place for anyone interested in R, in particular to create data visuzliations within the every growing tidyverse using curated data sets which are released every Tuesday - ergo the name \#TidyTuesday, and ranges in expertise from the very beginner to advanced. Community members provide helpful feedback and you - yes you reading this - will NEVER be berated or made to feel inadequate. In fact your greatest critic will probably be you as it can be intimidating to look at others’ visualizations. Just remember everyone was once where you are now and you’ll never get better without trying and support, both which \#TidyTuesday provides. The experience can get pretty addictive, but your skills will shoot through the roof in a short amount of time and there’s nothing quite like the sense of accomplishment earned from figuring something out. Plus, and I cannot stress this enough, there’s always a pretty picture that you created! In the spirit of the open source world, everyone shares their codes and are freely available for anyone to use and manipulate. *You don’t learn R by reinventing the wheel, but by taking others’ work and playing around with it!* If you are interested in getting involved and are unable to figure out how, feel free to reach out or take a look at the current postings for [\#TidyTuesday](https://twitter.com/search?q=%23tidytuesday) on <svg aria-hidden="true" role="img" viewBox="0 0 512 512" style="height:1em;width:1em;vertical-align:-0.125em;margin-left:auto;margin-right:auto;font-size:inherit;fill:#1DA1F2;overflow:visible;position:relative;"><path d="M459.37 151.716c.325 4.548.325 9.097.325 13.645 0 138.72-105.583 298.558-298.558 298.558-59.452 0-114.68-17.219-161.137-47.106 8.447.974 16.568 1.299 25.34 1.299 49.055 0 94.213-16.568 130.274-44.832-46.132-.975-84.792-31.188-98.112-72.772 6.498.974 12.995 1.624 19.818 1.624 9.421 0 18.843-1.3 27.614-3.573-48.081-9.747-84.143-51.98-84.143-102.985v-1.299c13.969 7.797 30.214 12.67 47.431 13.319-28.264-18.843-46.781-51.005-46.781-87.391 0-19.492 5.197-37.36 14.294-52.954 51.655 63.675 129.3 105.258 216.365 109.807-1.624-7.797-2.599-15.918-2.599-24.04 0-57.828 46.782-104.934 104.934-104.934 30.213 0 57.502 12.67 76.67 33.137 23.715-4.548 46.456-13.32 66.599-25.34-7.798 24.366-24.366 44.833-46.132 57.827 21.117-2.273 41.584-8.122 60.426-16.243-14.292 20.791-32.161 39.308-52.628 54.253z"/></svg>.

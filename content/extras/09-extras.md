---
title: "An Unbiased Biased View on Bayesian Statistics"
linktitle: "Week 9: An Unbiased Biased View on Bayesian Statistics"
toc: true
output:
  rmarkdown::html_document:
    toc: true
menu:
  tasks:
    parent: Extras
    weight: 9
type: docs
weight: 1
---

<script src="/rmarkdown-libs/kePrint/kePrint.js"></script>

<link href="/rmarkdown-libs/lightable/lightable.css" rel="stylesheet" />

{{% aes-header %}}

### Note

To be honest most of you will leave this class likely not thinking or caring about the underlying methodological and philosophical disagreement that exists between the two types of statisticians explained below. So why does it matter? Well we’re at a point in history where the dominant approach will affect your everyday life ranging from credit to Internet speeds to predictions/reviews in sports to any other aspect where data, in particular “big data” is present. So while you may not be personally invested in the statistical approach that becomes the <i>standard</i>, your life will surely be affected and its not a bad idea to know the underlying reasons behind it.

<center>
<img src="/img/examples/statistician_deathmatch.png" style="width:50.0%" />
</center>

### Full Disclosure

Firstly I am a Bayesian statistician through and through, so there is an inherent bias and uncertainty in this writing which will be apparent later. The benefit here is that unlike a frequentist approach that rejects or minimizes bias and favors outcomes with certainty, Bayesians recognize and utilize bias in their statistics where both uncertainty exists as part of the problem, and solutions are given as multiple possibilities with varying levels of probabilities[^1]

### Bit of History

The Bayesian way of thinking was quite popular in the 18th and 19th centuries, but fell out of favor in the 20th century which gave way to the frequentists. During that time, the few Bayesian statisticians that were active were often shunned and even ridiculed by academics and practitioners alike. It looked like we knew everything about the foundation of statistics and anything that needed a new approach was simply a matter of furthering that viewpoint. But in the mid to late 2000 large sets consisting of a combination of structured, semistructured, and unstructured data - aka “big data” - began to pop up everywhere. However technology, in particular computing technology was simply not able to handle and analyze these data sets. Moreover for most of the public, computers were just a means to create or run an application - the idea that they could do anything beyond that was deemed to be science fiction that could be science one day in the distant future. But as life would have it, not only were we able to figure out how to teach a computer to learn and make decisions - aka machine learning (ML) - many ML algorithms were significant improved by attaching prior beliefs about how a data set should be looked at creating a situation where a person get choice of multiple statistical models and are able to pick the one that works out the best for an analyses

### A Line is Drawn

Many statisticians and even those who practice statistics are at odds with each other on how the world works. One group - the <i>frequentists</i> - think deductively and see probability as a <i>Bayesians</i> - think inductively and use probability to describe the chance of many possible outcomes

#### Frequentist Statisticians

Statisticians who view <b><i>the world as deterministic, do not include subjectivity, and see probabilities as a way to explain how random events would look after a bunch of trials</b></i> are known as <b>frequentist statisticians</b>. To show this through a statistical lens, let’s look at the traditional coin flipping example: As a frequentist statistician, we would

1.  first suppress any prior ideas of how the outcome should look;
2.  then flip a coin over and over and record the results; and
3.  find that after enough flips that while we will likely never get 50-50 odds, the data shows that we’re heading that way so with the idea if we flipped that coin an infinite number of times, that’s the true outcome.

This is the idea of something being deterministic where probabilities are used to describe a <i>fixed value</i> which in this case is always going to be 50-50. For any social scientists, the epistemological perspective is that frequentist for the most part believe in a single truth

#### Bayesian Statisticians

Statisticians who view <b><i>the world as probabilistic, allow for prior beliefs about a phenomena, and update the probability of those beliefs with new evidence</b></i> are known as <b>Bayesian statisticians</b>. To again show this through a statistical lens, let’s look at the traditional coin flipping example: As a Bayesian statistician, we would

1.  first have a prior belief of what the probability of getting a heads or tails is say 50-50
2.  then flip a coin over and over and record the results; and
3.  find that after enough flips that we will never get to the 50-50 odds implying that there are multiple possible outcomes, each with its own associated probability

This is the idea of something being deterministic where probabilities are used to describe <i>multiple values</i> which in this case may be 50-50, but could also be 40-60, 60-40, 20-80 and so on, each associated with some chance of being true. For any social scientists, the epistemological perspective is that Bayesian for the most part believe in multiple truths with some more likely than others

### Mostly Non Stats Example

Rather than provide an example that uses a bunch of statistics, let’s look at it practically

<i>Situation</i>. You have misplaced your iPhone somewhere in your apartment or home. You can use the Find My app ® to find it and hear beeping.

<i>Problem</i>. Which room in your apartment or home should you search?

<i>Approaches</i>.

-   Frequentist: You hear the phone beeping and you have some approach using a mental model to help figure out what room the beeping is coming from. So you used <b><i>inferences from the beeps</b></i> to locate the room in your home you must search to find the phone

-   Bayesian: You hear the phone beeping and along with some approach using a mental model, you also know all of the rooms you have misplaced the phone before which combined help to figure out what room the beeping is coming from. So you used <b><i>inferences from the beeps</b></i> and <b><i>prior knowledge</b></i> to locate the room in your home you must search to find the phone

### Table of Differences

There are multiple differences in how the sides view not just how problems should be viewed and solved, but on the nature of reality itself. The table below gives some overarching ones[^2]<sup>, </sup>[^3].

<table class="table" style="width: auto !important; margin-left: auto; margin-right: auto;">
<thead>
<tr>
<th style="text-align:center;">
Type
</th>
<th style="text-align:left;">
Information Used
</th>
<th style="text-align:center;">
What is Random?
</th>
<th style="text-align:center;">
Type of Reasoning
</th>
<th style="text-align:left;">
Terminology
</th>
<th style="text-align:center;">
Observed Data
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:center;width: 10em; ">
Frequentist statistician
</td>
<td style="text-align:left;width: 30em; ">
Outcomes derived strictly from experiments
</td>
<td style="text-align:center;width: 10em; ">
Observed data<sup>2</sup>
</td>
<td style="text-align:center;width: 10em; ">
Deductive logic.
</td>
<td style="text-align:left;width: 30em; ">
Common terms like *p*-value, significant, null hypothesis, and confidence interval.
</td>
<td style="text-align:center;width: 10em; ">
Unknown and comes only from experiments.
</td>
</tr>
<tr>
<td style="text-align:center;width: 10em; ">
Bayesian statistician
</td>
<td style="text-align:left;width: 30em; ">
Prior beliefs about what the truth might be which are updated as experiments progress.
</td>
<td style="text-align:center;width: 10em; ">
Population parameters<sup>3</sup>
</td>
<td style="text-align:center;width: 10em; ">
Inductive logic.
</td>
<td style="text-align:left;width: 30em; ">
Uncommon terms like prior probability, noninformative priors, and credible intervals.
</td>
<td style="text-align:center;width: 10em; ">
Known since we already know what we know.
</td>
</tr>
</tbody>
</table>

### So Who is Right?

We honestly just don’t know right now. Similar to physics where there are two seemingly incompatible laws governing the universe - <i>relativity</i> for large and <i>quantum</i> for small objects, respectively - statisticians have the same difficulty regarding inferences. The frequentist thinking is by far the dominant approach because it involves fairly “simple” and concrete calculations that can be tested and verified when explaining the phenomena around us. In fact, the approach aligns with the idea of certainty that humans like and need to make sense of the world, but there is a limit to what this approach can explain and that has not been more apparent than with computing. Practically speaking ignoring the human element in a study absolutely makes it easier to perform analyses, but the very act of removing it has an affect from start to finish that results in outcomes that are at the very least imprecise and at most harmful

The actual explanation for which side is right is likely some combination of both approaches - yet there may also be another method that can unify both into an all encompassing statistical approach that we just haven’t considered yet or maybe both approaches are wrong and we need to rethink statistics from the ground up. For now all we have are these two somewhat related yet also contradictory views on how the world works

<i>So it may be that frequentist statistics is a needed field in order to get to the Bayesian way of looking at the world similar to needing an understanding of descriptive statistics prior to moving into inferential</i>

#### Frequentist Statistics

<p align="center">
<iframe width="560" height="315" src="https://www.youtube.com/embed/OyddY7DlV58" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen>
</iframe>
</p>

<br>

#### Bayesian Statistics

<p align="center">
<iframe width="560" height="315" src="https://www.youtube.com/embed/oZCskBpHWyk" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen>
</iframe>
</p>

[^1]: Fun fact: The fact you are able to view this exact page right now is based on [based on probability](https://www.americanscientist.org/article/programs-and-probability)

[^2]: Any data that has been collected from an experiment

[^3]: Any summary number, like an average or percentage, that describes the entire population

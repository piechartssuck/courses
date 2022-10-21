---
title: "Sampling and Sampling Distributions"
linktitle: "Week 7: Sampling and Sampling Distributions"
menu:
  tasks:
    parent: Homeworks
    weight: 7
type: docs
weight: 2
editor_options: 
  chunk_output_type: console
---
<script src="/rmarkdown-libs/kePrint/kePrint.js"></script>
<link href="/rmarkdown-libs/lightable/lightable.css" rel="stylesheet" />
<script src="/rmarkdown-libs/kePrint/kePrint.js"></script>
<link href="/rmarkdown-libs/lightable/lightable.css" rel="stylesheet" />



<style>
span.boxed {
  border: 0px solid #FFFFFF;
  padding: 5px;
  color: #FFFFFF;
  background-color: #005b96;
  display: inline;
} 

table {
   margin-left: auto;
   margin-right: auto;
}

table thead th { border-bottom: 1px solid #ddd; 
}

th, td { padding: 5px; 
}

table > tbody > tr:hover > td, table > tbody > tr:hover > th {
  background-color: #ffffff;
}
</style>

### Homework


<center>
<table>
 <thead>
  <tr>
   <th style="text-align:center;background-color: #ffffff !important;vertical-align: middle !important;"> Chapter </th>
   <th style="text-align:left;background-color: #ffffff !important;vertical-align: middle !important;"> Problems </th>
   <th style="text-align:left;background-color: #ffffff !important;vertical-align: middle !important;"> Source </th>
   <th style="text-align:left;background-color: #ffffff !important;vertical-align: middle !important;"> Pages </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:center;font-weight: bold;background-color: #ffffff !important;vertical-align: middle !important;"> 6 </td>
   <td style="text-align:left;background-color: #ffffff !important;vertical-align: middle !important;"> 1, 2, 3, 4, 5, 6, 7, 8, 9 </td>
   <td style="text-align:left;background-color: #ffffff !important;vertical-align: middle !important;"> Social Statistics for a Diverse Society </td>
   <td style="text-align:left;background-color: #ffffff !important;vertical-align: middle !important;"> 206-210 </td>
  </tr>
</tbody>
</table>
</center>

Notes: 

- Please submit this at the beginning of class next week.
- Remember to follow the [homework guidelines](/tasks/#homeworks) for consideration.

<!--
to the Submission Portal on [ecampus](https://ecampus.wvu.edu/){target="_blank"} by 11:59 PM next Wednesday.<br>
-->


### Solutions

*Posted after class day and time next week.*

<!--
### Solutions

<details><summary>1</summary>
<p>

a. Although there are problems with the collection of data from all Americans, the census is assumed to be complete, so the mean age would be a <span class="boxed">parameter</span>.
    
b. A <span class="boxed">statistic</span> because it is estimated from a sample.
  
c. A <span class="boxed">parameter</span> because the school would have information on all its students.
  
d. A <span class="boxed">statistic</span> because it is estimated from a sample.
  
e. A <span class="boxed">parameter</span> because the school has information on all employees.

</p>
</details>

<details><summary>2</summary>
<p>

a. First, the population is not clearly defined. Are the population subscribers to the newspaper? Readers of the newspaper? Or some other set of people? Even given this uncertainty, the letters to the editor would only be a random sample of a population if, clearly, they came randomly from that population. But there is no reason to assume this to be the case. People with stronger opinions, who can write reasonably well, and who have the time to write are more likely to write the editor. Since these characteristics are not distributed randomly throughout the adult population, it is improbable that the letters are a random sample.

b. The mayor might consider forming a coalition to randomly sample landline and cell phone numbers of city residents.

</p>
</details>

<details><summary>3</summary>
<p>

a. Assuming that the population is defined as all persons shopping at that shopping mall that day of the week, she is selecting a systematic random sample. A more precise definition might limit it to all persons passing by the department store at the mall that day.

b. This is a stratified sample because voters were first grouped by county, and unless the counties have the same number of voters, it is a disproportionate stratified sample because the same number is chosen from each county. We can assume that it was a probability sample, but we are not told exactly how the 50 voters were chosen from the lists. However, assuming that the population is defined as all Americans, this sort of sampling technique would qualify as nonprobability sampling.

c. This is neither a simple random sample nor a systematic random sample. It might be thought of as a sample stratified on last name, but even then, choosing the first 20 names is not a random selection process.

d. This is not a probability sample. Instead, it is a purposive sample chosen to represent a cross section of the population in New York City.

</p>
</details>

<details><summary>4</summary>
<p>

a. There are 120 students where 57 are juniors who represent `\(57\div120 = 47.5\)`, or 47.5% of the class. This implies the probability of choosing a junior is <span class="boxed">$0.475$</span>.

b. The probability that the student will be a freshman is `\(7\div120 =\)` <span class="boxed">$0.058$</span>.

c. The proportion of seniors in the class is `\(34/120 = 0.283\)`. The proportion of sophomores is `\(22\div120 = 0.183\)`. Then the number of students to be chosen at each class level is:
<div align="center">
<div style="width: 50%; margin:0 left;text-align: left;">
<table class="table" style="width: auto !important; margin-left: auto; margin-right: auto;">
 <thead>
  <tr>
   <th style="text-align:left;"> Class Level </th>
   <th style="text-align:center;"> Calculation </th>
   <th style="text-align:center;"> Result </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> Freshman </td>
   <td style="text-align:center;"> 0.058(30) </td>
   <td style="text-align:center;"> 1.74 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Sophomore </td>
   <td style="text-align:center;"> 0.183(30) </td>
   <td style="text-align:center;"> 5.49 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Junior </td>
   <td style="text-align:center;"> 0.475(30) </td>
   <td style="text-align:center;"> 14.25 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Senior </td>
   <td style="text-align:center;"> 0.283(30) </td>
   <td style="text-align:center;"> 8.49 </td>
  </tr>
</tbody>
</table>
</div>
</div>
or about <span class="boxed">2 freshman</span>, <span class="boxed">5 sophomores</span>, <span class="boxed">14 juniors</span>, and <span class="boxed">8 seniors</span>.

d. For a disproportionate sample we choose the same number of students from each class level. For example, we could have <span class="boxed">5 freshman</span>, <span class="boxed">5 sophomores</span>, <span class="boxed">5 juniors</span>, and <span class="boxed">5 seniors</span>.

</p>
</details>

<details><summary>5</summary>
<p>
<div style="padding-left: 30px;">

The relationship between the standard error and the standard deviation is `\(\sigma_{\overline{Y}} =\frac{\sigma}{\sqrt{N}}\)`. Since `\(\sigma\)` is divided by `\(\sqrt{N}\)`, `\(\sigma_{\overline{Y}} =\frac{\sigma}{\sqrt{N}}\)` must always be smaller than `\(\sigma\)` barring the trivial case where `\(N = 1\)`. Theoretically, the dispersion of the mean must be less than the dispersion of the raw scores. This implies that <span class="boxed">the standard error of the mean is less than the standard deviation</span>.
</div>
</p>
</details>
      
<details><summary>6</summary>
<p>
      
<div style="padding-left: 30px;">

First note that the standard error of the mean is proportional to `\(\frac{1}{\sqrt{N}}\)`.
      </div>
        
  a. The standard error of the mean is<br><br> 
`\(\sigma_{\overline{Y}} =\frac{\sigma}{\sqrt{100}}=\frac{\sigma}{10}\)` for a sample size of 100<br><br>
          `\(\sigma_{\overline{Y}} =\frac{\sigma}{\sqrt{1600}}=\frac{\sigma}{40}\)` for a sample size of 16000<br><br>
            We compare the two by `\(\frac{40}{10} =4\)`. So `\(\sigma_{\overline{Y}} =\frac{\sigma}{\sqrt{N}}\)` <span class="boxed">is smaller by a factor of 4</span> when the sample size increases from 100 to 1600.

  b. The standard error of the mean is<br><br> 
              `\(\sigma_{\overline{Y}} =\frac{\sigma}{\sqrt{300}}\approx\frac{\sigma}{17.32}\)` for a sample size of 300<br><br>
              `\(\sigma_{\overline{Y}} =\frac{\sigma}{\sqrt{150}}\approx\frac{\sigma}{12.25}\)` for a sample size of 150<br><br>
              We compare the two by `\(\frac{17.32}{12.25} \approx 1.41\)`. So `\(\sigma_{\overline{Y}} =\frac{\sigma}{\sqrt{N}}\)` <span class="boxed">is greater by a factor of 1.41</span> when the sample size decreases from 300 to 150.
            
  c. For simplicity, assume an initial sample size of 100. We then have
            `\(\sigma_{\overline{Y}} =\frac{\sigma}{\sqrt{100}}=\frac{\sigma}{10}\)` for a sample size of 10 0<br><br>
              `\(\sigma_{\overline{Y}} =\frac{\sigma}{\sqrt{4\cdot100}}=\frac{\sigma}{20}\)` for a sample size of 4000<br><br>
We compare the two by `\(\frac{20}{10} = 2\)`. So `\(\sigma_{\overline{Y}} =\frac{\sigma}{\sqrt{N}}\)` <span class="boxed">decreases by a factor of 2</span>.
            
</p>
</details>
              
              
<details><summary>7</summary>
<p>
              
  a. Facebook ® polls are most definitely not probability samples. While many reasons exists, the two noted below are likely the most important: 
              - the *population* from which data are gathered is limited to the *friends* on one’s Facebook ® profile--and such is certainly not a representative sample from the larger population.
            - due to Facebook ® algorithms, we can’t be sure that every Facebook ® friend would have the same opportunity to see, and thus participate, in the poll.
            
  b. The population is our Facebook ® friends who come across the poll.
            
</p>
</details>
              
<details><summary>8</summary>
  
  <div style="padding-left: 30px;">

First we convert these to a vector and take the sum
  
  ```r
  military <- c(229634, 64564, 376034, 89826, 26384, 41441, 177336, 68440, 8579)
  
  total_mil <- sum(military)
  ```
  </div>
  a. The mean number of active military personnel per region in 2009 was 
      
      ```r
      mu_mil = mean(military)
      
      mu_mil
      ```
      
      ```
      ## [1] 120248.7
      ```
      or about <span class="boxed">120249</span>. The standard deviation is
      
      ```r
      sd_pop=function(x){sd(x)*sqrt((length(x)-1)/length(x))}
      
      sigma_mil = sd_pop(military)
      
      sigma_mil
      ```
      
      ```
      ## [1] 112966.1
      ```
      or about <span class="boxed">112966</span>.
  b. We can use the `sample` command to get our 10 sample means of size 3. We can use the `replcate` and `rnorm` commands in R to do this 
      
      ```r
      # replicate(size #, rnorm(#of sample means, mu, sigma))
      
      samples <- replicate(3,rnorm(10, mu_mil,sigma_mil))
      
      samples
      ```
      
      ```
      ##            [,1]       [,2]        [,3]
      ##  [1,] 105699.52   73510.34  47366.5273
      ##  [2,]  30006.16 -152541.74  67542.3456
      ##  [3,] 145093.65   90592.21 131036.4313
      ##  [4,] 129979.25  -57916.92 129541.9173
      ##  [5,] 143612.03   63349.44  58423.2653
      ##  [6,] 133048.45  105502.30 -19070.0009
      ##  [7,]  80526.49  142114.93 240017.2511
      ##  [8,] 139189.61   82385.98  12053.5580
      ##  [9,] 100133.71  184022.74 205169.9065
      ## [10,] 194136.21   84008.67   -834.3961
      ```
  c. The mean of these 10 sets of means is 
      
      ```r
      mean(samples)
      ```
      
      ```
      ## [1] 89590
      ```
      or about <span class="boxed">105428</span>. We notice that the population mean and the mean of the sampling distribution are somewhat close, a feature that we should come to expect given the fact that `\(\mu_Y = \mu_{\overline{Y}}\)`.
  d. The standard deviation of these 10 sets of means is
      
      ```r
      sd(samples)
      ```
      
      ```
      ## [1] 80685.79
      ```
      or about <span class="boxed">122991</span>.
  e. The population distribution is positively skewed and not close to normal. Since a very small sample size is used in this problem, the histogram for the samples of size 3 does not look normal. The distributions appear unimodal. The fact that the sample distribution of the means tends toward normality because of the Central Limit Theorem would become even more apparent if we took samples of size 5 or 6. To show this, look at the plots below
      <img src="/tasks/07-tasks_files/figure-html/unnamed-chunk-9-1.png" width="672" />
</p>
</details>
    
<details><summary>9</summary>
<p>
    
  a. This is not a reliable sample. The students eating lunch on Tuesday are not necessarily representative of all students at the school, and you have no way of calculating the probability of inclusion of any student. Many students might, for example, rarely eat lunch at the student union and, therefore, have no chance of being represented in your sample. The fact that you selected all the students eating lunch on Tuesday makes your selection appear to be a census of a population, but that isn’t true either unless all the students ate at the student union on Tuesday.
  
  b. This is not a reliable sample. The majority of people in attendance at the rally would probably be in support of open borders. Students against such might not have any chance of selection.
  
  c. Answers will vary, but it seems the best route would be to obtain a list of all registered students from your university’s registrar. And then employ a known sampling strategy (simple random sampling, stratified sampling, etc.) to create your sample of 10% of the student body. From there, you would reach out to each person you’ve selected via e-mail, telephone, mail, and so on and ask them to complete your survey.  
  
</p>
</details>
-->

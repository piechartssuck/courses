---
title: "Abhik Ranjan Roy"
author: Abhik Ranjan Roy
date: "2022-07-18"
params:
  pdf_mode:
    value: true
  cache_data:
    value: true
output:
  pagedown::html_resume:
    self_contained: true
    paged-footnotes: true
    css: ["updatedaes.css", "resume"]
knit: pagedown::chrome_print
weight: NULL 
---

<script src="//yihui.org/js/math-code.js" defer></script>
<!-- Just one possible MathJax CDN below. You may use others. -->
<script defer
  src="//mathjax.rstudio.com/latest/MathJax.js?config=TeX-MML-AM_CHTML">
</script>
<style type="text/css">
.pagedjs_page:not(:first-of-type) {
  --sidebar-width: 0rem;
  --sidebar-background-color: #36454f;
  --main-width: calc(var(--content-width) - var(--sidebar-width));
  --decorator-horizontal-margin: 0.2in;
}
</style>

# Aside

<img src="img/me_rb.png" width="20%"/>

## Contact Information

-   <svg aria-hidden="true" role="img" viewBox="0 0 512 512" style="height:1em;width:1em;vertical-align:-0.125em;margin-left:auto;margin-right:auto;font-size:inherit;fill:#e7c9a9;overflow:visible;position:relative;"><path d="M256 8C118.941 8 8 118.919 8 256c0 137.059 110.919 248 248 248 48.154 0 95.342-14.14 135.408-40.223 12.005-7.815 14.625-24.288 5.552-35.372l-10.177-12.433c-7.671-9.371-21.179-11.667-31.373-5.129C325.92 429.757 291.314 440 256 440c-101.458 0-184-82.542-184-184S154.542 72 256 72c100.139 0 184 57.619 184 160 0 38.786-21.093 79.742-58.17 83.693-17.349-.454-16.91-12.857-13.476-30.024l23.433-121.11C394.653 149.75 383.308 136 368.225 136h-44.981a13.518 13.518 0 0 0-13.432 11.993l-.01.092c-14.697-17.901-40.448-21.775-59.971-21.775-74.58 0-137.831 62.234-137.831 151.46 0 65.303 36.785 105.87 96 105.87 26.984 0 57.369-15.637 74.991-38.333 9.522 34.104 40.613 34.103 70.71 34.103C462.609 379.41 504 307.798 504 232 504 95.653 394.023 8 256 8zm-21.68 304.43c-22.249 0-36.07-15.623-36.07-40.771 0-44.993 30.779-72.729 58.63-72.729 22.292 0 35.601 15.241 35.601 40.77 0 45.061-33.875 72.73-58.161 72.73z"/></svg>    abhik.roy@mail.wvu.edu
-   <svg aria-hidden="true" role="img" viewBox="0 0 496 512" style="height:1em;width:0.97em;vertical-align:-0.125em;margin-left:auto;margin-right:auto;font-size:inherit;fill:#4183c4;overflow:visible;position:relative;"><path d="M165.9 397.4c0 2-2.3 3.6-5.2 3.6-3.3.3-5.6-1.3-5.6-3.6 0-2 2.3-3.6 5.2-3.6 3-.3 5.6 1.3 5.6 3.6zm-31.1-4.5c-.7 2 1.3 4.3 4.3 4.9 2.6 1 5.6 0 6.2-2s-1.3-4.3-4.3-5.2c-2.6-.7-5.5.3-6.2 2.3zm44.2-1.7c-2.9.7-4.9 2.6-4.6 4.9.3 2 2.9 3.3 5.9 2.6 2.9-.7 4.9-2.6 4.6-4.6-.3-1.9-3-3.2-5.9-2.9zM244.8 8C106.1 8 0 113.3 0 252c0 110.9 69.8 205.8 169.5 239.2 12.8 2.3 17.3-5.6 17.3-12.1 0-6.2-.3-40.4-.3-61.4 0 0-70 15-84.7-29.8 0 0-11.4-29.1-27.8-36.6 0 0-22.9-15.7 1.6-15.4 0 0 24.9 2 38.6 25.8 21.9 38.6 58.6 27.5 72.9 20.9 2.3-16 8.8-27.1 16-33.7-55.9-6.2-112.3-14.3-112.3-110.5 0-27.5 7.6-41.3 23.6-58.9-2.6-6.5-11.1-33.3 2.6-67.9 20.9-6.5 69 27 69 27 20-5.6 41.5-8.5 62.8-8.5s42.8 2.9 62.8 8.5c0 0 48.1-33.6 69-27 13.7 34.7 5.2 61.4 2.6 67.9 16 17.7 25.8 31.5 25.8 58.9 0 96.5-58.9 104.2-114.8 110.5 9.2 7.9 17 22.9 17 46.4 0 33.7-.3 75.4-.3 83.6 0 6.5 4.6 14.4 17.3 12.1C428.2 457.8 496 362.9 496 252 496 113.3 383.5 8 244.8 8zM97.2 352.9c-1.3 1-1 3.3.7 5.2 1.6 1.6 3.9 2.3 5.2 1 1.3-1 1-3.3-.7-5.2-1.6-1.6-3.9-2.3-5.2-1zm-10.8-8.1c-.7 1.3.3 2.9 2.3 3.9 1.6 1 3.6.7 4.3-.7.7-1.3-.3-2.9-2.3-3.9-2-.6-3.6-.3-4.3.7zm32.4 35.6c-1.6 1.3-1 4.3 1.3 6.2 2.3 2.3 5.2 2.6 6.5 1 1.3-1.3.7-4.3-1.3-6.2-2.2-2.3-5.2-2.6-6.5-1zm-11.4-14.7c-1.6 1-1.6 3.6 0 5.9 1.6 2.3 4.3 3.3 5.6 2.3 1.6-1.3 1.6-3.9 0-6.2-1.4-2.3-4-3.3-5.6-2z"/></svg>    [github.com/drabhikroy](https://github.com/drabhikroy)
-   <svg aria-hidden="true" role="img" viewBox="0 0 512 512" style="height:1em;width:1em;vertical-align:-0.125em;margin-left:auto;margin-right:auto;font-size:inherit;fill:#5cb2b8;overflow:visible;position:relative;"><path d="M464 32H48C21.5 32 0 53.5 0 80v352c0 26.5 21.5 48 48 48h416c26.5 0 48-21.5 48-48V80c0-26.5-21.5-48-48-48zm0 394c0 3.3-2.7 6-6 6H54c-3.3 0-6-2.7-6-6V192h416v234z"/></svg>    [iam.adatasocialscientist.com](https://iam.asocialdatascientist.com/)
-   <svg aria-hidden="true" role="img" viewBox="0 0 320 512" style="height:1em;width:0.62em;vertical-align:-0.125em;margin-left:2.1px;margin-right:auto;font-size:inherit;fill:#c4becf;overflow:visible;position:relative;"><path d="M272 0H48C21.5 0 0 21.5 0 48v416c0 26.5 21.5 48 48 48h224c26.5 0 48-21.5 48-48V48c0-26.5-21.5-48-48-48zM160 480c-17.7 0-32-14.3-32-32s14.3-32 32-32 32 14.3 32 32-14.3 32-32 32zm112-108c0 6.6-5.4 12-12 12H60c-6.6 0-12-5.4-12-12V60c0-6.6 5.4-12 12-12h200c6.6 0 12 5.4 12 12v312z"/></svg>     <a href="tel:+1 269-615-8771">+1 269-615-8771</a>
-   <svg aria-hidden="true" role="img" viewBox="0 0 512 512" style="height:1em;width:1em;vertical-align:-0.125em;margin-left:auto;margin-right:auto;font-size:inherit;fill:#aecc54;overflow:visible;position:relative;"><path d="M294.75 188.19h-45.92V342h47.47c67.62 0 83.12-51.34 83.12-76.91 0-41.64-26.54-76.9-84.67-76.9zM256 8C119 8 8 119 8 256s111 248 248 248 248-111 248-248S393 8 256 8zm-80.79 360.76h-29.84v-207.5h29.84zm-14.92-231.14a19.57 19.57 0 1 1 19.57-19.57 19.64 19.64 0 0 1-19.57 19.57zM300 369h-81V161.26h80.6c76.73 0 110.44 54.83 110.44 103.85C410 318.39 368.38 369 300 369z"/></svg>    [0000-0002-7085-8964](https://orcid.org/0000-0002-7085-8964)

## Expertise

-   <b>Data visualization</b>

-   <b>Cluster analysis</b>

-   <b>Machine learning models, Bayesian statistical methods, and social network analysis</b>

-   <b>Planning and administering program evaluations</b>

-   <b>Text mining, analytics, and content analysis</b>

-   <b>Programming in</b><i style="color:#3365B3;" class="fab fa-r-project"></i>

-   <b>Reporting in</b> `\(\LaTeX\)`

## Disclaimer

Made w/ [**pagedown**](https://github.com/rstudio/pagedown): [Source code](https://github.com/nstrayer/cv)

Last updated on 2022-07-18

# Main

## Dr. Abhik Roy

## Education

### Western Michigan University

Ph.D. in Program Evaluation

  Kalamazoo, MI

2016

*Dissertation*. Building an Evaluation Model of Academic Advising’s Impact on Progression, Persistence, and Retention Within University Settings

### Michigan Technological University

M.S. in Mathematics

  Houghton, MI

2007

*Thesis*. Quotient Rings of the Eisenstein Integers

### West Virginia Wesleyan College

B.S. in Mathematics

  Buckhannon, WV

2001

*Terminal Study*. 4-Cell Embedding on a `\(n\)`-genus Torus

## Professional Experience

### Assistant Professor

West Virginia University

  Morgantown, WV

Current - 2016

<div class="concise">

-   Advising masters and doctoral students.
-   Evaluating various projects and grants.
-   Submitting papers for peer review publications.
-   Teaching evaluation and methods based classes with a focus on data science.
-   Writing and enabling data pulls from APIs, creating visualizations, and building Shiny apps all within R.

</div>

### Data Analyst

University of Kansas

  Lawrence, KS

2016 - 2014

<div class="concise">

-   Created scripts to pull data from the organization’s Oracle database.
-   Prepared evaluation reports for various stakeholders.
-   Led and presented findings from small and large scale qualitative, quantitative and mixed-methods studies.

</div>

## Publications

### There’s So Much to Do and Not Enough Time to Do It! A Case for Sentiment Analysis to Derive Meaning From Open Text Using Student Reflections of Engineering Activities.

*American Journal of Evaluation, 42* (4), 559–576.

N/A

2021

<b>Roy, A.</b>, & Rambo-Hernandez, K.E. https://doi.org/10.1177/1098214020962576

### To design or to integrate? Instructional design versus technology integration in developing learning interventions.

*Education Tech Research Dev 68*, 2473–2504.

N/A

2020

Kale, U., <b>Roy, A.</b> & Yuan, J. [https://doi.org/10.1007/s11423–020–09771–8](https://doi.org/10.1007/s11423-020-09771-8)

### Using Interactive Theater to Promote Inclusive Behaviors in Teams for First-year Engineering Students: A Sustainable Approach.

*Development of A Holistic Cross-Disciplinary Project Course Experience as a Research Platform for the Professional Formation of Engineers.*

N/A

2020

Dey, K.C., & Rahman, M.T., & Pyrialakou, V.D., & Martinelli, D., & Rambo-Hernandez, K.E., & Fraustino, J.D., & Deskins, J., & Plein, L.C., & <b>Roy, A.R.</b> [https://doi.org/10.18260/1–2––34446](https://doi.org/10.18260/1-2--34446)

### General chemistry student attitudes and success with use of online homework: Traditional-Responsive versus Adaptive-Responsive.

*Journal of Chemical Education, 95* (5), 691-699.

N/A

2018

Richard-Babb, M., Curtis, R., Ratcliff, B., <b>Roy, A.R.</b>, & Mikalik, T. https://doi.org/10.1021/acs.jchemed.7b00829

### To go virtual or not to go virtual, that is the question: A comparative study of face-to-face versus virtual laboratories in a physical science course.

*Journal of College Science Teaching, 48* (2), 59-67.

N/A

2018

Miller, T.A., Carver, J.S., & <b>Roy, A.R.</b> https://www.jstor.org/stable/26616271

### Reasoning-and-proving in algebra: The case of two reform-oriented U.S. textbooks.

*International Journal of Educational Research 64.*, 92-106

N/A

2014

Davis, J.D., Smith, D.O., <b>Roy, A.R.</b>, & Bilgic, Y. K. https://doi.org/10.1016/j.ijer.2013.06.012

### What’s in a Scriven number?

*Journal of MultiDisciplinary Evaluation, 8* (19), 41-45.

N/A

2012

<b>Roy, A.R.</b>, Hobson, K.A., & Coryn, C.L.S. https://journals.sfu.ca/jmde/index.php/jmde_1/article/view/372/358

## Manuscripts Under Consideration

### Thinking Processes in Code.org: A Relational Analysis Approach to Computational Thinking.

*Computer Science Education*.

N/A

2022

Kale, U, Kooken, A., Yuan, J., & <b>Roy, A.</b>

Status: Revise & Resubmit

### Program Evaluation Standards for Utility Facilitate Stakeholder Internalization of Evaluative Thinking in the West Virginia Clinical Translational Science Institute.

*Journal of MultiDiscplinary Evaluation*.

N/A

2022

Curtis, R, <b>Roy, A.</b>, Lewis, N., Dooty, E.N., & Mikalik, T.

Status: Revise & Resubmit (Special Issue)

### Running on Fumes: A Mixed Methods Study of Advisor Needs Using Thematic and Sentiment Analysis.

*Studies in Higher Education*.

N/A

2022

<b>Roy, A.</b>, Trolio, J., & Ferguson, C.F.

Status: Under Review

### Artificial Intelligence Isn’t Here to Kill You but It Could Make Your Research Killer: Examining Affordances, Limitations, and Complementarity of Machine Learning and Qualitative Content Analyses in the Context of Undergraduate Research Experiences.

*American Journal of Evaluation*.

N/A

2022

<b>Roy, A.</b>, Ferguson, C.F., Richard-Babb, M., & Curtis, R.

Status: Under Review

## Book Chapters

### Social network analysis: Finding meaning in connections.

*Nova Science Publishers, Inc.*

N/A

2014

<b>Roy, A.R.</b> 978-1-53612-734-8

## Invited Contributions

### What is a Scriven number?

*The American Evaluation Association Newsletter*

N/A

2012

<b>Roy, A.R.</b>, Hobson, K.A., & Coryn, C.L.S.

## Active Grants

### WVCTSI: West Virginia Clinical and Translational Science Institute

West Virginia University

  Morgantown, WV

2017

-   Analyzing large data sets using frequentist and Bayesian methods.
-   Conducting local and multi-site mutli-cluster evaluation studies.
-   Pulling, wrangling, and visualizing secondary data in R.
-   Mentoring future graduate social data scientists.
-   *\$20,000,000*
-   *2017-NIH 2U54GM104942-02*

## Inactive Grants

### Appalachian Gerontology Experiences - Advancing Diversity in Aging Research

West Virginia University

  Morgantown, WV

2020

-   Developing and distributing customized Qualtrics surveys built with CSS and Javascript.
-   Performing various evaluative studies addressing program efficacy and engagement.
-   *\$678,000*
-   *2020-1R25AG059558-01A1*

### Research Initiative: A Holistic Cross-Disciplinary Project Experience as a Platform to Advance the Professional Formation of Engineers

West Virginia University

  Morgantown, WV

2020

-   Advising engineering faculty and graduate students on implementation of study methods.
-   Conducting quantitative and qualitative studies on undergraduate student experiences within grant related programs.
-   *\$200,000*
-   *2019-NSF-EEC 1927232*

### Stepping UP with Avenue: Progress Monitoring: A Software Suite Helping Teachers Improve Literacy Progress For Deaf/Hard Of Hearing Students

Pennsylvania State University

  State College, PA

2018 - 2017

-   *\$2,470,440*
-   *2017-ED H327S170012*

### Research Initiative: A Holistic Cross-Disciplinary Project Experience as a Platform to Advance the Professional Formation of Engineers

West Virginia University

  Morgantown, WV

2018 - 2017

-   *\$2,000,000*
-   *2017-NSF 1725880*

### GAUSSI: Generating, Analyzing, and Understanding Sensory and Sequencing Information: A Trans-Disciplinary Graduate Training Program in Biosensing and Computational Biology

Colorado State University

  Fort Collins, CO

2020 - 2017

-   *\$3,013,779*
-   *2017-NSF: NRT-DESE*

## Presentations

### Best of Both Worlds: Affordances of Mixing Machine Learning and Qualitative Content Analysis

*American Educational Research Association Annual Meeting*

  San Diego, CA

2022

Roy, A.R., Ferguson, C.F., Curtis, R., & Babb-Richards, M.

### These Aren’t Random Words Just Strung Together?: Using Machine Learning and Pretty Visualizations to Discover Topics in Articles.

*American Evaluation Association Annual Conference*

*virtual*

2020

<b>Roy, A.R.</b>

### Little Fish in a Big Pond, Only Fish in a Little Pond: How Roles Shape our Identities as Evaluators.

*American Evaluation Association Annual Conference*

  Minneapolis, MN

2019

M, Loomis, D.L., Mikalik, T.L., Curtis, R., <b>Roy, A.R.</b>, & Bernstein, M.

### Evolving Program Logic Models to Meet Shifting Program Needs: The Case of WV Clinical Translational Science Institute.

*American Evaluation Association Annual Conference*

  Minneapolis, MN

2019

Curtis, R., <b>Roy, A.R.</b>, Bernstein, M, Loomis, D.L., & Mikalik, T.L.

### The Value of External Evaluators When Building Clinical Translational Research Infrastructure.

*American Evaluation Association Annual Conference*

  Minneapolis, MN

2019

Curtis, R., <b>Roy, A.R.</b>, Bernstein, M, Loomis, D.L., & Mikalik, T.L.

### Using Associated Networks to Evaluate Content within Courses.

*American Evaluation Association Annual Conference*

  Minneapolis, MN

2019

<b>Roy, A.R.</b>, Kale, U, & Yuan, J.

### Why Is It That Writers Write but Fingers Don’t Fing? Using Machine Learning and Lexemes to Make Sense of Nonsense.

*American Evaluation Association Annual Conference*

  Minneapolis, MN

2019

<b>Roy, A.R.</b>, Curtis, R., Mikalik, T.L., Loomis, D.L., & Bernstein, M.

### Discovering the Underlying Meaning Behind Get Me Off Your F\*\*\*ing Mailing List? and Most Other Narratives.

*American Evaluation Association Annual Conference*

  Minneapolis, MN

2019

<b>Roy, A.R.</b>, Curtis, R., Mikalik, T.L., Loomis, D.L., & Bernstein, M.

### Assessing for Improvement: The Use of Artificial Intelligence to Uncover Potential Differential Impact of Assignments.

*American Evaluation Association Annual Conference*

  Toronto, CN

2019

<b>Roy, A.R.</b> & Rambo-Hernandez, K.

### That’s a Pretty Picture of Dots and Lines but What Does it Mean?: A Q&A Session with the Social Network Analysis TIG Leaders.

*American Evaluation Association Annual Conference*

  Cleveland, OH

2018

<b>Roy, A.R.</b>, Durland, M.M., Woodland, R., & Phillips, G.

### Navigating Buy-in and Shifting Evaluation Needs Over Time in NIH Clinical Translational Research Award.

*American Evaluation Association Annual Conference*

  Cleveland, OH

2018

Curtis, R., & <b>Roy, A.R.</b>, Mikalik, T.L.

### Using a Mixed Methods Evaluation to Discover How an Interactive Theater Based Model Stimulates Inclusive Behaviors in Engineering.

*American Evaluation Association Annual Conference*

  Cleveland, OH

2018

<b>Roy, A.R.</b>, Rambo-Hernandez, K., Hensel, R.A., & Morris, M.L.

### Collaboration Evaluation: Using Social Network Analysis to Reveal an Active Undiscovered Network.

*American Evaluation Association Annual Conference*

  Cleveland, OH

2018

<b>Roy, A.R.</b>, Curtis, R., & Mikalik, T.L.

### Examining the Past and Looking Forward: The Future of Evaluation Theory and Use.

*American Evaluation Association Annual Conference*

  Cleveland, OH

2018

<b>Roy, A.R.</b> & Hobson, K.A.

### Transforming Graduate STEM Education: A Theory-Driven Evaluation of the GAUSSI National Science Foundation Research Training (NRT) Program.

*American Evaluation Association Annual Conference*

  Washington, DC

2017

<b>Roy, A.R.</b>, Hernandez, P.A., Chen, T., & Paguyo, C.

### Program Evaluation for Everyone! - Constructing an Online Foundational Course for Capacity Building using Theorists as a Focus.

*American Evaluation Association Annual Conference*

  Washington, DC

2017

<b>Roy, A.R.</b> & Curtis, R.P.

### Three Stages Down! Exploring the Criteria for the Next Generation of Evaluation Theorists through Social Network Analysis.

*Hawaii-Pacific Evaluation Association Annual Conference*

  Kane’ohe, HI

2017

<b>Roy, A.R.</b> & Hobson, K.A.

### Content in the Background: Using Evaluation Theorists as the Principal Motivator for Foundational Evaluation Courses.

*Hawaii-Pacific Evaluation Association Annual Conference*

  Kane’ohe, HI

2017

<b>Roy, A.R.</b> & Curtis, R.P.

### Survey Says! Students Getting Tired of Surveys.

*National Academic Advising Association Annual Conference*

  Las Vegas, NV

2015

<b>Roy, A.R.</b> & Goetz, H.L.

### Influences of Hierarchical Linear Modeling in Evaluation.

*Aotearoa New Zealand Evaluation Association Annual Conference*

  Auckland, NZ

2013

<b>Roy, A.R.</b> & Goetz, H.L.

### Survey sample methods: Evaluators’ toolbox refreshment.

*American Evaluation Association Annual Conference*

  Minneapolis, MN

2012

<b>Roy, A.R.</b> & Hobson, K.A.

## Teaching Experience in Evaluation and Methodology (2016 - )

### Data Visualization

West Virginia University

  Morgantown, WV

2020 - 2018

2020, 2018

### Educational Psychology

West Virginia University

  Morgantown, WV

2017

2017

### Educational Research

West Virginia University

  Morgantown, WV

2016

### Introduction to Research

West Virginia University

  Morgantown, WV

2022 - 2016

2022, 2018, 2017, 2016

### Measurement/Evaluation in Educational Psychology

West Virginia University

  Morgantown, WV

2020 - 2018

2022, 2020, 2018

### Mixing Research Methodologies

West Virginia University

  Morgantown, WV

2019 - 2017

2022, 2019, 2018, 2017

### Program Evaluation

West Virginia University

  Morgantown, WV

2022 - 2017

2022, 2021, 2020, 2019, 2018, 2017

### Social Network Analysis

West Virginia University

  Morgantown, WV

2021 - 2017

2021, 2017

### Statistical Methods 1

West Virginia University

  Morgantown, WV

2021 - 2017

2021, 2020, 2019, 2018, 2017

### Survey Design

West Virginia University

  Morgantown, WV

2020 - 2022

2022, 2020

## Teaching Experience in Mathematics (2005 - 2015)

### Business Calculus

Central Michigan University

  Mount Pleasant, MI

2008

### College Algebra

Central Michigan University

  Mount Pleasant, MI

2009

### Discrete Mathematics

Pittsburgh State University

  Pittsburgh, KS

2012

### Elementary Statistics

Pittsburgh State University

  Pittsburgh, KS

2014

### Foundations of Statistics

Pittsburgh State University

  Pittsburgh, KS

2010 - 2009

2009, 2010

### Intermediate Algebra

Central Michigan University

  Mount Pleasant, MI

2008 - 2007

2007, 2008

### Integral Calculus

Michigan Technological University

  Houghton, MI

2007

### Linear Algebra

University of Kansas

  Lawrence, KS

2015 - 2014

2014, 2015

### Mathematical Thinking Grades 6-12

Western Michigan University

  Kalamazoo, MI

2013

### Mathematics Curriculum Grades 6-12

Western Michigan University

  Kalamazoo, MI

2014 - 2013

2013, 2014

### Multivariable Calculus

Michigan Technological University

  Houghton, MI

2005

### Single Variable Calculus

Michigan Technological University

  Houghton, MI

2007 - 2006

2006, 2007

## Service

### Associate Editor

[*Journal of MultiDisciplinary Evaluation*](https://journals.sfu.ca/jmde/index.php/jmde_1/about/editorialTeam)

N/A

2022 - 2013

## Memberships

### American Evaluation Association

N/A

N/A

2022 - 2012

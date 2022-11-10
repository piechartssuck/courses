---
title: Qualitative Softwares
menu:
  resources:
    parent: References
toc: true
output:
  rmarkdown::html_document:
    toc: true
type: docs
weight: 6
---

{{% r-walkthrough-header %}}

<style type="text/css">
.article-container {
  max-width: 960px;
}

iframe {
  width: 1px;
  min-width: 100%;
  border:0;
}

#TableOfContents, .docs-toc-title {
  border-left: 1px solid $sta-primary;
}
</style>

## QDA softwares

This is an incomplete list[^1] of qualitative data analysis software packages and platforms. If you know of any that should be added, please let me know.

### Open Source

-   [AQUAD (Analysis of Qualitative Data)](https://www.aquad.de) A Windows only platform for audio, video, and live observation coding. The software is in active development, macOS and Linux versions are forthcoming, and online support materials/example are available.

-   [BORIS (Behavioral Observation Research Interactive Software)](http://www.boris.unito.it/) An event logging platform for audio, video, and live observation coding. The software is in active development and online support materials/example are available.

-   [CAT (Coding Analysis Toolkit)](http://cat.texifter.com/) A free, web based open source service that can be used with any browser. The platform was last updated in 2020 and is no longer supported.

-   [CATMA (Computer Assisted Text Markup and Analysis)](https://catma.de/) A free, web based open source service for text annotation, analysis and visualization. The software is in active development and online support materials/example are available.

-   [GATE (General Architecture for Text Engineering)](https://gate.ac.uk/) While not traditionally used for qualitative research, this contains a suite of tools used for all sorts of natural language processing tasks which can be used to code text and categorize tags. The software is in active development and online support materials/example are available.

-   [qcoder](https://github.com/ropenscilabs/qcoder) A lightweight package for <svg aria-hidden="true" role="img" viewBox="0 0 581 512" style="height:1em;width:1.13em;vertical-align:-0.125em;margin-left:auto;margin-right:auto;font-size:inherit;fill:steelblue;overflow:visible;position:relative;"><path d="M581 226.6C581 119.1 450.9 32 290.5 32S0 119.1 0 226.6C0 322.4 103.3 402 239.4 418.1V480h99.1v-61.5c24.3-2.7 47.6-7.4 69.4-13.9L448 480h112l-67.4-113.7c54.5-35.4 88.4-84.9 88.4-139.7zm-466.8 14.5c0-73.5 98.9-133 220.8-133s211.9 40.7 211.9 133c0 50.1-26.5 85-70.3 106.4-2.4-1.6-4.7-2.9-6.4-3.7-10.2-5.2-27.8-10.5-27.8-10.5s86.6-6.4 86.6-92.7-90.6-87.9-90.6-87.9h-199V361c-74.1-21.5-125.2-67.1-125.2-119.9zm225.1 38.3v-55.6c57.8 0 87.8-6.8 87.8 27.3 0 36.5-38.2 28.3-87.8 28.3zm-.9 72.5H365c10.8 0 18.9 11.7 24 19.2-16.1 1.9-33 2.8-50.6 2.9v-22.1z"/></svg> that that is still in active development, but online support materials/examples can be difficult to locate.

-   [QualCoder](https://github.com/ccbogel/QualCoder) A multiplatform software that can be used to code text, photos, audio, and video. Additionally spreadsheet use is supported. Functionally, it picks up where RQDA (please see next entry for context) left off and mimics popular proprietary software allowing for advanced case management, data management and analytical tools. While a desktop software, installation instructions may be somewhat overwhelming depending on a person’s operating system and experience with the command line.

-   [RQDA](http://rqda.r-forge.r-project.org/) A dense package for <svg aria-hidden="true" role="img" viewBox="0 0 581 512" style="height:1em;width:1.13em;vertical-align:-0.125em;margin-left:auto;margin-right:auto;font-size:inherit;fill:steelblue;overflow:visible;position:relative;"><path d="M581 226.6C581 119.1 450.9 32 290.5 32S0 119.1 0 226.6C0 322.4 103.3 402 239.4 418.1V480h99.1v-61.5c24.3-2.7 47.6-7.4 69.4-13.9L448 480h112l-67.4-113.7c54.5-35.4 88.4-84.9 88.4-139.7zm-466.8 14.5c0-73.5 98.9-133 220.8-133s211.9 40.7 211.9 133c0 50.1-26.5 85-70.3 106.4-2.4-1.6-4.7-2.9-6.4-3.7-10.2-5.2-27.8-10.5-27.8-10.5s86.6-6.4 86.6-92.7-90.6-87.9-90.6-87.9h-199V361c-74.1-21.5-125.2-67.1-125.2-119.9zm225.1 38.3v-55.6c57.8 0 87.8-6.8 87.8 27.3 0 36.5-38.2 28.3-87.8 28.3zm-.9 72.5H365c10.8 0 18.9 11.7 24 19.2-16.1 1.9-33 2.8-50.6 2.9v-22.1z"/></svg>that is free, open source, and to some degree mimics Nvivo (v.12), though bugs in the program make it challenging to use and the initial setup can be quite difficult. The platform was last updated in 2012 and is no longer supported, though it appears to be fairly simple for Windows users.

-   [Taguette](https://www.taguette.org/) A lightweight open-source option that is in development. The platform offers text coding options and basic categorizations of tags. As of this writing the use of photos, audio, video and spreadsheet are unsupported.

-   [TAMS Text Analysis Markup System) Analyzer](https://tamsys.sourceforge.io/) A macOS only program used to identify themes in open bodies of text texts. The software is in active development and online support materials/example are available.

-   [Weft QDA](http://www.pressure.to/qda/) A Windows only program with bugs in the program can result in the loss of data. The platform was last updated in 2014 and is no longer supported. *Recommend that you do not use this platform*

### Proprietary

To date, researchers who conduct QDA largely rely upon proprietary software such as those listed below. Free and open source options are limited, not easy to integrate with R and for the descriptions):

-   [Annotations](http://www.annotationsapp.com/) A free macOS only app that allows you to highlight, keyword and create notes for text documents. An inexpensive way to do basic qualitative data analysis. The platform was last updated in 2014.

-   [ATLAS.ti](http://atlasti.com/) Desktop based software for macOS and Windows, but is also available on mobile devices for android and iOS. The platform offers training and support. The free version of the platform is limited to 5 days but [student pricing](https://atlasti.com/student-licenses) is available.

-   [Dedoose](http://www.dedoose.com/) Web based software, usable with any browser. All data stored in the web in lieu of your device. Includes text, photos, audio, video and spreadsheet support information. The free version of the platform is limited to 30 days but [student pricing](https://www.dedoose.com/home/pricing) is available.

-   [HyperResearch – Researchware](http://www.researchware.com/products/hyperresearch.html) Desktop based software that works on both macOS and Windows. The free version of the platform is fairly limited in scope but [student pricing](http://www.researchware.com/sales/pricing/student-pricing.html) is available.

-   [MAXQDA](http://www.maxqda.com/) Desktop based software that works for both macOS and Windows. Training and several tiers of licenses available. The platform offers training and support. The free version of the platform is limited to 14 days but [student pricing](https://www.maxqda.com/pricing) is available.

-   [NVivo – QSR International](http://www.qsrinternational.com/product) Desktop based software with both Windows and macOS support. Functionality includes video and images as data and auto-coding processes. Tech support and training is available and includes a relatively large user base. The platform offers training and support. The free version of the platform is limited to 14 days, but [student pricing](https://www.qsrinternational.com/nvivo-qualitative-data-analysis-software/buy-now) is available.

-   [QDA Miner – Provalis Research](https://provalisresearch.com/products/qualitative-data-analysis-software/) A Windows application to analyze qualitative text, can be used with some visuals as well. The platform comes in a “lite” version which is free, but [academic pricing](https://provalisresearch.com/order/#/builder) is available.

[^1]: Note: Some information is modified from [`qcoder` Motivation](https://ropenscilabs.github.io/qcoder/articles/articles/motivation.html)</i>

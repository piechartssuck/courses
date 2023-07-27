---
title: "Evaluations"
weight: 7
output:
  html_document
---

<script>
(function() {
document.addEventListener("DOMContentLoaded", function() {
  var options = document.querySelectorAll(".option");
  
  options.forEach(function(option) {
    option.addEventListener("click", function() {
      options.forEach(function(opt) {
        opt.classList.remove("active");
      });
      this.classList.add("active");
    });
  });
});
})();
</script>

<style>
table, 
tbody, 
th, 
td, 
tr, 
.markdown tbody tr:nth-child(2n+1) td, 
.markdown tbody tr:nth-child(2n+1) th,
.markdown tbody tr:nth-child(2n) td, 
.markdown tbody tr:nth-child(2n) th{
  border: none;
  background-color: #1e1e1e;
  color: #ffffff;
  vertical-align: center;
}

.center {
  margin-left: auto;
  margin-right: auto;
}

.holder {
    width: 100%;
    display: flex;
    overflow: hidden;
    align-items: center;
}

.flexcards {
  display: flex;
  flex-direction: row;
  justify-content: center;
  align-items: center;
  overflow: hidden;
  height: 45vh;
  max-width: 100%;
  font-family: "Roboto Condensed", sans-serif;
  transition: 0.25s;
}

.flexcards .credit {
  position: absolute;
  bottom: 20px;
  left: 20px;
  color: inherit;
}

.flexcards .options {
  display: flex;
  flex-direction: row;
  align-items: stretch;
  overflow: hidden;
  min-width: 600px;
  max-width: 100%;
  width: calc(100% - 100px);
  height: 400px;
}

@media screen and (max-width: 718px) {
  .flexcards .options {
    min-width: 520px;
  }
  .flexcards .options .option:nth-child(5) {
    display: none;
  }
}

@media screen and (max-width: 638px) {
  .flexcards .options {
    min-width: 440px;
  }
  .flexcards .options .option:nth-child(4) {
    display: none;
  }
}

@media screen and (max-width: 558px) {
  .flexcards .options {
    min-width: 360px;
  }
  .flexcards .options .option:nth-child(3) {
    display: none;
  }
}

@media screen and (max-width: 478px) {
  .flexcards .options {
    min-width: 280px;
  }
  .flexcards .options .option:nth-child(2) {
    display: none;
  }
}

.flexcards .options .option {
  position: relative;
  overflow: hidden;
  min-width: 60px;
  margin: 10px;
  background: var(--optionBackground, var(--defaultBackground, #1e1e1e));
  background-size: auto 120%;
  background-position: center;
  cursor: pointer;
  transition: 0.5s cubic-bezier(0.05, 0.61, 0.41, 0.95);
}

.flexcards .options .option:nth-child(1) {
  --defaultBackground:#ff5349;
}

.flexcards .options .option:nth-child(2) {
  --defaultBackground:#80A9D7;
}

.flexcards .options .option:nth-child(3) {
  --defaultBackground:#659f74;
}

.flexcards .options .option:nth-child(4) {
  --defaultBackground:#5f8aee;
}

.flexcards .options .option:nth-child(5) {
  --defaultBackground:#CCCCFF;
}

.flexcards .options .option:nth-child(6) {
  --defaultBackground:#97D3CC;
}

.flexcards .options .option.active {
  flex-grow: 10000;
  transform: scale(1);
  max-width: 600px;
  margin: 0px;
  border-radius: 40px;
  border: 3px solid #333333;
  border-style: rounded;
  background-size: auto 100%;
  /*&:active {
     transform:scale(0.9);
  }*/
}

.flexcards .options .option.active .shadow {
  box-shadow: inset 0 -120px 120px -120px black, inset 0 -120px 120px -100px #1e1e1e;
  opacity: 0.5;
}

.flexcards .options .option.active .label {
  bottom: 20px;
  left: 20px;
}

.flexcards .options .option.active .label .info > div {
  left: 0px;
  opacity: 1;
}

.flexcards .options .option:not(.active) {
  flex-grow: 1;
  border-radius: 30px;
}

.flexcards .options .option:not(.active) .shadow {
  bottom: -40px;
  box-shadow: inset 0 -120px 0px -120px black, inset 0 -120px 0px -100px #1e1e1e;
}

.flexcards .options .option:not(.active) .label {
  bottom: 10px;
  left: 10px;
}

.flexcards .options .option:not(.active) .label .info > div {
  left: 20px;
  opacity: 0;
}

.flexcards .options .option .shadow {
  position: absolute;
  bottom: 0px;
  left: 0px;
  right: 0px;
  height: px;
  transition: 0.5s cubic-bezier(0.05, 0.61, 0.41, 0.95);
}

.flexcards .options .option .label {
  display: flex;
  position: absolute;
  right: 0px;
  height: 75px;
  transition: 0.5s cubic-bezier(0.05, 0.61, 0.41, 0.95);
  gap: 0px;
}

.flexcards .options .option .label .icon {
  display: flex;
  flex-direction: row;
  justify-content: center;
  align-items: center;
  min-width: 40px;
  max-width: 40px;
  height: 75px;
  border-radius: 100%;
  background-color: #1e1e1e;
  color: var(--defaultBackground);
}

.flexcards .options .option .label .icon > div {
  position: relative;
  transition: 0.5s cubic-bezier(0.05, 0.61, 0.41, 0.95), opacity 0.1s ease-out;
}

.flexcards .options .option .label .info {
  display: flex;
  flex-direction: column;
  justify-content: center;
  margin-left: 5px;
  color: white;
  white-space: pre;
}

.flexcards .options .option .label .info > div {
  position: relative;
  transition: 0.5s cubic-bezier(0.05, 0.61, 0.41, 0.95), opacity 0.5s ease-out;
}

.flexcards .options .option .label .info .main {
  font-weight: bold;
  font-size: 0.9rem;
}

.flexcards .options .option .label .info .sub {
  transition-delay: 0.1s;
}

.centerflex {
 display: flex;
  justify-content: center;
}
</style>



<div class="flexcards">
<div class="centerflex">
<div class="options">
   <div class="option active" style="--optionBackground:url(/img/logos/wvhealthystart-dark.png);">
      <div class="shadow"></div>
      <div class="label">
         <div class="icon">
            <i class="fas fa-briefcase-medical"></i>
         </div>
         <div class="info">
            <div class="main">WV Healthy Start</div>
            <div class="sub">2023 - Current</div>
         </div>
      </div>
   </div>
   <div class="option" style="--optionBackground:url(/img/logos/ctebc-dark.png);">
      <div class="shadow"></div>
      <div class="label">
         <div class="icon">
            <i class="fas fa-laptop-code"></i>
         </div>
         <div class="info">
            <div class="main">Computational<br>Thinking</div>
            <div class="sub">2022 - Current</div>
         </div>
      </div>
   </div>
   <div class="option" style="--optionBackground:url(/img/logos/wvctsi-logo-dark.png);">
      <div class="shadow"></div>
      <div class="label">
         <div class="icon">
            <i class="fas fa-user-md"></i>
         </div>
         <div class="info">
            <div class="main">WVCTSI</div>
            <div class="sub">2017 - 2022</div>
         </div>
      </div>
   </div>
   <div class="option" style="--optionBackground:url(/img/logos/P4E-logo-dark.png);">
      <div class="shadow"></div>
      <div class="label">
         <div class="icon">
            <i class="fas fa-university"></i>
         </div>
         <div class="info">
            <div class="main">Inclusive Identities</div>
            <div class="sub">2017 - 2018</div>
         </div>
      </div>
   </div>
   <div class="option" style="--optionBackground:url(/img/logos/circos-dark.png);">
      <div class="shadow"></div>
      <div class="label">
         <div class="icon">
            <i class="fas fa-people-arrows"></i>
         </div>
         <div class="info">
            <div class="main">Cross-Disciplinary<br>Engineers</div>
            <div class="sub">2020 - 2022</div>
         </div>
      </div>
   </div>
    <div class="option" style="--optionBackground:url(/img/logos/GAUSSI-dark.png);">
      <div class="shadow"></div>
      <div class="label">
         <div class="icon">
            <i class="fas fa-dna"></i>
         </div>
         <div class="info">
            <div class="main">GAUSSI</div>
            <div class="sub">2017 - 2020</div>
         </div>
      </div>
   </div>
</div>
</div>
</div>

<!-- adapted from https://codepen.io/z-/pen/OBPJKK -->

---
title: "Courses"
weight: 5
output:
  html_document
---

<style>
.slider{width: 100%}
.slider input{display: none;}
.testimonials{
	display: flex;
	align-items: center;
	justify-content: center;
	position: relative;
	min-height: 400px;
	perspective: 1000px;
	overflow: hidden;
}
.testimonials .item{
	width: 350px;
	padding: 30px;
	border-radius: 5px;
	background-color: #1e1e1e;
	position: absolute;
	border: 3px solid #333333;
	top: 0;
	box-sizing: border-box;
	text-align: center;
	transition: transform 0.4s;
	box-shadow: 0 0 10px rgba(0,0,0,0.3);
	user-select: none;
	cursor: pointer;
}
.testimonials .item h1{font-size: 114px; color: white;}
.dots{display: flex; justify-content: center;align-items: center;}
.dots label{
	height: 5px;
	width: 5px;
	border-radius: 50%;
	cursor: pointer;
	background-color: #413B52;
	margin: 7px;
	transition-duration: 0.2s;
}
#t-1:checked ~ .dots label[for="t-1"],
#t-2:checked ~ .dots label[for="t-2"],
#t-3:checked ~ .dots label[for="t-3"],
#t-4:checked ~ .dots label[for="t-4"],
#t-5:checked ~ .dots label[for="t-5"],
#t-6:checked ~ .dots label[for="t-6"],
#t-7:checked ~ .dots label[for="t-7"],
#t-8:checked ~ .dots label[for="t-8"]{
	transform: scale(2);
	background-color: #fff;
	box-shadow: 0px 0px 0px 3px #dddddd24;
}

#t-1:checked ~ .dots label[for="t-2"],
#t-2:checked ~ .dots label[for="t-1"],
#t-2:checked ~ .dots label[for="t-3"],
#t-3:checked ~ .dots label[for="t-2"],
#t-3:checked ~ .dots label[for="t-4"],
#t-4:checked ~ .dots label[for="t-3"],
#t-4:checked ~ .dots label[for="t-5"],
#t-5:checked ~ .dots label[for="t-4"],
#t-5:checked ~ .dots label[for="t-6"],
#t-6:checked ~ .dots label[for="t-5"],
#t-6:checked ~ .dots label[for="t-7"],
#t-7:checked ~ .dots label[for="t-6"],
#t-7:checked ~ .dots label[for="t-8"],
#t-8:checked ~ .dots label[for="t-1"]{
	transform: scale(1.5);
}

#t-1:checked ~ .testimonials label[for="t-3"],
#t-2:checked ~ .testimonials label[for="t-4"],
#t-3:checked ~ .testimonials label[for="t-5"],
#t-4:checked ~ .testimonials label[for="t-6"],
#t-5:checked ~ .testimonials label[for="t-7"],
#t-6:checked ~ .testimonials label[for="t-8"],
#t-7:checked ~ .testimonials label[for="t-1"],
#t-8:checked ~ .testimonials label[for="t-2"]{
	transform: translate3d(600px, 0, -180px) rotateY(-25deg);
	z-index: 2;
}

#t-1:checked ~ .testimonials label[for="t-2"],
#t-2:checked ~ .testimonials label[for="t-3"],
#t-3:checked ~ .testimonials label[for="t-4"],
#t-4:checked ~ .testimonials label[for="t-5"],
#t-5:checked ~ .testimonials label[for="t-6"],
#t-6:checked ~ .testimonials label[for="t-7"],
#t-7:checked ~ .testimonials label[for="t-8"],
#t-8:checked ~ .testimonials label[for="t-1"]{
	transform: translate3d(300px, 0, -90px) rotateY(-15deg);
	z-index: 3;
}

#t-2:checked ~ .testimonials label[for="t-1"],
#t-3:checked ~ .testimonials label[for="t-2"],
#t-4:checked ~ .testimonials label[for="t-3"],
#t-5:checked ~ .testimonials label[for="t-4"],
#t-6:checked ~ .testimonials label[for="t-5"],
#t-7:checked ~ .testimonials label[for="t-6"],
#t-8:checked ~ .testimonials label[for="t-7"],
#t-1:checked ~ .testimonials label[for="t-8"]{
	transform: translate3d(-300px, 0, -90px) rotateY(15deg);
	z-index: 3;
}

#t-3:checked ~ .testimonials label[for="t-1"],
#t-4:checked ~ .testimonials label[for="t-2"],
#t-5:checked ~ .testimonials label[for="t-3"],
#t-6:checked ~ .testimonials label[for="t-4"],
#t-7:checked ~ .testimonials label[for="t-5"],
#t-8:checked ~ .testimonials label[for="t-6"],
#t-1:checked ~ .testimonials label[for="t-7"],
#t-2:checked ~ .testimonials label[for="t-8"]{
	transform: translate3d(-600px, 0, -180px) rotateY(25deg);

}

#t-1:checked ~ .testimonials label[for="t-1"],
#t-2:checked ~ .testimonials label[for="t-2"],
#t-3:checked ~ .testimonials label[for="t-3"],
#t-4:checked ~ .testimonials label[for="t-4"],
#t-5:checked ~ .testimonials label[for="t-5"],
#t-6:checked ~ .testimonials label[for="t-6"],
#t-7:checked ~ .testimonials label[for="t-7"],
#t-8:checked ~ .testimonials label[for="t-7"],
#t-8:checked ~ .testimonials label[for="t-8"]{

	z-index: 4;
}
</style>

<div class="slider">
	<input type="radio" name="testimonial" id="t-1">
	<input type="radio" name="testimonial" id="t-2">
	<input type="radio" name="testimonial" id="t-3">
	<input type="radio" name="testimonial" id="t-4" checked >
	<input type="radio" name="testimonial" id="t-5">
	<input type="radio" name="testimonial" id="t-6">
	<input type="radio" name="testimonial" id="t-7">
	<input type="radio" name="testimonial" id="t-8">
	<div class="testimonials">
		<label class="item" for="t-1">
			<a href='https://edp611.asocialdatascientist.com' target='_blank'><img src='/img/hex/edp611.png' alt='RM hex' width='250'></a>
		</label>
		<label class="item" for="t-2">
			<a href='https://edp612.asocialdatascientist.com' target='_blank'><img src='/img/hex/edp612.png' alt='PE hex' width='250'></a>
		</label>
		<label class="item" for="t-3">
			<a href='https://edp613.asocialdatascientist.com' target='_blank'><img src='/img/hex/edp613.png' alt='RM hex' width='250'></a>
		</label>
		<label class="item" for="t-4">
			<a href='https://edp617.asocialdatascientist.com' target='_blank'><img src='/img/hex/edp617.png' alt='PE hex' width='250'></a>
		</label>
		<label class="item" for="t-5">
<a href='https://edp618.asocialdatascientist.com' target='_blank'><img src='/img/hex/edp618.png' alt='RM hex' width='250'></a>
		</label>
		<label class="item" for="t-6">
<a href='https://edp619.asocialdatascientist.com' target='_blank'><img src='/img/hex/edp619.png' alt='PE hex' width='250'></a>
		</label>
		<label class="item" for="t-7">
<a href='https://edp693e.asocialdatascientist.com' target='_blank'><img src='/img/hex/edp693e.png' alt='RM hex' width='250'></a>
		</label>
		<label class="item" for="t-8">
<a href='https://edp693g.asocialdatascientist.com' target='_blank'><img src='/img/hex/edp693g.png' alt='PE hex' width='250'></a>
		</label>
	</div>
	<br/>
	<div class="dots">
		<label for="t-1"></label>
		<label for="t-2"></label>
		<label for="t-3"></label>
		<label for="t-4"></label>
		<label for="t-5"></label>
		<label for="t-6"></label>
		<label for="t-7"></label>
		<label for="t-8"></label>
	</div>
</div>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css'
	rel='stylesheet'>
<style>
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
}

body {
	background: #eaeaea;
}

.header {
	position: fixed;
	top: 0;
	left: 0;
	width: 100%;
	padding: 30px 8%;
	background: transparent;
	display: flex;
	justify-content: space-between;
	align-items: center;
	z-index: 100;
}

.logo {
	font-size: 25px;
	color: #222;
	text-decoration: none;
	font-weight: 500;
}

.logo:hover {
	color: red;
}

.navbar a {
	font-size: 20px;
	color: #222;
	text-decoration: none;
	margin: 0 20px;
	display: inline-block;
	transition: .3s;
}

.navbar a:hover, .navbar a.active {
	color: #ff0000;
}

.social-media {
	width: 202px;
	height: 32px;
	justify-content: space-between;
	display: flex;
}

.social-media a {
	width: 40px;
	height: 40px;
	display: inline-flex;
	background: transparent;
	border: 2px solid transparent;
	text-decoration: none;
	justify-content: center;
	align-items: center;
}

.social-media a i {
	font-size: 25px;
	color: #000000;
}

.home {
	justify-content: space-between;
	width: 100%;
	height: 100vh;
	display: flex;
	align-items: center;
	padding: 50px 8% 0;
	overflow: hidden;
	position: relative;
}

.home-content {
	max-width: 630px;
}

.home-content h1 {
	font-size: 50px;
	line-height: 1.2;
}

.home-content h3 {
	font-size: 40px;
	color: #ff0000;
	margin-top: 1.5rem;
}

.home-content p {
	font-size: 18px;
	margin-top: 2rem;
}

.btn {
	margin-top: 3rem;
	font-size: 20px;
	color: #eaeaea;
	letter-spacing: 1px;
	display: inline-block;
	border-radius: 6px;
	background: #4d5256;
	padding: 10px 28px;
	/* box-shadow: 0 0 10px rgba(0, 0, 0, .2); */
	text-decoration: none;
	font-weight: 500;
	transition: .5s;
}

.btn:hover {
	background: transparent;
	color: #cc0505;
	border: 1px solid #000000;
}

.btn1 {
	margin-top: 3rem;
	font-size: 20px;
	color: #eaeaea;
	letter-spacing: 1px;
	display: inline-block;
	border-radius: 6px;
	background: #f1b847;
	padding: 10px 28px;
	/* box-shadow: 0 0 10px rgba(0, 0, 0, .2); */
	text-decoration: none;
	font-weight: 500;
	transition: .5s;
}

.btn1:hover {
	background: transparent;
	color: #cc0505;
	border: 1px solid #000000;
}

.home-img {
	position: relative;
	width: 450px;
	height: 450px;
	transform: rotate(45deg);
	right: -7%;
}

.home-img .rhombus {
	position: absolute;
	width: 100%;
	height: 100%;
	background: #eaeaea;
	border: 25px solid #ff0000af;
	box-shadow: -15px 15px 15px rgba(0, 0, 0, .2);
}

.home-img .rhombus img {
	position: absolute;
	width: 757px;
	left: -260px;
	top: 20px;
	transform: rotate(-45deg);
}
</style>
</head>

<body>
	<header class="header">
		<a href="Home1.jsp" class="logo">SpeedFleet</a>
		<nav class="navbar">
			<a href="#" class="active">Home</a> <a href="AboutUs.jsp">About
				us</a> <a href="#">Contact</a> <a href="#">Review</a>
		</nav>

		<div class="social-media">
			<a href="https://www.instagram.com/kinny_smith3" style="--i: 1;"><i
				class='bx bxl-instagram'></i></a> <a
				href="https://www.facebook.com/smith.kinny19" style="--i: 2;"><i
				class='bx bxl-facebook'></i></a> <a
				href="https://www.linkedin.com/in/smith-kinny-003361241"
				style="--i: 3;"><i class='bx bxl-linkedin-square'></i></a> <a
				href="https://github.com/smith2403" style="--i: 4;"><i
				class='bx bxl-github'></i></a>
		</div>
	</header>

	<section class="home">
		<div class="home-content">
			<h1>Car Dealing Service in India</h1>
			<h3>Best Service Provider!</h3>
			<p>At SpeedFleet, we understand that your vehicle is more than
				just a mode of transportation; it's a reflection of your style,
				personality, and a valuable investment. With a passion for
				automobiles and a commitment to excellence, we offer a comprehensive
				range of top-notch car services to keep your vehicle running
				smoothly and looking its best.</p>
			<a href="register.jsp" class="btn">Register</a> <a href="login.jsp"
				class="btn1">Sign In</a>
		</div>

		<div class="home-img">
			<div class="rhombus">
				<img src="images/mercedes.png" alt="Error">
			</div>
		</div>
	</section>
</body>
</html>
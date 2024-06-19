<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Car Wash</title>
<style>
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
}

body {
	background-color: white;
}

.logo a {
	font-size: 25px;
	color: black;
	text-decoration: none;
	font-weight: 500;
	margin-left: 3rem;
	margin-top: 2rem;
}

.washsubMaindiv {
	width: 60%;
	margin: auto;
	margin-bottom: 5rem;
}

.washheading {
	margin-top: 1rem;
	font-size: 3rem;
	color: rgb(244, 44, 44);
	margin-bottom: 3rem;
}

.washSubheading {
	font-size: 18px;
	color: black;
	margin: auto auto .5rem;
}

.washMaindiv {
	align-items: center;
	border-radius: 5px;
	font-size: 20px;
	line-height: 25px;
	margin: auto auto 1rem;
}

.washHead {
	padding: 16px 16px 12px 18px;
	align-items: center;
	text-align: center;
	font-size: 1.5rem;
	font-weight: 600;
	margin: 1.5rem 0;
}

.washHead span {
	padding-left: 15px;
}

.washBody {
	border-top: 2px solid #76ce9b;
	width: 94%;
	margin: auto;
	border: 2px solid black;
	padding: 5px 15px;
	border-radius: 10px;
}

.washBodydiv {
	width: 100%;
	padding-top: 10px;
}

.washBodydiv, .wash2Bodydiv {
	flex-direction: row;
	justify-content: space-between;
	width: 55%;
	padding: 10px 0;
}

.wash2Bodydiv {
	width: 50%;
}

.washService {
	color: #7a7878;
}

.washService span {
	font-size: 1.2rem;
	color: black;
}

.washBottom {
	padding: 16px;
}

.button {
	background-color: #127e40;
	border: #127e40;
	width: 100%;
	height: 40px;
	color: #fff;
	display: flex;
	text-align: center;
	justify-content: center;
	align-items: center;
	font-size: 20px;
	box-shadow: 0 3px 4px rgba(0, 0, 0, .25);
	cursor: pointer;
	border-radius: 30px;
}

.button:hover {
	background-color: #004820;
}

a {
	text-decoration: none;
}
</style>
</head>

<body>
	<span class="logo"> <a href="Landing.html">SpeedFleet</a>
	</span>
	<div class="washsubMaindiv">
		<center class="washheading">Car Wash</center>
		<hr>

		<!-- 1st wash -->
		<div class="washMaindiv">
			<div class="washHead">
				<span>Daily Wash 999 per Month</span>
			</div>
		</div>
		<div class="washBody">
			<div class="washBodydiv">
				<div class="wash2Bodydiv">
					<div class="washService">
						<span>Exterior : </span>
					</div>
					<div class="washDetails">
						<span>6 days a week</span>
					</div>
				</div>
			</div>
			<div class="washBodydiv">
				<div class="wash2Bodydiv">
					<div class="washService">
						<span>Interior : </span>
					</div>
					<div class="washDetails">
						<span>Once a week</span>
					</div>
				</div>
			</div>
			<div class="washBodydiv">
				<div class="wash2Bodydiv">
					<div class="washService">
						<span>Tyre Polish : </span>
					</div>
					<div class="washDetails">
						<span>Once a week</span>
					</div>
				</div>
			</div>
			<div class="washBottom">
				<a class="button" href="CarWash.jsp"> <span>Choose
						Package</span>
				</a>
			</div>
		</div>

		<!-- 2nd wash -->
		<div class="washMaindiv">
			<div class="washHead">
				<span>Daily Wash 999 per Month</span>
			</div>
		</div>
		<div class="washBody">
			<div class="washBodydiv">
				<div class="wash2Bodydiv">
					<div class="washService">
						<span>Exterior : </span>
					</div>
					<div class="washDetails">
						<span>6 days a week</span>
					</div>
				</div>
			</div>
			<div class="washBodydiv">
				<div class="wash2Bodydiv">
					<div class="washService">
						<span>Interior : </span>
					</div>
					<div class="washDetails">
						<span>Once a week</span>
					</div>
				</div>
			</div>
			<div class="washBodydiv">
				<div class="wash2Bodydiv">
					<div class="washService">
						<span>Tyre Polish : </span>
					</div>
					<div class="washDetails">
						<span>Once a week</span>
					</div>
				</div>
			</div>
			<div class="washBottom">
				<a class="button" href="CarWash.jsp"> <span>Choose
						Package</span>
				</a>
			</div>
		</div>

		<!-- 3rd wash -->
		<div class="washMaindiv">
			<div class="washHead">
				<span>Daily Wash 999 per Month</span>
			</div>
		</div>
		<div class="washBody">
			<div class="washBodydiv">
				<div class="wash2Bodydiv">
					<div class="washService">
						<span>Exterior : </span>
					</div>
					<div class="washDetails">
						<span>6 days a week</span>
					</div>
				</div>
			</div>
			<div class="washBodydiv">
				<div class="wash2Bodydiv">
					<div class="washService">
						<span>Interior : </span>
					</div>
					<div class="washDetails">
						<span>Once a week</span>
					</div>
				</div>
			</div>
			<div class="washBodydiv">
				<div class="wash2Bodydiv">
					<div class="washService">
						<span>Tyre Polish : </span>
					</div>
					<div class="washDetails">
						<span>Once a week</span>
					</div>
				</div>
			</div>
			<div class="washBottom">
				<a class="button" href="CarWash.jsp"> <span>Choose
						Package</span>
				</a>
			</div>
		</div>
</body>

</html>
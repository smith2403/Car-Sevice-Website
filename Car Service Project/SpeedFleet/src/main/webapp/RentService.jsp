<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Car Rental</title>
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

.rentalSubMaindiv {
	width: 60%;
	margin: auto;
	margin-bottom: 5rem;
}

.rentalHeading {
	margin-top: 1rem;
	font-size: 3rem;
	color: rgb(244, 44, 44);
	margin-bottom: 3rem;
}

.rentalMaindiv {
	align-items: center;
	border-radius: 5px;
	font-size: 20px;
	line-height: 25px;
	margin: auto auto 1rem;
}

.rentalHead {
	padding: 16px 16px 12px 18px;
	align-items: center;
	text-align: center;
	font-size: 1.5rem;
	font-weight: 600;
	margin: 1.5rem 0;
}

.rentalHead span {
	padding-left: 15px;
}

.rentalBody {
	border-top: 2px solid #76ce9b;
	width: 94%;
	margin: auto;
	border: 2px solid black;
	padding: 5px 15px;
	border-radius: 10px;
}

.rentalBodydiv {
	width: 100%;
	padding-top: 10px;
}

.rentalBodydiv, .rental2Bodydiv {
	display: flex;
	flex-direction: row;
	justify-content: space-between;
	width: 55%;
	padding: 10px 0;
}

.rental2Bodydiv {
	width: 50%;
}

.rentalService {
	color: #7a7878;
}

.rentalService span {
	font-size: 1.2rem;
	color: black;
}

.rentalBottom {
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
	<span class="logo"> <a href="Home1.jsp">SpeedFleet</a>
	</span>
	<div class="rentalSubMaindiv">
		<center class="rentalHeading">Car Rental Packages</center>
		<hr>

		<!-- 1st rental package -->
		<div class="rentalMaindiv">
			<div class="rentalHead">
				<span>Standard Package</span>
			</div>
		</div>
		<div class="rentalBody">
			<div class="rentalBodydiv">
				<div class="rental2Bodydiv">
					<div class="rentalService">
						<span>Car Models : </span>
					</div>
					<div class="rentalDetails">
						<span>Compact, Sedan</span>
					</div>
				</div>
			</div>
			<div class="rentalBodydiv">
				<div class="rental2Bodydiv">
					<div class="rentalService">
						<span>Duration : </span>
					</div>
					<div class="rentalDetails">
						<span>7 days</span>
					</div>
				</div>
			</div>
			<div class="rentalBodydiv">
				<div class="rental2Bodydiv">
					<div class="rentalService">
						<span>Insurance : </span>
					</div>
					<div class="rentalDetails">
						<span>Included</span>
					</div>
				</div>
			</div>
			<div class="rentalBottom">
				<a class="button" href="CarRent.jsp"> <span>Rent Now</span>
				</a>
			</div>
		</div>

		<!-- 2nd rental package -->
		<div class="rentalMaindiv">
			<div class="rentalHead">
				<span>Luxury Package</span>
			</div>
		</div>
		<div class="rentalBody">
			<div class="rentalBodydiv">
				<div class="rental2Bodydiv">
					<div class="rentalService">
						<span>Car Models : </span>
					</div>
					<div class="rentalDetails">
						<span>SUV, Sports</span>
					</div>
				</div>
			</div>
			<div class="rentalBodydiv">
				<div class="rental2Bodydiv">
					<div class="rentalService">
						<span>Duration : </span>
					</div>
					<div class="rentalDetails">
						<span>10 days</span>
					</div>
				</div>
			</div>
			<div class="rentalBodydiv">
				<div class="rental2Bodydiv">
					<div class="rentalService">
						<span>Insurance : </span>
					</div>
					<div class="rentalDetails">
						<span>Included</span>
					</div>
				</div>
			</div>
			<div class="rentalBottom">
				<a class="button" href="CarRent.jsp"> <span>Rent Now</span>
				</a>
			</div>
		</div>

		<!-- 3rd rental package -->
		<div class="rentalMaindiv">
			<div class="rentalHead">
				<span>Economy Package</span>
			</div>
		</div>
		<div class="rentalBody">
			<div class="rentalBodydiv">
				<div class="rental2Bodydiv">
					<div class="rentalService">
						<span>Car Models : </span>
					</div>
					<div class="rentalDetails">
						<span>Hatchback, Economy</span>
					</div>
				</div>
			</div>
			<div class="rentalBodydiv">
				<div class="rental2Bodydiv">
					<div class="rentalService">
						<span>Duration : </span>
					</div>
					<div class="rentalDetails">
						<span>5 days</span>
					</div>
				</div>
			</div>
			<div class="rentalBodydiv">
				<div class="rental2Bodydiv">
					<div class="rentalService">
						<span>Insurance : </span>
					</div>
					<div class="rentalDetails">
						<span>Included</span>
					</div>
				</div>
			</div>
			<div class="rentalBottom">
				<a class="button" href="CarRent.jsp"> <span>Rent Now</span>
				</a>
			</div>
		</div>
	</div>
</body>

</html>
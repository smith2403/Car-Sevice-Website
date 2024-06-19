<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Repair Form</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css">
<link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css'
	rel='stylesheet'>
<style>
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
}

.hero {
	background-color: #ffffff;
	overflow: hidden;
}

.heading h1 {
	color: #ff6347;
	font-size: 55px;
	text-align: center;
	margin-top: 35px;
}

.container {
	display: flex;
	justify-content: center;
	align-items: center;
	width: 90%;
	margin: 50px auto;
}

.hero-content {
	flex: 1;
	width: 600px;
	margin: 0px 25px;
}

.hero-content h2 {
	font-size: 38px;
	margin-bottom: 20px;
	color: #333;
}

.hero-content p {
	font-size: 24px;
	line-height: 1.5s;
	margin-bottom: 40px;
	color: #666;
}

.hero-image {
	flex: 1;
	width: 600px;
	margin: auto;
}

img {
	width: 105%;
	height: auto;
	border-radius: 10px;
}

.wash-form button {
	margin: 1rem .1rem;
	display: inline-block;
	background-color: #ff4500;
	color: #fff;
	padding: 1px 10px;
	border-radius: 5px;
	font-size: 20px;
	border: none;
	cursor: pointer;
	transition: 0.3s ease;
}

.wash-form button:hover {
	background-color: #ff6347;
	transform: scale(1.1);
}

.footer-clean {
	padding: 50px 0;
	background-color: #e8e8e894;
	color: #4b4c4d;
}

.footer-clean h3 {
	margin-top: 0;
	margin-bottom: 12px;
	font-weight: bold;
	font-size: 25px;
	color: #ff4500;
}

.footer-clean ul {
	padding: 0;
	list-style: none;
	line-height: 1.6;
	font-size: 18px;
	margin-bottom: 0;
}

.footer-clean ul a {
	color: inherit;
	text-decoration: none;
	opacity: 0.8;
}

.footer-clean ul a:hover {
	opacity: 1;
}

.footer-clean .item.social {
	text-align: right;
}

.footer-clean .item.social>a {
	font-size: 24px;
	width: 40px;
	height: 40px;
	line-height: 40px;
	display: inline-block;
	text-align: center;
	border-radius: 50%;
	border: 1px solid #ccc;
	margin-left: 10px;
	margin-top: 22px;
	color: inherit;
	opacity: 0.75;
}

.footer-clean .item.social>a:hover {
	opacity: 0.9;
}

.footer-clean .copyright {
	margin-top: 14px;
	margin-bottom: 0;
	font-size: 16px;
	opacity: 0.6;
}

.wash-form label {
	display: block;
	margin-bottom: 5px;
	color: #333;
	font-weight: bold;
}

.wash-form input, select {
	width: 90%;
	padding: 10px;
	font-size: 16px;
	border-radius: 4px;
	border: 1px solid #dd3535;
}

@media ( max-width :991px) {
	.footer-clean .item.social>a {
		margin-top: 40px;
	}
}

@media screen and (max-width: 768px) {
	.heading h1 {
		font-size: 45px;
		margin-top: 30px;
	}
	.hero {
		margin: 0px;
	}
	.container {
		width: 100%;
		flex-direction: column;
		margin: 0px;
		padding: 0px 40px;
	}
	.hero-content {
		width: 100%;
		margin: 35px 0px;
	}
	.hero-content h2 {
		font-size: 22px;
	}
	.hero-content p {
		font-size: 18px;
		margin-bottom: 20px;
	}
	.wash-form button {
		font-size: 16px;
		padding: 8px 16px;
	}
	.hero-image {
		width: 100%;
	}
	.footer-clean .item.social {
		text-align: center;
	}
}
</style>
</head>

<body>
	<section class="hero">
		<div class="heading">
			<h1>Car Repair Details</h1>
		</div>
		<div class="container">

			<div class="hero-content">
				<form class="wash-form" action="CarRepair" method="POST">
					<label for="clutch">Clutches Replacement</label> <select
						id="clutch" name="clutch" required>
						<option value="null">None</option>
						<option value="ClutchSet">Clutch Set</option>
						<option value="ClutchBearing">Bearing</option>
						<option value="FlyWheel_Turning">Flywheel</option>
						<option value="Clutch_Overhaul">Overhaul</option>
					</select> <label for="battery">Battery Replacement</label> <select
						id="battery" name="battery" required>
						<option value="null">None</option>
						<option value="Amaron">Amaron(40 Amp Hour)</option>
						<option value="Exide">Exide(35 Amp Hour)</option>
						<option value="Livguard">Livguard(35 Amp Hour)</option>
					</select> <label for="tyres">Tyres Replacement</label> <select id="tyres"
						name="tyres" required>
						<option value="null">None</option>
						<option value="Apollo">Apollo Alnac 4GS</option>
						<option value="MRF">MRF ZVTV</option>
						<option value="JK">JK UX Royale</option>
						<option value="Bridgestone">Bridgestone B250</option>
					</select> <label for="paint">Painting</label> <select id="paint"
						name="paint" required>
						<option value="null">None</option>
						<option value="Alloy">Alloy paint</option>
						<option value="Front">Front Bumper Paint</option>
						<option value="Bonnet">Bonnet Paint</option>
						<option value="Rear">Rear Bumper Paint</option>
						<option value="Boot">Boot Paint</option>
					</select> <label for="lights">Lights & Mirror</label> <select id="lights"
						name="lights" required>
						<option value="null">None</option>
						<option value="FrontHeadlight">Front Headlight</option>
						<option value="RearTailLight">Rear TailLight</option>
						<option value="FogLight">Fog Light</option>
						<option value="SideMirror">Side Mirror Replacement</option>
					</select>

					<button class="button" type="submit">Submit</button>
					<button class="button" type="reset">Reset</button>
				</form>
			</div>
			<div class="hero-image">
				<img src="images/repairForm.jpg" alt="Error">
			</div>
		</div>
	</section>

	<div class="footer-clean">
		<footer>
			<div class="container">
				<div class="row justify-content-center">
					<div class="col-sm-4 col-md-3 item">
						<h3>Services</h3>
						<ul>
							<li><a href="#">Rent Car</a></li>
							<li><a href="#">Car Servicing</a></li>
							<li><a href="#">Wash</a></li>
						</ul>
					</div>
					<div class="col-sm-4 col-md-3 item">
						<h3>About</h3>
						<ul>
							<li><a href="#">Company</a></li>
							<li><a href="#">Team</a></li>
							<li><a href="#">Legacy</a></li>
						</ul>
					</div>
					<div class="col-sm-4 col-md-3 item">
						<h3>Careers</h3>
						<ul>
							<li><a href="#">Job openings</a></li>
							<li><a href="#">Employee success</a></li>
							<li><a href="#">Benefits</a></li>
						</ul>
					</div>
					<div class="col-lg-3 item social">
						<a href="https://www.instagram.com/kinny_smith3"><i
							class='bx bxl-instagram'></i></a> <a
							href="https://www.facebook.com/smith.kinny19"><i
							class='bx bxl-facebook'></i></a> <a
							href="https://www.linkedin.com/in/smith-kinny-003361241"><i
							class='bx bxl-linkedin-square'></i></a> <a
							href="https://github.com/smith2403"><i class='bx bxl-github'></i></a>
						<p class="copyright">SpeedFleet &copy; 2023. All Rights
							Reserved.</p>
					</div>
				</div>
			</div>
		</footer>
	</div>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/js/bootstrap.bundle.min.js"></script>
</body>

</html>
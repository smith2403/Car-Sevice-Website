<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Admin Dashboard</title>
<style>
body {
	font-family: Arial, sans-serif;
	margin: 0;
	padding: 0;
	background-color: #f4f4f4;
}

.admin-dashboard {
	padding: 20px;
}

.header {
	display: flex;
	justify-content: space-between;
	align-items: center;
	margin-bottom: 20px;
}

.header h1 {
	font-size: 24px;
}

.logout-button {
	text-decoration: none;
	background-color: #333;
	color: white;
	padding: 8px 12px;
	border-radius: 5px;
}

.cards {
	display: flex;
	flex-direction: column;
	gap: 20px;
}

.card {
	background-color: white;
	padding: 20px;
	border-radius: 5px;
	box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
	display: flex;
	flex-direction: column;
	align-items: center;
	text-align: center;
}

.card h2 {
	font-size: 20px;
	margin-bottom: 10px;
}

.card img {
	max-width: 100%;
	height: 10rem;
	margin-bottom: 10px;
}

.card p {
	color: #666;
}

.card a {
	text-decoration: none;
	color: black;
}
</style>
</head>

<body>
	<div class="admin-dashboard">
		<div class="header">
			<h1>Admin Dashboard</h1>
			<a href="Home2.jsp" class="logout-button">Logout</a>
		</div>
		<div class="cards">
			<div class="card">
				<a href="UserDetails.jsp">
					<h2>Users Registered</h2> <img src="images/users-admin.png"
					alt="Users Registered">
					<p>Manage and view registered users.</p>
				</a>
			</div>
			<div class="card">
				<a href="WashDetails.jsp">
					<h2>Car Wash Services Booked</h2> <img src="images/wash-admin.png"
					alt="Car Wash Services Booked">
					<p>Track and manage booked car wash services.</p>
				</a>
			</div>
			<div class="card">
				<a href="RentDetails.jsp">
					<h2>Cars Rented</h2> <img src="images/rent-admin.png"
					alt="Cars Rented">
					<p>Monitor rented cars and their details.</p>
				</a>
			</div>
			<div class="card">
				<a href="RepairDetails.jsp">
					<h2>Cars Repaired</h2> <img src="images/repair-admin.png"
					alt="Cars Repaired">
					<p>Manage car repair requests and status.</p>
				</a>
			</div>
		</div>
	</div>
</body>
</body>

</html>
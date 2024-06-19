<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>

<!DOCTYPE html>
<html>
<head>
<title>Car Wash Details</title>
<style>
body {
	font-family: Arial, sans-serif;
	background-color: #f5f5f5;
	margin: 0;
	padding: 0;
}

header {
	background-color: #354052;
	color: white;
	text-align: center;
	padding: 15px;
}

h1 {
	margin: 20px 0;
	color: #354052;
}

table {
	border-collapse: collapse;
	width: 100%;
	border: 1px solid #ddd;
	background-color: white;
}

th, td {
	padding: 10px;
	text-align: left;
}

th {
	background-color: #f2f2f2;
	color: #354052;
}

tr:nth-child(even) {
	background-color: #f2f2f2;
}

td form {
	display: inline;
}

.update-button, .delete-button {
	background-color: #354052;
	color: white;
	border: none;
	padding: 5px 10px;
	cursor: pointer;
	transition: background-color 0.3s ease;
}

.update-button:hover, .delete-button:hover {
	background-color: #5c6b7b;
}

input[type="text"] {
	padding: 5px;
	width: 100%;
	border: 1px solid #ccc;
}
</style>
</head>
<body>
	<header>
		<h1>Car Wash Details</h1>
	</header>

	<div style="padding: 20px;">
		<table>
			<tr>
				<th>ID</th>
				<th>Customer Name</th>
				<th>Vehicle Number</th>
				<th>Vehicle Model</th>
				<th>Wash Type</th>
				<th>Price</th>
				<th>Location</th>
				<th>Mobile Number</th>
				<th>Update</th>
				<th>Delete</th>
			</tr>
			<%
			try {
				Class.forName("com.mysql.cj.jdbc.Driver");
				Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/tycsproject", "root", "123456");
				Statement statement = connection.createStatement();
				ResultSet resultSet = statement.executeQuery("SELECT * FROM car_wash");

				while (resultSet.next()) {
					String id = resultSet.getString("id");
					String name = resultSet.getString("name");
					String vehicleNumber = resultSet.getString("vehicle_number");
					String vehicleModel = resultSet.getString("vehicle_model");
					String washType = resultSet.getString("wash_type");
					double price = resultSet.getDouble("price");
					String location = resultSet.getString("location");
					String mobileNumber = resultSet.getString("mobile_number");
			%>
			<tr>
				<td><%=id%></td>
				<td><%=name%></td>
				<td><%=vehicleNumber%></td>
				<td><%=vehicleModel%></td>
				<td><%=washType%></td>
				<td><%=price%></td>
				<td><%=location%></td>
				<td><%=mobileNumber%></td>
				<td>
					<form action="UpdWashServlet" method="post">
						<input type="hidden" name="id" value="<%=id%>"> <input
							type="text" name="name" value="<%=name%>"> <input type="text"
							name="vehicle_number" value="<%=vehicleNumber%>"> <input type="text" name="vehicle_model" value="<%=vehicleModel%>">
						<input type="text" name="wash_type" value="<%=washType%>">
						<input type="number" name="price" value="<%=price%>"> <input
							type="text" name="location" value="<%=location%>"> <input
							type="text" name="mobile_number" value="<%=mobileNumber%>">

						<button class="update-button" type="submit">Update</button>
					</form>
				</td>
				<td>
					<form action="DelWashServlet" method="post">
						<input type="hidden" name="name" value="<%=name%>">
						<button class="delete-button" type="submit">Delete</button>
					</form>
				</td>
			</tr>
			<%
			}
			resultSet.close();
			statement.close();
			connection.close();
			} catch (Exception e) {
			e.printStackTrace();
			}
			%>
		</table>
	</div>
</body>
</html>

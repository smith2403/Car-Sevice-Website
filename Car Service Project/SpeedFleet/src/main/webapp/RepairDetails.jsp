<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>

<!DOCTYPE html>
<html>
<head>
<title>Car Repair Details</title>
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
		<h1>Car Repair Details</h1>
	</header>

	<div style="padding: 20px;">
		<table>
			<tr>
				<th>ID</th>
				<th>Clutch Replacement</th>
				<th>Batteries</th>
				<th>Tyres</th>
				<th>Paints</th>
				<th>Lights</th>
				<th>Update</th>
				<th>Delete</th>
			</tr>
			<%
			try {
				Class.forName("com.mysql.cj.jdbc.Driver");
				Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/tycsproject", "root", "123456");
				Statement statement = connection.createStatement();
				ResultSet resultSet = statement.executeQuery("SELECT * FROM car_repair");

				while (resultSet.next()) {
					String id = resultSet.getString("id");
					String clutch = resultSet.getString("clutch");
					String battery = resultSet.getString("battery");
					String tyres = resultSet.getString("tyres");
					String paint = resultSet.getString("paint");
					String lights = resultSet.getString("lights");
			%>
			<tr>
				<td><%=id%></td>
				<td><%=clutch%></td>
				<td><%=battery%></td>
				<td><%=tyres%></td>
				<td><%=paint%></td>
				<td><%=lights%></td>
				<td>
					<form action="UpdRepairServlet" method="post">
						<input type="hidden" name="id" value="<%=id%>"> <input
							type="text" name="clutch" value="<%=clutch%>"> <input
							type="text" name="battery" value="<%=battery%>"> <input
							type="text" name="tyres" value="<%=tyres%>"> <input
							type="text" name="paint" value="<%=paint%>"> <input
							type="text" name="lights" value="<%=lights%>">

						<button class="update-button" type="submit">Update</button>
					</form>
				</td>
				<td>
					<form action="DelRepairServlet" method="post">
						<input type="hidden" name="clutch" value="<%=clutch%>">
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

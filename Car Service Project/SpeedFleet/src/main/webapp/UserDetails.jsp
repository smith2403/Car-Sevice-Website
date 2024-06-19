<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>

<!DOCTYPE html>
<html>
<head>
<title>Registered User Details</title>
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
		<h1>Registered User Details</h1>
	</header>

	<div style="padding: 20px;">
		<table>
			<tr>
				<th>ID</th>
				<th>Full Name</th>
				<th>Email ID</th>
				<th>UserName</th>
				<th>Password</th>
				<th>User Type</th>
				
				<th>Delete</th>
			</tr>
			<%
			int userCount = 0;
			try {
				Class.forName("com.mysql.cj.jdbc.Driver");
				Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/registered", "root", "123456");
				Statement statement = connection.createStatement();
				ResultSet resultSet = statement.executeQuery("SELECT * FROM users1");

				while (resultSet.next()) {
					String id = resultSet.getString("id");
					String fullName = resultSet.getString("fullName");
					String email = resultSet.getString("email");
					String username = resultSet.getString("username");
					String password = resultSet.getString("password");
					String usertype = resultSet.getString("usertype");
					userCount++;
			%>
			<tr>
				<td><%=id%></td>
				<td><%=fullName%></td>
				<td><%=email%></td>
				<td><%=username%></td>
				<td><%=password%></td>
				<td><%=usertype%></td>
				
				<td>
					<form action="DelUserServlet" method="post">
						<input type="hidden" name="fullName" value="<%=fullName%>">
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
		<p>Total Users Registered: <%= userCount %></p>
	</div>
</body>
</html>

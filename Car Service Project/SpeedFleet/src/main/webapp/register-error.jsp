<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Registration Error</title>
<style>
body {
	font-family: Arial, sans-serif;
	background-color: #f2f2f2;
	margin: 0;
	padding: 0;
}

.container {
	max-width: 400px;
	margin: 0 auto;
	padding: 20px;
	background-color: #fff;
	border-radius: 4px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
	text-align: center;
}

h1 {
	color: #f44336;
}

.message {
	margin-bottom: 20px;
	padding: 10px;
	font-size: 16px;
	border-radius: 4px;
	background-color: #FFCDD2;
	color: #D32F2F;
}

.button {
	display: inline-block;
	padding: 10px 20px;
	font-size: 16px;
	text-align: center;
	text-decoration: none;
	background-color: #f44336;
	color: #fff;
	border-radius: 4px;
	transition: background-color 0.3s ease;
}

.button:hover {
	background-color: #e53935;
}
</style>
</head>
<body>
	<div class="container">
		<h1>Registration Error</h1>
		<div class="message">
			<p>Oops! Registration failed. Please try again.</p>
		</div>
		<a class="button" href="register.jsp">Go back to Registration</a>
	</div>
</body>
</html>

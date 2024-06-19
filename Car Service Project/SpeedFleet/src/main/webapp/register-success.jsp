<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <title>Registration Success</title>
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
      color: #4CAF50;
    }
    .message {
      margin-bottom: 20px;
      padding: 10px;
      font-size: 16px;
      border-radius: 4px;
      background-color: #DFF2BF;
      color: #4F8A10;
    }
    .button {
      display: inline-block;
      padding: 10px 20px;
      font-size: 16px;
      text-align: center;
      text-decoration: none;
      background-color: #4CAF50;
      color: #fff;
      border-radius: 4px;
      transition: background-color 0.3s ease;
    }
    .button:hover {
      background-color: #45a049;
    }
  </style>
</head>
<body>
  <div class="container">
    <h1>Registration Success</h1>
    <div class="message">
      <p>Your registration was successful!</p>
    </div>
    <a class="button" href="Home.jsp">Go back to Home Page</a>
  </div>
</body>
</html>

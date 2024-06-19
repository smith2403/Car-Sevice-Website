<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>

<!DOCTYPE html>
<html>
<head>
    <title>Car Rental Details</title>
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
        <h1>Car Rental Details</h1>
    </header>

    <div style="padding: 20px;">
        <table>
            <tr>
                <th>ID</th>
                <th>Delivery Location</th>
                <th>Pickup Date</th>
                <th>Pickup Time</th>
                <th>Drop-Off Date</th>
                <th>Drop-Off Time</th>
                <th>Update</th>
                <th>Delete</th>
            </tr>
            <%
            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/tycsproject", "root", "123456");
                Statement statement = connection.createStatement();
                ResultSet resultSet = statement.executeQuery("SELECT * FROM car_rental");

                while (resultSet.next()) {
                    String id = resultSet.getString("id");
                    String deliveryLocation = resultSet.getString("delivery_location");
                    String pickupdate = resultSet.getString("pickup_date");
                    String pickuptime = resultSet.getString("pickup_time");
                    String dropoffdate = resultSet.getString("dropoff_date");
                    String dropofftime = resultSet.getString("dropoff_time");
            %>
            <tr>
                <td><%=id%></td>
                <td><%=deliveryLocation%></td>
                <td><%=pickupdate%></td>
                <td><%=pickuptime%></td>
                <td><%=dropoffdate%></td>
                <td><%=dropofftime%></td>
                <td>
                    <form action="UpdRentServlet" method="post">
                        <input type="hidden" name="id" value="<%= id %>">
                        <input type="text" name="deliveryLocation" value="<%= deliveryLocation %>">
                        <input type="text" name="pickupDate" value="<%= pickupdate %>">
                        <input type="text" name="pickupTime" value="<%=pickuptime %>">
                        <input type="text" name="dropoffDate" value="<%= dropoffdate %>">
                        <input type="text" name="dropoffTime" value="<%= dropofftime %>">
                        
                        <button class="update-button" type="submit">Update</button>
                    </form>
                </td>
                <td>
                    <form action="DelRentServlet" method="post">
                        <input type="hidden" name="deliveryLocation" value="<%=deliveryLocation%>">
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

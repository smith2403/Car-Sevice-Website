import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class CarWashDAO {
	private static final String URL = "jdbc:mysql://localhost:3306/tycsproject";
	private static final String USER = "root";
	private static final String PASSWORD = "123456";

	public boolean saveCarWashDetails(CarWash carWash) {
	    Connection conn = null;
	    PreparedStatement stmt = null;

	    try {
	    	Class.forName("com.mysql.cj.jdbc.Driver");
	        conn = DriverManager.getConnection(URL, USER, PASSWORD);

	        // Check the current number of booked slots
	        int bookedSlots = getBookedSlots(conn);
	        
	        // Define the maximum number of slots (10 in this case)
	        int maxSlots = 10;
	        
	        if (bookedSlots >= maxSlots) {
	            return false; // Slots are not available
	        }

	        String sql = "INSERT INTO car_wash (name, vehicle_number, vehicle_model, wash_type, price, location, mobile_number) VALUES (?, ?, ?, ?, ?, ?, ?)";
	        stmt = conn.prepareStatement(sql);
	        stmt.setString(1, carWash.getName());
	        stmt.setString(2, carWash.getVehicleNumber());
	        stmt.setString(3, carWash.getVehicleModel());
	        stmt.setString(4, carWash.getWashType());
	        stmt.setString(5, carWash.getPrice());
	        stmt.setString(6, carWash.getLocation());
	        stmt.setString(7, carWash.getMobileNumber());

	        int rowsAffected = stmt.executeUpdate();
	        
	        if (rowsAffected > 0) {
	            // Booking successful, increment the booked slots count
	            incrementBookedSlots(conn);
	        }

	        return rowsAffected > 0;

	    } catch (ClassNotFoundException | SQLException e) {
	        e.printStackTrace();
	        return false;
	    } finally {
	        // Close resources in a finally block to ensure they are closed
	        try {
	            if (stmt != null) {
	                stmt.close();
	            }
	            if (conn != null) {
	                conn.close();
	            }
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }
	    }
	}

	private int getBookedSlots(Connection conn) {
        int bookedSlots = 0;
        try {
            String query = "SELECT COUNT(*) as count FROM car_wash";
            PreparedStatement preparedStatement = conn.prepareStatement(query);
            ResultSet resultSet = preparedStatement.executeQuery();

            if (resultSet.next()) {
                bookedSlots = resultSet.getInt("count");
            }

            // Close the result set and statement
            resultSet.close();
            preparedStatement.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return bookedSlots;
    }

    private void incrementBookedSlots(Connection conn) {
        try {
            String updateQuery = "UPDATE car_wash SET available_slots = available_slots + 1";
            PreparedStatement preparedStatement = conn.prepareStatement(updateQuery);
            preparedStatement.executeUpdate();
            preparedStatement.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }


	public boolean deleteWash(String name) {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection conn = DriverManager.getConnection(URL, USER, PASSWORD);
			String query = "DELETE FROM car_wash WHERE name = ?";
			PreparedStatement stmt = conn.prepareStatement(query);
			stmt.setString(1, name);
			int row = stmt.executeUpdate();
			return row > 0;

		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		return false;
	}

	public void updateWash(CarWash carWash) {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection conn = DriverManager.getConnection(URL, USER, PASSWORD);

			String query = "UPDATE car_wash SET name=?, vehicle_number=?, vehicle_model=?, wash_type=?, price=?, location=?, mobile_number=? "
					+ "WHERE id=?";

			PreparedStatement stmt = conn.prepareStatement(query);

			stmt.setString(1, carWash.getName());
			stmt.setString(2, carWash.getVehicleNumber());
			stmt.setString(3, carWash.getVehicleModel());
			stmt.setString(4, carWash.getWashType());
			stmt.setString(5, carWash.getPrice());
			stmt.setString(6, carWash.getLocation());
			stmt.setString(7, carWash.getMobileNumber());
			stmt.setString(8, carWash.getId());

			stmt.executeUpdate();
			System.out.println("updated successfully!");

			conn.close();
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
	}
}

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class CarRentalDAO {
    private static final String URL = "jdbc:mysql://localhost:3306/tycsproject";
    private static final String USER= "root";
    private static final String PASSWORD = "123456";

    public void saveCarRentalDetails(CarRental carRental) {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            try (Connection conn = DriverManager.getConnection(URL, USER, PASSWORD)) {
                String sql = "INSERT INTO car_rental (delivery_location, pickup_date, pickup_time, dropoff_date, dropoff_time) " +
                             "VALUES (?, ?, ?, ?, ?)";
                PreparedStatement stmt = conn.prepareStatement(sql);
                stmt.setString(1, carRental.getDeliveryLocation());
                stmt.setString(2, carRental.getPickupDate());
                stmt.setString(3, carRental.getPickupTime());
                stmt.setString(4, carRental.getDropoffDate());
                stmt.setString(5, carRental.getDropoffTime());
                stmt.executeUpdate();
            }
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
    }
    public boolean deleteRent(String deliveryLocation ) {
    	try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection(URL, USER, PASSWORD);
            String query = "DELETE FROM car_rental WHERE delivery_location = ?";
            PreparedStatement statement = conn.prepareStatement(query);
            statement.setString(1, deliveryLocation);
            int row = statement.executeUpdate();
            return row > 0;
            
    	}
    	catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }return false;
    }
    
    public void updateRent(CarRental carRental) {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection(URL, USER, PASSWORD);

            String query = "UPDATE car_rental SET delivery_location=?, pickup_date=?, pickup_time=?, dropoff_date=?, " +
                    "dropoff_time=? WHERE id=?";


            PreparedStatement stmt = conn.prepareStatement(query);
            stmt.setString(1, carRental.getDeliveryLocation());
            stmt.setString(2, carRental.getPickupDate());
            stmt.setString(3, carRental.getPickupTime());
            stmt.setString(4, carRental.getDropoffDate());
            stmt.setString(5, carRental.getDropoffTime());
            stmt.setString(6, carRental.getId());
            
            stmt.executeUpdate();
            System.out.println("updated successfully!");

            conn.close();
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
    }
}

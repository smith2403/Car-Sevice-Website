import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class CarRepairDAO {
	private static final String URL = "jdbc:mysql://localhost:3306/tycsproject";
	private static final String USER = "root";
	private static final String PASSWORD = "123456";

	public boolean insertCarRepair(CarRepair carRepair) {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection conn = DriverManager.getConnection(URL, USER, PASSWORD);
			String sql = "INSERT INTO car_repair (clutch, battery, tyres, paint, lights) VALUES (?, ?, ?, ?, ?)";
			PreparedStatement stmt = conn.prepareStatement(sql);

			stmt.setString(1, carRepair.getClutch());
			stmt.setString(2, carRepair.getBattery());
			stmt.setString(3, carRepair.getTyres());
			stmt.setString(4, carRepair.getPaint());
			stmt.setString(5, carRepair.getLights());

			int rowsAffected = stmt.executeUpdate();
			return rowsAffected > 0;
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
			return false;
		}
	}

	public boolean deleteRepair(String clutch) {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection conn = DriverManager.getConnection(URL, USER, PASSWORD);
			String query = "DELETE FROM car_repair WHERE clutch = ?";
			PreparedStatement stmt = conn.prepareStatement(query);
			stmt.setString(1, clutch);
			int row = stmt.executeUpdate();
			return row > 0;

		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		return false;
	}

	public void updateRepair(CarRepair carRepair) {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection conn = DriverManager.getConnection(URL, USER, PASSWORD);

			String query = "UPDATE car_repair SET clutch=?, battery=?, tyres=?, paint=?, lights=? " + "WHERE id=?";

			PreparedStatement stmt = conn.prepareStatement(query);

			stmt.setString(1, carRepair.getClutch());
			stmt.setString(2, carRepair.getBattery());
			stmt.setString(3, carRepair.getTyres());
			stmt.setString(4, carRepair.getPaint());
			stmt.setString(5, carRepair.getLights());
			stmt.setString(6, carRepair.getId());

			stmt.executeUpdate();
			System.out.println("updated successfully!");

			conn.close();
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
	}
}

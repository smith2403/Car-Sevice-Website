import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class RegistrationDAO {
	private static final String URL = "jdbc:mysql://localhost:3306/registered";
	private static final String USER = "root";
	private static final String PASSWORD = "123456";

	public void saveRegistration(Registration registration) {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
		try (Connection conn = DriverManager.getConnection(URL, USER, PASSWORD)) {
			String sql = "INSERT INTO users1 (fullName, email, username, password) VALUES (?, ?, ?, ?)";
			PreparedStatement stmt = conn.prepareStatement(sql);
			stmt.setString(1, registration.getFullName());
			stmt.setString(2, registration.getEmail());
			stmt.setString(3, registration.getUsername());
			stmt.setString(4, registration.getPassword());
			stmt.executeUpdate();
		}
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
	}
	public boolean deleteUser(String fullName ) {
    	try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection(URL, USER, PASSWORD);
            String query = "DELETE FROM users1 WHERE fullName = ?";
            PreparedStatement statement = conn.prepareStatement(query);
            statement.setString(1, fullName);
            int row = statement.executeUpdate();
            return row > 0;
            
    	}
    	catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }return false;
    }
    
}

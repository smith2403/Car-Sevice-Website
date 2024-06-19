import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private final String url = "jdbc:mysql://localhost:3306/registered";
	private final String username = "root";
	private final String password = "123456";

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String username = request.getParameter("username");
		String password = request.getParameter("password");

		String userType = getUserType(username); // Retrieve user type from the database

		if (validateUser(username, password)) {
			// User is authenticated, redirect based on usertype
			if ("user".equals(userType)) {
				response.sendRedirect("Home2.jsp"); // Redirect to user page
			} else {
				response.sendRedirect("AdminDashboard.jsp"); // Handle other cases
			}
		} else {
			// Invalid credentials, display error message
			request.setAttribute("error", "Invalid username or password");
			request.getRequestDispatcher("LoginError.jsp").forward(request, response);
		}
	}

	private boolean validateUser(String username, String password) {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			try (Connection conn = DriverManager.getConnection(url, this.username, this.password)) {
				String sql = "SELECT * FROM users1 WHERE username = ? AND password = ?";
				PreparedStatement statement = conn.prepareStatement(sql);
				statement.setString(1, username);
				statement.setString(2, password);
				ResultSet resultSet = statement.executeQuery();

				return resultSet.next();
			}
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
			return false;
		}
	}

	private String getUserType(String username) {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			try (Connection conn = DriverManager.getConnection(url, this.username, this.password)) {
				String sql = "SELECT usertype FROM users1 WHERE username = ?";
				PreparedStatement statement = conn.prepareStatement(sql);
				statement.setString(1, username);
				ResultSet resultSet = statement.executeQuery();

				if (resultSet.next()) {
					return resultSet.getString("usertype");
				}
			}
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		return null; // Handle error case
	}
}

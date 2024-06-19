

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class DelUserServlet
 */
@WebServlet("/DelUserServlet")
public class DelUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DelUserServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String fullName = request.getParameter("fullName");
		RegistrationDAO dao = new RegistrationDAO();
		boolean flag = dao.deleteUser(fullName);
		if (flag) {
			
			request.setAttribute("message", "User details deleted successfully");
	
			request.getRequestDispatcher("UserDetails.jsp").forward(request, response);
		} else {
			
			request.setAttribute("message", "Failed to delete car repair details");
			
			request.getRequestDispatcher("Details.jsp").forward(request, response);
		}
	}
	}

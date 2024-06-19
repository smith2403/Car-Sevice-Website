
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/DelWashServlet")
public class DelWashServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public DelWashServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String name = request.getParameter("name");
		CarWashDAO carWashDAO = new CarWashDAO();
		boolean flag = carWashDAO.deleteWash(name);
		if (flag) {

			request.setAttribute("message", "Car Wash details deleted successfully");

			request.getRequestDispatcher("WashDetails.jsp").forward(request, response);
		} else {

			request.setAttribute("message", "Failed to delete car wash details");

			request.getRequestDispatcher("Details.jsp").forward(request, response);
		}
	}

}

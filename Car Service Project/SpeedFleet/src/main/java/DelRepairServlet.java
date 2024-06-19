import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/DelRepairServlet")
public class DelRepairServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public DelRepairServlet() {
		super();
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String clutch = request.getParameter("clutch");
		CarRepairDAO carRepairDAO = new CarRepairDAO();
		boolean flag = carRepairDAO.deleteRepair(clutch);

		if (flag) {
	
			request.setAttribute("message", "Car repair details deleted successfully");
	
			request.getRequestDispatcher("RepairDetails.jsp").forward(request, response);
		} else {
			
			request.setAttribute("message", "Failed to delete car repair details");
			
			request.getRequestDispatcher("Details.jsp").forward(request, response);
		}
	}

}

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/DelRentServlet")
public class DelRentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public DelRentServlet() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String deliveryLocation = request.getParameter("deliveryLocation");
		CarRentalDAO dao = new CarRentalDAO();
		boolean flag = dao.deleteRent(deliveryLocation);
		
		if (flag) {
			// Set a success message in the request attribute
			request.setAttribute("message", "Car rental details deleted successfully");
			// Forward to the details page to show the success message
			request.getRequestDispatcher("RentDetails.jsp").forward(request, response);
		} else {
			// Set an error message in the request attribute
			request.setAttribute("message", "Failed to delete car rental details");
			// Forward to the details page to show the error message
			request.getRequestDispatcher("Details.jsp").forward(request, response);
		}
	}
}

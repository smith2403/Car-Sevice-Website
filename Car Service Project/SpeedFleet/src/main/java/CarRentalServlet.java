import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/CarRent")
public class CarRentalServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String deliveryLocation = request.getParameter("deliveryLocation");
		String pickupDate = request.getParameter("pickupDate");
		String pickupTime = request.getParameter("pickupTime");
		String dropoffDate = request.getParameter("dropoffDate");
		String dropoffTime = request.getParameter("dropoffTime");

		CarRental cr = new CarRental();

		cr.setDeliveryLocation(deliveryLocation);
		cr.setPickupDate(pickupDate);
		cr.setPickupTime(pickupTime);
		cr.setDropoffDate(dropoffDate);
		cr.setDropoffTime(dropoffTime);

		CarRentalDAO carRentalDAO = new CarRentalDAO();
		carRentalDAO.saveCarRentalDetails(cr);

		// Set a message to display on the success page
		request.setAttribute("message", "Car rental details saved successfully");

		// Forward to the success page
		request.getRequestDispatcher("RentService.jsp").forward(request, response);
	}
}

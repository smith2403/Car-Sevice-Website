import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/CarWash")
public class CarWashServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String name = request.getParameter("name");
		String vehicleNumber = request.getParameter("vehicleNumber");
		String vehicleModel = request.getParameter("vehicleModel");
		String washType = request.getParameter("washType");
		String price = request.getParameter("price");
		String location = request.getParameter("location");
		String mobileNumber = request.getParameter("mobileNumber");

		CarWash carWash = new CarWash();
		carWash.setName(name);
		carWash.setVehicleNumber(vehicleNumber);
		carWash.setVehicleModel(vehicleModel);
		carWash.setWashType(washType);
		carWash.setPrice(price);
		carWash.setLocation(location);
		carWash.setMobileNumber(mobileNumber);

		CarWashDAO carWashDAO = new CarWashDAO();
		boolean bookingResult = carWashDAO.saveCarWashDetails(carWash);

		if (bookingResult) {
			// Successful booking, forward to success page
			request.getRequestDispatcher("WashService.jsp").forward(request, response);
		} else {
			// Slots are not available, display an error message
			request.setAttribute("message", "Slots are not available for car wash.");
			request.getRequestDispatcher("washError.jsp").forward(request, response);
		}
	}
}

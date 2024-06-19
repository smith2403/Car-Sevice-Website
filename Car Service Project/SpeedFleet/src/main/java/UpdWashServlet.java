import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/UpdWashServlet")
public class UpdWashServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public UpdWashServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String vehicleNumber = request.getParameter("vehicle_number");
		String vehicleModel = request.getParameter("vehicle_model");
		String washType = request.getParameter("wash_type");
		String price = request.getParameter("price");
		String location = request.getParameter("location");
		String mobileNumber = request.getParameter("mobile_number");

		CarWash carWash = new CarWash();
		carWash.setId(id);
		carWash.setName(name);
		carWash.setVehicleNumber(vehicleNumber);
		carWash.setVehicleModel(vehicleModel);
		carWash.setWashType(washType);
		carWash.setPrice(price);
		carWash.setLocation(location);
		carWash.setMobileNumber(mobileNumber);

		CarWashDAO carWashDAO = new CarWashDAO();
		carWashDAO.updateWash(carWash);

		request.setAttribute("message", "Wash details updated");
		request.getRequestDispatcher("WashDetails.jsp").forward(request, response);
	}

}

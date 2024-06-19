import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/CarRepair")
public class CarRepairServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String clutch = request.getParameter("clutch");
		String battery = request.getParameter("battery");
		String tyres = request.getParameter("tyres");
		String paint = request.getParameter("paint");
		String lights = request.getParameter("lights");

		CarRepair carRepair = new CarRepair();
		carRepair.setClutch(clutch);
		carRepair.setBattery(battery);
		carRepair.setTyres(tyres);
		carRepair.setPaint(paint);
		carRepair.setLights(lights);

		CarRepairDAO carRepairDAO = new CarRepairDAO();
		carRepairDAO.insertCarRepair(carRepair);

		request.setAttribute("message", "Car repair details saved successfully");

		request.getRequestDispatcher("RepairService.jsp").forward(request, response);
	}
}

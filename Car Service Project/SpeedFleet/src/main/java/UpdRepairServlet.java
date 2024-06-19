
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/UpdRepairServlet")
public class UpdRepairServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public UpdRepairServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String id = request.getParameter("id");
		String clutch = request.getParameter("clutch");
		String battery = request.getParameter("battery");
		String tyres = request.getParameter("tyres");
		String paint = request.getParameter("paint");
		String lights = request.getParameter("lights");

		CarRepair carRepair = new CarRepair();
		carRepair.setId(id);
		carRepair.setClutch(clutch);
		carRepair.setBattery(battery);
		carRepair.setTyres(tyres);
		carRepair.setPaint(paint);
		carRepair.setLights(lights);
		
		CarRepairDAO carRepairDAO = new CarRepairDAO();
		carRepairDAO.updateRepair(carRepair);

		request.setAttribute("message", "Repair details updated");

		request.getRequestDispatcher("RepairDetails.jsp").forward(request, response);
	}

}

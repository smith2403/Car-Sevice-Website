import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.*;

@WebServlet("/UpdRentServlet")
public class UpdRentServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String id = request.getParameter("id");
        String deliveryLocation = request.getParameter("deliveryLocation");
        String pickupDate = request.getParameter("pickupDate");
        String pickupTime = request.getParameter("pickupTime");
        String dropoffDate = request.getParameter("dropoffDate");
        String dropoffTime = request.getParameter("dropoffTime");

        CarRental cr = new CarRental();
        cr.setId(id);
        cr.setDeliveryLocation(deliveryLocation);
        cr.setPickupDate(pickupDate);
        cr.setPickupTime(pickupTime);
        cr.setDropoffDate(dropoffDate);
        cr.setDropoffTime(dropoffTime);

        CarRentalDAO dao = new CarRentalDAO();
        dao.updateRent(cr);

        // Set a message in the request attribute to display on the details page
        request.setAttribute("message", "Car rental details updated successfully");

        // Forward to the details page
        request.getRequestDispatcher("RentDetails.jsp").forward(request, response);
    }
}

package am.logi.logicinema.controllers;

import am.logi.logicinema.dao.SeatsDAO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/cancelBooking")
public class CancellationController extends HttpServlet {
    private SeatsDAO seatsDAO = new SeatsDAO();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int bookingId = Integer.parseInt(request.getParameter("bookingId"));

        try {
            // Logic to free up seats and remove booking data
            seatsDAO.cancelBooking(bookingId);
            response.sendRedirect("cancelBooking.jsp?success=true");
        } catch (SQLException e) {
            throw new ServletException(e);
        }
    }
}

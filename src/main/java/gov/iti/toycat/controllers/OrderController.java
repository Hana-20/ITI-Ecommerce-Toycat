package gov.iti.toycat.controllers;

import java.io.IOException;

import gov.iti.toycat.models.dtos.User.UserDTO;
import gov.iti.toycat.models.entities.User;
import gov.iti.toycat.repositories.CartRepository;
import gov.iti.toycat.services.CartService;
import gov.iti.toycat.services.OrderService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/confirmorder")
public class OrderController extends HttpServlet {
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        System.out.println("POST /confirmorderd");

        HttpSession session = request.getSession(false);

        if (session == null || session.getAttribute("user") == null) {
            response.setStatus(HttpServletResponse.SC_BAD_REQUEST);
            return;
        }

        UserDTO user = (UserDTO) session.getAttribute("user");
        String userEmail = user.getEmail();
        OrderService orderService = new OrderService();
        boolean placed = orderService.placeOrderForUser(userEmail);

        if (placed) {
            System.out.println("Placed Order");
            response.setStatus(HttpServletResponse.SC_OK);
            // response.sendRedirect(request.getContextPath());
        }

    }
}

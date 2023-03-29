package gov.iti.toycat.controllers.cart;

import java.io.IOException;

import gov.iti.toycat.models.dtos.User.UserDTO;
import gov.iti.toycat.models.entities.User;
import gov.iti.toycat.repositories.CartRepository;
import gov.iti.toycat.services.CartService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/cart/add")
public class AddToCartController extends HttpServlet {
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        System.out.println("POST /cart/add");
        
        HttpSession session = request.getSession(false);
        Integer productId = null;
        Integer quantity = null;

        if (session == null || session.getAttribute("user") == null || request.getParameter("productId") == null) {
            response.setStatus(HttpServletResponse.SC_BAD_REQUEST);
            return;
        }

        if (request.getParameter("quantity") != null) {
            quantity = Integer.parseInt(request.getParameter("quantity"));
        }

        if (request.getParameter("productId") != null) {
            productId = Integer.parseInt(request.getParameter("productId"));
        }

        System.out.println("quantity: " + quantity);
        System.out.println("productId: " + productId);
        UserDTO user = (UserDTO) session.getAttribute("user");
        String userEmail = user.getEmail();
        CartService cartService = new CartService();

        if (quantity == null) {
            cartService.addCartItemToUser(userEmail, productId);
        } else {
            cartService.updateCartItemQuantity(userEmail, productId, quantity);
        }

        response.setStatus(HttpServletResponse.SC_OK);

    }
}

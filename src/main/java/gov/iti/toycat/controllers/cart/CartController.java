package gov.iti.toycat.controllers.cart;

import java.io.IOException;
import java.util.List;

import gov.iti.toycat.models.dtos.CartItemDTO;
import gov.iti.toycat.models.dtos.User.UserDTO;
import gov.iti.toycat.models.entities.User;
import gov.iti.toycat.services.CartService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/cart")
public class CartController extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        HttpSession session = request.getSession(false);

        if (session == null || session.getAttribute("user") == null) {
            response.sendRedirect(request.getContextPath());
            return;
        }

        UserDTO user = (UserDTO) session.getAttribute("user");
        List<CartItemDTO> cart = new CartService().getCartforUserEmail(user.getEmail());
        System.out.println("CART> " + cart);
        request.setAttribute("cart", cart);
        request.getRequestDispatcher("jsp/Cart-page.jsp").forward(request, response);
    }

}

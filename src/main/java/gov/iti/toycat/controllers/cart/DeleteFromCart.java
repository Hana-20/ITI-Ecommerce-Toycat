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

@WebServlet("/cart/delete")
public class DeleteFromCart  extends HttpServlet {
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        System.out.println("POST /cart/delete");
        HttpSession session = request.getSession(false);
        Integer productId = Integer.parseInt(request.getParameter("productId")) ;
        System.out.println(">> productId: " + productId);
        System.out.println(">> session.getAttribute(user) " + session.getAttribute("user"));

        if (session == null || session.getAttribute("user") == null || productId == null) {
            response.setStatus(HttpServletResponse.SC_BAD_REQUEST);
            return ; 
        } 

        UserDTO user =(UserDTO)session.getAttribute("user") ;
        String userEmail = user.getEmail();
        CartService cartService = new CartService();
        cartService.deleteCartItemFromUser(userEmail, productId);
        response.setStatus(HttpServletResponse.SC_OK);
    }
}

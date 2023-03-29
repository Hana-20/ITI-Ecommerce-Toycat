package gov.iti.toycat.controllers.cart;

import java.io.IOException;

import gov.iti.toycat.models.entities.User;
import gov.iti.toycat.repositories.CartRepository;
import gov.iti.toycat.services.CartService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

public class AddToCartController {
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        HttpSession session = request.getSession(false);
        Integer productId = Integer.parseInt(request.getParameter("product-id")) ;

        if (session == null || session.getAttribute("user") == null || productId == null) {
            return ; 
        } 

        User user =(User)session.getAttribute("user") ;
        String userEmail = user.getEmail();

        CartService cartService = new CartService();
        cartService.addCartItemToUser(userEmail,productId);
        

       

    }
}

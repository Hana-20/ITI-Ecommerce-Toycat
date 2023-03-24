package gov.iti.toycat.controllers;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;

public class LogoutController extends HttpServlet{
    public void doPost(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {  
        HttpSession session = request.getSession(false);
        if (session != null) {
            session.invalidate();
        }
    
        // Redirect to the login page
        response.sendRedirect( "home");
    }
}

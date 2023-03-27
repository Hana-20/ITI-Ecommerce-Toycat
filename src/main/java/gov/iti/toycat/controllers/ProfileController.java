package gov.iti.toycat.controllers;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/profile")
public class ProfileController extends HttpServlet{

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException{
       if(request.getSession(false)==null){
        response.sendRedirect("Home");
       }
       RequestDispatcher rd=request.getRequestDispatcher("jsp/profile.jsp");
       rd.include(request, response);
    }
    
}

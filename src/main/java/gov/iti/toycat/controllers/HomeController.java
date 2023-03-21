package gov.iti.toycat.controllers;

import java.io.IOException;
import java.io.PrintWriter;

import gov.iti.toycat.services.UserServices;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class HomeController extends HttpServlet{

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException{
        PrintWriter out=response.getWriter();
        response.setContentType("text/html");
        RequestDispatcher rd=request.getRequestDispatcher("jsp/index.jsp");  
        rd.include(request, response);  
        out.println("yes");
    }
}

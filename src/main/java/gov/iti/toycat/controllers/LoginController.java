package gov.iti.toycat.controllers;
import java.io.IOException;
import java.io.PrintWriter;

import gov.iti.toycat.models.entities.User;
import gov.iti.toycat.services.UserServices;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
public class LoginController extends HttpServlet {
    ServletConfig myConfig;
    @Override
    public void destroy() {
        
    }

    @Override
    public ServletConfig getServletConfig() {

        return null;
    }

    @Override
    public String getServletInfo() {

        return null;
    }

    @Override
    public void init(ServletConfig arg0) throws ServletException {
        myConfig=arg0;
        
    }
    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException { 
    }
    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException { 
        PrintWriter out=response.getWriter();
        User user=new User(request.getParameter("loginEmail"),request.getParameter("loginPassword"));
        boolean isUthrized=new UserServices().login(user);
        System.out.println("Email: "+user.getEmail());
        System.out.println("password: "+user.getPassword());
        if(isUthrized){
        HttpSession session = request.getSession(true);
        session.setAttribute("user", user);
        response.sendRedirect("home");
        }
       else { 
        // response.setContentType("text/html");
        // //response.sendRedirect("http://localhost:9091/Form/logInForm.html");
        // RequestDispatcher rd = request.getRequestDispatcher("home");
        
        // rd.forward(request, response);
        // rd.include(request, response);
        out.println("<h4>in-valid</h4>");   
       }
    }
}

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
        User user=new User(request.getParameter("email"),request.getParameter("password"));
        PrintWriter out=response.getWriter();
        boolean isUthrized=new UserServices().login(user);
        if(isUthrized){
        //response.sendRedirect("welcome.html");
        HttpSession session = request.getSession(true);
        session.setAttribute("user", user);
        RequestDispatcher rd = request.getRequestDispatcher("home");
        rd.forward(request, response);
        }
       else { 
        response.setContentType("text/html");
        //response.sendRedirect("http://localhost:9091/Form/logInForm.html");
        RequestDispatcher rd = request.getRequestDispatcher("index.html");
        out.println("<label style=\"color: red\">Login Failed, please try again.<label>"); 
       // rd.forward(request, response);
        rd.include(request, response);
        //out.println("<h4>esraa</h4>");   
       }
    }
}

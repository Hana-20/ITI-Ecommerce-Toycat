package gov.iti.toycat.controllers;
import java.io.IOException;
import java.io.PrintWriter;

import gov.iti.toycat.models.dtos.User.LoginDTO;
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
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // do preparing
        var user = (User) request.getSession(false).getAttribute("user");
        if (user != null) {
            response.sendRedirect("home");
           
        }
    }
    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException { 
        PrintWriter out=response.getWriter();
         var sessionUser = (User) request.getSession().getAttribute("user");
        if (sessionUser  != null) {
            response.sendRedirect("home");
           
        }
        else{
        LoginDTO user=new LoginDTO(request.getParameter("loginEmail"),request.getParameter("loginPassword"));
       User isUthrized=new UserServices().login(user);
        if(isUthrized!=null){
        HttpSession session = request.getSession(true);
        session.setAttribute("user",isUthrized);
        response.sendRedirect("home");
        }
       else { 
        out.print("invalid login");
          
       }
    }
       
    }
}

package gov.iti.toycat.controllers;

import java.io.IOException;
import java.io.PrintWriter;

import gov.iti.toycat.models.dtos.User.UserDTO;
import gov.iti.toycat.services.UserServices;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/profile")
public class ProfileController extends HttpServlet{

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException{
        HttpSession session=request.getSession(false);
       if(session==null){
        response.sendRedirect("Home");
       }
       UserDTO userDto=(UserDTO)session.getAttribute("user");
       UserDTO user =new UserServices().getUser(userDto.getEmail(), userDto.getPassword());
       session.setAttribute("user",user);
       RequestDispatcher rd=request.getRequestDispatcher("jsp/profile.jsp");
       rd.include(request, response);
    }
    
}

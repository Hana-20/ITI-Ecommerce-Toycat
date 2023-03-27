package gov.iti.toycat.controllers;

import java.io.IOException;
import java.io.PrintWriter;

import gov.iti.toycat.models.dtos.User.UserDTO;
import gov.iti.toycat.services.UserServices;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class EmailRegistrationController extends HttpServlet{

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException{
        UserDTO user=(UserDTO)request.getSession(false).getAttribute("user");
        String email=request.getParameter("email").trim();
        PrintWriter out=response.getWriter();
        if(user!=null){
            if(!email.equals(user.getEmail())){
       
       
        if(new UserServices().isEmailExist(email)){
            out.print("exist");
            return;
        }
    }}
            out.print("not exist");
        
    
    }
    
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException{
        PrintWriter out=response.getWriter();
        String email=request.getParameter("email").trim();
        if(new UserServices().isEmailExist(email)){
            out.print("exist");
        }
        else{
            out.print("not exist");
        }
    }
}

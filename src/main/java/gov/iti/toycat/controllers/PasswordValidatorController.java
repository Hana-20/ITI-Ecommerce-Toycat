package gov.iti.toycat.controllers;

import java.io.IOException;
import java.io.PrintWriter;

import gov.iti.toycat.models.dtos.User.UserDTO;
import jakarta.security.auth.message.callback.PrivateKeyCallback.Request;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
@WebServlet("/password")
public class PasswordValidatorController extends HttpServlet{

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PrintWriter out=response.getWriter();
        String password=request.getParameter("currentPassword");
        UserDTO user=(UserDTO)request.getSession(false).getAttribute("user");
        
        if(!password.equals(user.getPassword().trim())){
            out.print("incorrect");
        }
        else{
           
            out.print("correct");
        }
    }
    
    
}

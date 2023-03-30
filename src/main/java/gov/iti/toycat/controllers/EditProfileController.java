package gov.iti.toycat.controllers;

import java.io.IOException;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.text.ParseException;


import gov.iti.toycat.models.dtos.User.UserDTO;
import gov.iti.toycat.models.entities.User;
import gov.iti.toycat.models.mappers.UserMapper;
import gov.iti.toycat.services.UserServices;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/editProfile")
public class EditProfileController extends HttpServlet{

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // System.out.println("inside EditAccount controller");
        // var user = (User) request.getSession().getAttribute("user");
        // if (user == null) {
        //     response.sendRedirect(UrlMappingConstants.getInstance().getControllerUrl(PageNames.SIGN_IN_PAGE));
        //     return;
        // }
        // request.setAttribute("ordersCount", CartRepo.getInstance().findHistoryByUser(user).size());
        // if (user != null) {
        //     RequestDispatcher requestDispatcher = request.getRequestDispatcher(UrlMappingConstants.getInstance().getViewUrl(PageNames.EditProfile));
        //     requestDispatcher.include(request, response);
        //     return;
        // }
        if(request.getSession(false)==null){
            response.sendRedirect("Home");
           }
           RequestDispatcher rd=request.getRequestDispatcher("jsp/Edit-profile.jsp");
           rd.include(request, response);
        }
    
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {

        HttpSession session = request.getSession();
        UserDTO oldUser = (UserDTO) session.getAttribute("user");
        String creditLimit = request.getParameter("creditLimit");
        String address = request.getParameter("address");
        String userName = request.getParameter("username");
        String birthDate = request.getParameter("birthday");
        String password=request.getParameter("password");
        Date date = null;
        if(birthDate!=null){
        try {
            date = new SimpleDateFormat("yyyy-MM-dd").parse(birthDate);
            System.out.println(date);
        } catch (ParseException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }  
    }
        String email = request.getParameter("email");

        User userRepo = new User();
        if(userName==null||userName.trim().equals("")){
            userRepo.setUsername(oldUser.getUsername());
        }
        else{
            userRepo.setUsername(userName);
        }
        if(password==null||password.trim().equals("")){
            userRepo.setPassword(oldUser.getPassword());
        }
        else{
            userRepo.setPassword(password);
        }
        if(email==null||email.trim().equals("")){
            userRepo.setEmail(oldUser.getEmail());
            
        }
        else{
            userRepo.setEmail(email);
        }
        if(address==null|| address.trim().equals("")){
            userRepo.setAddress(oldUser.getAddress());
        }
        else{
            userRepo.setAddress(address);
        }
        if(creditLimit==null||creditLimit.trim().equals("")){
            userRepo.setCreditLimit(oldUser.getCreditLimit());;
        }
        else{
            userRepo.setCreditLimit(Double.parseDouble(creditLimit));
        }
        if(date==null){
           userRepo.setBirthday(oldUser.getBirthday());
        }
        else{
            userRepo.setBirthday(date);
        }
        userRepo.setRole(oldUser.getRole());
        new UserServices().Update(userRepo);
        session.setAttribute("user", UserMapper.toDto(userRepo));
        response.sendRedirect("profile");
    }
    
}

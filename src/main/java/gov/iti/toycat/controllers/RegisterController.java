package gov.iti.toycat.controllers;
import java.io.IOException;
import java.io.PrintWriter;
import java.lang.reflect.InvocationTargetException;
import java.math.BigDecimal;



import gov.iti.toycat.models.entities.User;
import gov.iti.toycat.services.UserServices;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import jakarta.servlet.ServletConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;

import java.text.ParseException;
import java.text.SimpleDateFormat;  
import java.util.Date;  
public class RegisterController extends HttpServlet {
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
        String creditLimitStr = request.getParameter("creditLimit");
        double creditLimit=0.0;
try {
    creditLimit = Double.parseDouble(creditLimitStr);
    System.out.println(creditLimit);
} catch (NumberFormatException e) {
    System.out.println("Failed to convert string to double");        
        }
    String sDate1="05/09/2000";
    Date date1=null;
    try {
        date1 = new SimpleDateFormat("dd/MM/yyyy").parse(sDate1);
    } catch (ParseException e) {
        // TODO Auto-generated catch block
        e.printStackTrace();
    }  
    System.out.println(sDate1+"\t"+date1); 
    User user=new User(request.getParameter("email"), request.getParameter("name"), request.getParameter("password"),creditLimit ,date1 , request.getParameter("address") ,'0'); 
    UserServices service =new UserServices();
    service.register(user);    
    
}
}

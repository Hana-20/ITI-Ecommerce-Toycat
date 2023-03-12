package gov.iti.toycat.controllers;
import java.io.IOException;
import java.io.PrintWriter;
import java.lang.reflect.InvocationTargetException;

import org.apache.commons.beanutils.BeanUtils;

import gov.iti.toycat.services.UserServices;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
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
        PrintWriter out=response.getWriter();
        RequestDispatcher rd = request.getRequestDispatcher("http://localhost:9091/Form/logInForm.html");
        rd.include(request, response);
        out.println("<label style=\"color: red\">Login Failed, please try again.<label>"); 
        out.println("<a href='login.html'> Login Page</a>");
    }
    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {       
        // User user=new User();
        // try {
        //     BeanUtils.populate (user, request.getParameterMap());
        // } catch (IllegalAccessException e) {
        //     // TODO Auto-generated catch block
        //     e.printStackTrace();
        // } catch (InvocationTargetException e) {
        //     // TODO Auto-generated catch block
        //     e.printStackTrace();
        // }
        // UserServices registerService=new UserServices ();
        // if(registerService.register (user)){
        //    //do somthing 

        // }
        // else{
        //   //do anther-Thing   
        // }
        
    }
}

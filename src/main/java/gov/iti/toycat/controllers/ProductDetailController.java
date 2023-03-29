package gov.iti.toycat.controllers;
import java.io.IOException;
import java.io.PrintWriter;
import java.lang.reflect.InvocationTargetException;
import java.math.BigDecimal;

import gov.iti.toycat.models.dtos.CategoryDTO;
import gov.iti.toycat.models.dtos.ProductDTO;
import gov.iti.toycat.models.entities.User;
import gov.iti.toycat.services.CategoryService;
import gov.iti.toycat.services.ProductService;
import gov.iti.toycat.services.UserServices;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.security.auth.message.callback.PrivateKeyCallback.Request;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@WebServlet("/product")
public class ProductDetailController extends HttpServlet {
    ServletConfig myConfig;
   
    @Override
    public void init(ServletConfig arg0) throws ServletException {
        myConfig=arg0;
        
    }
    
    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException { 
        
        ProductService productService = new ProductService();
        CategoryService categoryService = new CategoryService();
        String id =  request.getParameter("id");

        ProductDTO productDTO = productService.getProductWithId(id);

        CategoryDTO categoryDTO = categoryService.getCategoryWithId(productDTO.getCategoryDto().getId().toString());

        System.out.println("\n\n\nproduct servlet = "+id+"\n\n\n");

        request.setAttribute("product", productDTO);

        request.setAttribute("category", categoryDTO);

        RequestDispatcher rd = request.getRequestDispatcher("jsp/Product-view.jsp");

        rd.forward(request, response);
    }
    
    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {       
//         String creditLimitStr = request.getParameter("creditLimit");
//         double creditLimit=0.0;
// try {
//     creditLimit = Double.parseDouble(creditLimitStr);
//     System.out.println(creditLimit);
// } catch (NumberFormatException e) {
//     System.out.println("Failed to convert string to double");        
//         }
//     String sDate1="05/09/2000";
//     //sDate1=request.getParameter("birthdate");
//     Date date1=null;
//     try {
//         date1 = new SimpleDateFormat("dd/MM/yyyy").parse(sDate1);
//     } catch (ParseException e) {
//         // TODO Auto-generated catch block
//         e.printStackTrace();
//     }  
//     System.out.println(sDate1+"\t"+date1); 
//     User user=new User(request.getParameter("email"), request.getParameter("name"), request.getParameter("password"),creditLimit ,date1 , request.getParameter("address") ,'0'); 
//     UserServices service =new UserServices();
//     service.register(user);    
    
}
}

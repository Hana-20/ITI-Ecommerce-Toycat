


package gov.iti.toycat.controllers;

import java.io.IOException;
import java.util.List;

import com.google.gson.Gson;

import gov.iti.toycat.models.dtos.ProductDTO;
import gov.iti.toycat.services.ProductService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

// @WebServlet("/search")
public class CategoryController extends HttpServlet {

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("GET: /Category");
      
        ProductService productService = new ProductService();
        
        System.out.println("--------------------category : "+request.getParameterNames());

        if (request.getParameter("category")!=null) {

            System.out.println("category param = "+request.getParameter("category"));
                          
            List<ProductDTO> productsList = productService.listByCategory(request.getParameter("category"));
            response.setContentType("application/json");
            String jsonProductList = new Gson().toJson(productsList);
            response.getWriter().write(jsonProductList);
        }        

    }

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("POST: /admin/products");
    }
}



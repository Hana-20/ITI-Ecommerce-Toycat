package gov.iti.toycat.controllers.admin;

import java.io.IOException;
import java.util.List;

import org.eclipse.tags.shaded.org.apache.xalan.xsltc.compiler.sym;

import com.google.gson.Gson;

import gov.iti.toycat.models.dtos.ProductDTO;
import gov.iti.toycat.services.ProductService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/admin/products")
public class ProductsController extends HttpServlet {

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("GET: /admin/products");
        ProductService productService = new ProductService();

        if (request.getParameter("q")!=null) {

            System.out.println("q param = "+request.getParameter("q"));
            
            


            List<ProductDTO> productsList = productService.searchForProduct(request.getParameter("q"));
            response.setContentType("application/json");
            String jsonProductList = new Gson().toJson(productsList);
            response.getWriter().write(jsonProductList);

        } else {
            List<ProductDTO> productsList = productService.getAllProducts();
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

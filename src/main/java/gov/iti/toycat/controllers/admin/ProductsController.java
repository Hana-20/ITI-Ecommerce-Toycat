package gov.iti.toycat.controllers.admin;

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

@WebServlet("/admin/products")
public class ProductsController extends HttpServlet {

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("GET: /admin/products");
        ProductService productService = new ProductService();
        List<ProductDTO> productsList = productService.getAllProducts();
        request.setAttribute("productsList", productsList);
        request.getRequestDispatcher("/admin/jsp/admin-products.jsp").forward(request, response);
    }

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("POST: /admin/products");
    }
}

package gov.iti.toycat.controllers.admin;

import java.io.IOException;
import gov.iti.toycat.services.ProductService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/admin/products/delete")
public class DeleteProductController extends HttpServlet {


    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        System.out.println("POST: /admin/products/delete");
        String productId = request.getParameter("id");
        ProductService productService = new ProductService();
        boolean isDeleted = productService.deleteProductWithId(productId);
        System.out.println("deleted= " + isDeleted);
        // request.getRequestDispatcher("/admin/jsp/admin-products.jsp").forward(request, response);
        response.sendRedirect(request.getContextPath() + "/admin/products");
 

    }
}
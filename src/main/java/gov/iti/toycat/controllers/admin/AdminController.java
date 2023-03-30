package gov.iti.toycat.controllers.admin;

import java.io.IOException;
import java.util.List;

import gov.iti.toycat.models.dtos.ProductDTO;
import gov.iti.toycat.services.DashboardService;
import gov.iti.toycat.services.ProductService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/admin")
public class AdminController extends HttpServlet {
    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("GET: /admin/");
        DashboardService dashboardService = new DashboardService();
        Long productsCount = dashboardService.getProductsCount();
        Long usersCount = dashboardService.getUsersCount();
        Long ordersCount =dashboardService.getOrdersCount();


        request.setAttribute("productsCount", productsCount.toString());
        request.setAttribute("usersCount", usersCount.toString());
        request.setAttribute("ordersCount", ordersCount.toString());

        //TODO:Implement orders count
        // request.setAttribute("ordersCount", 32);
        request.getRequestDispatcher("admin/jsp/admin-index.jsp").forward(request, response);

    }

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("POST: /admin/");
    }
}

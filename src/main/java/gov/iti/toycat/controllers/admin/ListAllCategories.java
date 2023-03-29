package gov.iti.toycat.controllers.admin;

import java.io.IOException;
import java.util.List;

import com.google.gson.Gson;
import com.mysql.cj.Session;

import gov.iti.toycat.models.dtos.CategoryDTO;
import gov.iti.toycat.models.dtos.ProductDTO;
import gov.iti.toycat.models.dtos.User.UserDTO;
import gov.iti.toycat.services.CategoryService;
import gov.iti.toycat.services.ProductService;
import gov.iti.toycat.services.UserServices;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/admin/categories")
public class ListAllCategories extends HttpServlet {

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        CategoryService categoryService = new CategoryService();
        List<CategoryDTO>categoryList = categoryService.getAllCategories();
        HttpSession session =request.getSession(false);
        session.setAttribute("categories",categoryList);
        request.getRequestDispatcher("jsp/admin-view-all-category.jsp").include(request, response);

    }

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        CategoryService categoryService = new CategoryService();
        List<CategoryDTO>categoryList = categoryService.getAllCategories();
        HttpSession session =request.getSession(false);
        session.setAttribute("categories",categoryList);
        response.setContentType("application/json");
        String jsonUsersList = new Gson().toJson(categoryList);
        response.getWriter().write(jsonUsersList);

    }
}

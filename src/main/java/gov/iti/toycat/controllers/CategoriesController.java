package gov.iti.toycat.controllers;

import java.io.IOException;
import java.util.List;

import com.google.gson.Gson;

import gov.iti.toycat.models.dtos.CategoryDTO;
import gov.iti.toycat.services.CategoryService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/api/categories")
public class CategoriesController extends HttpServlet {
    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("GET: /categories");
        CategoryService categoryService = new CategoryService();
        List<CategoryDTO> productsList = categoryService.getAllCategories();
        response.setContentType("application/json");
        String jsonProductList = new Gson().toJson(productsList);
        response.getWriter().write(jsonProductList);

    }

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }
}

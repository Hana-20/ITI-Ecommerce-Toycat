package gov.iti.toycat.controllers.admin;
import java.io.IOException;
import gov.iti.toycat.services.CategoryService;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


@WebServlet("/admin/addCategory")
@MultipartConfig
public class AddCategoryController extends HttpServlet {

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("jsp/admin-add-category.jsp").include(request, response);

    }

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String name = request.getParameter("categoryName");
        new CategoryService().addCategory(name);
        request.getRequestDispatcher("jsp/admin-add-category.jsp").include(request, response);

    }
}
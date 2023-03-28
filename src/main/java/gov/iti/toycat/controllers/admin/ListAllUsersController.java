package gov.iti.toycat.controllers.admin;

import java.io.IOException;
import java.util.List;

import com.google.gson.Gson;
import com.mysql.cj.Session;

import gov.iti.toycat.models.dtos.ProductDTO;
import gov.iti.toycat.models.dtos.User.UserDTO;
import gov.iti.toycat.services.ProductService;
import gov.iti.toycat.services.UserServices;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/users")
public class ListAllUsersController extends HttpServlet {

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        UserServices userService = new UserServices();
        List<UserDTO>usersList = userService.listAllUsers();
        HttpSession session =request.getSession(false);
        session.setAttribute("users",usersList);
        request.getRequestDispatcher("admin/jsp/admin-view-all-user.jsp").include(request, response);

    }

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("POST: /admin/products");
    }
}

package gov.iti.toycat.controllers.admin;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.math.BigDecimal;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.List;
import java.util.UUID;

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
import jakarta.servlet.http.Part;

@WebServlet("/admin/products/edit")
public class EditProduct extends HttpServlet {
        private static final String UPLOAD_DIR = "Images";
    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // UserServices userService = new UserServices();
        // List<UserDTO>usersList = userService.listAllUsers();
        // HttpSession session =request.getSession(false);
        // session.setAttribute("users",usersList);
        // request.getRequestDispatcher("jsp/admin-view-all-user.jsp").include(request, response);
        String productId = request.getParameter("id");
        ProductService productService = new ProductService();
        ProductDTO product=productService.getProductWithId(productId);
        request.setAttribute("product",product);
        request.getRequestDispatcher("../jsp/admin-products-update.jsp").include(request, response);

    }

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       
        String name = request.getParameter("name");
        String description = request.getParameter("description");
        int quantity = Integer.parseInt(request.getParameter("quantity"));
        BigDecimal price = new BigDecimal(request.getParameter("price"));
        String categoryId = request.getParameter("category");
        CategoryDTO category = new CategoryService().getCategoryWithId(categoryId);

        Part filePart = request.getPart("image");
        File uploadDir = new File(getServletContext().getRealPath("/") + UPLOAD_DIR);
        if (!uploadDir.exists()) {
            uploadDir.mkdir();
        }

        String uniqueID = Long.toString(System.currentTimeMillis()) + "_" +
                UUID.randomUUID().toString();

        String fileName = Paths.get(filePart.getSubmittedFileName()).getFileName().toString();
        String filePath = UPLOAD_DIR + File.separator + uniqueID + fileName;
        try (InputStream fileContent = filePart.getInputStream()) {
            Files.copy(fileContent, Paths.get(getServletContext().getRealPath("/") + filePath));
        }

        String imageUrl = request.getContextPath() + "/" + filePath;
    }
}

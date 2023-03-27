package gov.iti.toycat.controllers.admin;


import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.math.BigDecimal;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.UUID;


import gov.iti.toycat.models.dtos.CategoryDTO;
import gov.iti.toycat.models.dtos.ProductDTO;
import gov.iti.toycat.services.CategoryService;
import gov.iti.toycat.services.ProductService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;

@WebServlet("/admin/products/add")
@MultipartConfig
public class AddProductController extends HttpServlet {

    private static final String UPLOAD_DIR = "Images";

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("GET: /admin/products/add");
        request.getRequestDispatcher("/admin/jsp/admin-add-product.jsp").forward(request, response);

    }

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("POST: /admin/products/add");
        System.out.println("request " + request);

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
        // String imageUrl = request.getContextPath() + "/" + filePath;

        ProductDTO product = new ProductDTO(null, description, imageUrl, name, quantity, price, category);
        new ProductService().addProduct(product);

        request.getRequestDispatcher("/admin/jsp/admin-add-product.jsp").forward(request, response);

    }
}
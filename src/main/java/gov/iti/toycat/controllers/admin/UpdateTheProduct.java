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
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import jakarta.servlet.http.Part;

@WebServlet("/admin/products/update")
@MultipartConfig
public class UpdateTheProduct extends HttpServlet {
    private static final String UPLOAD_DIR = "Images";

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        UserServices userService = new UserServices();
        List<UserDTO>usersList = userService.listAllUsers();
        HttpSession session =request.getSession(false);
        session.setAttribute("users",usersList);
        request.getRequestDispatcher("jsp/admin-view-all-user.jsp").include(request, response);

    }

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String imageUrl=null;
        String id=request.getParameter("id");
        System.out.println(id);
        ProductDTO productDTO=new ProductService().getProductWithId(id);
        String name = request.getParameter("name");
        if(name==null||name.trim().equals("")){
            name=productDTO.getName();
        }
        String description = request.getParameter("description");
        if(description==null||description.trim().equals("")){
            name=productDTO.getDescription();
        }
        int quantity = 0;

        String quantityString=request.getParameter("quantity");
        if(quantityString==null){
         quantity=Integer.parseInt(quantityString) ;
        }else{
            quantity=productDTO.getQuantity() ;
        }
        BigDecimal price = null;
       String priceString=request.getParameter("price");
       if(priceString!=null){
        price=new BigDecimal(priceString) ;
       }else{
           price=productDTO.getPrice() ;
       }
       String categoryId = request.getParameter("category");
       if(categoryId==null||categoryId.trim().equals("")){
        categoryId=productDTO.getCategoryDto().getId()+"";
       }
        
        CategoryDTO category = new CategoryService().getCategoryWithId(categoryId);
        // System.out.println(category.getName());
        Part filePart = request.getPart("image");
        if(filePart!=null){
            
        
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
       
        imageUrl = request.getContextPath() + "/" + filePath;
    }
    else{
        imageUrl=productDTO.getImage();
    }
      ProductDTO updateProductDTO=new ProductDTO(productDTO.getId(), description, imageUrl, name, quantity, price, category) ; 
     new ProductService().editProduct(updateProductDTO);
     response.sendRedirect("../products");
        
    }
}

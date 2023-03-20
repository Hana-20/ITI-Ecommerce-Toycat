package gov.iti.toycat;

import java.math.BigDecimal;
import java.util.List;

import gov.iti.toycat.models.dtos.CategoryDTO;
import gov.iti.toycat.models.dtos.ProductDTO;
import gov.iti.toycat.models.entities.Category;
import gov.iti.toycat.models.entities.OrderProduct;
import gov.iti.toycat.models.entities.OrderProductPK;
import gov.iti.toycat.models.entities.Product;
import gov.iti.toycat.repositories.connection.ConnectionManager;
import gov.iti.toycat.services.ProductService;
import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.Persistence;

public class Main {
     public static void main(String[] args) {
    //  ConnectionManager conncetionManger=ConnectionManager.getInstance();
    //  EntityManagerFactory entityManagerFactory=conncetionManger.getEntityManagerFactory(); 
    //  EntityManager entityManager = entityManagerFactory.createEntityManager();


    //  List<Product> products = entityManager.createQuery("select p from Product p",Product.class).getResultList();
    //  System.out.println("ProductRepository: products: " + products);
    //  OrderProductPK orderProductPK = new OrderProductPK();
    //  orderProductPK.setOrderId(1);
    // orderProductPK.setProductId(1);
    // //  OrderProduct orderProduct=entityManger.find(OrderProduct.class, orderProductPK);
    // OrderProduct orderProduct=new OrderProduct();
    //  orderProduct.setQuantity(10);
    //  orderProduct.setOrderProductPK(orderProductPK);
    //  entityManger.getTransaction().begin();
    //  entityManger.persist( orderProduct);
    //  entityManger.getTransaction().commit();
    //  entityManger.close();
    // // System.out.println(orderProduct.getProduct().getName());
    // ProductService productService = new ProductService();
    // List<ProductDTO> products = productService.getAllProducts();
    // System.out.println(products);
    // ProductDTO newProduct = new ProductDTO();
    // newProduct.setName("Bandai America - Dragon Ball Evolve 5 Action Figure Ultra Instinct Goku");
    // newProduct.setImage("https://m.media-amazon.com/images/W/IMAGERENDERING_521856-T2/images/I/61ba2KjkC1L._AC_SL1500_.jpg");
    // newProduct.setDescription("BANDAI’S EXCITING DRAGON BALL SUPER EVOLVE 5-INCH FIGURE: Fans and collectors of all ages will be thrilled by this 5-inch figure that allows them to step into the world of Dragon Ball Super");
    // newProduct.setPrice(BigDecimal.valueOf(9.99));
    // newProduct.setQuantity(14);
    // newProduct.setCategoryDto(new CategoryDTO(1,"Action Figures"));
    
    // newProduct = productService.addProduct(newProduct);
    // System.out.println("\n\n\n ====== \n\n\nDONE, NEW PRODUCT DTO : " + newProduct);


    }
}

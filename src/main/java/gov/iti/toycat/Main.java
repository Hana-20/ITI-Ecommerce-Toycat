package gov.iti.toycat;

import java.math.BigDecimal;
import java.util.Date;
import java.util.List;

import gov.iti.toycat.models.dtos.CategoryDTO;
import gov.iti.toycat.models.dtos.ProductDTO;
import gov.iti.toycat.models.entities.CartItem;
import gov.iti.toycat.models.entities.CartItemPK;
import gov.iti.toycat.models.entities.Category;
import gov.iti.toycat.models.entities.OrderProduct;
import gov.iti.toycat.models.entities.OrderProductPK;
import gov.iti.toycat.models.entities.Product;
import gov.iti.toycat.models.entities.User;
import gov.iti.toycat.repositories.connection.ConnectionManager;
import gov.iti.toycat.services.ProductService;
import gov.iti.toycat.services.UserServices;
import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.Persistence;

public class Main {
    public static void main(String[] args) {
        ConnectionManager conncetionManger = ConnectionManager.getInstance();
        EntityManagerFactory entityManagerFactory = conncetionManger.getEntityManagerFactory();
        EntityManager entityManager = entityManagerFactory.createEntityManager();
        
        entityManager.getTransaction().begin();
        Category category = new Category(1,"men");
        entityManager.persist(category);
     


        Product product = new Product(1,"dasd","prooo",BigDecimal.valueOf(122),333);
        product.setCategoryId(category);
        entityManager.persist(entityManager.merge(product));


        

        User user = new User("dd@dd.com","dd","asdf1234",1000.0,new Date(),"fsaf",'0');
        entityManager.persist(user);
        entityManager.getTransaction().commit();


        entityManager.getTransaction().begin();

        CartItem cartItem = new CartItem();
        CartItemPK cid = new CartItemPK(user.getId(), product.getId());
        cartItem.setCartProductId(cid);
        cartItem.setUser(user);
        cartItem.setProduct(product);
        cartItem.setQuantity(1);
        entityManager.persist(cartItem);
        entityManager.getTransaction().commit();


        entityManager.getTransaction().begin();
        User u = entityManager.find(User.class, 1);
        System.out.println(u.getCart());
        entityManager.getTransaction().commit();


        // Cart cart = new Cart();
        // cart.setUser(user);
        // entityManager.persist(cart);
        // entityManager.merge(user);
        // entityManager.getTransaction().commit();

        // cart = entityManager.merge(cart);

        // entityManager.getTransaction().begin();
        // CartItemPK cart_id = new CartItemPK(user.getEmail());
        
        // System.out.println(">>>>(cart.getId() " + cart.getId() + "product.getId():  " + product.getId());
        // CartItem cartItem = new CartItem(cart.getId(),product.getId());
        // cartItem.setCart(cart);
        // cartItem.setProduct(product);
        // cartItem.setQuantity(1);
        // cartItem.setCartProductId(cart_id);
        // entityManager.persist(cartItem);



        // User user = entityManager.find(User.class, "dasdff@fa.com");
        // Product product = entityManager.find(Product.class, 1);


        // CartItem cartItem = new CartItem(product.getId(),1);

        // entityManager.getTransaction().begin();
        // if(user.getCart() != null){
        //     user.getCart().addCartItem(cartItem);
        // }
   
        
        // entityManager.getTransaction().commit();

        // Cart cart = user.getCart();
        // System.out.println(cart);
        // List<Product> products = entityManager.createQuery("select p from Product
        // p",Product.class).getResultList();
        // System.out.println("ProductRepository: products: " + products);
        // OrderProductPK orderProductPK = new OrderProductPK();
        // orderProductPK.setOrderId(1);
        // orderProductPK.setProductId(1);
        // // OrderProduct orderProduct=entityManger.find(OrderProduct.class,
        // orderProductPK);
        // OrderProduct orderProduct=new OrderProduct();
        // orderProduct.setQuantity(10);
        // orderProduct.setOrderProductPK(orderProductPK);
        // entityManger.getTransaction().begin();
        // entityManger.persist( orderProduct);
        // entityManger.getTransaction().commit();
        // entityManger.close();
        // // System.out.println(orderProduct.getProduct().getName());
        // ProductService productService = new ProductService();
        // List<ProductDTO> products = productService.getAllProducts();
        // System.out.println(products);
        // ProductDTO newProduct = new ProductDTO();
        // newProduct.setName("Bandai America - Dragon Ball Evolve 5 Action Figure Ultra
        // Instinct Goku");
        // newProduct.setImage("https://m.media-amazon.com/images/W/IMAGERENDERING_521856-T2/images/I/61ba2KjkC1L._AC_SL1500_.jpg");
        // newProduct.setDescription("BANDAI’S EXCITING DRAGON BALL SUPER EVOLVE 5-INCH
        // FIGURE: Fans and collectors of all ages will be thrilled by this 5-inch
        // figure that allows them to step into the world of Dragon Ball Super");
        // newProduct.setPrice(BigDecimal.valueOf(9.99));
        // newProduct.setQuantity(14);
        // newProduct.setCategoryDto(new CategoryDTO(1,"Action Figures"));

        // newProduct = productService.addProduct(newProduct);
        // System.out.println("\n\n\n ====== \n\n\nDONE, NEW PRODUCT DTO : " +
        // newProduct);

    }
}

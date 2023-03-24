package gov.iti.toycat.repositories;

import java.util.List;

import gov.iti.toycat.models.entities.Product;
import gov.iti.toycat.repositories.connection.ConnectionManager;
import jakarta.persistence.EntityManager;
import jakarta.persistence.TypedQuery;
import jakarta.persistence.criteria.CriteriaQuery;

public class ProductRepository {

    EntityManager entityManager;

    public ProductRepository() {
        entityManager = ConnectionManager.getInstance().getEntityManagerFactory().createEntityManager();
    }

    public List<Product> findAll() {
        // CriteriaQuery<Product> query =
        // entityManager.getCriteriaBuilder().createQuery(Product.class);
        // query.select(query.from(Product.class));

        List<Product> products = entityManager.createQuery("select p from Product p", Product.class).getResultList();
       // System.out.println("ProductRepository: products: " + products);
        return products;
    }

    public Product insertProduct(Product product) {
        entityManager.getTransaction().begin();
        entityManager.persist(product);
        entityManager.getTransaction().commit();
        return product;
    }

    public List<Product> searchProducts(String queryString) {
        // CriteriaQuery<Product> query =
        // entityManager.getCriteriaBuilder().createQuery(Product.class);
        // query.select(query.from(Product.class));

        System.out.println("inside ------------------------- search");
        System.out.println(queryString);
        
        TypedQuery<Product> query = entityManager.createQuery("SELECT p FROM Product p WHERE LOWER(p.name) LIKE CONCAT('%', LOWER(:query), '%')", Product.class); 
        query.setParameter("query", queryString);
        List<Product> matchingProducts = query.getResultList();

        // TypedQuery<Product> query = entityManager.createQuery("select p from Product p where p.name LIKE '%?1%'" , Product.class);
        // List<Product> products = query.setParameter(1, queryString).getResultList();
        System.out.println();
        System.out.println();
        System.out.println();
        System.out.println();
        System.out.println("ProductRepository: search products: " +matchingProducts);
        System.out.println();
        System.out.println();
        System.out.println();
        System.out.println();
        return matchingProducts;
    }
}

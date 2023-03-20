package gov.iti.toycat.repositories;

import java.util.List;

import gov.iti.toycat.models.entities.Product;
import gov.iti.toycat.repositories.connection.ConnectionManager;
import jakarta.persistence.EntityManager;
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
        System.out.println("ProductRepository: products: " + products);
        return products;
    }

    public Product insertProduct(Product product) {
        entityManager.getTransaction().begin();
        entityManager.persist(product);
        entityManager.getTransaction().commit();
        return product;
    }
}

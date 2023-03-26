package gov.iti.toycat.repositories;

import java.util.ArrayList;
import java.util.List;

import gov.iti.toycat.models.entities.Product;
import gov.iti.toycat.repositories.connection.ConnectionManager;
import jakarta.persistence.EntityManager;
import jakarta.persistence.TypedQuery;

public class ProductRepository {

    EntityManager entityManager;

    public ProductRepository() {
        entityManager = ConnectionManager.getInstance().getEntityManagerFactory().createEntityManager();
    }

    public List<Product> findAll() {
        List<Product> products = entityManager.createQuery("select p from Product p", Product.class).getResultList();
        return products;
    }

    public Product insertProduct(Product product) {
        entityManager.getTransaction().begin();
        entityManager.persist(product);
        entityManager.getTransaction().commit();
        return product;
    }

    public List<Product> searchProducts(String queryString) {

        System.out.println("inside ------------------------- search");
        System.out.println(queryString);

        TypedQuery<Product> query = entityManager.createQuery(
                "SELECT p FROM Product p WHERE LOWER(p.name) LIKE CONCAT('%', LOWER(:query), '%')", Product.class);
        query.setParameter("query", queryString);
        List<Product> matchingProducts = query.getResultList();

        return matchingProducts;
    }

    public int deleteProduct(int id) {
        entityManager.getTransaction().begin();

        int deletedCount = entityManager.createQuery("DELETE FROM Product p WHERE p.id = :productId")
                .setParameter("productId", id)
                .executeUpdate();
        entityManager.getTransaction().commit();
        return deletedCount;
    }

    public Long getTotalProductsCount() {
        Long count = entityManager.createQuery("SELECT COUNT(p) FROM Product p", Long.class).getSingleResult();
        return count;
    }

    public List<Product> searchByCategory(String categoryString) {

        System.out.println("inside ------------------------- category");
        System.out.println(categoryString);

        List<Product> products = new ArrayList<Product>();

        // switch(categoryString){
        // case "Action_Figures":
        // products = entityManager.createQuery("SELECT p FROM Product p, Categroy c
        // WHERE p.category_id=1", Product.class).getResultList();
        // break;
        // case "Dolls_and_Accessories":
        // products = entityManager.createQuery("SELECT p FROM Product p, Categroy c
        // WHERE p.category_id=2", Product.class).getResultList();
        // break;
        // case "Building_Toys":
        // products = entityManager.createQuery("SELECT p FROM Product p, Categroy c
        // WHERE p.category_id=3", Product.class).getResultList();
        // break;

        // default:

        // // Print statement corresponding case
        // System.out.println("no match");

        // }

        // products = entityManager.createQuery("SELECT p FROM Product p, Categroy c
        // WHERE p.category_id=6", Product.class).getResultList();

        products = entityManager
                .createQuery("SELECT p FROM Product p WHERE p.categoryId.name = :specificCategoryName", Product.class)
                .setParameter("specificCategoryName", categoryString).getResultList();

        // TypedQuery<Product> query = entityManager.createQuery("select p from Product
        // p where p.name LIKE '%?1%'" , Product.class);
        // List<Product> products = query.setParameter(1, queryString).getResultList();
        System.out.println();
        System.out.println();
        System.out.println();
        System.out.println();
        System.out.println("ProductRepository: search products: " + products);
        System.out.println();
        System.out.println();
        System.out.println();
        System.out.println();

        return products;

    }
}

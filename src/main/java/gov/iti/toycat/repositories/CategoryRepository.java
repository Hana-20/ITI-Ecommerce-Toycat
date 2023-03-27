package gov.iti.toycat.repositories;

import java.util.List;

import gov.iti.toycat.models.entities.Category;
import gov.iti.toycat.repositories.connection.ConnectionManager;
import jakarta.persistence.EntityManager;


public class CategoryRepository {

    EntityManager entityManager;

    public CategoryRepository() {
        entityManager = ConnectionManager.getInstance().getEntityManagerFactory().createEntityManager();
    }

    public List<Category> findAll() {
        List<Category> categories = entityManager.createQuery("select c from Category c", Category.class)
                .getResultList();
        return categories;
    }

    public Category findCategoryWithId(String id) {
        Category category = entityManager.find(Category.class, id);
        return category;
    }

}

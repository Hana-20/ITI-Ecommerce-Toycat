package gov.iti.toycat.repositories;

import java.util.List;

import gov.iti.toycat.models.entities.CartItem;
import gov.iti.toycat.models.entities.CartItemPK;
import gov.iti.toycat.repositories.connection.ConnectionManager;
import jakarta.persistence.EntityManager;

public class CartRepository {

    EntityManager entityManager;

    public CartRepository() {
        entityManager = ConnectionManager.getInstance().getEntityManagerFactory().createEntityManager();
    }

    public void save(CartItem cartItem) {
        entityManager.getTransaction().begin();
        entityManager.persist(cartItem);
        entityManager.getTransaction().commit();
    }

    public List<CartItem> findAllforUser(String userEmail) {
        List<CartItem> cartItems = entityManager
                .createQuery("select c from CartItem c where user.email = :email", CartItem.class)
                .setParameter("email", userEmail).getResultList();
        return cartItems;
    }

    public void update(CartItem cartItem) {
        entityManager.getTransaction().begin();
        entityManager.merge(cartItem);
        entityManager.getTransaction().commit();
    }

    public CartItem findById(CartItemPK id) {
        return entityManager.find(CartItem.class, id);
    }

    public void refresh(CartItem cartItem) {
        entityManager.refresh(cartItem);
    }

    public void delete(CartItemPK id) {
        CartItem cartItem = findById(id);
        if (cartItem != null) {
            entityManager.getTransaction().begin();
            entityManager.remove(cartItem);
            entityManager.getTransaction().commit();
        }
    }
}

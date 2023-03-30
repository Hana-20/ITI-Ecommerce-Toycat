package gov.iti.toycat.repositories;

import java.math.BigDecimal;
import java.time.LocalDateTime;
import gov.iti.toycat.models.entities.CartItem;
import gov.iti.toycat.models.entities.Order;
import gov.iti.toycat.models.entities.OrderItem;
import gov.iti.toycat.models.entities.OrderProductPK;
import gov.iti.toycat.models.entities.User;
import gov.iti.toycat.repositories.connection.ConnectionManager;
import jakarta.persistence.EntityManager;
import java.util.List;

public class OrderRepository {
    EntityManager entityManager;

    public OrderRepository() {
        entityManager = ConnectionManager.getInstance().getEntityManagerFactory().createEntityManager();
    }

    public void createOrderForUser(String userEmail) {
        entityManager.getTransaction().begin();
        User user = entityManager.find(User.class, userEmail);
        Order order = new Order();
        order.setStatus("pending");
        order.setTotalPrice(BigDecimal.valueOf(0));
        order.setUserEmail(user);
        order.setCreatedAt(LocalDateTime.now());

        entityManager.persist(order);
        List<CartItem> cart = user.getCart();
        BigDecimal totalPrice = BigDecimal.valueOf(0);
        for (CartItem cartItem : cart) {
            OrderItem item = new OrderItem(new OrderProductPK(order.getId(), cartItem.getProduct().getId()));
            item.setProduct(cartItem.getProduct());
            item.setQuantity(cartItem.getQuantity());

            totalPrice = totalPrice.add(cartItem.getProduct().getPrice().multiply(BigDecimal.valueOf(cartItem.getQuantity())));
            order.getOrderItems().add(item);
        }

        System.out.println(totalPrice.toString());
        order.setTotalPrice(totalPrice);
        entityManager.merge(order);

        
        for (OrderItem item : order.getOrderItems()) {
            entityManager.persist(item);
        }

   

        entityManager.getTransaction().commit();
        // entityManager.close();
    }

    public Long getTotalCount() {
        Long count = entityManager.createQuery("SELECT COUNT(o) FROM Order o", Long.class).getSingleResult();
        return count;
    }
}

package gov.iti.toycat.repositories;

import gov.iti.toycat.models.entities.User;
import gov.iti.toycat.repositories.connection.ConnectionManager;
import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;

public class UserRepository {
    ConnectionManager conncetionManger = ConnectionManager.getInstance();
    private EntityManagerFactory entityManagerFactory = conncetionManger.getEntityManagerFactory();

    public boolean inserUser(User user) {
        EntityManager entityManger = entityManagerFactory.createEntityManager();
        entityManger.getTransaction().begin();
        entityManger.persist(user);
        entityManger.getTransaction().commit();
        entityManger.close();
        return true;
    }

    public User getUser(String email) {
        EntityManager entityManger = entityManagerFactory.createEntityManager();
        User user = entityManger.find(User.class, email.trim());
        System.out.println("loggedUser email: "+user.getEmail());
        System.out.println("loggedUser password: "+user.getPassword());

       return user;

    }
}
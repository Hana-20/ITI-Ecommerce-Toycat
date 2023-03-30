package gov.iti.toycat.repositories;

import java.util.List;

import gov.iti.toycat.models.dtos.User.LoginDTO;
import gov.iti.toycat.models.entities.User;
import gov.iti.toycat.repositories.connection.ConnectionManager;
import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.TypedQuery;
import jakarta.persistence.criteria.CriteriaBuilder;
import jakarta.persistence.criteria.CriteriaQuery;
import jakarta.persistence.criteria.Predicate;
import jakarta.persistence.criteria.Root;

public class UserRepository {
    ConnectionManager conncetionManger = ConnectionManager.getInstance();
    private EntityManagerFactory entityManagerFactory = conncetionManger.getEntityManagerFactory();
    EntityManager entityManager = entityManagerFactory.createEntityManager();

    public boolean inserUser(User user) {
        entityManager.getTransaction().begin();
        entityManager.persist(user);
        entityManager.getTransaction().commit();
        return true;
    }

    public User getUser(String email) {
        User user = entityManager.find(User.class, email.trim());

       return user;

    }
    public User getUserByEmailAndPassword(LoginDTO LoginUser) {
        CriteriaBuilder criteriaBuilder = entityManager.getCriteriaBuilder();
        User user=null;
        // Create a criteria query for the User entity
        CriteriaQuery<User> criteriaQuery = criteriaBuilder.createQuery(User.class);
        
        // Get the root entity (User)
        Root<User> root = criteriaQuery.from(User.class);
        
        // Add the WHERE clause to the criteria query
        Predicate usernamePredicate = criteriaBuilder.equal(root.get("email"), LoginUser.getEmail());
        Predicate passwordPredicate = criteriaBuilder.equal(root.get("password"), LoginUser.getPassword());
        criteriaQuery.where(usernamePredicate, passwordPredicate);
        
        // Execute the query
        TypedQuery<User> query = entityManager.createQuery(criteriaQuery);
        List<User> result = query.getResultList();
        if (!result.isEmpty()) {
            user = result.get(0);
            // Login successful, do something with the user
        } else {
            // Login failed
        }
        System.out.println("loggedUser email: "+LoginUser.getEmail());
        System.out.println("loggedUser password: "+LoginUser.getPassword());

       return user;

    }

    
    public Long getTotalUsersCount() {
        Long count = entityManager.createQuery("SELECT COUNT(u) FROM User u", Long.class).getSingleResult();
        return count;
    }
    public List<User> getAllUsers(){
        CriteriaBuilder cb = entityManager.getCriteriaBuilder();
        CriteriaQuery<User> cq = cb.createQuery(User.class);
        Root<User> root = cq.from(User.class);
        cq.select(root);
        return  entityManager.createQuery(cq).getResultList();
    }
    public void updateUserData(User user ){
        entityManager.getTransaction().begin();
        entityManager.merge(user);
        entityManager.flush();
        entityManager.getTransaction().commit();
    }
}
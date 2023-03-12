package gov.iti.toycat.presistance.dao;

import gov.iti.toycat.models.User;
import gov.iti.toycat.presistance.connection.MyEntityMangerFactory;
import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.Persistence;

public class Dao {
    // private EntityManager entityManager;
    private EntityManagerFactory entityManagerFactory =MyEntityMangerFactory.getEntityManagerFactory();
    private EntityManager getEntityManger(){
        return entityManagerFactory.createEntityManager();
    }
public void closeEntityManger(){
    if(entityManagerFactory!=null)
        entityManagerFactory.close();
     }   
       

public boolean register(User user){
    EntityManager entityManger = entityManagerFactory.createEntityManager();
    //do registration logic
    entityManger.close();
return false;
}
public User login(User user){
    EntityManager entityManger = entityManagerFactory.createEntityManager();
    //do login logics
    entityManger.close();
    return new User();
}
}


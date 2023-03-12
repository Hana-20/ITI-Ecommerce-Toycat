package gov.iti.toycat.presistance.connection;

import com.mysql.cj.jdbc.MysqlDataSource;

import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.Persistence;

public class MyEntityMangerFactory {

    private static  EntityManagerFactory entityManagerFactory ;

    private MyEntityMangerFactory() {

    }

    public  static EntityManagerFactory getEntityManagerFactory() {
        if (entityManagerFactory == null) {
            entityManagerFactory = Persistence.createEntityManagerFactory("HAM");
        }
        return entityManagerFactory;
    }
}

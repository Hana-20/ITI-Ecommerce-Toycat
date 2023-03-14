package gov.iti.toycat.repositories.connection;

import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.Persistence;

public class ConnectionManager {

    private static  EntityManagerFactory entityManagerFactory ;
    private static ConnectionManager instance;

    private ConnectionManager() {
        entityManagerFactory = Persistence.createEntityManagerFactory("toycat-pu");
    }

    public  static ConnectionManager getInstance() {
        synchronized (ConnectionManager.class) {
            if (instance == null) {
                instance = new ConnectionManager();
            }
        }

        return instance;
    }

    public EntityManagerFactory getEntityManagerFactory() {
        return entityManagerFactory;
    }

    public void shutdown() {
        entityManagerFactory.close();
    }
}

package gov.iti.toycat.listeners;

import gov.iti.toycat.presistance.dao.Dao;
import jakarta.servlet.ServletContextEvent;
import jakarta.servlet.ServletContextListener;

public class ContextListener implements ServletContextListener {
    private Dao dao;

    public void contextInitialized(ServletContextEvent event) {
        dao = new Dao();
        event.getServletContext().setAttribute("myDao", dao);
    }

    public void contextDestroyed(ServletContextEvent event) {
        dao.closeEntityManger();
    }
}

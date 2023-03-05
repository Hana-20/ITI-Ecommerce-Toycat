package gov.iti.toycat.services;

import java.util.List;

import gov.iti.toycat.models.User;
import gov.iti.toycat.presistance.dao.Dao;



public class UserServices {
    public boolean register(User user){
        return Dao.getDBService().register(user);
    }
    public User login(User user){
        return Dao.getDBService().login(user);
    }
    public List<User> selectUsers(String name){
        return Dao.getDBService().selectUsers(name);
    }

}

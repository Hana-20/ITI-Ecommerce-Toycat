package gov.iti.toycat.services;

import gov.iti.toycat.models.entities.User;
import gov.iti.toycat.repositories.UserRepository;


public class UserServices {
    UserRepository userRepository=new UserRepository();
     public boolean register(User user){
        return userRepository.inserUser(user);
        
     }
    // public Users login(User user){
    // }
    // public List<User> selectUsers(String name){
    // }

}

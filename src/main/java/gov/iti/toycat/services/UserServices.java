package gov.iti.toycat.services;

import gov.iti.toycat.models.entities.User;
import gov.iti.toycat.repositories.UserRepository;



public class UserServices {
  
     public boolean register(User user){
        UserRepository userRepository=new UserRepository();
        return userRepository.inserUser(user);
        
     }
    public boolean isEmailExist(String email) {
        UserRepository userRepository=new UserRepository();
        if(userRepository.getUser(email)!=null){
            return true;
        }
        return false;
     }
    public boolean login(User user){
        UserRepository userRepository=new UserRepository();
        User loggedUser =userRepository.getUser(user.getEmail());
        if(loggedUser!=null && loggedUser.getPassword().equals(user.getPassword())){
            return false;
        }
        else{
            return true;
        }   
    }
}




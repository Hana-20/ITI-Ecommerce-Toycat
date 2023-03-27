package gov.iti.toycat.services;

import gov.iti.toycat.models.dtos.User.LoginDTO;
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
    public User login(LoginDTO user){
        UserRepository userRepository=new UserRepository();
        User loggedUser =userRepository.getUserByEmailAndPassword(user);
            return loggedUser;
        
    }
    public void Update(User user){
        UserRepository userRepository=new UserRepository();
        userRepository.updateUserData(user);
    }
}




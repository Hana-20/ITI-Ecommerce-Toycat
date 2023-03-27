package gov.iti.toycat.models.mappers;

import gov.iti.toycat.models.dtos.User.UserDTO;
import gov.iti.toycat.models.entities.User;

public class UserMapper {
    public static UserDTO toDto(User user) {
        UserDTO  dto = new UserDTO();
        dto.setCreditLimit(user.getCreditLimit());
        dto.setAddress(user.getAddress());
        dto.setUsername(user.getUsername());
        dto.setPassword(user.getPassword());
        dto.setEmail(user.getEmail());
        dto.setBirthday(user.getBirthday());
        dto.setRole(user.getRole());
        return dto;
    }

    public static User toEntity(UserDTO userDTO) {
        User user=new User();
        user.setCreditLimit(userDTO.getCreditLimit());
        user.setAddress(userDTO.getAddress());
        user.setUsername(userDTO.getUsername());
        user.setPassword(userDTO.getPassword());
        user.setEmail(userDTO.getEmail());
        user.setBirthday(userDTO.getBirthday());
        user.setRole(userDTO.getRole());
        return user;
        
    }
}

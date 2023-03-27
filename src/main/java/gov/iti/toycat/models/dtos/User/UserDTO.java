package gov.iti.toycat.models.dtos.User;

import java.util.Date;

public class UserDTO {
    private String email;
    private String address;
    private Date birthday;
    private double creditLimit;
    private String password;
    private char role;
    private String username;
    
    public UserDTO(String email, String address, Date birthday, double creditLimit, String password, char role,
            String username) {
        this.email = email;
        this.address = address;
        this.birthday = birthday;
        this.creditLimit = creditLimit;
        this.password = password;
        this.role = role;
        this.username = username;
    }

   

    public String getEmail() {
        return email;
    }

    public UserDTO() {
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public Date getBirthday() {
        return birthday;
    }

    public void setBirthday(Date birthday) {
        this.birthday = birthday;
    }

    public double getCreditLimit() {
        return creditLimit;
    }

    public void setCreditLimit(double creditLimit) {
        this.creditLimit = creditLimit;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public char getRole() {
        return role;
    }

    public void setRole(char role) {
        this.role = role;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

}

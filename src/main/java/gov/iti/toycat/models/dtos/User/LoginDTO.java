package gov.iti.toycat.models.dtos.User;

public class LoginDTO {
    private String email;
    private String password;
 
    public LoginDTO() {
    }
    public String getEmail() {
        return email;
    }
    public LoginDTO(String email, String password) {
        this.email = email;
        this.password = password;
    }
    public void setEmail(String email) {
        this.email = email;
    }
    public String getPassword() {
        return password;
    }
    public void setPassword(String password) {
        this.password = password;
    }
    
}

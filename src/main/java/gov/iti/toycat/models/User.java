package gov.iti.toycat.models;

public class User {

    private String email;
    private String userName;
    private String passwd;
    private int role;
    public String getUserName() {
        return userName;
    }
    public void setUserName(String userName) {
        this.userName = userName;
    }
    public int getRole() {
        return role;
    }
    public void setRole(int role) {
        this.role = role;
    }
    public String getPasswd() {
        return passwd;
    }
    public void setPasswd(String passwd) {
        this.passwd = passwd;
    }
    public String getEmail() {
        return email;
    }
    public void setEmail(String email) {
        this.email = email;
    }
    public User(int role,String email, String userName, String passwd) {
        this.email = email;
        this.userName = userName;
        this.passwd = passwd;
    }
    public User(){

    }
    
}

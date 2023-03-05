package gov.iti.toycat.presistance.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.SQLIntegrityConstraintViolationException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;


import com.mysql.cj.jdbc.MysqlDataSource;

import gov.iti.toycat.models.User;
import gov.iti.toycat.presistance.connection.DataSourceFactory;

public class Dao {

    DataSourceFactory dataSource;
    Connection myConnection;
    ResultSet result = null;
    PreparedStatement myStatement;
    Statement statement;
    MysqlDataSource mysqlDS=null;

    static Dao dbService = new Dao();

    public static Dao getDBService() {
        return dbService;
    }

    private Dao() {
        dataSource=new DataSourceFactory();
        mysqlDS=dataSource.getMysqlDataSource();
    }

    public boolean register(User user) { 
        try {
            String sql="INSERT INTO employee Values (?,?,?,'0')";
            myConnection=mysqlDS.getConnection();
            myStatement = myConnection.prepareStatement(sql,ResultSet.TYPE_SCROLL_SENSITIVE
            ,ResultSet.CONCUR_UPDATABLE);
            myConnection.setAutoCommit( false );
            myStatement.setString(1 ,user.getUserName());
            myStatement.setString(2 ,user.getEmail());
            myStatement.setString(3 ,user.getPasswd());
            int count=myStatement.executeUpdate();
            if(count==1) {
                myConnection.commit();
                System.out.println("succsessfully registered");
                return true;
            }
        }catch (SQLIntegrityConstraintViolationException c) {
            c.printStackTrace();
            return false;
        } 
        catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
            return false;
        }

        return false;
    }

    public  List<User> selectUsers(String name) {
        List <User> users=new ArrayList<User>();
        try {
            myConnection=mysqlDS.getConnection();
            myStatement = myConnection.prepareStatement("SELECT * FROM employee WHERE username like ? or email like ?",ResultSet.TYPE_SCROLL_SENSITIVE
            ,ResultSet.CONCUR_UPDATABLE);
            myStatement.setString(1, "%" + name.trim() + "%");
            myStatement.setString(2, "%" + name.trim() + "%");  
            result = myStatement.executeQuery();
            while(result.next()) {
                User user=new User(result.getInt("role"),result.getString("email"),result.getString("username"),result.getString("password"));
                users.add(user);
            }
            
        } catch (SQLException e) {
            
            e.printStackTrace();
            return null;
        }
        return users;
    }

    public User login(User user) {

        String sql="select * from employee where username=? and password=? ";
        try {
            myConnection=mysqlDS.getConnection();
            myStatement = myConnection.prepareStatement(sql,ResultSet.TYPE_SCROLL_SENSITIVE
        ,ResultSet.CONCUR_UPDATABLE);
        myStatement.setString(1, user.getUserName());
        myStatement.setString(2, user.getPasswd());
        ResultSet result =myStatement.executeQuery();
        result.next();
        user.setRole(result.getInt("role"));
        user.setEmail(result.getString("email"));
            return user;
        } catch (SQLException e) {
            
            e.printStackTrace();
            return null;
        }
    }
    
}

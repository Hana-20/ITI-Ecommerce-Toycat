package gov.iti.toycat.presistance.connection;


import com.mysql.cj.jdbc.MysqlDataSource;

public class DataSourceFactory {

    MysqlDataSource mysqlDS=null;

    public DataSourceFactory() {
        mysqlDS = new MysqlDataSource();
        mysqlDS.setURL("jdbc:mysql://localhost:3306/employee");
        mysqlDS.setUser("root");
        mysqlDS.setPassword("");
    }

    public MysqlDataSource getMysqlDataSource() {
        return mysqlDS;
    }
}

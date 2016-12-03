package bean.DAO;

import bean.UserCreation;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.sql.DataSource;
import javax.naming.InitialContext;
import javax.naming.NamingException;

import java.sql.DriverManager;


/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author benkandov
 */
public class RegistrationDao {
    
    public static int register(UserCreation u) throws SQLException,ClassNotFoundException{
        int status = 0;
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn;
        try{
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/groupTest", "root", "root");
            PreparedStatement ps = conn.prepareStatement("Call createUser(?,?,?,?)");
            
            ps.setString(1, u.getFirstName());
            ps.setString(2, u.getLastName());
            ps.setString(3, u.getEmail());
            ps.setString(4, u.getPassword());
            
         
            status = ps.executeUpdate();
            
            conn.close();
        }
        catch(SQLException e){
            System.out.println(e);
        }
     
        return status;   
    }
    
    /*
    public static int createAccount(User user) {
        int status = 0;
        Connection conn = null;
        try {
            InitialContext ctx = new InitialContext();
            DataSource ds = (DataSource)ctx.lookup("jdbc/sample");
            conn = (Connection) ds.getConnection();
            PreparedStatement ps = conn.prepareStatement("Call createAccount(?)");

            ps.setString(1, u.getUserId());

            status = ps.executeUpdate();
            
            conn.close();
        } catch(NamingException | SQLException e){
            System.out.println(e);
        }
        return status;   
    }*/
}

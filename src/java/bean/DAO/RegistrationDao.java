package bean.DAO;

import bean.User;
import bean.UserCreation;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.sql.DataSource;
import javax.naming.InitialContext;
import javax.naming.NamingException;

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
    
    public static int register(UserCreation u) throws SQLException{
        int status = 0;
        Connection conn = null;
        try{
            InitialContext ctx = new InitialContext();
            DataSource ds = (DataSource)ctx.lookup("Bazaar_Application_Connection");
            conn = (Connection) ds.getConnection();
            PreparedStatement ps = conn.prepareStatement("Call createUser(?,?,?,?)");
            
            ps.setString(1, u.getFirstName());
            ps.setString(2, u.getLastName());
            ps.setString(3, u.getEmail());
            ps.setString(4, u.getPassword());
          
            status = ps.executeUpdate();
            createAccount(LoginDao.login(u));
            
            conn.close();
        }
        catch(NamingException | SQLException e){
            System.out.println(e);
        }
     
        return status;   
    }
    
    public static int createAccount(User user) {
        int status = 0;
        Connection conn = null;
        try {
            InitialContext ctx = new InitialContext();
            DataSource ds = (DataSource)ctx.lookup("Bazaar_Application_Connection");
            conn = (Connection) ds.getConnection();
            PreparedStatement ps = conn.prepareStatement("Call createAccount(?)");

            ps.setString(1, (user.getUserId()));

            status = ps.executeUpdate();
            
            conn.close();
        } catch(NamingException | SQLException e){
            System.out.println(e);
        }
        return status;   
    }
}

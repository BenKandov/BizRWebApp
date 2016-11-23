/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bean.DAO;

import bean.User;
import bean.UserCreation;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.sql.DataSource;
import javax.naming.InitialContext;
import javax.naming.NamingException;

/**
 *
 * @author benkandov
 */
public class LoginDao {
     public static User login(UserCreation u) throws SQLException{
         User user = null;
         Connection conn = null;
         try{
            InitialContext ctx = new InitialContext();
            DataSource ds = (DataSource)ctx.lookup("Bazaar_Application_Connection");
            conn = (Connection) ds.getConnection();
            PreparedStatement ps = conn.prepareStatement("Call signIn(?,?)");
            
          
            ps.setString(1, u.getEmail());
            ps.setString(2, u.getPassword());
            ResultSet rs = ps.executeQuery();
            
            
            rs.next();
            System.out.println(rs);
            user =  new User( rs.getInt("userid"),rs.getString("FirstName"),
            rs.getString("lastname"), rs.getString("email"),rs.getString("phonenumber"),
            rs.getString("address"),rs.getString("state"),rs.getString("city"),rs.getString("zipcode"),
            rs.getString("creditcard"), rs.getString("creationdate"));
            
            
            
            conn.close();
            
         }
         catch(NamingException | SQLException e){
             System.out.println(e);
         }
         
         return user;
    
         
     }
}
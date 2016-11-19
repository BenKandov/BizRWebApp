/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bean;

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
     public static int login(User u) throws SQLException{
         int status = 0;
         Connection conn = null;
         try{
            InitialContext ctx = new InitialContext();
            DataSource ds = (DataSource)ctx.lookup("Bazaar_Application_Connection");
            conn = (Connection) ds.getConnection();
            PreparedStatement ps = conn.prepareStatement("Call signIn(?,?)");
            
          
            ps.setString(1, u.getEmail());
            ps.setString(2, u.getPassword());
            ResultSet rs = ps.executeQuery();
            
            status =  rs.findColumn("userid");
            
            
            conn.close();
            
         }
         catch(NamingException | SQLException e){
             System.out.println(e);
         }
         return status;
    
         
     }
}

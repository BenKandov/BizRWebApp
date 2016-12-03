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
import java.util.ArrayList;
import java.util.List;
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
            user =  new User( rs.getString("userid"),rs.getString("FirstName"),
            rs.getString("lastname"), rs.getString("email"),rs.getString("phonenumber"),
            rs.getString("address"),rs.getString("state"),rs.getString("city"),rs.getString("zipcode"),
            rs.getString("creditcard"), rs.getString("creationdate"));
            
            
            
           
            
         }
         catch(NamingException | SQLException e){
             System.out.println(e);
         }
         if (conn != null)
            conn.close();
         return user;
    
         
     }
   public static String getUserIdFromEmail(String email) throws SQLException{
       Connection conn = null;
       String id = "";
       try{
           InitialContext ctx = new InitialContext();
           DataSource ds = (DataSource)ctx.lookup("Bazaar_Application_Connection");
           conn = (Connection) ds.getConnection();
           PreparedStatement ps = conn.prepareStatement("select userid from"
                   + " buser where email = ?");
           
           ps.setString(1, email);
           
           
           ResultSet rs = ps.executeQuery();
           rs.next();
           id = rs.getString("userid");
           
       }catch(NamingException | SQLException e){
           System.out.println(e);
       }
       
       if (conn != null)
            conn.close();
       
       return id;
   }
     
   public static String getEmailFromUserId(String id) throws SQLException{
       Connection conn = null;
       String email = "";
       try{
           InitialContext ctx = new InitialContext();
           DataSource ds = (DataSource)ctx.lookup("Bazaar_Application_Connection");
           conn = (Connection) ds.getConnection();
           PreparedStatement ps = conn.prepareStatement("select email from"
                   + " buser where userid = ?");
           
           ps.setString(1, id);
           
           
           ResultSet rs = ps.executeQuery();
           rs.next();
           email = rs.getString("email");
           
       }catch(NamingException | SQLException e){
           System.out.println(e);
       }
       
       if (conn != null)
            conn.close();
       
       return email;
   }
     
     
   public static int update(User u) throws SQLException{
         int status = 0;
         Connection conn = null;
         try{
            InitialContext ctx = new InitialContext();
            DataSource ds = (DataSource)ctx.lookup("Bazaar_Application_Connection");
            conn = (Connection) ds.getConnection();
            PreparedStatement ps = conn.prepareStatement("UPDATE BUSER SET "
                    + "firstname = ?, lastname = ?, phonenumber = ?, address =?,"
                    + "state = ?, city = ?, zipcode = ?, creditcard = ? where "
                    + "email = ?");
            
            ps.setString(1,u.getFirstName());
            ps.setString(2,u.getLastName());
            ps.setString(3,u.getPhoneNumber());
            ps.setString(4,u.getAddress());
            ps.setString(5,u.getState());
            ps.setString(6,u.getCity());
            ps.setString(7,u.getZipCode());
            ps.setString(8,u.getCreditCard());
            ps.setString(9,u.getEmail());
            
            
            status = ps.executeUpdate();
            
         }
         catch(NamingException | SQLException e){
            System.out.println(e);
         }
         
         if (conn != null)
            conn.close();
         
         return status;
     }
   
   public static List<User> searchForUsers(String criteria) throws SQLException{
        List<User> usrs = new ArrayList<User>();
        Connection conn = null;
        try{
            InitialContext ctx = new InitialContext();
            DataSource ds = (DataSource)ctx.lookup("Bazaar_Application_Connection");
            conn = (Connection) ds.getConnection();
            PreparedStatement ps = conn.prepareStatement("Select Distinct * from Buser where email like ?");
            
            ps.setString(1,"%" + criteria  + "%");
            
            ResultSet rs = ps.executeQuery();
            
            while(rs.next()){
                
                User user = new User();
                user.setEmail(rs.getString("email"));
                usrs.add(user);
                
            }
            
        }
        catch(NamingException | SQLException e){
            System.out.println(e);
        }
        
        if (conn != null)
            conn.close();

        return usrs;
   }
   public static User getUserFromUserId(String userid ) throws SQLException{
         User user = null;
         Connection conn = null;
         try{
            InitialContext ctx = new InitialContext();
            DataSource ds = (DataSource)ctx.lookup("Bazaar_Application_Connection");
            conn = (Connection) ds.getConnection();
            PreparedStatement ps = conn.prepareStatement("select * from buser where userid =?");
            
          
            ps.setString(1, userid);
     
            ResultSet rs = ps.executeQuery();
            
            
            rs.next();
            System.out.println(rs);
            user =  new User( rs.getString("userid"),rs.getString("FirstName"),
            rs.getString("lastname"), rs.getString("email"),rs.getString("phonenumber"),
            rs.getString("address"),rs.getString("state"),rs.getString("city"),rs.getString("zipcode"),
            rs.getString("creditcard"), rs.getString("creationdate"));
            
            
            
           
            
         }
         catch(NamingException | SQLException e){
             System.out.println(e);
         }
         if (conn != null)
            conn.close();
         return user;
    
         
     }
}

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bean.DAO;

import bean.Employee;
import bean.UserCreation;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

/**
 *
 * @author benkandov
 */
public class EmployeeDao {
    public static String login(Employee em) throws SQLException{
         String status  = "";
         Connection conn = null;
         try{
            InitialContext ctx = new InitialContext();
            DataSource ds = (DataSource)ctx.lookup("Bazaar_Application_Connection");
            conn = (Connection) ds.getConnection();
            PreparedStatement ps = conn.prepareStatement("select * from employee where"
                    + " firstname = ? and lastname = ?");
            
          
            ps.setString(1, em.getFirstName());
            ps.setString(2, em.getLastName());
            ResultSet rs = ps.executeQuery();
            
            rs.next();
            status = rs.getString("ssn");
         }
         catch(NamingException | SQLException e){
             System.out.println(e);
         }
         if (conn != null)
            conn.close();
         return status;
    
         
     }
    public static int register(Employee em) throws SQLException{
        int status = 0;
        Connection conn = null;
        try{
            InitialContext ctx = new InitialContext();
            DataSource ds = (DataSource)ctx.lookup("Bazaar_Application_Connection");
            conn = (Connection) ds.getConnection();
            PreparedStatement ps = conn.prepareStatement("insert into employee(StartDate,EmployeeType,"
                    + "FirstName,LastName) Values(Curdate(), ?, ? ,?) ");
            
            
            
            ps.setString(1, em.getEmployeeType());
            ps.setString(2, em.getFirstName());
            ps.setString(3, em.getLastName());
      
            status = ps.executeUpdate();
            
            conn.close();
        }
        catch(NamingException | SQLException e){
            System.out.println(e);
        }
     
        return status;   
    }
    public static int deleteEmployee(String id) throws SQLException{
        int status = 0;
        Connection conn = null;
        try{
            InitialContext ctx = new InitialContext();
            DataSource ds = (DataSource)ctx.lookup("Bazaar_Application_Connection");
            conn = (Connection) ds.getConnection();
            PreparedStatement ps = conn.prepareStatement("delete from employee where"
                    + " ssn = ?");
            
            
            
            ps.setString(1, id);

      
            status = ps.executeUpdate();
            
            conn.close();
        }
        catch(NamingException | SQLException e){
            System.out.println(e);
        }
     
        return status;   
    }
    
    public static Employee getEmployeeById(String id) throws SQLException{
         Employee em = new Employee();
         Connection conn = null;
         try{
            InitialContext ctx = new InitialContext();
            DataSource ds = (DataSource)ctx.lookup("Bazaar_Application_Connection");
            conn = (Connection) ds.getConnection();
            PreparedStatement ps = conn.prepareStatement("select * from employee where"
                    + " ssn = ?");
            
          
            ps.setString(1, id);
          
            ResultSet rs = ps.executeQuery();
            
            rs.next();
            
            em.setHourlyRate(rs.getString("hourlyrate"));
            em.setPhoneNum(rs.getString("phonenum"));
            em.setZipcode(rs.getString("zipcode"));
            em.setEmployeeType(rs.getString("employeetype"));
            em.setState(rs.getString("state"));
            em.setCity(rs.getString("city"));
            em.setAddress(rs.getString("address"));
            em.setFirstName(rs.getString("firstname"));
            em.setLastName(rs.getString("lastname"));
            
            
            
         }
         catch(NamingException | SQLException e){
             System.out.println(e);
         }
         if (conn != null)
            conn.close();
         return em;
    
         
     }
    public static int update(Employee em) throws SQLException{
         int status = 0;
         Connection conn = null;
         try{
            InitialContext ctx = new InitialContext();
            DataSource ds = (DataSource)ctx.lookup("Bazaar_Application_Connection");
            conn = (Connection) ds.getConnection();
            PreparedStatement ps = conn.prepareStatement("UPDATE employee SET "
                    + "firstname = ?, lastname = ?, phonenum = ?, address =?,"
                    + "state = ?, city = ?, zipcode = ?, hourlyrate = ? where "
                    + "ssn = ?");
            
            ps.setString(1,em.getFirstName());
            ps.setString(2,em.getLastName());
            ps.setString(3,em.getPhoneNum());
            ps.setString(4,em.getAddress());
            ps.setString(5,em.getState());
            ps.setString(6,em.getCity());
            ps.setString(7,em.getZipcode());
            ps.setString(8,em.getHourlyRate());
            ps.setString(9,em.getSSN());
            
            
            status = ps.executeUpdate();
            
         }
         catch(NamingException | SQLException e){
            System.out.println(e);
         }
         
         if (conn != null)
            conn.close();
         
         return status;
     }
    
}

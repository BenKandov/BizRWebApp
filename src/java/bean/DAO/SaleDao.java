/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bean.DAO;

import bean.Ad;
import bean.Sale;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

/**
 *
 * @author benkandov
 */
public class SaleDao {
    public static List<String> monthlySalesReport(int month) throws SQLException{
        List<String> sales = new ArrayList<String>();
        Connection conn = null;
        
        try{
          
            InitialContext ctx = new InitialContext();
            DataSource ds = (DataSource)ctx.lookup("Bazaar_Application_Connection");
            conn = (Connection) ds.getConnection();
            PreparedStatement ps = conn.prepareStatement("call monthlysalesreport(?)");
            java.sql.Date sqlDate = new java.sql.Date(1996,month-1,1);
            ps.setDate(1, sqlDate);
            
            ResultSet rs = ps.executeQuery();
            
            while(rs.next()){
                String s = rs.getString("numunits") + "       units of "  
                        + rs.getString("itemname") + " sold on " +
                        rs.getString("dateofsale");  
                       
                sales.add(s);
                
            }
            
            
        }
        catch(NamingException | SQLException e){
            System.out.println(e);
        }
        conn.close();
        return sales;
        
        
    }
    public static List<String> getTransactionsByItemName(String itemname) throws SQLException{
        List<String> transactions = new ArrayList<String>();
        Connection conn = null;
        try{
            InitialContext ctx = new InitialContext();
            DataSource ds = (DataSource)ctx.lookup("Bazaar_Application_Connection");
            conn = (Connection) ds.getConnection();
            PreparedStatement ps = conn.prepareStatement("select * from sale S, Advertisement A"
                    + " where A.advertisementid = S.advertisementid and A.itemname = ?");
                  
           
            ps.setString(1, itemname);
           
            ResultSet rs = ps.executeQuery();
            
            
            while(rs.next()){
                String s = rs.getString("itemname") + " sold at " +
                        rs.getString("dateofsale") + " in quantity of "+
                        rs.getString("numunits");
                transactions.add(s);
            }
            
        }
        catch(NamingException | SQLException e){
            System.out.println(e);
        }
        conn.close();
        return transactions;
    }  
    
    public static List<String> getTransactionsByEmail(String email) throws SQLException{
        List<String> transactions = new ArrayList<String>();
        Connection conn = null;
        try{
            InitialContext ctx = new InitialContext();
            DataSource ds = (DataSource)ctx.lookup("Bazaar_Application_Connection");
            conn = (Connection) ds.getConnection();
            PreparedStatement ps = conn.prepareStatement("select * from sale S, Advertisement A"
                    + ", AccountsInUser C, BUser B "
                    + " where A.advertisementid = S.advertisementid and "
                    + " S.accountnum = C.accountnumber and C.userid = B.userid "
                    + "and B.email = ?");
                  
           
            ps.setString(1, email);
           
            ResultSet rs = ps.executeQuery();
            
            
            while(rs.next()){
                String s = rs.getString("itemname") + " sold at " +
                        rs.getString("dateofsale") + " in quantity of "+
                        rs.getString("numunits") + " to " + rs.getString("email");
                transactions.add(s);
            }
            
        }
        catch(NamingException | SQLException e){
            System.out.println(e);
        }
        conn.close();
        return transactions;
    } 
    public static int makeSale(Sale s) throws SQLException{
             int status = 0;
         Connection conn = null;
         try{
             InitialContext ctx = new InitialContext();
             DataSource ds = (DataSource)ctx.lookup("Bazaar_Application_Connection");
             conn = (Connection) ds.getConnection();
             PreparedStatement ps = conn.prepareStatement("call insertsale(?,?,?)");
             
             ps.setString(1, s.getAdId());
             ps.setString(2, s.getAccountId());
              ps.setString(3, s.getNumUnits());
             status = ps.executeUpdate();
         }
         catch(NamingException | SQLException e){
             System.out.println(e);
         }
        conn.close();
         return status;
     }  
    
    public static List<String> getUsersByItemName(String itemname) throws SQLException{
        List<String> users = new ArrayList<String>();
        Connection conn = null;
        try{
            InitialContext ctx = new InitialContext();
            DataSource ds = (DataSource)ctx.lookup("Bazaar_Application_Connection");
            conn = (Connection) ds.getConnection();
            PreparedStatement ps = conn.prepareStatement("select * from sale S, Advertisement A"
                    + ", AccountsInUser C, BUser B "
                    + " where A.advertisementid = S.advertisementid and "
                    + " S.accountnum = C.accountnumber and C.userid = B.userid "
                    + "and A.itemname = ?");
           
            ps.setString(1, itemname);
         
           
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
               
                String s = "Name: " + rs.getString("firstname") +
                        " " + rs.getString("lastname") + " Email:" +
                        rs.getString("email") + "   Credit Card:" +
                        rs.getString("creditcard");
                users.add(s);
            }
            
        }
        catch(NamingException | SQLException e){
            System.out.println(e);
        }
        conn.close();
        return users;
    }
    
   public static List<String> getMostRevenueCustomer() throws SQLException{
        List<String> customers = new ArrayList<String>();
        Connection conn = null;
        
        try{
          
            InitialContext ctx = new InitialContext();
            DataSource ds = (DataSource)ctx.lookup("Bazaar_Application_Connection");
            conn = (Connection) ds.getConnection();
            PreparedStatement ps = conn.prepareStatement("select * from mostRevenueCustomer");
         
            
            ResultSet rs = ps.executeQuery();
            
            while(rs.next()){
                
                
                
                 String s = "UserID: " + rs.getString("userid")
                         + "Total Revenue: " + rs.getString("amountspent");
                       
                customers.add(s);
                
            }
            
            
        }
        catch(NamingException | SQLException e){
            System.out.println(e);
        }
        conn.close();
        return customers;
 
    }
    
   public static List<String> getMostRevenueEmployee() throws SQLException{
        List<String> employees = new ArrayList<String>();
        Connection conn = null;
        
        try{
          
            InitialContext ctx = new InitialContext();
            DataSource ds = (DataSource)ctx.lookup("Bazaar_Application_Connection");
            conn = (Connection) ds.getConnection();
            PreparedStatement ps = conn.prepareStatement("select * from mostRevenueEmployee");
         
            
            ResultSet rs = ps.executeQuery();
            
            while(rs.next()){
                
                
                
                 String s = "EmployeeId: " + rs.getString("employeeid")
                         + "Total Revenue: " + rs.getString("amountspent");
                       
                employees.add(s);
                
            }
            
            
        }
        catch(NamingException | SQLException e){
            System.out.println(e);
        }
        conn.close();
        return employees;
 
    }   
    public static List<String> revenueSummaryByItemName(String itemname) throws SQLException{
        List<String> transactions = new ArrayList<String>();
        Connection conn = null;
        try{
            InitialContext ctx = new InitialContext();
            DataSource ds = (DataSource)ctx.lookup("Bazaar_Application_Connection");
            conn = (Connection) ds.getConnection();
            PreparedStatement ps = conn.prepareStatement("select distinct * from revenueSummary"
                    + " S"
                    + ", Advertisement A where A.advertisementid=S.advertisementid "
                    + "and A.itemname =?");
                  
           
            ps.setString(1, itemname);
           
            ResultSet rs = ps.executeQuery();
            
            
            while(rs.next()){
                String s = rs.getString("itemname") + " sold at " +
                        rs.getString("dateofsale") + " in quantity of "+
                        rs.getString("numunits")+ " to userid: " + rs.getString("userid");
                transactions.add(s);
            }
            
        }
        catch(NamingException | SQLException e){
            System.out.println(e);
        }
        conn.close();
        return transactions;
    }  
}

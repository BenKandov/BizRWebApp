/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bean.DAO;

import bean.Ad;
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
public class AdvertisementDao {
        public static int makeAd(Ad a) throws SQLException{
            int status = 0;
        Connection conn = null;
        try{
            InitialContext ctx = new InitialContext();
            DataSource ds = (DataSource)ctx.lookup("Bazaar_Application_Connection");
            conn = (Connection) ds.getConnection();
            PreparedStatement ps = conn.prepareStatement("call insertadvertisement(?,?,?,?,?,?)");
            
            ps.setString(1, a.getCompany());
            
            ps.setString(2, a.getItemName());
            ps.setString(3, a.getContent());
            
            ps.setString(4, a.getUnitPrice());
          
            ps.setString(5, a.getNumAvailableUnits());
            ps.setString(6, a.getAdvertisementType());
            status = ps.executeUpdate();
        }
        catch(NamingException | SQLException e){
            System.out.println(e);
        }
        conn.close();
        return status;
    }  
        public static int deleteAd(String adid) throws SQLException {
        int status = 0;
        Connection conn = null;
        try{
            InitialContext ctx = new InitialContext();
            DataSource ds = (DataSource)ctx.lookup("Bazaar_Application_Connection");
            conn = (Connection) ds.getConnection();
            PreparedStatement ps = conn.prepareStatement("call deleteadvertisement(?)");
            
            ps.setString(1,adid);
            
            status = ps.executeUpdate();
        } catch(NamingException | SQLException e){
            System.out.println(e);
        }
        conn.close();
        return status;
    }
   public static List<String> itemsList() throws SQLException{
        List<String> items = new ArrayList<String>();
        Connection conn = null;
        
        try{
          
            InitialContext ctx = new InitialContext();
            DataSource ds = (DataSource)ctx.lookup("Bazaar_Application_Connection");
            conn = (Connection) ds.getConnection();
            PreparedStatement ps = conn.prepareStatement("select distinct itemname"
                    + " from advertisement");
          
            ResultSet rs = ps.executeQuery();
            
            while(rs.next()){
                String s = rs.getString("itemname");                       
                items.add(s);
                
            }
            
            
        }
        catch(NamingException | SQLException e){
            System.out.println(e);
        }
        conn.close();
        return items;
        
        
    }
    
}

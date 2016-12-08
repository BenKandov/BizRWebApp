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
 * @author Shane Kennedy
 */
public class InterestDao {
    
    public int addInterest(String interestTag, String accountNumber) throws SQLException {
        int status = 0;
        Connection conn = null;
        
        try {
            InitialContext ctx = new InitialContext();
            DataSource ds = (DataSource)ctx.lookup("Bazaar_Application_Connection");
            conn = (Connection) ds.getConnection();
            PreparedStatement ps = conn.prepareStatement("INSERT INTO Interest(interestTag, accountNumber) "
                    + "VALUES (?,?)");
            ps.setString(1, interestTag);
            ps.setString(2, accountNumber);
            
            status = ps.executeUpdate();  
        }
        catch(NamingException | SQLException e) {
            System.out.println(e);
        }
        if (conn != null)
            conn.close();
        return status;
    }
    
    public int deleteInterest(String interestTag, String accountNumber) throws SQLException {
        int status = 0;
        Connection conn = null;
        
        try {
            InitialContext ctx = new InitialContext();
            DataSource ds = (DataSource)ctx.lookup("Bazaar_Application_Connection");
            conn = (Connection) ds.getConnection();
            PreparedStatement ps = conn.prepareStatement("DELETE FROM Interest "
                    + "WHERE interestTag = ? AND accountNumber = ?");
            ps.setString(1, interestTag);
            ps.setString(2, accountNumber);
            
            status = ps.executeUpdate();  
        }
        catch(NamingException | SQLException e){
            System.out.println(e);
        }
        if (conn != null)
            conn.close();
        return status;
    }
    
    public List<Ad> adsByAccountInterests(String accountNumber) throws SQLException {
        ArrayList<Ad> ads = new ArrayList();
        Connection conn = null;
        
        try {
            InitialContext ctx = new InitialContext();
            DataSource ds = (DataSource)ctx.lookup("Bazaar_Application_Connection");
            conn = (Connection) ds.getConnection();
            PreparedStatement ps = conn.prepareStatement("SELECT interestTag FROM Interest" +
"		WHERE accountNumber = ?");
            ps.setString(1, accountNumber);
            
            ResultSet rs = ps.executeQuery();
            
            while(rs.next()) {                  
                ads.addAll(
                    AdvertisementDao.adsByInterest(rs.getString("interestTag"))
                );
            }  
        }
        catch(NamingException | SQLException e){
            System.out.println(e);
        }
        if (conn != null)
            conn.close();
        return ads;
    }
}

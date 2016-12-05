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
import java.sql.SQLException;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

/**
 *
 * @author benkandov
 */
public class SaleDao {
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
}

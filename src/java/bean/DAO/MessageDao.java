/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bean.DAO;

import bean.Message;
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
public class MessageDao {
    public static int sendMessage(Message msg) throws SQLException{
        int status = 0;
        Connection conn = null;
        try{
            InitialContext ctx = new InitialContext();
            DataSource ds = (DataSource)ctx.lookup("Bazaar_Application_Connection");
            conn = (Connection) ds.getConnection();
            PreparedStatement ps = conn.prepareStatement("call createmessage(?,?,?,?)");
            
            ps.setString(1,msg.getSenderId());
            ps.setString(2, msg.getReceiverId());
            ps.setString(3, msg.getTitle());
            ps.setString(4, msg.getContent());
            
            status = ps.executeUpdate();
        }
        catch(NamingException | SQLException e){
            System.out.println(e);
        }
        conn.close();
        return status;
    }
}

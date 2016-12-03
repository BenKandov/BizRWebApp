/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bean.DAO;

import bean.Message;
import java.sql.Connection;
import java.sql.DriverManager;
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
public class MessageDao {
    public static int sendMessage(Message msg) throws SQLException{
        int status = 0;
        Connection conn = null;
        try{
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/groupTest", "root", "root");
            PreparedStatement ps = conn.prepareStatement("call createmessage(?,?,?,?)");
            
            ps.setString(1,msg.getSenderId());
            ps.setString(2, msg.getReceiverId());
            ps.setString(3, msg.getTitle());
            ps.setString(4, msg.getContent());
            
            status = ps.executeUpdate();
        }
        catch(SQLException e){
            System.out.println(e);
        }
        conn.close();
        return status;
    }
    public static int deleteMessage(String messageId) throws SQLException{
        int status = 0;
        Connection conn = null;
        try{
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/groupTest", "root", "root");
            PreparedStatement ps = conn.prepareStatement("call deletemessage(?)");
            ps.setString(1, messageId);
            status = ps.executeUpdate();
            
            
        }
        catch(SQLException e){
            System.out.println(e);
        }
        conn.close();
        return status;
    }
    public static List<Message> getSentMessages(String userId) throws SQLException{
        List<Message> msgs = new ArrayList<Message>();
        Connection conn = null;
        try{
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/groupTest", "root", "root");
            PreparedStatement ps = conn.prepareStatement("Select B.email, M.subjecttext, M.content, M.messageid from message M, Buser B where M.senderId = ? AND "
                    + "M.receiverid = B.userid");
            
            ps.setString(1, userId);
            
            ResultSet rs = ps.executeQuery();
            
            while(rs.next()){
                String messageId = rs.getString("messageid");
                String email = rs.getString("email");
                String title = rs.getString("subjecttext");
                String content = rs.getString("content");
                Message msg = new Message(messageId,email,title,content,false);
                msgs.add(msg);
            }
            
        }
        catch(SQLException e){
            System.out.println(e);
        }
        conn.close();

        return msgs;
    }
    public static List<Message> getReceivedMessages(String userId) throws SQLException{
        List<Message> msgs = new ArrayList<Message>();
        Connection conn = null;
        try{
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/groupTest", "root", "root");
            PreparedStatement ps = conn.prepareStatement("Select B.email, M.subjecttext, M.content, M.messageid from message M, Buser B where M.receiverid = ? AND "
                    + "M.senderid = B.userid");
            
            ps.setString(1, userId);
            
            ResultSet rs = ps.executeQuery();
            
            while(rs.next()){
                String messageId = rs.getString("messageid");
                String email = rs.getString("email");
                String title = rs.getString("subjecttext");
                String content = rs.getString("content");
                Message msg = new Message(messageId,email,title,content,false);
                msgs.add(msg);
            }
            
        }
        catch(SQLException e){
            System.out.println(e);
        }
        conn.close();

        return msgs;
    }
    
}

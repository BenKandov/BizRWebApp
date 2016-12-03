/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bean.DAO;


/**
 *
 * @author benkandov
 */
import bean.Comment;
import bean.Like;
import bean.Post;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import javax.sql.DataSource;
import javax.naming.InitialContext;
import javax.naming.NamingException;

public class PostDao {
    
    public List<Like> getLikes(){
        List<Like> likes = new ArrayList<Like>();
       
        return likes;        
    }
    
    public List<Comment> getComments(){
        List<Comment> comments = new ArrayList<Comment>();
        
        
        return comments;
    }
    
    public static int makePost(Post post) throws SQLException{
        int status = 0;
        Connection conn = null;
        try{
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/groupTest", "root", "root");
            PreparedStatement ps = conn.prepareStatement("call createpost(?,?,?)");
            
            ps.setString(1, post.getAuthorId());
            
            ps.setString(2, post.getPageId());
            ps.setString(3, post.getContent());
            
            status = ps.executeUpdate();
        }
        catch(SQLException e){
            System.out.println(e);
        }
        conn.close();
        return status;
    }
    
    public static int deletePost(Post post) throws SQLException {
        int status = 0;
        Connection conn = null;
        try{
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/groupTest", "root", "root");
            PreparedStatement ps = conn.prepareStatement("call deletepost(?)");
            
            ps.setString(1, post.getPostId());
            
            status = ps.executeUpdate();
        } catch(SQLException e){
            System.out.println(e);
        }
        conn.close();
        return status;
    }
    
    public static int editPost(Post post) throws SQLException {
        int status = 0;
        Connection conn = null;
        try{
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/groupTest", "root", "root");
            PreparedStatement ps = conn.prepareStatement("call modify(?,?)");
            
            ps.setString(1, post.getPostId());
            ps.setString(2, post.getContent());
            
            status = ps.executeUpdate();
        } catch(SQLException e){
            System.out.println(e);
        }
        conn.close();
        return status;
    }
    
}

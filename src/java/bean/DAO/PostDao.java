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
import java.sql.PreparedStatement;
import java.sql.ResultSet;
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
            InitialContext ctx = new InitialContext();
            DataSource ds = (DataSource)ctx.lookup("Bazaar_Application_Connection");
            conn = (Connection) ds.getConnection();
            PreparedStatement ps = conn.prepareStatement("call createpost(?,?,?)");
            
            ps.setString(1, post.getAuthorId());
            
            ps.setString(2, post.getPageId());
            ps.setString(3, post.getContent());
            
            status = ps.executeUpdate();
        }
        catch(NamingException | SQLException e){
            System.out.println(e);
        }
        conn.close();
        return status;
    }
    
    public static int deletePost(String postid) throws SQLException {
        int status = 0;
        Connection conn = null;
        try{
            InitialContext ctx = new InitialContext();
            DataSource ds = (DataSource)ctx.lookup("Bazaar_Application_Connection");
            conn = (Connection) ds.getConnection();
            PreparedStatement ps = conn.prepareStatement("call removepost(?)");
            
            ps.setString(1,postid);
            
            status = ps.executeUpdate();
        } catch(NamingException | SQLException e){
            System.out.println(e);
        }
        conn.close();
        return status;
    }
    public static int likePost(String postid, String userid) throws SQLException {
        int status = 0;
        Connection conn = null;
        try{
            InitialContext ctx = new InitialContext();
            DataSource ds = (DataSource)ctx.lookup("Bazaar_Application_Connection");
            conn = (Connection) ds.getConnection();
            PreparedStatement ps = conn.prepareStatement("call likepost(?,?,curdate())");
            
            ps.setString(1, userid);
            ps.setString(2, postid);
            
            status = ps.executeUpdate();
        } catch(NamingException | SQLException e){
            System.out.println(e);
        }
        conn.close();
        return status;
    }
    public static int unlikePost(String postid, String userid) throws SQLException {
        int status = 0;
        Connection conn = null;
        try{
            InitialContext ctx = new InitialContext();
            DataSource ds = (DataSource)ctx.lookup("Bazaar_Application_Connection");
            conn = (Connection) ds.getConnection();
            PreparedStatement ps = conn.prepareStatement("call unlikepost(?,?)");
            
            ps.setString(1, userid);
            
            ps.setString(2, postid);
            System.out.println(ps);
            status = ps.executeUpdate();
        } catch(NamingException | SQLException e){
            System.out.println(e);
        }
        conn.close();
        
        return status;
    }
    public static int editPost(Post post) throws SQLException {
        int status = 0;
        Connection conn = null;
        try{
            InitialContext ctx = new InitialContext();
            DataSource ds = (DataSource)ctx.lookup("Bazaar_Application_Connection");
            conn = (Connection) ds.getConnection();
            PreparedStatement ps = conn.prepareStatement("call modify(?,?)");
            
            ps.setString(1, post.getPostId());
            ps.setString(2, post.getContent());
            
            status = ps.executeUpdate();
        } catch(NamingException | SQLException e){
            System.out.println(e);
        }
        conn.close();
        return status;
    }
    public static Post getPostById(String postid) throws SQLException {
        Post post = null;
        Connection conn = null;
        try {
            InitialContext ctx = new InitialContext();
            DataSource ds = (DataSource)ctx.lookup("Bazaar_Application_Connection");
            conn = (Connection) ds.getConnection();
            PreparedStatement ps = conn.prepareStatement("SELECT * FROM Post WHERE"
                    + " postid = ?");
            
            ps.setString(1, postid);
            
            ResultSet rs = ps.executeQuery();
            
            while (rs.next()) {
                post = new Post(
                        rs.getString("postid"),
                        rs.getString("authorid"),
                        rs.getString("content"),
                        rs.getString("postedDate"),
                        rs.getString("pageId"),
                        CommentDao.getComments(rs.getString("postid")),
                        LikeDao.getPostLikes(rs.getString("postid"))
                );
                
            }
            
        }
        catch(NamingException | SQLException e){
            System.out.println(e);
        }
        conn.close();
        
        return post;
    }
    public static int modifyPost(String postid, String content) throws SQLException {
        int status = 0;
        Connection conn = null;
        try{
            InitialContext ctx = new InitialContext();
            DataSource ds = (DataSource)ctx.lookup("Bazaar_Application_Connection");
            conn = (Connection) ds.getConnection();
            PreparedStatement ps = conn.prepareStatement("call modifypost(?,?)");
            
            ps.setString(1, postid);
            ps.setString(2, content);
            
            status = ps.executeUpdate();
        } catch(NamingException | SQLException e){
            System.out.println(e);
        }
        conn.close();
        return status;
    }
}

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bean.DAO;

import bean.Comment;
import bean.Like;
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
 * @author shane
 */
public class LikeDao {
    
    public static List<Like> getPostLikes(String postId) throws SQLException {
        ArrayList<Like> likes = new ArrayList();
        Connection conn = null;
        try {
            InitialContext ctx = new InitialContext();
            DataSource ds = (DataSource)ctx.lookup("Bazaar_Application_Connection");
            conn = (Connection)ds.getConnection();
            
            PreparedStatement ps = conn.prepareStatement("SELECT * FROM PostLike "
                    + "WHERE postId = ?");
            ps.setString(1, postId);
            
            ResultSet rs = ps.executeQuery();
            
            while (rs.next()) {
                Like like = new Like(
                    rs.getString("likerId"),
                    rs.getString("postId"),
                    rs.getString("timeLiked"),
                    true
                );
                likes.add(like);
            }
        
        } catch (NamingException | SQLException e) {
            System.out.println(e);
        }
        
        if (conn != null)
            conn.close();
        
        return likes;
    }
    
    public static List<Like> getCommentLikes(String postId, String commentId) throws SQLException {
        ArrayList<Like> likes = new ArrayList();
        Connection conn = null;
        try {
            InitialContext ctx = new InitialContext();
            DataSource ds = (DataSource)ctx.lookup("Bazaar_Application_Connection");
            conn = (Connection)ds.getConnection();
            
            PreparedStatement ps = conn.prepareStatement("SELECT * FROM CommentLike "
                    + "WHERE postId = ?");
            ps.setString(1, postId);
            
            ResultSet rs = ps.executeQuery();
            
            while (rs.next()) {
                Like like = new Like(
                    rs.getString("likerId"),
                    rs.getString("postId"),
                    rs.getString("timeLiked"),
                    false
                );
                likes.add(like);
            }
        
        } catch (NamingException | SQLException e) {
            System.out.println(e);
        }
        
        if (conn != null)
            conn.close();
        
        return likes;
    }
}

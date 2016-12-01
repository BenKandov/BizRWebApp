/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bean.DAO;
        
import bean.Comment;
import bean.DAO.LikeDao;
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
public class CommentDao {
    
    public static List<Comment> getComments(String postId) throws SQLException {
        ArrayList<Comment> comments = new ArrayList();
        Connection conn = null;
        
        try {
            InitialContext ctx = new InitialContext();
            DataSource ds = (DataSource)ctx.lookup("Bazaar_Application_Connection");
            conn = (Connection)ds.getConnection();
            
            PreparedStatement ps = conn.prepareStatement("SELECT * FROM BComments "
                    + "WHERE postId = ?");
            ps.setString(1, postId);
            
            ResultSet rs = ps.executeQuery();
            
            while (rs.next()) {
                Comment comment = new Comment(
                    rs.getString("postId"),
                    rs.getString("authorId"),
                    rs.getString("content"),
                    LikeDao.getCommentLikes(rs.getString("postId"), rs.getString("commentId"))
                );
                comments.add(comment);
            }
        
        } catch (NamingException | SQLException e) {
            System.out.println(e);
        }
        
        if (conn != null)
            conn.close();
        
        return comments;
    }
}

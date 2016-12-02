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


public class PageDao {
    
    public static List GetPosts(String pageid) throws SQLException {
        List<Post> posts = new ArrayList();
        Connection conn = null;
        try {
            InitialContext ctx = new InitialContext();
            DataSource ds = (DataSource)ctx.lookup("Bazaar_Application_Connection");
            conn = (Connection) ds.getConnection();
            PreparedStatement ps = conn.prepareStatement("SELECT * FROM Post WHERE"
                    + "pageid = ?");
            
            ps.setString(1, pageid);
            
            ResultSet rs = ps.executeQuery();
            
            while (rs.next()) {
                Post post = new Post(
                        rs.getString("postid"),
                        rs.getString("authorid"),
                        rs.getString("content"),
                        rs.getString("postedDate"),
                        rs.getString("pageId"),
                        CommentDao.getComments(rs.getString("postid")),
                        LikeDao.getPostLikes(rs.getString("postid"))
                );
                posts.add(post);
            }
            
        }
        catch(NamingException | SQLException e){
            System.out.println(e);
        }
        conn.close();
        
        return posts;
    }
    
    public static String getPageIdFromUserId(String userid) throws SQLException{
        String pageid = "";
        Connection conn = null;
        try{
            InitialContext ctx = new InitialContext();
            DataSource ds = (DataSource)ctx.lookup("Bazaar_Application_Connection");
            conn = (Connection) ds.getConnection();
            PreparedStatement ps = conn.prepareStatement("select pageid from bpage where"
                    + " ownerid = ?");
            
            ps.setString(1, userid);
            
            ResultSet rs = ps.executeQuery();
            
            rs.next();
               
            pageid = rs.getString("pageid");
         
            
        }
        catch(NamingException | SQLException e){
            System.out.println(e);
        }
        conn.close();

        return pageid;
    }
}

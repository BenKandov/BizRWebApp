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
import java.sql.Connection;
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
    
}

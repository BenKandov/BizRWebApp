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
    
    public static List GetPosts(){
        List<Post> Posts = new ArrayList<Post>();
        
        
        
        
        return Posts;
    }
}

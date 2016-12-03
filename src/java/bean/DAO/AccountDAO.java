/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bean.DAO;

//import bean.Account;
import bean.User;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author benkandov
 */
public class AccountDAO {
    public static int CreateAccount(String userId) throws SQLException{
        int status = 0;
        Connection conn = null;
        try{
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/accountTest", "root", "root");
            PreparedStatement ps = conn.prepareStatement("call createaccount(?)");
            
            ps.setString(1, userId);
            
            status = ps.executeUpdate();
        }
        catch(SQLException e){
            System.out.println(e);
        }
        conn.close();
        return status;
    }
    
    public static int deleteAccount(String accountId) throws SQLException{
        int status = 0;
        Connection conn = null;
        try{
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/accountTest", "root", "root");
            PreparedStatement ps = conn.prepareStatement("call deleteaccount(?)");
            ps.setString(1, accountId);
            status = ps.executeUpdate();
        }
        catch(SQLException e){
            System.out.println(e);
        }
        conn.close();
        return status;
    }
    
    public static List<String> getAccountsByOwner(String userid) throws SQLException{
        List<String> accounts = new ArrayList<String>(); 
        Connection conn = null;
        try{
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/accountTest", "root", "root");
            PreparedStatement ps = conn.prepareStatement("select * from accountsinuser where"
                    + " ownerid=?");
            
            ps.setString(1, userid);
            ResultSet rs = ps.executeQuery();
            
            while(rs.next()){
                String account = rs.getString("accountid");
                accounts.add(account);
            }
         }
        catch(SQLException e){
            System.out.println(e);
        }
        conn.close();
        return accounts;
    }
}

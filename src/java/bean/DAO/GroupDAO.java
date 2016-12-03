/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bean.DAO;

import bean.Group;
import bean.User;
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
public class GroupDAO {
    public static int CreateGroup(Group group) throws SQLException{
        int status = 0;
        Connection conn = null;
        try{
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/groupTest", "root", "root");
            PreparedStatement ps = conn.prepareStatement("call creategroup(?,?,?)");
            
            ps.setString(1, group.getOwnerId());
            ps.setString(2,group.getName());
            ps.setString(3, group.getType());
            
            status = ps.executeUpdate();
            
        }
        catch(SQLException e){
            System.out.println(e);
        }
        conn.close();
        return status;
        
    }
   public static int deleteGroup(String groupId) throws SQLException{
        int status = 0;
        Connection conn = null;
        try{
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/groupTest", "root", "root");
            PreparedStatement ps = conn.prepareStatement("call deletegroup(?)");
            ps.setString(1, groupId);
            status = ps.executeUpdate();
            
            
        }
        catch(SQLException e){
            System.out.println(e);
        }
        conn.close();
        return status;
    }
      public static int updateGroupName(String groupId, String newName) throws SQLException{
        int status = 0;
        Connection conn = null;
        try{
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/groupTest", "root", "root");
            PreparedStatement ps = conn.prepareStatement("update bgroup set"
                    + " groupname = ? where groupid = ?");
            
            ps.setString(1, newName);
            ps.setString(2, groupId);
            status = ps.executeUpdate();
            
            
        }
        catch(SQLException e){
            System.out.println(e);
        }
        conn.close();
        return status;
    }
    
    public static List<Group> getGroupsByOwner(String userid) throws SQLException{
        List<Group> groups = new ArrayList<Group>(); 
        Connection conn = null;
        try{
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/groupTest", "root", "root");
            PreparedStatement ps = conn.prepareStatement("select * from bgroup where"
                    + " ownerid=?");
            
            ps.setString(1, userid);
            ResultSet rs = ps.executeQuery();
            
            while(rs.next()){
                String groupId = rs.getString("groupid");
                String groupName = rs.getString("groupname");
                String groupType = rs.getString("typeofgroup");
                Group group = new Group(groupId,userid, groupName, groupType);
                groups.add(group);
            }
            
         }
        catch(SQLException e){
            System.out.println(e);
        }
        conn.close();
        return groups;
    }
    public static List<Group> getGroupsByMembership(String userid) throws SQLException{
        List<Group> groups = new ArrayList<Group>(); 
        Connection conn = null;
        try{
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/groupTest", "root", "root");
            PreparedStatement ps = conn.prepareStatement("select B.groupname, B.typeofgroup, B.groupid from bgroup B, "
                    + "useringroup U where U.groupid = B.groupid and U.userid = ? ");
                   
            
            ps.setString(1, userid);
            ResultSet rs = ps.executeQuery();
            
            while(rs.next()){
                String groupId = rs.getString("groupid");
                String groupName = rs.getString("groupname");
                String groupType = rs.getString("typeofgroup");
                Group group = new Group(groupId,userid, groupName, groupType);
                groups.add(group);
            }
            
         }
        catch(SQLException e){
            System.out.println(e);
        }
        conn.close();
        return groups;
    }
    public static int joinGroup(String userId, String groupId) throws SQLException{
        int status = 0;
        Connection conn = null;
        try{
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/groupTest", "root", "root");
            PreparedStatement ps = conn.prepareStatement("call joingroup(?,?)");
            
            ps.setString(2, userId);
            ps.setString(1, groupId);
            status = ps.executeUpdate();
            
            
        }
        catch(SQLException e){
            System.out.println(e);
        }
        conn.close();
        return status;
    }
    public static int unJoinGroup(String userId, String groupId) throws SQLException{
        int status = 0;
        Connection conn = null;
        try{
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/groupTest", "root", "root");
            PreparedStatement ps = conn.prepareStatement("call unjoingroup(?,?)");
            
            ps.setString(2, userId);
            ps.setString(1, groupId);
            status = ps.executeUpdate();
            
            
        }
        catch(SQLException e){
            System.out.println(e);
        }
        conn.close();
        return status;
    }
    public static List<User> getUsersInGroup( String groupId) throws SQLException{
        List<User> usrs = new ArrayList<User>(); 
        Connection conn = null;
        try{
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/groupTest", "root", "root");
            PreparedStatement ps = conn.prepareStatement("select * from useringroup where"
                    + "  groupid = ?");
            
         
            ps.setString(1, groupId);
            
            
            ResultSet rs = ps.executeQuery();
            
            while(rs.next()){
              User usr= new User();
              usr.setEmail( LoginDao.getEmailFromUserId(rs.getString("userid")));
              usrs.add(usr);
            }
            
         }
        catch(SQLException e){
            System.out.println(e);
        }
        conn.close();
        return usrs;
    }
    public static List<Group> searchForGroups(String criteria, String userid) throws SQLException{
        List<Group> groups = new ArrayList<Group>(); 
        Connection conn = null;
        try{
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/groupTest", "root", "root");
            PreparedStatement ps = conn.prepareStatement("select B.groupid,B.groupname,B.typeofgroup from bgroup B"
                    + " where"
                    + " B.ownerid<>? and B.groupname like ? and not exists(select * from useringroup U where U.groupid = "
                    + "B.groupid AND U.userid = ?) ");
            
            ps.setString(1, userid);
            ps.setString(2, "%" + criteria + "%");
            ps.setString(3, userid);
            ResultSet rs = ps.executeQuery();
            
            while(rs.next()){
                String groupId = rs.getString("groupid");
                String groupName = rs.getString("groupname");
                String groupType = rs.getString("typeofgroup");
                Group group = new Group(groupId,userid, groupName, groupType);
                groups.add(group);
            }
            
         }
        catch(SQLException e){
            System.out.println(e);
        }
        conn.close();
        return groups;
    }
    
    
}

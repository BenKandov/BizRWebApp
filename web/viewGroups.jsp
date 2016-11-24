<%-- 
    Document   : viewGroups
    Created on : Nov 24, 2016, 2:32:06 PM
    Author     : benkandov
--%>

<%@page import="bean.Group"%>
<%@page import="java.util.List"%>
<%@page import="bean.DAO.GroupDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Groups</title>
        <link href="stylesheets/bootstrap.min.css" rel="stylesheet" type="text/css">
          <script type="text/javascript" src="JS/jquery.min.js"></script>
        <script type="text/javascript" src="JS/bootstrap.min.js"></script>
    </head>
    <body>
        <%@include file="templates\userNavbar.jsp" %>
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12 text-center">
                    <h1> Your Groups </h1>
                </div>
            </div>
            
            <div class="row">
                <div class="col-md-12 ">
                    <h2> Groups you are the owner of: </h2>
                </div>
            </div>
            <%  
                List<Group> groups = GroupDAO.getGroupsByOwner(session.getAttribute("userid").toString());
                
                for(Group g : groups){
            %>
            
            <hr>
          
                    
                <div class="row">
                    <div class="col-md-12 text-center">
                        <h2> <%  out.print(g.getName()); %> </h2>
                    </div>
                </div>
                    
                <div class="row" style = "padding-bottom:20px" >
                    <div class="col-md-12 text-center">
                        <%  out.print(g.getType()); %>
                    </div>
                </div>
                
                <div class="row">
                    <div class="col-md-12 text-center">
                       <form method="get" action="deleteGroup.jsp" style="padding-bottom:10px">
                           <input type ="hidden" name="groupToDelete" value="<%out.print(g.getId()); %>">
                        <button type="submit" class="btn btn-danger">Delete</button>
                       </form>
                        <form method="get" action="updateGroupName.jsp" style="padding-bottom:10px">
                             <div class="form-group row">
                                <div class="form-group">
                                      <label for="newnameinput" class="col-xs-2 col-form-label"> </label>
                                     <div class="col-xs-10">
                                         <input name="newname" class="form-control" type="text" value="" id="newnameinput">
                                     </div>
                               </div>
                             </div>
                            
                           <input type ="hidden" name="groupToUpdate" value="<%out.print(g.getId()); %>">
                        <button type="submit" class="btn btn-success">Update Name</button>
                       </form>
                        <form method="get" action="searchForUsers.jsp">
                            <input type ="hidden" name="id" value="<%out.print(g.getId()); %>">
                            <input type ="hidden" name="name" value="<%out.print(g.getName()); %>">
                            <button type="submit" class="btn btn-success">Search for New Members</button>
                                
                        </form>
                        
                    </div> 
                
                </div>
            
            <%  } %>
        </div>
        
        
    </body>
</html>

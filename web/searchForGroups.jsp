<%-- 
    Document   : searchForGroups
    Created on : Nov 24, 2016, 6:54:19 PM
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
        <title>Search for Groups</title>
          <link href="stylesheets/bootstrap.min.css" rel="stylesheet" type="text/css">
          <script type="text/javascript" src="JS/jquery.min.js"></script>
        <script type="text/javascript" src="JS/bootstrap.min.js"></script>
    </head>
    <body>
            <%@include file="templates\userNavbar.jsp" %>
            <div class="container-fluid">
               <div class="row">
                    <form class="navbar-form navbar-left" action="searchForGroups.jsp">
                       <div class="form-group">
                           
                           <input type="text" name="criteria" class="form-control" placeholder="Search">
                       </div>
                       <button type="submit" class="btn btn-default">Search</button>
                   </form>
                    </div>
                         
            <%  if(request.getParameter("criteria")!=null){
                    List<Group> groups = GroupDAO.searchForGroups(request.getParameter("criteria"), session.getAttribute("userid").toString());
                    for(Group g: groups){
                %>
                          <br>
                
                <hr>
                <div class="row">
                    <div class="col-md-12 text-center">
                        <h2>  <% out.print(g.getName());  %> </h2>
                    </div>
                </div>
                    
                <div class="row">
                    <div method="get" class="col-md-12 text-center">
                        <form action="addUserToGroup.jsp">
                            <input type ="hidden" name="userToAdd" value="<%out.print(session.getAttribute("email")); %>">
                            <input type ="hidden" name="id" value="<%out.print(g.getId()); %>">
                             <input type ="hidden" name="userDidIt" value="<%out.print(2); %>">
                            <button type="submit" class="btn btn-primary">Join Group</button>
                        </form>
                    </div>
                </div>
                
                
                
            <% } }%>
            </div>
    </body>
</html>

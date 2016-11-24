<%-- 
    Document   : searchForUsers
    Created on : Nov 24, 2016, 5:14:15 PM
    Author     : benkandov
--%>

<%@page import="bean.User"%>
<%@page import="java.util.List"%>
<%@page import="bean.DAO.LoginDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link href="stylesheets/bootstrap.min.css" rel="stylesheet" type="text/css">
         <script type="text/javascript" src="JS/jquery.min.js"></script>
        <script type="text/javascript" src="JS/bootstrap.min.js"></script>
    </head>
    <body>
         <%@include file="templates\userNavbar.jsp" %>
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12 text-center">
                    <% 
                        String id = request.getParameter("id");
                        %>
                    <h2> Search for users to add to your group </h2>
                </div>
            </div>
            <div class="row">
            <form class="navbar-form navbar-left" action="searchForUsers.jsp">
               <div class="form-group">
                   <input type ="hidden" name="id" value="<%out.print(id); %>">
                   <input type="text" name="criteria" class="form-control" placeholder="Search">
               </div>
               <button type="submit" class="btn btn-default">Search</button>
           </form>
            </div>
            <%  if(request.getParameter("criteria")!=null){
                    List<User> usrs = LoginDao.searchForUsers(request.getParameter("criteria"));
                    for(User u: usrs){
                %>
                <br>
                
                <hr>
                <div class="row">
                    <div class="col-md-12 text-center">
                        <h2>  <% out.print(u.getEmail());  %> </h2>
                    </div>
                </div>
                    
                <div class="row">
                    <div method="get" class="col-md-12 text-center">
                        <form action="addUserToGroup.jsp">
                            <input type ="hidden" name="id" value="<%out.print(id); %>">
                            <input type ="hidden" name="userToAdd" value="<%out.print(u.getEmail()); %>">
                            <button type="submit" class="btn btn-primary">Add User</button>
                        </form>
                    </div>
                </div>
                
                
             <% } } %>
        </div>
        
         
    </body>
</html>

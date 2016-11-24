<%-- 
    Document   : viewGroupMembers
    Created on : Nov 24, 2016, 6:17:33 PM
    Author     : benkandov
--%>

<%@page import="bean.DAO.LoginDao"%>
<%@page import="bean.User"%>
<%@page import="java.util.List"%>
<%@page import="bean.DAO.GroupDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title><% out.print(request.getParameter("name")); %> </title>
         <link href="stylesheets/bootstrap.min.css" rel="stylesheet" type="text/css">
          <script type="text/javascript" src="JS/jquery.min.js"></script>
        <script type="text/javascript" src="JS/bootstrap.min.js"></script>
    </head>
    <body>
        <%@include file="templates\userNavbar.jsp" %>
        <div class="container-fluid">
            <div class="col-md-12">
                <h1>Users in <% out.print(request.getParameter("name")); %></h1>
            </div>
            
                <%
                    List<User> usrs = GroupDAO.getUsersInGroup(request.getParameter("id"));
                    for(User u: usrs){
                        
                    
                %>
                <hr>
                    <div class="row">
                        <div class="col-md-12 text-center">
                            <h2> <% out.print(u.getEmail());  %>  </h2>
                        </div>
                    </div>
                    <div class="row">
                         <div class="col-md-12 text-center">
                        <form method="get" action="unjoinGroup.jsp">
                            <input type ="hidden" name="userid" value="<% out.print(LoginDao.getUserIdFromEmail(u.getEmail()));  %>">
                             <input type ="hidden" name="groupid" value="<% out.print(request.getParameter("id")); %>">
                            <button type="submit" class="btn btn-danger">Remove</button>
                        </form>
                              </div>
                        
                    </div>
                <% }
                    %>
        </div>
        
    </body>
</html>

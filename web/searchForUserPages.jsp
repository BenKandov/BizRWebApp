<%-- 
    Document   : searchForUserPages
    Created on : Nov 24, 2016, 11:07:16 PM
    Author     : benkandov
--%>

<%@page import="bean.DAO.LoginDao"%>
<%@page import="bean.User"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Search for User Pages</title>
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
                    <h2> Search for user pages </h2>
                </div>
            </div>
            <div class="row">
            <form class="navbar-form navbar-left" action="searchForUserPages.jsp">
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
                         <form action="userPage.jsp">
                        <input type ="hidden" name="id" value="<%out.print(LoginDao.getUserIdFromEmail(u.getEmail())); %>">
                        <h2>  <% out.print(u.getEmail());  %> </h2>
                        <button type="submit" class="btn btn-primary">View Page</button>
                         </form>
                    </div>
                </div>
            
                
                
             <% } } %>
        </div>
    </body>
</html>

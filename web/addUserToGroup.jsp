<%-- 
    Document   : addUserToGroup
    Created on : Nov 24, 2016, 5:52:11 PM
    Author     : benkandov
--%>

<%@page import="bean.DAO.LoginDao"%>
<%@page import="bean.DAO.GroupDAO"%>
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
         <%
             int status = GroupDAO.joinGroup( LoginDao.getUserIdFromEmail(request.getParameter("userToAdd"))
                     , request.getParameter("id"));
             
             if (status>0){
         %>
         <%  if (request.getParameter("userDidIt")==null){ %>
         <h1> User successfully added!</h1>
          <% }else{ %>  
          <h1> Successfully joined group!</h1>
          <% } %>
         <%}  else{ %>
         <h1> That user was already in your group. </h1>
         <% } %>
    </body>
</html>

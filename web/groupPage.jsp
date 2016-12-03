<%-- 
    Document   : groupPage
    Created on : Dec 3, 2016, 1:17:08 PM
    Author     : benkandov
--%>

<%@page import="bean.Group"%>
<%@page import="bean.DAO.GroupDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%
        Group grp = GroupDAO.getGroupByGroupId(request.getParameter(("groupId")));
        %>
        <title> 
        <% out.print(grp.getName()); %>
        </title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="stylesheets/bootstrap.min.css" rel="stylesheet" type="text/css">
        <script type="text/javascript" src="JS/jquery.min.js"></script>
        <script type="text/javascript" src="JS/bootstrap.min.js"></script>
    </head>
    <body>
           <%@include file="templates\userNavbar.jsp" %>
           
    </body>
</html>

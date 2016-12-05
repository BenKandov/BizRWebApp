<%-- 
    Document   : listOfUsersByItemName
    Created on : Dec 5, 2016, 4:54:53 PM
    Author     : benkandov
--%>

<%@page import="java.util.List"%>
<%@page import="bean.DAO.SaleDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Users by Item</title>
         <link href="stylesheets/bootstrap.min.css" rel="stylesheet" type="text/css">
          <script type="text/javascript" src="JS/jquery.min.js"></script>
        <script type="text/javascript" src="JS/bootstrap.min.js"></script>
    </head>
    <body>
        <%
            String itemname = request.getParameter("itemname");
            
            List<String> users = SaleDao.getUsersByItemName(itemname);
            
            for(String u : users){
               
            %>
            <hr>
            <H1>
                <% out.print(u); %></h1>
            <% }%>
    </body>
</html>

<%-- 
    Document   : revenueSummaryByItemType
    Created on : Dec 6, 2016, 1:51:07 PM
    Author     : benkandov
--%>

<%@page import="bean.DAO.SaleDao"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Revenue Summary by Item Type</title>
         <link href="stylesheets/bootstrap.min.css" rel="stylesheet" type="text/css">
          <script type="text/javascript" src="JS/jquery.min.js"></script>
        <script type="text/javascript" src="JS/bootstrap.min.js"></script>
    </head>
    <body>
         <div class="container-fluid">
            <%
                String itemtype = request.getParameter("itemtype");
                List<String> sales = SaleDao.revenueSummaryByItemType(itemtype);
                
                for(String s:sales){
                %>
                <Hr>
                <h1> <%out.print(s); %> </h1>
                
                <% } %>
            
        </div>
    </body>
</html>

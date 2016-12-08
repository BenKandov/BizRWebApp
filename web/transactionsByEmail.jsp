<%-- 
    Document   : transactionsByEmail
    Created on : Dec 5, 2016, 4:33:35 PM
    Author     : benkandov
--%>

<%@page import="bean.DAO.SaleDao"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Transactions By Email</title>
           <link href="stylesheets/bootstrap.min.css" rel="stylesheet" type="text/css">
          <script type="text/javascript" src="JS/jquery.min.js"></script>
        <script type="text/javascript" src="JS/bootstrap.min.js"></script>
    </head>
    <body>
        <%
            String email = request.getParameter("email");
            
            List<String> transactions = SaleDao.getTransactionsByEmail(email);
        for(String s: transactions){
            out.print(s);
        
        %>
        
        <hr>
      
        <%} %>
    </body>
</html>

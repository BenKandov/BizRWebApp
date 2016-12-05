<%-- 
    Document   : transactionsByItemName
    Created on : Dec 5, 2016, 4:20:50 PM
    Author     : benkandov
--%>

<%@page import="java.util.List"%>
<%@page import="bean.DAO.SaleDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Transactions By Item Name</title>
    </head>
    <body>
        <% 
        String itemname = request.getParameter("itemname");
        
        List<String> transactions = SaleDao.getTransactionsByItemName(itemname);
        for(String s: transactions){
            out.print(s);
        
        %>
        
        <hr>
        
        
        <%} %>
       
    </body>
</html>

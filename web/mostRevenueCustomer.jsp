<%-- 
    Document   : mostRevenueCustomer
    Created on : Dec 5, 2016, 5:12:58 PM
    Author     : benkandov
--%>

<%@page import="java.util.List"%>
<%@page import="bean.DAO.SaleDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Most Revenue Customer</title>
        <link href="stylesheets/bootstrap.min.css" rel="stylesheet" type="text/css">
          <script type="text/javascript" src="JS/jquery.min.js"></script>
        <script type="text/javascript" src="JS/bootstrap.min.js"></script>
    </head>
    <body>
        <div class='div-container'>
            <div class='row'>
                <div class='col-md-12 text-center'>
                <h1> The customer(s) yielding us the greatest revenue is(are)....</h1>
                </div>
             </div>
            <% 
            List<String> customers = SaleDao.getMostRevenueCustomer();
            
            for(String c : customers){
            %>
            
            <h1> <%out.print(c); %> </h1>
            
            
            <% } %>
            
        </div>
    </body>
</html>

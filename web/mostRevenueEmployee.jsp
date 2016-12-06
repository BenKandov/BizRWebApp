<%-- 
    Document   : mostRevenueEmployee
    Created on : Dec 5, 2016, 6:43:33 PM
    Author     : benkandov
--%>

<%@page import="bean.DAO.SaleDao"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Most Revenue Employee</title>
      <link href="stylesheets/bootstrap.min.css" rel="stylesheet" type="text/css">
          <script type="text/javascript" src="JS/jquery.min.js"></script>
        <script type="text/javascript" src="JS/bootstrap.min.js"></script>
    </head>
    </head>
    <body>
         <div class='div-container'>
            <div class='row'>
                <div class='col-md-12 text-center'>
                <h1> The customer(s) yielding us the greatest revenue is(are)....</h1>
                </div>
             </div>
            <% 
            List<String> employees = SaleDao.getMostRevenueEmployee();
            
            for(String em : employees){
            %>
            
            <h1> <%out.print(em); %> </h1>
            
            
            <% } %>
            
        </div>
    </body>
</html>

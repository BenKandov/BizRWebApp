<%-- 
    Document   : revenueSummaryByCustomer
    Created on : Dec 6, 2016, 2:13:35 PM
    Author     : benkandov
--%>

<%@page import="bean.DAO.SaleDao"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Revenue Summary by Email</title>
    </head>
    <body>
               <div class="container-fluid">
            <%
                String email = request.getParameter("email");
                List<String> sales = SaleDao.revenueSummaryByCustomerName(email);
                
                for(String s:sales){
                %>
                <Hr>
                <h1> <%out.print(s); %> </h1>
                
                <% } %>
            
        </div>
    </body>
</html>

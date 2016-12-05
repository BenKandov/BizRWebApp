<%-- 
    Document   : monthlySalesReportResponse
    Created on : Dec 5, 2016, 3:39:10 AM
    Author     : benkandov
--%>

<%@page import="java.util.List"%>
<%@page import="bean.DAO.SaleDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Monthly Sales Report</title>
    </head>
    <body>
        <% 
        String month = request.getParameter("month");
        
        List<String> sales = SaleDao.monthlySalesReport(Integer.parseInt(month));
        for(String s: sales){
            out.print(s);
        
        %>
        
        <hr>
        
        
        <%} %>
    </body>
</html>

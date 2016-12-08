<%-- 
    Document   : viewBestSellers
    Created on : Dec 8, 2016, 3:52:20 PM
    Author     : shane
--%>

<%@page import="bean.DAO.SaleDao"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Best Sellers</title>
    </head>
    <body>
        <%List<String> bestSellers = SaleDao.getBestSellerItems();
        int i = 1;
        for (String bs : bestSellers) { %>
        <h1>  <%  out.print(i + ":" + bs + "\n");%> </h1>
           <%
           ++i;
        }%>
    </body>
</html>

<%-- 
    Document   : createAdResponse
    Created on : Dec 5, 2016, 1:40:43 AM
    Author     : benkandov
--%>

<%@page import="bean.DAO.AdvertisementDao"%>
<%@page import="bean.Ad"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Create Ad</title>
        <link href="stylesheets/bootstrap.min.css" rel="stylesheet" type="text/css">
          <script type="text/javascript" src="JS/jquery.min.js"></script>
        <script type="text/javascript" src="JS/bootstrap.min.js"></script>
    </head>
    <body>
        <% 
            Ad a = new Ad();
            a.setCompany(request.getParameter("company"));
            a.setItemName(request.getParameter("itemname"));
            a.setContent(request.getParameter("content"));
            a.setUnitPrice(request.getParameter("unitprice"));
            a.setNumAvailableUnits(request.getParameter("numunits"));
            a.setAdvertisementType(request.getParameter("type"));
            
            int status = AdvertisementDao.makeAd(a);
            
                   if (status > 0){
            %>
            <h1> Ad created. Nice.</h1>
            
            <%
                           
} else{ %>
           Didn't work.
            <% } %>
    </body>
</html>

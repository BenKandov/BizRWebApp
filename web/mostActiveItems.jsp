<%-- 
    Document   : mostActiveItems
    Created on : Dec 5, 2016, 12:34:25 PM
    Author     : benkandov
--%>

<%@page import="java.util.List"%>
<%@page import="bean.DAO.AdvertisementDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Most Active Items</title>
        <link href="stylesheets/bootstrap.min.css" rel="stylesheet" type="text/css">
          <script type="text/javascript" src="JS/jquery.min.js"></script>
        <script type="text/javascript" src="JS/bootstrap.min.js"></script>
    </head>
    <body>
       <div class='container-fluid'>
        <%List<String> items = AdvertisementDao.mostActiveItems();
            for(String i : items){
            
            %>
            <hr>
            <div class='row'>
            <div class='col-md-12 text-center'>
                <h1><%out.print(i); %> </h1>
            </div>
            </div>
            <% }%>
        </div>
    </body>
</html>

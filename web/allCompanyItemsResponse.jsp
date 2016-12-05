<%-- 
    Document   : allCompanyItemsResponse
    Created on : Dec 5, 2016, 12:47:30 PM
    Author     : benkandov
--%>

<%@page import="bean.DAO.AdvertisementDao"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>List of Items by Company</title>
             <link href="stylesheets/bootstrap.min.css" rel="stylesheet" type="text/css">
          <script type="text/javascript" src="JS/jquery.min.js"></script>
        <script type="text/javascript" src="JS/bootstrap.min.js"></script>
    </head>
    <body>
          <div class='container-fluid'>
       <%
           String company = request.getParameter("company");
         
                 
            List<String> items = AdvertisementDao.itemsByCompany(company);
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

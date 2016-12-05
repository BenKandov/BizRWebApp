<%-- 
    Document   : deleteAdResponse
    Created on : Dec 5, 2016, 2:06:38 AM
    Author     : benkandov
--%>

<%@page import="bean.DAO.AdvertisementDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Deleted Ad</title>
          <link href="stylesheets/bootstrap.min.css" rel="stylesheet" type="text/css">
          <script type="text/javascript" src="JS/jquery.min.js"></script>
        <script type="text/javascript" src="JS/bootstrap.min.js"></script>
    </head>
    <body>
        <% 
            String id = request.getParameter("id");
            
            int status = AdvertisementDao.deleteAd(id);
            
            if(status > 0){
            %>
            <h1> Nice. Ad deleted.</h1>
            <% }else{ %>
            <h1>     Something went wrong </h1>
                    <% } %>
                    
    </body>
</html>

<%-- 
    Document   : companyMailingList
    Created on : Dec 8, 2016, 2:04:00 PM
    Author     : shane
--%>

<%@page import="bean.DAO.SaleDao"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Company Mailing List</title>
            <link href="stylesheets/bootstrap.min.css" rel="stylesheet" type="text/css">
        <script type="text/javascript" src="JS/jquery.min.js"></script>
        <script type="text/javascript" src="JS/bootstrap.min.js"></script>

    </head>
    <body>
         <%
            String company = request.getParameter("company");
            
            List<String> mailingList = SaleDao.getMailingListByCompany(company);
        for(String email: mailingList){
            %>
            <h1 class="text-center">   <% out.print(email);%> </h1>
      
        
        <hr>
        
        
        <%} %>
    </body>
</html>

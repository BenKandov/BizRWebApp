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
    </head>
    <body>
         <%
            String company = request.getParameter("Company name");
            
            List<String> mailingList = SaleDao.getMailingListByCompany(company);
        for(String email: mailingList){
            out.print(email);
        
        %>
        
        <hr>
        
        
        <%} %>
    </body>
</html>

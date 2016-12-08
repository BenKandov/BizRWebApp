<%-- 
    Document   : editCustomerResponse
    Created on : Dec 8, 2016, 1:34:05 PM
    Author     : shane
--%>

<%@page import="bean.DAO.LoginDao"%>
<%@page import="bean.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edited Customer</title>
          <link href="stylesheets/bootstrap.min.css" rel="stylesheet" type="text/css">
          <script type="text/javascript" src="JS/jquery.min.js"></script>
        <script type="text/javascript" src="JS/bootstrap.min.js"></script>
    </head>
    <body>
        <%
            User user = new User();
            user.setFirstName(request.getParameter("firstName"));
            user.setLastName(request.getParameter("lastName"));
            user.setPhoneNumber(request.getParameter("phonenum"));
            user.setAddress(request.getParameter("address"));
            user.setState(request.getParameter("state"));
            user.setCity(request.getParameter("city"));
            user.setZipCode(request.getParameter("zipcode"));
            user.setCreditCard(request.getParameter("creditCard"));
            
            int status = LoginDao.update(user);
            
            if (status > 0){
               response.sendRedirect("editCustomer.jsp");  %>
           <% }else{%>
           didn't work
          <% }  
        %>
    </body>
</html>

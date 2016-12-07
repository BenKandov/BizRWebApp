<%-- 
    Document   : editEmployeeResponse
    Created on : Dec 7, 2016, 4:53:20 PM
    Author     : benkandov
--%>

<%@page import="bean.DAO.EmployeeDao"%>
<%@page import="bean.Employee"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edited Employee</title>
          <link href="stylesheets/bootstrap.min.css" rel="stylesheet" type="text/css">
          <script type="text/javascript" src="JS/jquery.min.js"></script>
        <script type="text/javascript" src="JS/bootstrap.min.js"></script>
    </head>
    <body>
        <%
            Employee em = new Employee();
            em.setFirstName(request.getParameter("firstName"));
            em.setLastName(request.getParameter("lastName"));
            em.setPhoneNum(request.getParameter("phonenum"));
            em.setAddress(request.getParameter("address"));
            em.setState(request.getParameter("state"));
            em.setCity(request.getParameter("city"));
            em.setZipcode(request.getParameter("zipcode"));
            em.setHourlyRate(request.getParameter("hourlyrate"));
            em.setSSN(request.getParameter("id"));
            
            int status = EmployeeDao.update(em);
            
            if (status > 0){
               response.sendRedirect("editEmployee.jsp");  %>
           <% }else{%>
           didn't work
          <% }  
        %>
    </body>
</html>

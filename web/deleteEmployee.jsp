<%-- 
    Document   : deleteEmployee
    Created on : Dec 7, 2016, 4:16:09 PM
    Author     : benkandov
--%>

<%@page import="bean.DAO.EmployeeDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Delete Employee</title>
         <link href="stylesheets/bootstrap.min.css" rel="stylesheet" type="text/css">
          <script type="text/javascript" src="JS/jquery.min.js"></script>
        <script type="text/javascript" src="JS/bootstrap.min.js"></script>
    </head>
    <body>
        <%
            String id = request.getParameter("id");
            int status = EmployeeDao.deleteEmployee(id);
            
            if (status>0){
            %>
            <h1> Successfully deleted.  </h1>
            
            <% }else{%>
           
                Did not work.
            <%} %>
    </body>
</html>

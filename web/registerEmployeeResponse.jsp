<%-- 
    Document   : registerEmployeeResponse
    Created on : Dec 5, 2016, 12:31:33 AM
    Author     : benkandov
--%>

<%@page import="bean.DAO.EmployeeDao"%>
<%@page import="bean.Employee"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Employee Registration</title>
         <link href="stylesheets/bootstrap.min.css" rel="stylesheet" type="text/css">
          <script type="text/javascript" src="JS/jquery.min.js"></script>
        <script type="text/javascript" src="JS/bootstrap.min.js"></script>
    </head>
    <body>
        <%
        String EmployeeType = request.getParameter("type");
        String firstname = request.getParameter("firstName");
        String lastname = request.getParameter("lastName");
        
        Employee e = new Employee();
        e.setEmployeeType(EmployeeType);
        e.setFirstName(firstname);
        e.setLastName(lastname);
        
        int status = EmployeeDao.register(e);
        
        if(status>0){
                %>
                
                <div class="container-fluid">
                    
                    <h1> Successfully registered! </h1>
                    <br>
                    <h2> <a href="employeeLoginPage.jsp"> Log in </a> </h2>
                </div>
            <%}
            else{
                %>
                  <div class="container-fluid">
                      <h1> Someone has already made an account with that email. </h1>
                      <h2> Please try <a href="registrationPage.jsp"> again. </a> </h2>
                  </div>
            <%}
            %>
    </body>
</html>

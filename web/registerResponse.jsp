<%-- 
    Document   : registerResponse
    Created on : Nov 15, 2016, 1:14:57 PM
    Author     : benkandov
--%>

<%@page import="bean.UserCreation"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="bean.DAO.RegistrationDao"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration Confirmation</title>
          <link href="stylesheets/bootstrap.min.css" rel="stylesheet" type="text/css">
          <script type="text/javascript" src="JS/jquery.min.js"></script>
        <script type="text/javascript" src="JS/bootstrap.min.js"></script>
    </head>
    <body>
        <%
            String email = request.getParameter("email");
            String firstname = request.getParameter("firstName");
            String lastname = request.getParameter("lastName");
            String pass = request.getParameter("pass");
            UserCreation obj = new UserCreation();
            obj.setEmail(email);
            obj.setFirstName(firstname);
            obj.setLastName(lastname);
            obj.setPassword(pass);
            
            int status = RegistrationDao.register(obj);
            if(status>0){
                %>
                
                <div class="container-fluid">
                    
                    <h1> Successfully registered! </h1>
                    <br>
                    <h2> <a href="loginPage.jsp"> Log in </a> </h2>
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

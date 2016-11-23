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
            if(status>0)
                out.print("Succesfully registered!");
            else{
                out.print("Something went wrong.");
            }
            %>
        
    </body>
</html>

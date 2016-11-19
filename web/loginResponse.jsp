<%-- 
    Document   : loginResponse
    Created on : Nov 18, 2016, 10:33:15 PM
    Author     : benkandov
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="bean.LoginDao"%>
<%@page import="bean.User"%>
<!DOCTYPE html>
<html>
    <head>
        
        
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Confirmation</title>
    </head>
    <body>
        <%
            String email = request.getParameter("email");
            String pass = request.getParameter("pass");
            User user = new User();
            user.setEmail(email);
            user.setPassword(pass);
            
            int status = LoginDao.login(user);
            
            if(status>0){
                session.setAttribute("userid", status);
                out.print("Your session is " + session.getAttribute("userid"));
            }
            else{
                out.print("Login failed. Either username or password invalid.");
            }
            
            %>
    </body>
</html>

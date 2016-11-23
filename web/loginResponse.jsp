<%-- 
    Document   : loginResponse
    Created on : Nov 18, 2016, 10:33:15 PM
    Author     : benkandov
--%>

<%@page import="bean.UserCreation"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="bean.DAO.LoginDao"%>
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
            UserCreation user = new UserCreation();
            user.setEmail(email);
            user.setPassword(pass);
            
            User sessionUser = LoginDao.login(user);
            
            if (sessionUser == null){
                 out.print("Login failed. Either username or password invalid.");
            }
            else{
                session.setAttribute("userid", sessionUser.getUserId());
                session.setAttribute("firstname", sessionUser.getFirstName());
                session.setAttribute("lastname", sessionUser.getLastName());
                session.setAttribute("email", sessionUser.getEmail());
                session.setAttribute("phonenumber", sessionUser.getPhoneNumber());
                session.setAttribute("address", sessionUser.getAddress());
                session.setAttribute("state", sessionUser.getState());
                session.setAttribute("city", sessionUser.getCity());
                session.setAttribute("zipcode", sessionUser.getZipCode());
                session.setAttribute("creditcard", sessionUser.getCreditCard());
                session.setAttribute("creationdate", sessionUser.getCreationDate());
                
                response.sendRedirect("index.jsp");
            }
     
            
            %>
    </body>
</html>

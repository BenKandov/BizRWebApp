<%-- 
    Document   : registerResponse
    Created on : Nov 15, 2016, 1:14:57 PM
    Author     : benkandov
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="bean.RegistrationDao"%>
<jsp:useBean id="obj" class="bean.User"/>  

<jsp:setProperty property="*" name="obj"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration Confirmation</title>
    </head>
    <body>
        <%
            int status = RegistrationDao.register(obj);
            if(status>0)
                out.print("Succesfully registered!");
            else{
                out.print("Something went wrong.");
            }
            %>
        
    </body>
</html>

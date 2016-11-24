<%-- 
    Document   : deleteMessage
    Created on : Nov 24, 2016, 1:04:03 PM
    Author     : benkandov
--%>

<%@page import="bean.DAO.MessageDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
    </head>
    <body>
        <%
            
            int status = MessageDao.deleteMessage(request.getParameter("messageToDelete"));
            
            response.sendRedirect("receivedMessages.jsp");
            %>
    </body>
</html>

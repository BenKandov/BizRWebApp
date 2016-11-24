<%-- 
    Document   : createMessageResponse
    Created on : Nov 23, 2016, 10:21:30 PM
    Author     : benkandov
--%>

<%@page import="bean.DAO.MessageDao"%>
<%@page import="bean.Message"%>
<%@page import="bean.DAO.LoginDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
          <link href="stylesheets/bootstrap.min.css" rel="stylesheet" type="text/css">
          <script type="text/javascript" src="JS/jquery.min.js"></script>
        <script type="text/javascript" src="JS/bootstrap.min.js"></script>
    </head>
    <body>
        <%@include file="templates\userNavbar.jsp" %>
        <%
            String senderId = session.getAttribute("userid").toString();
            String receiverId = LoginDao.getUserIdFromEmail(request.getParameter("email"));
            String title = request.getParameter("title");
            String content = request.getParameter("content");
            
            Message message = new Message(senderId, receiverId, title, content);
            
            int status = MessageDao.sendMessage(message);
            
            
            if(status>0){
        %>
            <div class="container-fluid">
                <h1>Successfully sent message! </h1>
            </div>
        
        <%}else{%>
             <div class="container-fluid">
                <h1>Oops! It looks like a user with that Email doesn't exist... </h1>
            </div>
        <%}%>
    </body>
</html>

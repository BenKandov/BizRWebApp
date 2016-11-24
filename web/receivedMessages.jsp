<%-- 
    Document   : receivedMessages
    Created on : Nov 24, 2016, 12:02:06 AM
    Author     : benkandov
--%>

<%@page import="bean.DAO.MessageDao"%>
<%@page import="bean.Message"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Received Messages</title>
          <link href="stylesheets/bootstrap.min.css" rel="stylesheet" type="text/css">
          <script type="text/javascript" src="JS/jquery.min.js"></script>
        <script type="text/javascript" src="JS/bootstrap.min.js"></script>
    </head>
    <body>
        <%@include file="templates\userNavbar.jsp" %>
        <div class="container-fluid">
            <div class="row">
                <div class ="col-md-12 text-center">
                    <h1> Received Messages </h1>
                </div>
            </div>
            <% List<Message> msgs = MessageDao.getReceivedMessages(session.getAttribute("userid").toString());
                for(Message m : msgs){
                    
                %>
                <hr>
                <div class="row">
                    <div class="col-md-12">
                        From: <%  out.print(m.getEmail()); %>
                    </div>

                </div>
                    
                <div class="row">
                    <div class="col-md-12 text-center">
                        <h2> <%  out.print(m.getTitle()); %> </h2>
                    </div>
                </div>
                    
                <div class="row" style = "padding-bottom:20px" >
                    <div class="col-md-12">
                        <%  out.print(m.getContent()); %>
                    </div>
                </div>
                
                <div class="row">
                    <div class="col-md-12 text-center">
                       <form method="get" action="deleteMessage.jsp">
                           <input type ="hidden" name="messageToDelete" value="<%out.print(m.getMessageId()); %>">
                        <button type="submit" class="btn btn-danger">Delete</button>
                       </form>
                    </div> 
                
                </div>
                    
                
                <%  } %>
        </div>
        
        
        
    </body>
</html>

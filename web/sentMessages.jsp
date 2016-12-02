<%-- 
    Document   : messages
    Created on : Nov 23, 2016, 9:06:17 PM
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
        <title>Sent Messages</title>
         <link href="stylesheets/bootstrap.min.css" rel="stylesheet" type="text/css">
          <script type="text/javascript" src="JS/jquery.min.js"></script>
        <script type="text/javascript" src="JS/bootstrap.min.js"></script>
    </head>
    <body>
        <%@include file="templates\userNavbar.jsp" %>
        <div class="container-fluid">
            <div class="row">
                <div class ="col-md-12 text-center">
                    <h1> Sent Messages </h1>
                </div>
            </div>
            <% List<Message> msgs = MessageDao.getSentMessages(session.getAttribute("userid").toString());
                for(Message m : msgs){
                    
                %>
                <hr>
                
                <div class="row">                    
                    <div class="col-md-12">
                        To: <%  out.print(m.getEmail()); %>
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
                
  
                    
                
                <%  } %>
        </div>
        
    </body>
</html>

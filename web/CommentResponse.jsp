<%-- 
    Document   : CommentResponse.jsp
    Created on : Dec 2, 2016, 8:00:57 PM
    Author     : benkandov
--%>

<%@page import="bean.Comment"%>
<%@page import="bean.DAO.CommentDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Comment</title>
               <link href="stylesheets/bootstrap.min.css" rel="stylesheet" type="text/css">
          <script type="text/javascript" src="JS/jquery.min.js"></script>
        <script type="text/javascript" src="JS/bootstrap.min.js"></script>
    </head>
    <body>
               <%@include file="templates\userNavbar.jsp" %>
        <%
            Comment comment = new Comment();
            comment.setAuthorId(session.getAttribute("userid").toString());
            
            comment.setContent(request.getParameter("content"));
            
            comment.setPostId(request.getParameter("id"));
            
            int status = CommentDao.makeComment(comment);
            
            if (status > 0){
            %>
            <h1> Comment successfully made! </h1>
            <% } else{ %>
            <h1> Comment too long. </h1>
            <% } %>
    </body>
</html>

<%-- 
    Document   : likeComment
    Created on : Dec 2, 2016, 8:40:05 PM
    Author     : benkandov
--%>

<%@page import="bean.DAO.CommentDao"%>
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
            
            int status = CommentDao.likeComment(request.getParameter("commentToLike"),request.getParameter("id"));
            
            String referer = request.getHeader("Referer");
            response.sendRedirect(referer);
            %>
    </body>
</html>

<%-- 
    Document   : PostResponse
    Created on : Nov 24, 2016, 9:50:09 PM
    Author     : benkandov
--%>

<%@page import="bean.DAO.PostDao"%>
<%@page import="bean.Post"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Post</title>
        <link href="stylesheets/bootstrap.min.css" rel="stylesheet" type="text/css">
          <script type="text/javascript" src="JS/jquery.min.js"></script>
        <script type="text/javascript" src="JS/bootstrap.min.js"></script>
    </head>
    <body>
        <%@include file="templates\userNavbar.jsp" %>
        <%
            Post post = new Post();
            post.setAuthorId(session.getAttribute("userid").toString());
            
            post.setContent(request.getParameter("postcontent"));
            
            post.setPageId(request.getParameter("id"));
            
            int status = PostDao.makePost(post);
            
            if (status > 0){
            %>
            <h1> Post successfully made! </h1>
            
            <%
                            String referer = request.getHeader("Referer");
            response.sendRedirect(referer);
} else{ %>
            <h1> Post too long. </h1>
            <% } %>
            
    </body>
</html>

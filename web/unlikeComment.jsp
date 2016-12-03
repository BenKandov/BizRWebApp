<%-- 
    Document   : unlikeComment
    Created on : Dec 2, 2016, 9:00:27 PM
    Author     : benkandov
--%>

<%@page import="bean.DAO.CommentDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
    </head>
    <body>
                       <%
            
            int status = CommentDao.unlikeComment(request.getParameter("commentToUnLike"),request.getParameter("id"));
         
            String referer = request.getHeader("Referer");
            response.sendRedirect(referer);
            %>
    </body>
</html>

<%-- 
    Document   : ModifyCommentResponse
    Created on : Dec 3, 2016, 11:48:29 AM
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
            
            int status = CommentDao.modifyComment(request.getParameter("id"),request.getParameter("content"));
            
            
            response.sendRedirect("yourWall.jsp");
            %>
    </body>
</html>

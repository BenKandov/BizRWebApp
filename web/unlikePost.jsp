<%-- 
    Document   : unlikePost
    Created on : Dec 2, 2016, 7:06:02 PM
    Author     : benkandov
--%>

<%@page import="bean.DAO.PostDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       
    </head>
    <body>
                <%
            
            int status = PostDao.unlikePost(request.getParameter("postToUnLike"),request.getParameter("id"));
         
            response.sendRedirect("yourWall.jsp");
            %>
    </body>
</html>

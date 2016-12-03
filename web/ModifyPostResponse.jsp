<%-- 
    Document   : ModifyPostResponse
    Created on : Dec 3, 2016, 12:54:37 PM
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
            
            int status = PostDao.modifyPost(request.getParameter("id"),request.getParameter("content"));
            
            
            response.sendRedirect("yourWall.jsp");
            %>
    </body>
</html>

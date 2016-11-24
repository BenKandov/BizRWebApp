<%-- 
    Document   : deleteGroup
    Created on : Nov 24, 2016, 3:18:44 PM
    Author     : benkandov
--%>

<%@page import="bean.DAO.GroupDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      
    </head>
    <body>
             <%
           
            int status = GroupDAO.deleteGroup(request.getParameter("groupToDelete"));
            
            response.sendRedirect("viewGroups.jsp");
            %>
    </body>
</html>

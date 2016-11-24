<%-- 
    Document   : unjoinGroup
    Created on : Nov 24, 2016, 6:44:02 PM
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
            String userId = request.getParameter("userid");
            String groupId = request.getParameter("groupid");
            int status = GroupDAO.unJoinGroup(userId, groupId);
            response.sendRedirect("viewGroups.jsp");
            %>
    </body>
</html>

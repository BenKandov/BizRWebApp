<%-- 
    Document   : updateGroupName
    Created on : Nov 24, 2016, 4:41:27 PM
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
           
            int status = GroupDAO.updateGroupName(request.getParameter("groupToUpdate"), request.getParameter("newname"));
            
            response.sendRedirect("viewGroups.jsp");
            %>
    </body>
</html>

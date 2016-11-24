<%-- 
    Document   : createGroupResponse
    Created on : Nov 24, 2016, 2:09:23 PM
    Author     : benkandov
--%>

<%@page import="bean.DAO.GroupDAO"%>
<%@page import="bean.Group"%>
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
        String userId = session.getAttribute("userid").toString();
        String groupName = request.getParameter("groupname");
        String groupType = request.getParameter("grouptype");
        
        Group group = new Group(userId, groupName, groupType);
        
        int status = GroupDAO.CreateGroup(group);
        
        if(status>0){
        %>
            <div class="container-fluid">
                <h1>Successfully created group! </h1>
            </div>
        <%}else{%>
             <div class="container-fluid">
                <h1>Oops! It looks like that group already exists. </h1>
            </div>
        <%}%>
    </body>
</html>

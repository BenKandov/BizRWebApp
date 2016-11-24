<%-- 
    Document   : index
    Created on : Nov 17, 2016, 11:32:40 AM
    Author     : benkandov
--%>

<%@page import="bean.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome to BizR</title>
        <link href="stylesheets/bootstrap.min.css" rel="stylesheet" type="text/css">
          <script type="text/javascript" src="JS/jquery.min.js"></script>
        <script type="text/javascript" src="JS/bootstrap.min.js"></script>
       
    </head>
    <body>
        <% if (session.getAttribute("firstname") == null){ %>
        <div class="container-fluid">
            
            <div class="row">
                   <div class="col-md-12 text-center">
                       <h1>Welcome to BizR!</h1>
                   </div>
            </div>
            <div style="padding:20px" class="row">
                
                      <div class="col-md-12 text-center">
                        <a class="btn btn-primary" href="loginPage.jsp" role="button">Log In</a>
                      </div>
            </div>
            <div class="row">
                      <div class="col-md-12 text-center">
                            <a class="btn btn-primary" href="registrationPage.jsp" role="button">Sign Up</a>
                      </div>
            </div>
               
        </div>
        <% } else { %>
        <%
            if(request.getParameter("signOut")!=null){
                session.setAttribute("firstname", null);
                response.sendRedirect("index.jsp");
            }
            %>
        
            <%@include file="templates\userNavbar.jsp" %>
        <% } %>
        
        
        
    </body>
</html>

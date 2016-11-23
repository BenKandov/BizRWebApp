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
               // session.invalidate();
                response.sendRedirect("index.jsp");
            }
            %>
        
        <nav class="navbar navbar-default navbar-static-top">
            <div class="container-fluid">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" 
                        data-toggle="collapse" data-target="#user-toolbar">
                        <span class="sr-only">Toggle navigation</span>
                     <span class="icon-bar"></span>
                     <span class="icon-bar"></span>
                     <span class="icon-bar"></span>
                  </button>
                <a class="navbar-brand" href="#"> 
                    <% out.print(  session.getAttribute("firstname") );
                       out.print(" ");
                       out.print( session.getAttribute("lastname"));
                       %> 
                </a> 
            </div>  
            <div class ="collapse navbar-collapse" id="user-toolbar">
                <ul class="nav navbar-nav">
                    <li>
                        <form method="get">
                        <button type="submit" id="signOut" name="signOut" type="button" class="btn btn-default navbar-btn">
                             Sign Out
                        </button> 
                        </form>
                    </li>
                    
                </ul>

            </div>
            </div>
        </nav>
        <% } %>
        
        
        
    </body>
</html>

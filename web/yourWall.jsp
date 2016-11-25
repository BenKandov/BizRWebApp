<%-- 
    Document   : yourWall
    Created on : Nov 18, 2016, 11:07:48 PM
    Author     : benkandov
--%>

<%@page import="bean.DAO.PageDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title><% out.print(session.getAttribute("firstname") + " "  +session.getAttribute("lastname")); %></title> 
          <link href="stylesheets/bootstrap.min.css" rel="stylesheet" type="text/css">
          <script type="text/javascript" src="JS/jquery.min.js"></script>
        <script type="text/javascript" src="JS/bootstrap.min.js"></script>
    </head>
    <body>
        <%@include file="templates\userNavbar.jsp" %>
        <div class="container-fluid">
            <div class="row" style="padding-bottom:20px">
                <h1> <% out.print(session.getAttribute("firstname") + " "  +session.getAttribute("lastname")
                        + "'s ("+ session.getAttribute("email").toString()  +") Wall"); %> </h1>
            </div>
            <div class="row">
                <div class="col-md-6">
                    <h3> Make a Post:</h3>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12 text-center">
                 <form action="PostResponse.jsp">
                        <div class="form-group">
                        <div class="form-group">
                            <label for="postcontentInput"></label>
                            <textarea name="postcontent" class="form-control" id="postcontentInput" rows="3"></textarea>
                         </div>
                             <input type ="hidden" name="id" value="<%out.print(PageDao.getPageIdFromUserId(session.getAttribute("userid").toString())); %>">
                        </div>
                    
                        <input type="submit" class="btn btn-primary" value="Post"/>
                        
                 </form>
                </div>
            </div>
            
        </div>
    </body>
</html>

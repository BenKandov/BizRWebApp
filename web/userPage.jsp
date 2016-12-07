<%-- 
    Document   : userPage
    Created on : Dec 1, 2016, 4:12:43 PM
    Author     : benkandov
--%>

<%@page import="bean.Like"%>
<%@page import="java.util.ArrayList"%>
<%@page import="bean.Post"%>
<%@page import="java.util.List"%>
<%@page import="bean.DAO.PageDao"%>
<%@page import="bean.DAO.LoginDao"%>
<%@page import="bean.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%
            User usr = LoginDao.getUserFromUserId(request.getParameter("id"));
           
        %>
        <title> <%out.print(usr.getFirstName() + " " + usr.getLastName() + "'s ( " + usr.getEmail()
        + ") page"); %></title>
        <link href="stylesheets/bootstrap.min.css" rel="stylesheet" type="text/css">
        <script type="text/javascript" src="JS/jquery.min.js"></script>
        <script type="text/javascript" src="JS/bootstrap.min.js"></script>
    </head>
    <body>
        <%@include file="templates\userNavbar.jsp" %>
        <div class="container-fluid">
            <div class="row" style="padding-bottom:20px">
                <h1> <%out.print(usr.getFirstName() + " " + usr.getLastName() + "'s ( " + usr.getEmail()
        + ") page"); %> </h1>
            </div>
            <div class="row">
                <div class="col-md-6">
                    <h3>Make a Post:</h3>
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
                             <input type ="hidden" name="id" value="<%out.print(PageDao.getPageIdFromUserId(usr.getUserId())); %>">
                        </div>
                    
                        <input type="submit" class="btn btn-primary" value="Post"/>
                        
                 </form>
                </div>
            </div>
                        
           <% 
            List<Post> posts = PageDao.GetPosts( PageDao.getPageIdFromUserId(usr.getUserId()));
                for(Post p : posts){
               
            %>
            
            <hr>
            
            <div class="row">
                <div class="col-md-4">
                    <b> Author</b>  <%  out.print(LoginDao.getEmailFromUserId(p.getAuthorId()) ); %>
                    
                </div>
                <div class="col-md-3">
                    <b> Date: </b> <% out.print(p.getPostedDate()); %>
                </div>
            </div>
            
            <div class="row" style="padding-bottom:40px">
                <div class="col-md-12 text-center" style="font-size:16px">
                    <%  out.print(p.getContent()); %>
                </div>
            </div>
            
            <div class="row" style="padding-bottom:50px">
                <div class="col-md-2">
                    <a href=""> Comments ( <% out.print(p.getComments().size()); %> ) </a>
                </div>
                                
              
                
                <div class="col-md-2">
                    <a href=""> Likes ( <% out.print(p.getLikes().size()); %> ) </a>
                </div>

            </div>
                
            <div class="row" style="padding-bottom:50px">
                <div class="col-md-12 text-center">
                    <% if(p.getAuthorId().equals(session.getAttribute("userid").toString())){ %>
                        <form method="get" action="modifyPost.jsp">
                        <input type ="hidden" name="postToModify" value="<%out.print(p.getPostId()); %>">
                        <input type ="hidden" name="postContent" value="<%out.print(p.getContent()); %>">
                        <button type="submit" class="btn btn-primary">Modify</button>
                    </form>
                     <form method="get" action="deletePost.jsp">
                        <input type ="hidden" name="postToDelete" value="<%out.print(p.getPostId()); %>">
                        <button type="submit" class="btn btn-danger">Delete</button>
                    </form>
                       <%} %>

                    <form method="get" action="commentsOnPost.jsp">
                        <input type ="hidden" name="postToComment" value="<%out.print(p.getPostId()); %>">
                        <button type="submit" class="btn btn-primary">Comment</button>
                    </form>
                        
                        <%
                        List<String> ids = new ArrayList<String>();
                        for (Like l: p.getLikes()){
                            ids.add(l.getLikerId());
                        }
                        
                       if(ids.contains(session.getAttribute("userid").toString())){
                          %>    
                     <form method="get" action="unlikePost.jsp">
                        <input type ="hidden" name="id" value="<%out.print(session.getAttribute("userid")); %>">
                        <input type ="hidden" name="postToUnLike" value="<%out.print(p.getPostId()); %>">
                        <button type="submit" class="btn btn-danger">UnLike</button>
                    </form>
                        
                    <%  }else{%>
                                                
                    <form method="get" action="likePost.jsp">
                        <input type ="hidden" name="id" value="<%out.print(session.getAttribute("userid")); %>">
                        <input type ="hidden" name="postToLike" value="<%out.print(p.getPostId()); %>">
                        <button type="submit" class="btn btn-success">Like</button>
                    </form>
                        
                    <%} %>
                </div>
            </div>
            
            <%} %>
            
        </div>
    </body>
</html>

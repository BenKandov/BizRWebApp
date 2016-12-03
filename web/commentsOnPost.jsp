<%-- 
    Document   : commentsOnPost
    Created on : Dec 2, 2016, 7:25:27 PM
    Author     : benkandov
--%>

<%@page import="bean.Like"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="bean.Comment"%>
<%@page import="bean.DAO.LoginDao"%>
<%@page import="bean.DAO.PostDao"%>
<%@page import="bean.Post"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Make a Comment</title>
          <link href="stylesheets/bootstrap.min.css" rel="stylesheet" type="text/css">
          <script type="text/javascript" src="JS/jquery.min.js"></script>
        <script type="text/javascript" src="JS/bootstrap.min.js"></script>
    </head>
    <body>
        <%@include file="templates\userNavbar.jsp" %>
        <%Post p = PostDao.getPostById(request.getParameter("postToComment"));

        %>
        <div class="container-fluid">
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
             <div class="row">
                <div class="col-md-6">
                    <h3> Make a Comment:</h3>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12 text-center">
                 <form action="CommentResponse.jsp">
                        <div class="form-group">
                        <div class="form-group">
                            <label for="contentInput"></label>
                            <textarea name="content" class="form-control" id="contentInput" rows="3"></textarea>
                         </div>
                             <input type ="hidden" name="id" value="<%out.print(p.getPostId()); %>">
                        </div>
                    
                        <input type="submit" class="btn btn-primary" value="Comment"/>
                        
                 </form>
                </div>
            </div>
                
            <div class="row">
                <h2>
                    Comments:
                </h2>
            </div>
                <hr>    
             <% for(Comment c: p.getComments()){%>
               <div class="row">
                <div class="col-md-4">
                    <b> Author</b>  <%  out.print(LoginDao.getEmailFromUserId(c.getAuthorId()) ); %>
                    
                </div>
                <div class="col-md-3">
                    <b> Date: </b> <% out.print(c.getDatePosted()); %>
                </div>
            </div>
                <div class="row">
                    <div class="col-md-12 text-center" >
                        <% out.print(c.getContent()); %>
                    </div>
                </div>
                    <div class="row">
                                      <div class="col-md-2">
                    <a href=""> Likes ( <% out.print(c.getLikes().size()); %> ) </a>
                </div>
                        
                    </div>
               
                
                <div class="row" style="padding-bottom:50px">
                <div class="col-md-12 text-center">
                    <% if(c.getAuthorId().equals(session.getAttribute("userid").toString())){ %>
                     <form method="get" action="deleteComment.jsp">
                        <input type ="hidden" name="commentToDelete" value="<%out.print(c.getCommentId()); %>">
                        <button type="submit" class="btn btn-danger">Delete</button>
                    </form>
                    <form method="get" action="modifyComment.jsp">
                        <input type ="hidden" name="commentToModify" value="<%out.print(c.getCommentId()); %>">
                        <input type ="hidden" name="commentContent" value="<%out.print(c.getContent()); %>">
                        <button type="submit" class="btn btn-primary">Modify</button>
                    </form>
                      
                <%
             }
                        List<String> ids = new ArrayList<String>();
                        for (Like l: c.getLikes()){
                            ids.add(l.getLikerId());
                        }
                      
                       if(ids.contains(session.getAttribute("userid").toString())){
                          %>    
                     <form method="get" action="unlikeComment.jsp">
                        <input type ="hidden" name="id" value="<%out.print(session.getAttribute("userid").toString()); %>">
                        <input type ="hidden" name="commentToUnLike" value="<%out.print(c.getCommentId()); %>">
                        <button type="submit" class="btn btn-danger">UnLike</button>
                    </form>
                        
                    <%  }else{%>
                                                
                    <form method="get" action="likeComment.jsp">
                        <input type ="hidden" name="id" value="<%out.print(session.getAttribute("userid").toString()); %>">
                        <input type ="hidden" name= "commentToLike" value="<%out.print(c.getCommentId()); %>">
                        <button type="submit" class="btn btn-success">Like</button>
                    </form>
                        
                    <%} %>
                </div>
            </div>
              <hr>
              
             <% } %>
             
        </div>
        
    </body>
</html>

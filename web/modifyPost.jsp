<%-- 
    Document   : modifyPost
    Created on : Dec 3, 2016, 12:51:01 PM
    Author     : benkandov
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Modify Post</title>
      <link href="stylesheets/bootstrap.min.css" rel="stylesheet" type="text/css">
          <script type="text/javascript" src="JS/jquery.min.js"></script>
        <script type="text/javascript" src="JS/bootstrap.min.js"></script>
    </head>
    <body>
        <%@include file="templates\userNavbar.jsp" %>
        <% 
            String content = request.getParameter("postContent");
        %>
        <div class="container-fluid">
            <div class="row">
                <h2>Modify your post:</h2>
            </div>
              <div class="row">
                <div class="col-md-12 text-center">
                 <form action="ModifyPostResponse.jsp">
                       <div class="form-group">
                        <div class="form-group">
               
                            <label for="contentInput"></label>
                            <textarea name="content"  class="form-control" id="contentInput" rows="3" ><%out.print(content);%></textarea>
                        </div>
                             <input type ="hidden" name="id" value="<%out.print(request.getParameter("postToModify")); %>">
                       </div>
                             <input type="submit" class="btn btn-primary" value="Post"/>
                        
                 </form>
                </div>
            </div>
        </div>
    </body>
</html>

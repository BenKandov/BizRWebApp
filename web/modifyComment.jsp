<%-- 
    Document   : modifyComment
    Created on : Dec 2, 2016, 9:51:38 PM
    Author     : benkandov
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Modify Comment</title>
      <link href="stylesheets/bootstrap.min.css" rel="stylesheet" type="text/css">
          <script type="text/javascript" src="JS/jquery.min.js"></script>
        <script type="text/javascript" src="JS/bootstrap.min.js"></script>
    </head>
    <body>
        <%@include file="templates\userNavbar.jsp" %>
        <% 
            String content = request.getParameter("commentContent");
        %>
        <div class="container-fluid">
            <div class="row">
                <h2>Modify your comment:</h2>
            </div>
              <div class="row">
                <div class="col-md-12 text-center">
                 <form action="ModifyCommentResponse.jsp">
                       <div class="form-group">
                        <div class="form-group">
               
                            <label for="contentInput"></label>
                            <textarea name="content"  class="form-control" id="contentInput" rows="3" ><%out.print(content);%></textarea>
                        </div>
                             <input type ="hidden" name="id" value="<%out.print(request.getParameter("commentToModify")); %>">
                       </div>
                             <input type="submit" class="btn btn-primary" value="Comment"/>
                        
                 </form>
                </div>
            </div>
        </div>
    </body>
</html>

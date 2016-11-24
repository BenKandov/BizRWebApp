<%-- 
    Document   : createMessage
    Created on : Nov 23, 2016, 9:47:43 PM
    Author     : benkandov
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Create a Message</title>
               <link href="stylesheets/bootstrap.min.css" rel="stylesheet" type="text/css">
          <script type="text/javascript" src="JS/jquery.min.js"></script>
        <script type="text/javascript" src="JS/bootstrap.min.js"></script>
       
    </head>
    <body>
      <%@include file="templates\userNavbar.jsp" %>
      
      <div class="container-fluid" style="margin:10px">
          <div class="row" style="padding-bottom:20px">
              <div class="col-md-12 text-center">
                   <h1> Send a Message </h1>
              </div>
          </div>  
              <form action="createMessageResponse.jsp">
                   <div class="form-group row">
                   <div class="form-group">
                         <label for="emailTo" class="col-xs-2 col-form-label">To (Email): </label>
                        <div class="col-xs-10">
                            <input name="email" class="form-control" type="text" value="" id="emailTo">
                        </div>
                  </div>
                     </div>
                                        
                <div class="form-group row">
                   <div class="form-group">
                         <label for="title" class="col-xs-2 col-form-label">Title: </label>
                        <div class="col-xs-10">
                            <input name="title" class="form-control" type="text" value="" id="title">
                        </div>
                  </div>
                </div>
                <div class="form-group">
                <div class="form-group">
                    <label for="message">Message:</label>
                    <textarea name="content" class="form-control" id="message" rows="3"></textarea>
                 </div>
                </div>
                <input type="submit" class="btn btn-primary" value="Send"/>
                  
              </form>
       
          
          
      </div>
      
    </body>
</html>

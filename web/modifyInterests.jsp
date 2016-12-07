<%-- 
    Document   : createInterest
    Created on : Dec 5, 2016, 5:57:43 PM
    Author     : shkennedy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Modify Interests</title>
               <link href="stylesheets/bootstrap.min.css" rel="stylesheet" type="text/css">
          <script type="text/javascript" src="JS/jquery.min.js"></script>
        <script type="text/javascript" src="JS/bootstrap.min.js"></script>
       
    </head>
    <body>
      <%@include file="templates\userNavbar.jsp" %>
      <% for(Interest i: interests){ %>
      <div class="container-fluid" style="margin:10px">
          <div class="row" style="padding-bottom:20px">
              <div class="col-md-12 text-center">
                   <h1> Add an Interest </h1>
              </div>
          </div>  
          <%out.print("Text to write to page (interests)");%>
              <form action="modifyInterestsResponse.jsp">
                   <div class="form-group row">
                   <div class="form-group">
                         <label for="newInterest" class="col-xs-2 col-form-label">Interest: </label>
                        <div class="col-xs-10">
                            <input name="interest" class="form-control" type="text" value="" id="newInterest">
                        </div>
                  </div>
                     </div>
                  
                <input type="submit" class="btn btn-primary" value="Add"/>
                  
              </form>
       
          <% } %>
          
      </div>
      
    </body>
</html>


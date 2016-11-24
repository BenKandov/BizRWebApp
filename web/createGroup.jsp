<%-- 
    Document   : createGroup
    Created on : Nov 24, 2016, 1:46:07 PM
    Author     : benkandov
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Create a Group</title>
                <link href="stylesheets/bootstrap.min.css" rel="stylesheet" type="text/css">
          <script type="text/javascript" src="JS/jquery.min.js"></script>
        <script type="text/javascript" src="JS/bootstrap.min.js"></script>
    </head>
    <body>
       <%@include file="templates\userNavbar.jsp" %>
   
             <div class="container-fluid">
           
            <div class="row">
                <div style="padding-bottom: 20px" class="col-md-12 text-center">
                    <h1>Create Group</h1>
                    
                </div>
            </div>
            
            <div class="row">
              <div class="col-xs-1">
              </div>
             <div class="col-xs-10 text-center">
            <form action="createGroupResponse.jsp">
 
                
                
                <div class="form-group row">
                   <div class="form-group">
                         <label for="groupnameInput" class="col-xs-2 col-form-label">Group Name: </label>
                        <div class="col-xs-10">
                            <input name="groupname" class="form-control" type="text" value="" id="groupnameInput">
                        </div>
                  </div>
                </div>
                
              
               
                  
              
                <div class="form-group row">
                   <div class="form-group">
                         <label for="groupTypeInput" class="col-xs-2 col-form-label">Group Type:</label>
                        <div class="col-xs-10">
                            <input name="grouptype" class="form-control" type="text" value="" id="groupTypeInput">
                        </div>
                  </div>
                </div>
              
                <input type="submit" class="btn btn-primary" value="Create"/>
                
            </form>
             </div>
                
            </div>
        </div>

    </body>
</html>

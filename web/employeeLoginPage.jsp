<%-- 
    Document   : employeeLoginPage
    Created on : Dec 5, 2016, 12:41:34 AM
    Author     : benkandov
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Employee Login</title>
        <link href="stylesheets/bootstrap.min.css" rel="stylesheet" type="text/css">
          <script type="text/javascript" src="JS/jquery.min.js"></script>
        <script type="text/javascript" src="JS/bootstrap.min.js"></script>
    </head>
    <body>
        <div class="container-fluid">
            
            <div class="row">
                <div style="padding-bottom: 20px" class="col-md-12 text-center">
                    <h1>Log in to BizR!</h1>
                    
                </div>
            </div>
            
            
            <div class="row">
              <div class="col-xs-1">
              </div>
             <div class="col-xs-10 text-center">
            <form action="employeeLoginResponse.jsp">
                                        
                <div class="form-group row">
                   <div class="form-group">
                         <label for="firstname" class="col-xs-2 col-form-label">First Name: </label>
                        <div class="col-xs-10">
                            <input name="firstname" class="form-control" type="text" value="" id="firstname">
                        </div>
                  </div>
                </div>
                
                <div class="form-group row">
                   <div class="form-group">
                         <label for="lastname" class="col-xs-2 col-form-label">Last Name: </label>
                        <div class="col-xs-10">
                            <input name="lastname" class="form-control" type="text" value="" id="lastname">
                        </div>
                  </div>
                </div>
                
                <div class="form-group row">
                   <div class="form-group">
                         <label for="type" class="col-xs-2 col-form-label">Employee Type: </label>
                        <div class="col-xs-10">
                            <input name="type" class="form-control" type="text" value="" id="type">
                        </div>
                  </div>
                </div>
                <input type="submit" class="btn btn-primary" value="Login"/>
                
            </form>
             </div>
                
            </div>  
            
        
        </div>
    </body>
</html>

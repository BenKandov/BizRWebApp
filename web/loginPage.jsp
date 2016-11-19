<%-- 
    Document   : loginPage
    Created on : Nov 18, 2016, 10:16:42 PM
    Author     : benkandov
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
        <link href="stylesheets/bootstrap.min.css" rel="stylesheet" type="text/css">
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
            <form action="loginResponse.jsp">
                <div class="form-group row">
                   <div class="form-group">
                         <label for="emailInput" class="col-xs-2 col-form-label">Email: </label>
                        <div class="col-xs-10">
                            <input name="email" class="form-control" type="text" value="" id="emailInput">
                        </div>
                  </div>
                </div>
                                        
                <div class="form-group row">
                   <div class="form-group">
                         <label for="passwordInput" class="col-xs-2 col-form-label">Password: </label>
                        <div class="col-xs-10">
                            <input name="pass" class="form-control" type="password" value="" id="passwordInput">
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

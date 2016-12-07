<%-- 
    Document   : addEmployee
    Created on : Dec 7, 2016, 3:59:37 PM
    Author     : benkandov
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Employee</title>
        <link href="stylesheets/bootstrap.min.css" rel="stylesheet" type="text/css">
          <script type="text/javascript" src="JS/jquery.min.js"></script>
        <script type="text/javascript" src="JS/bootstrap.min.js"></script>
    </head>
    <body>
         <div class="container-fluid">
           
            <div class="row">
                <div style="padding-bottom: 20px" class="col-md-12 text-center">
                    <h1>Add an Employee to BizR!</h1>
                    
                </div>
            </div>
            
            <div class="row">
              <div class="col-xs-1">
              </div>
             <div class="col-xs-10 text-center">
            <form action="registerEmployeeResponse.jsp">
                <div class="form-group row">
                   <div class="form-group">
                         <label for="employeeType" class="col-xs-2 col-form-label">Employee Type (Manager or Employee): </label>
                        <div class="col-xs-10">
                            <input name="type" class="form-control" type="text" value="" id="employeeType">
                        </div>
                  </div>
                </div>
                
                <div class="form-group row">
                   <div class="form-group">
                         <label for="firstNameInput" class="col-xs-2 col-form-label">First Name: </label>
                        <div class="col-xs-10">
                            <input name="firstName" class="form-control" type="text" value="" id="firstNameInput">
                        </div>
                  </div>
                </div>
                
                
                <div class="form-group row">
                   <div class="form-group">
                         <label for="lastNameInput" class="col-xs-2 col-form-label">Last Name: </label>
                        <div class="col-xs-10">
                            <input name="lastName" class="form-control" type="text" value="" id="lastNameInput">
                        </div>
                  </div>
                </div>
                
              
               
              
                <input type="submit" class="btn btn-primary" value="Submit"/>
                
            </form>
             </div>
                
            </div>
        </div>
    </body>
</html>

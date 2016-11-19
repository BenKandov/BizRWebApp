<%-- 
    Document   : index
    Created on : Nov 15, 2016, 10:59:07 AM
    Author     : benkandov
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSet" %>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.SQLException" %>
<%@page import="java.sql.Connection" %>
<%@page import="javax.sql.DataSource" %>
<%@page import="javax.naming.InitialContext" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register for Bazaar!</title>
        <link href="stylesheets/bootstrap.min.css" rel="stylesheet" type="text/css">
    </head>
    <body>
        <%
            InitialContext ctx = new InitialContext();
            DataSource ds = (DataSource)ctx.lookup("Bazaar_Application_Connection");
            Connection connection = ds.getConnection();
            
            if (connection == null){
                throw new SQLException("Error establishing connection");
            }
            connection.close();
            /**
            String testQuery = "SELECT * FROM BUSER";
            
            PreparedStatement statement = connection.prepareStatement(testQuery);
            ResultSet rs = statement.executeQuery();
            
            while(rs.next()){
                out.print(rs.getString("firstname"));
            }
            * */
            
            
        %>
        
        
       
        <div class="container-fluid">
           
            <div class="row">
                <div style="padding-bottom: 20px" class="col-md-12 text-center">
                    <h1>Register an Account with BizR!</h1>
                    
                </div>
            </div>
            
            <div class="row">
              <div class="col-xs-1">
              </div>
             <div class="col-xs-10 text-center">
            <form action="registerResponse.jsp">
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
                
              
               
                  
              
                <div class="form-group row">
                   <div class="form-group">
                         <label for="passwordInput" class="col-xs-2 col-form-label">Password: </label>
                        <div class="col-xs-10">
                            <input name="pass" class="form-control" type="password" value="" id="passwordInput">
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

<%-- 
    Document   : updateInfoPage
    Created on : Nov 23, 2016, 7:26:30 PM
    Author     : benkandov
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update User Info</title>
           <link href="stylesheets/bootstrap.min.css" rel="stylesheet" type="text/css">
          <script type="text/javascript" src="JS/jquery.min.js"></script>
        <script type="text/javascript" src="JS/bootstrap.min.js"></script>
       
    </head>
    <body>
        <%@include file="templates\userNavbar.jsp" %>
        
        
        <div class="container-fluid">
            <form action="updateInfoResponse.jsp">
                
                <div class="form-group row">
                   <div class="form-group">
                         <label for="firstNameInput" class="col-xs-2 col-form-label">First Name: </label>
                        <div class="col-xs-10">
                            <input name="firstName" class="form-control" type="text" value="<%out.print(session.getAttribute("firstname")); %>" id="firstNameInput">
                        </div>
                  </div>
                </div>
                
                
                <div class="form-group row">
                   <div class="form-group">
                         <label for="lastNameInput" class="col-xs-2 col-form-label">Last Name: </label>
                        <div class="col-xs-10">
                            <input name="lastName" class="form-control" type="text" value="<%out.print(session.getAttribute("lastname")); %>" id="lastNameInput">
                        </div>
                  </div>
                </div>
                
              
                <div class="form-group row">
                   <div class="form-group">
                         <label for="phoneNumberInput" class="col-xs-2 col-form-label">Phone Number: </label>
                        <div class="col-xs-10">
                            <input name="phonenum" class="form-control" type="text" value="<% if (session.getAttribute("phonenumber")!=null) out.print(session.getAttribute("phonenumber")); %>" id="phoneNumberInput">
                        </div>
                  </div>
                </div>
                
                <div class="form-group row">
                   <div class="form-group">
                         <label for="addressInput" class="col-xs-2 col-form-label">Address: </label>
                        <div class="col-xs-10">
                            <input name="address" class="form-control" type="text" value="<% if (session.getAttribute("address")!=null) out.print(session.getAttribute("address")); %>" id="addressInput">
                        </div>
                  </div>
                </div>
              

                
                <div class="form-group row">
                   <div class="form-group">
                         <label for="stateInput" class="col-xs-2 col-form-label">State: </label>
                        <div class="col-xs-10">
                            <input name="state" class="form-control" type="text" value="<% if (session.getAttribute("state")!=null) out.print(session.getAttribute("state")); %>" id="stateInput">
                        </div>
                  </div>
                </div>
                
                <div class="form-group row">
                   <div class="form-group">
                         <label for="cityInput" class="col-xs-2 col-form-label">City: </label>
                        <div class="col-xs-10">
                            <input name="city" class="form-control" type="text" value="<% if (session.getAttribute("city")!=null) out.print(session.getAttribute("city")); %>" id="cityInput">
                        </div>
                  </div>
                </div>  
                
                <div class="form-group row">
                   <div class="form-group">
                         <label for="zipcodeInput" class="col-xs-2 col-form-label">Zip Code: </label>
                        <div class="col-xs-10">
                            <input name="zipcode" class="form-control" type="text" value="<% if (session.getAttribute("zipcode")!=null) out.print(session.getAttribute("zipcode")); %>" id="zipcodeInput">
                        </div>
                  </div>
                </div>
                
                <div class="form-group row">
                   <div class="form-group">
                         <label for="creditInput" class="col-xs-2 col-form-label">Credit Card: </label>
                        <div class="col-xs-10">
                            <input name="credit" class="form-control" type="text" value="<% if (session.getAttribute("creditcard")!=null) out.print(session.getAttribute("creditcard")); %>" id="creditInput">
                        </div>
                  </div>
                </div>
                
                <input type="submit" class="btn btn-primary" value="Update Info"/>
                
            </form>
            
        </div>
        
    </body>
    
    
</html>

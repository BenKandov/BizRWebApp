<%-- 
    Document   : editCustomer
    Created on : Dec 8, 2016, 1:33:49 PM
    Author     : shane
--%>

<%@page import="bean.User"%>
<%@page import="bean.DAO.LoginDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Edit Customer </title>
         <link href="stylesheets/bootstrap.min.css" rel="stylesheet" type="text/css">
          <script type="text/javascript" src="JS/jquery.min.js"></script>
        <script type="text/javascript" src="JS/bootstrap.min.js"></script>
    </head>
    <body>
        <%
            String id = request.getParameter("id");
            User user = LoginDao.getUserFromUserId(id);
            %>
        <div class="container-fluid">
            <form action="editCustomerResponse.jsp">
                <input type ="hidden" name="id" value="<%out.print(id); %>">
                <div class="form-group row">
                   <div class="form-group">
                         <label for="firstNameInput" class="col-xs-2 col-form-label">First Name: </label>
                        <div class="col-xs-10">
                            <input name="firstName" class="form-control" type="text" value="<%out.print(user.getFirstName()); %>" id="firstNameInput">
                        </div>
                  </div>
                </div>
                
                
                <div class="form-group row">
                   <div class="form-group">
                         <label for="lastNameInput" class="col-xs-2 col-form-label">Last Name: </label>
                        <div class="col-xs-10">
                            <input name="lastName" class="form-control" type="text" value="<%out.print(user.getLastName()); %>" id="lastNameInput">
                        </div>
                  </div>
                </div>
                
              
                <div class="form-group row">
                   <div class="form-group">
                         <label for="phoneNumberInput" class="col-xs-2 col-form-label">Phone Number: </label>
                        <div class="col-xs-10">
                            <input name="phonenum" class="form-control" type="text" value="<% if (user.getPhoneNumber()!=null) out.print(user.getPhoneNumber()); %>" id="phoneNumberInput">
                        </div>
                  </div>
                </div>
                
                <div class="form-group row">
                   <div class="form-group">
                         <label for="addressInput" class="col-xs-2 col-form-label">Address: </label>
                        <div class="col-xs-10">
                            <input name="address" class="form-control" type="text" value="<% if (user.getAddress()!=null) out.print(user.getAddress()); %>" id="addressInput">
                        </div>
                  </div>
                </div>
              

                
                <div class="form-group row">
                   <div class="form-group">
                         <label for="stateInput" class="col-xs-2 col-form-label">State: </label>
                        <div class="col-xs-10">
                            <input name="state" class="form-control" type="text" value="<% if (user.getState()!=null) out.print(user.getState()); %>" id="stateInput">
                        </div>
                  </div>
                </div>
                
                <div class="form-group row">
                   <div class="form-group">
                         <label for="cityInput" class="col-xs-2 col-form-label">City: </label>
                        <div class="col-xs-10">
                            <input name="city" class="form-control" type="text" value="<% if (user.getCity()!=null) out.print(user.getCity()); %>" id="cityInput">
                        </div>
                  </div>
                </div>  
                
                <div class="form-group row">
                   <div class="form-group">
                         <label for="zipcodeInput" class="col-xs-2 col-form-label">Zip Code: </label>
                        <div class="col-xs-10">
                            <input name="zipcode" class="form-control" type="text" value="<% if (user.getZipCode()!=null) out.print(user.getZipCode()); %>" id="zipcodeInput">
                        </div>
                  </div>
                </div>
                
                <div class="form-group row">
                   <div class="form-group">
                         <label for="creditCard" class="col-xs-2 col-form-label">Credit Card: </label>
                        <div class="col-xs-10">
                            <input name="creditCard" class="form-control" type="text" value="<% if (user.getCreditCard()!=null) out.print(user.getCreditCard()); %>" id="hourlyrateinput">
                        </div>
                  </div>
                </div>
                
                <input type="submit" class="btn btn-primary" value="Update Info"/>
                
            </form>
            
        </div>
    </body>
</html>

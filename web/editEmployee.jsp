<%-- 
    Document   : editEmployee
    Created on : Dec 7, 2016, 4:28:18 PM
    Author     : benkandov
--%>

<%@page import="bean.Employee"%>
<%@page import="bean.DAO.EmployeeDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Edit Employee </title>
         <link href="stylesheets/bootstrap.min.css" rel="stylesheet" type="text/css">
          <script type="text/javascript" src="JS/jquery.min.js"></script>
        <script type="text/javascript" src="JS/bootstrap.min.js"></script>
    </head>
    <body>
        <%
            String id = request.getParameter("id");
            Employee em = EmployeeDao.getEmployeeById(id);
            
            
            %>
        <div class="container-fluid">
            <form action="editEmployeeResponse.jsp">
                <input type ="hidden" name="id" value="<%out.print(id); %>">
                <div class="form-group row">
                   <div class="form-group">
                         <label for="firstNameInput" class="col-xs-2 col-form-label">First Name: </label>
                        <div class="col-xs-10">
                            <input name="firstName" class="form-control" type="text" value="<%out.print(em.getFirstName()); %>" id="firstNameInput">
                        </div>
                  </div>
                </div>
                
                
                <div class="form-group row">
                   <div class="form-group">
                         <label for="lastNameInput" class="col-xs-2 col-form-label">Last Name: </label>
                        <div class="col-xs-10">
                            <input name="lastName" class="form-control" type="text" value="<%out.print(em.getLastName()); %>" id="lastNameInput">
                        </div>
                  </div>
                </div>
                
              
                <div class="form-group row">
                   <div class="form-group">
                         <label for="phoneNumberInput" class="col-xs-2 col-form-label">Phone Number: </label>
                        <div class="col-xs-10">
                            <input name="phonenum" class="form-control" type="text" value="<% if (em.getPhoneNum()!=null) out.print(em.getPhoneNum()); %>" id="phoneNumberInput">
                        </div>
                  </div>
                </div>
                
                <div class="form-group row">
                   <div class="form-group">
                         <label for="addressInput" class="col-xs-2 col-form-label">Address: </label>
                        <div class="col-xs-10">
                            <input name="address" class="form-control" type="text" value="<% if (em.getAddress()!=null) out.print(em.getAddress()); %>" id="addressInput">
                        </div>
                  </div>
                </div>
              

                
                <div class="form-group row">
                   <div class="form-group">
                         <label for="stateInput" class="col-xs-2 col-form-label">State: </label>
                        <div class="col-xs-10">
                            <input name="state" class="form-control" type="text" value="<% if (em.getState()!=null) out.print(em.getState()); %>" id="stateInput">
                        </div>
                  </div>
                </div>
                
                <div class="form-group row">
                   <div class="form-group">
                         <label for="cityInput" class="col-xs-2 col-form-label">City: </label>
                        <div class="col-xs-10">
                            <input name="city" class="form-control" type="text" value="<% if (em.getCity()!=null) out.print(em.getCity()); %>" id="cityInput">
                        </div>
                  </div>
                </div>  
                
                <div class="form-group row">
                   <div class="form-group">
                         <label for="zipcodeInput" class="col-xs-2 col-form-label">Zip Code: </label>
                        <div class="col-xs-10">
                            <input name="zipcode" class="form-control" type="text" value="<% if (em.getZipcode()!=null) out.print(em.getZipcode()); %>" id="zipcodeInput">
                        </div>
                  </div>
                </div>
                
                <div class="form-group row">
                   <div class="form-group">
                         <label for="hourlyrateinput" class="col-xs-2 col-form-label">Credit Card: </label>
                        <div class="col-xs-10">
                            <input name="hourlyrate" class="form-control" type="text" value="<% if (em.getHourlyRate()!=null) out.print(em.getHourlyRate()); %>" id="hourlyrateinput">
                        </div>
                  </div>
                </div>
                
                <input type="submit" class="btn btn-primary" value="Update Info"/>
                
            </form>
            
        </div>
    </body>
</html>

<%-- 
    Document   : index
    Created on : Nov 17, 2016, 11:32:40 AM
    Author     : benkandov
--%>

<%@page import="bean.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome to BizR</title>
        <link href="stylesheets/bootstrap.min.css" rel="stylesheet" type="text/css">
        <script type="text/javascript" src="JS/jquery.min.js"></script>
        <script type="text/javascript" src="JS/bootstrap.min.js"></script>

    </head>
    <%
        if (request.getParameter("signOut") != null) {
            session.setAttribute("userid", null);
            session.setAttribute("ssn", null);
            response.sendRedirect("index.jsp");
        }
    %>
    <body>
        <% if ((session.getAttribute("userid") == null) && (session.getAttribute("ssn") == null)) { %>
        <div class="container-fluid">

            <div class="row">
                <div class="col-md-12 text-center">
                    <h1>Welcome to BizR!</h1>
                </div>
            </div>
            <div style="padding:20px" class="row">

                <div class="col-md-12 text-center">
                    <a class="btn btn-primary" href="loginPage.jsp" role="button">Log In</a>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12 text-center">
                    <a class="btn btn-primary" href="registrationPage.jsp" role="button">Sign Up</a>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12 text-center">
                    <a class="btn btn-primary" href="employeeRegistrationPage.jsp" role="button">Register Employee/Manager</a>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12 text-center">
                    <a class="btn btn-primary" href="employeeLoginPage.jsp" role="button">Login as Employee/Manager</a>
                </div>
            </div>

        </div>
        <% } else if (session.getAttribute("ssn") != null) {
        %>

        <form method="get" action="index.jsp">
            <button type="submit" id="signOut" name="signOut" type="button" class="btn btn-default navbar-btn">
                Sign Out
            </button> 
        </form>
        <%
            if (session.getAttribute("employeetype").toString().equals("Employee")) {
        %>   
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h1> Hey employee. </h1>
                </div>      
            </div>
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h1> work work work!!.!!! </h1>
                </div>      
            </div>
            <div class="row">
                <div class="col-lg-12 text-center">
                    <a class="btn btn-primary" href="createAd.jsp" role="button">Create Ad</a>
                </div>    
            </div>
            <div class="row">
                <div class="col-lg-12 text-center">
                    <a class="btn btn-danger" href="deleteAd.jsp" role="button">Delete Ad</a>
                </div>    
            </div>
            <div class="row">
                <div class="col-lg-12 text-center">
                    <a class="btn btn-success" href="recordTransaction.jsp" role="button">Record Transaction</a>
                </div>   
            </div>
            <div class="row">
                <div class="col-lg-12 text-center">
                    <a class="btn btn-success" href="viewBestSellingItems.jsp" role="button">View Best Selling Items</a>
                </div>   
            </div>
            <div class="row">
                <div class="col-lg-12 text-center">
                    <a class="btn btn-success" href="editCustomer.jsp" role="button">Add, Edit and Delete Customer Info</a>
                </div>   
            </div>
            <form action="viewCompanyMailingList.jsp">
                        <div class="form-group row">
                            <div class="form-group">
                                <label for="company" class="col-xs-12 text-center col-form-label">company: </label>
                                <div class="col-xs-10">
                                    <input name="company" class="form-control " type="text" value="" id="itemname">
                                </div>
                            </div>
                        </div>
                        <div class='row'>
                            <div class='col-md-12 text-center'>
                                <input type="submit" class="btn btn-primary text-center" value="View company mailing list."/>
                            </div>
                        </div>
                    </form>

            <%} else {
            %>
            hello Manager
            <h1>MANAGE!</h1><h3>! manage</h3> !!managege MANAGE!!!
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12 text-center">
                        <a class="btn btn-success" href="monthlySalesReport.jsp" role="button">Get Monthly Sales Report </a>
                    </div>   
                    <div class="row">
                        <div class="col-lg-12 text-center">
                            <a class="btn btn-success" href="allItemsList.jsp" role="button">List all items being advertised </a>
                        </div>
                        <div class="row">
                            <div class="col-lg-12 text-center">
                                <a class="btn btn-success" href="allCompanyItems.jsp" role="button">List all items by a company </a>
                            </div>  
                        </div>
                        <div class="row">
                            <div class="col-lg-12 text-center">
                                <a class="btn btn-success" href="mostActiveItems.jsp" role="button">List most active items </a>
                            </div>  
                        </div>

                        <div class="row">
                            <div class="col-lg-12 text-center">
                                <a class="btn btn-success" href="getTransactions.jsp" role="button">Get list of transactions </a>
                            </div>  
                        </div>      
                        <form action="listOfUsersByItemName.jsp">

                            <div class="form-group row">
                                <div class="form-group">
                                    <label for="itemname" class="col-xs-12 text-center col-form-label">Item Name: </label>
                                    <div class="col-xs-10">
                                        <input name="itemname" class="form-control " type="text" value="" id="itemname">
                                    </div>
                                </div>
                            </div>
                            <div class='row'>
                                <div class='col-md-12 text-center'>
                                    <input type="submit" class="btn btn-primary text-center" value="Get Users Who have purchased item"/>
                                </div>
                            </div>
                        </form>   
                        <div class="row">
                            <div class="col-lg-12 text-center">
                                <a class="btn btn-success" href="mostRevenueCustomer.jsp" role="button"> Find most revenue customer </a>
                            </div>  
                        </div>  
                        <div class="row">
                            <div class="col-lg-12 text-center">
                                <a class="btn btn-success" href="mostRevenueEmployee.jsp" role="button"> Find most revenue employee </a>
                            </div>  
                        </div>                         
                        <div class="row">
                            <div class="col-lg-12 text-center">
                                <a class="btn btn-success" href="revenueSummary.jsp" role="button"> Get Revenue Summary </a>
                            </div>  
                        </div>
                        <div class="row">
                            <div class="col-lg-12 text-center">
                                <a class="btn btn-success" href="addEmployee.jsp" role="button"> Add employee </a>
                            </div>  
                        </div>  
                        <form action="deleteEmployee.jsp">

                            <div class="form-group row">
                                <div class="form-group">
                                    <label for="id" class="col-xs-12 text-center col-form-label">Employee ID: </label>
                                    <div class="col-xs-10">
                                        <input name="id" class="form-control " type="text" value="" id="id">
                                    </div>
                                </div>
                            </div>
                            <div class='row'>
                                <div class='col-md-12 text-center'>
                                    <input type="submit" class="btn btn-primary text-center" value="Delete Employee"/>
                                </div>
                            </div>
                        </form> 

                        <form action="editEmployee.jsp">

                            <div class="form-group row">
                                <div class="form-group">
                                    <label for="id" class="col-xs-12 text-center col-form-label">Employee ID: </label>
                                    <div class="col-xs-10">
                                        <input name="id" class="form-control " type="text" value="" id="id">
                                    </div>
                                </div>
                            </div>
                            <div class='row'>
                                <div class='col-md-12 text-center'>
                                    <input type="submit" class="btn btn-primary text-center" value="Edit Employee"/>
                                </div>
                            </div>
                        </form> 

                    </div>
                    <%
                        }

                    %>




                    <% } else { %>
                    <%@include file="templates\userNavbar.jsp" %>

                    <form action="viewItemsByInterest.jsp">
                        <div class="form-group row">
                            <div class="form-group">
                                <label for="email" class="col-xs-12 text-center col-form-label">email: </label>
                                <div class="col-xs-10">
                                    <input name="email" class="form-control " type="text" value="" id="itemname">
                                </div>
                            </div>
                        </div>
                        <div class='row'>
                            <div class='col-md-12 text-center'>
                                <input type="submit" class="btn btn-primary text-center" value="Search for items based on your interests."/>
                            </div>
                        </div>
                    </form>
                    
                    <form action="viewSuggestionList.jsp">
                        <div class="form-group row">
                            <div class="form-group">
                                <label for="email" class="col-xs-12 text-center col-form-label">email: </label>
                                <div class="col-xs-10">
                                    <input name="email" class="form-control " type="text" value="" id="itemname">
                                </div>
                            </div>
                        </div>
                        <div class='row'>
                            <div class='col-md-12 text-center'>
                                <input type="submit" class="btn btn-primary text-center" value="View suggestions based on transaction history."/>
                            </div>
                        </div>
                    </form>
                    
                    <form action="transactionsByEmail.jsp">
                        <div class="form-group row">
                            <div class="form-group">
                                <label for="email" class="col-xs-12 text-center col-form-label">email: </label>
                                <div class="col-xs-10">
                                    <input name="email" class="form-control " type="text" value="" id="itemname">
                                </div>
                            </div>
                        </div>
                        <div class='row'>
                            <div class='col-md-12 text-center'>
                                <input type="submit" class="btn btn-primary text-center" value="View transactions history."/>
                            </div>
                        </div>
                    </form>
                    
                    <% }%>



                    </body>
                    </html>

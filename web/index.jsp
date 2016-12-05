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
            if(request.getParameter("signOut")!=null){
                session.setAttribute("userid", null);
                session.setAttribute("ssn", null);
                response.sendRedirect("index.jsp");
            }
            %>
    <body>
        <% if ( (session.getAttribute("userid") == null) && (session.getAttribute("ssn") == null)){ %>
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
        <% }else if(session.getAttribute("ssn") != null){ 
           %>
    
             <form method="get" action="index.jsp">
                        <button type="submit" id="signOut" name="signOut" type="button" class="btn btn-default navbar-btn">
                             Sign Out
                        </button> 
              </form>
           <%
            if(session.getAttribute("employeetype").toString().equals("Employee")){
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
                        <a class="btn btn-success" href="customerInfo.jsp" role="button">Add, Edit and Delete Customer Info</a>
                 </div>   
              </div>
 
            <%}
            
            else{
                %>
                Hey Manager
                MANAGE!! manage !!managege MANAGE!!!
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
              
              </div>
                <%

            }
        
        %>
            
        
        
        
        <% } else { %>
    
        
            <%@include file="templates\userNavbar.jsp" %>
        <% } %>
        
        
        
    </body>
</html>

<%-- 
    Document   : updateInfoResponse
    Created on : Nov 23, 2016, 7:56:31 PM
    Author     : benkandov
--%>

<%@page import="bean.DAO.LoginDao"%>
<%@page import="bean.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Updated Info</title>
        <link href="stylesheets/bootstrap.min.css" rel="stylesheet" type="text/css">
          <script type="text/javascript" src="JS/jquery.min.js"></script>
        <script type="text/javascript" src="JS/bootstrap.min.js"></script>
    </head>
    <body>
        <%@include file="templates\userNavbar.jsp" %>
        <%
          String email = session.getAttribute("email").toString();
          String firstName = request.getParameter("firstName");
          String lastName = request.getParameter("lastName");
          String phoneNum = request.getParameter("phonenum");
          String address = request.getParameter("address");
          String state = request.getParameter("state");
          String city = request.getParameter("city");
          String zipcode = request.getParameter("zipcode");
          String credit = request.getParameter("credit");
          User user = new User(firstName, lastName, email, phoneNum, address
          , state, city, zipcode, credit);
          
          int status = LoginDao.update(user);
          
          if (status > 0 ){
              session.setAttribute("firstname", firstName);
              session.setAttribute("lastname", lastName);
              session.setAttribute("phonenumber", phoneNum);
              session.setAttribute("address", address);
              session.setAttribute("state", state);
              session.setAttribute("city", city);
              session.setAttribute("zipcode", zipcode);
              session.setAttribute("creditcard", credit);
              %>
              <div class="container-fluid">
                  <H1> Successfully updated user info.  </h1>
              </div>
          <%    
          }else{
              %>
                <div class="container-fluid">
                  <H1> Invalid info was input. </h1>
              </div>
              <%
              
          }
            %>
    </body>
</html>

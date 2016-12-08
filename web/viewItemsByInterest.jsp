<%-- 
    Document   : viewItemsByInterest
    Created on : Dec 8, 2016, 4:28:24 PM
    Author     : shane
--%>

<%@page import="java.util.List"%>
<%@page import="bean.Ad"%>
<%@page import="bean.DAO.InterestDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Items By Interest</title>
        <link href="stylesheets/bootstrap.min.css" rel="stylesheet" type="text/css">
          <script type="text/javascript" src="JS/jquery.min.js"></script>
        <script type="text/javascript" src="JS/bootstrap.min.js"></script>
    </head>
    <body>
       <div class='container-fluid'>
           
        <%  String email = request.getParameter("email");
            
            List<Ad> ads = InterestDao.adsByAccountInterests(email);
            for(Ad ad : ads) {
            
            %>
            <hr>
            <div class='row'>
            <div class='col-md-12 text-center'>
                <h1><%out.print("Company " + ad.getCompany() + "\nItem: " + ad.getItemName() + "\n" + 
                        ad.getContent() + "\nPrice: " + ad.getUnitPrice() + "\nNum available" + 
                        ad.getNumAvailableUnits() + "\n\n"); %> </h1>
            </div>
            </div>
            <% }%>
        </div>
    </body>
</html>

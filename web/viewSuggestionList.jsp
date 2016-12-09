<%-- 
    Document   : suggestionList
    Created on : Dec 8, 2016, 2:10:23 PM
    Author     : shane
--%>

<%@page import="bean.Ad"%>
<%@page import="bean.DAO.AdvertisementDao"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Suggested Items From Transaction History</title>
    </head>
    <body>
        <%
            String email = request.getParameter("email");
            
            List<Ad> ads = AdvertisementDao.adsByTransactionHistory(email);
            for(Ad ad: ads) {
                
                %>
            <hr>
            <div class='row'>
            <div class='col-md-12 text-center'>
                <h1><%out.print("Company " + ad.getCompany() + "\nItem: " + ad.getItemName() + "\n" + 
                        ad.getContent() + "\nPrice: " + ad.getUnitPrice() + "\nNum available" + 
                        ad.getNumAvailableUnits() + "\n\n");%> </h1>
         </div>
            </div>
            <% }%>
        
        <hr>
        
        
    
    </body>
</html>

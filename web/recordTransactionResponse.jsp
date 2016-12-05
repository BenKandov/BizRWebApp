<%-- 
    Document   : recordTransactionResponse
    Created on : Dec 5, 2016, 2:23:38 AM
    Author     : benkandov
--%>

<%@page import="bean.DAO.SaleDao"%>
<%@page import="bean.Sale"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Transaction Recorded</title>
    </head>
    <body>
        <% 
            Sale s = new Sale();
            s.setAccountId(request.getParameter("accountnum"));
            s.setAdId(request.getParameter("adId"));
            s.setNumUnits(request.getParameter("numunits"));
            
            int status = SaleDao.makeSale(s);
            
            if(status>0){
            %>
             Nice. Transaction recorded.
            <%}else{ %>
            Something screwed up.
            <% } %>
    </body>
</html>

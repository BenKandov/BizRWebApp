<%-- 
    Document   : monthlySalesReport
    Created on : Dec 5, 2016, 3:35:20 AM
    Author     : benkandov
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Monthly Sales Report</title>
           <link href="stylesheets/bootstrap.min.css" rel="stylesheet" type="text/css">
          <script type="text/javascript" src="JS/jquery.min.js"></script>
        <script type="text/javascript" src="JS/bootstrap.min.js"></script>
    </head>
    <body>
       <form action="monthlySalesReportResponse.jsp">
                                        
                <div class="form-group row">
                   <div class="form-group">
                         <label for="month" class="col-xs-2 col-form-label">Month (As a Number): </label>
                        <div class="col-xs-10">
                            <input name="month" class="form-control" type="text" value="" id="month">
                        </div>
                  </div>
                </div>
                
        
                <input type="submit" class="btn btn-primary" value="Get Monthly Sales Report"/>
                
            </form>
    </body>
</html>

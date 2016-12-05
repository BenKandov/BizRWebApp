<%-- 
    Document   : recordTransaction
    Created on : Dec 5, 2016, 2:14:19 AM
    Author     : benkandov
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Record a Transaction</title>
                <link href="stylesheets/bootstrap.min.css" rel="stylesheet" type="text/css">
          <script type="text/javascript" src="JS/jquery.min.js"></script>
        <script type="text/javascript" src="JS/bootstrap.min.js"></script>
    </head>
    <body>
        <form action="recordTransactionResponse.jsp">
                <div class="form-group row">
                   <div class="form-group">
                         <label for="adId" class="col-xs-2 col-form-label">Advertisement Id: </label>
                        <div class="col-xs-10">
                            <input name="adId" class="form-control" type="text" value="" id="adId">
                        </div>
                  </div>
                </div>

                <div class="form-group row">
                   <div class="form-group">
                         <label for="accountnum" class="col-xs-2 col-form-label">Account Number: </label>
                        <div class="col-xs-10">
                            <input name="accountnum" class="form-control" type="text" value="" id="accountnum">
                        </div>
                  </div>
                </div> 
                <div class="form-group row">
                   <div class="form-group">
                         <label for="num" class="col-xs-2 col-form-label">Number of units: </label>
                        <div class="col-xs-10">
                            <input name="numunits" class="form-control" type="text" value="" id="numunits">
                        </div>
                  </div>
                </div> 
              
                <input type="submit" class="btn btn-primary" value="Record"/>
                
            </form>
    </body>
</html>

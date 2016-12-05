<%-- 
    Document   : getTransactions
    Created on : Dec 5, 2016, 4:06:51 PM
    Author     : benkandov
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Get Transactions</title>
         <link href="stylesheets/bootstrap.min.css" rel="stylesheet" type="text/css">
          <script type="text/javascript" src="JS/jquery.min.js"></script>
        <script type="text/javascript" src="JS/bootstrap.min.js"></script>
    </head>
    <body>
        <div class="container-fluid">
            <form action="transactionsByItemName.jsp">
                                        
                <div class="form-group row">
                   <div class="form-group">
                         <label for="itemname" class="col-xs-2 col-form-label">Item Name: </label>
                        <div class="col-xs-10">
                            <input name="itemname" class="form-control" type="text" value="" id="itemname">
                        </div>
                  </div>
                </div>

                <input type="submit" class="btn btn-primary" value="Get Transactions"/>
                
            </form>
            <form action="transactionsByEmail.jsp">
                                        
                <div class="form-group row">
                   <div class="form-group">
                         <label for="email" class="col-xs-2 col-form-label">Email: </label>
                        <div class="col-xs-10">
                            <input name="email" class="form-control" type="text" value="" id="email">
                        </div>
                  </div>
                </div>

                <input type="submit" class="btn btn-primary" value="Get Transactions"/>
            </form>
        </div>
    </body>
</html>

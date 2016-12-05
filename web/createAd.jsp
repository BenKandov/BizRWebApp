<%-- 
    Document   : createAd
    Created on : Dec 5, 2016, 1:23:06 AM
    Author     : benkandov
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Create Ad</title>
    <link href="stylesheets/bootstrap.min.css" rel="stylesheet" type="text/css">
          <script type="text/javascript" src="JS/jquery.min.js"></script>
        <script type="text/javascript" src="JS/bootstrap.min.js"></script>
    </head>
    <body>
        
        <form action="createAdResponse.jsp">
                                        
                <div class="form-group row">
                   <div class="form-group">
                         <label for="company" class="col-xs-2 col-form-label">Company: </label>
                        <div class="col-xs-10">
                            <input name="company" class="form-control" type="text" value="" id="company">
                        </div>
                  </div>
                </div>
                
                <div class="form-group row">
                   <div class="form-group">
                         <label for="itemname" class="col-xs-2 col-form-label">Item Name: </label>
                        <div class="col-xs-10">
                            <input name="itemname" class="form-control" type="text" value="" id="itemname">
                        </div>
                  </div>
                </div>
                
                <div class="form-group row">
                   <div class="form-group">
                         <label for="content" class="col-xs-2 col-form-label">Content: </label>
                        <div class="col-xs-10">
                            <input name="content" class="form-control" type="text" value="" id="content">
                        </div>
                  </div>
                </div>
                <div class="form-group row">
                   <div class="form-group">
                         <label for="unitprice" class="col-xs-2 col-form-label">Unit Price: </label>
                        <div class="col-xs-10">
                            <input name="unitprice" class="form-control" type="text" value="" id="unitprice">
                        </div>
                  </div>
                </div>
                <div class="form-group row">
                   <div class="form-group">
                         <label for="numunits" class="col-xs-2 col-form-label">Number of Units: </label>
                        <div class="col-xs-10">
                            <input name="numunits" class="form-control" type="text" value="" id="numunits">
                        </div>
                  </div>
                </div>
                <div class="form-group row">
                   <div class="form-group">
                         <label for="type" class="col-xs-2 col-form-label">Type: </label>
                        <div class="col-xs-10">
                            <input name="type" class="form-control" type="text" value="" id="type">
                        </div>
                  </div>
                </div>              
                <input type="submit" class="btn btn-primary" value="Create"/>
                
            </form>
        
    </body>
</html>

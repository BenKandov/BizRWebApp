<%-- 
    Document   : revenueSummary
    Created on : Dec 5, 2016, 7:52:58 PM
    Author     : benkandov
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Revenue Summary</title>
         <link href="stylesheets/bootstrap.min.css" rel="stylesheet" type="text/css">
          <script type="text/javascript" src="JS/jquery.min.js"></script>
        <script type="text/javascript" src="JS/bootstrap.min.js"></script>
        
    </head>
    <body>
        <div class="container-fluid">
            
            
            
            
          <form action="revenueSummaryByItem.jsp">
                <div class="form-group row">
                   <div class="form-group">
                         <label for="itemname" class="col-xs-2 col-form-label">Item Name: </label>
                        <div class="col-xs-10">
                            <input name="itemname" class="form-control" type="text" value="" id="itemname">
                        </div>
                  </div>
                </div>
                <input type="submit" class="btn btn-success" value="Produce Revenue Summary By Item Name "/>
                
            </form>

                        
             <form action="revenueSummaryByItemType.jsp">
                <div class="form-group row">
                   <div class="form-group">
                         <label for="itemtype" class="col-xs-2 col-form-label">Item Type: </label>
                        <div class="col-xs-10">
                            <input name="itemtype" class="form-control" type="text" value="" id="itemtype">
                        </div>
                  </div>
                </div>
                <input type="submit" class="btn btn-success" value="Produce Revenue Summary By Item Type "/>                
            </form>
            
             <form action="revenueSummaryByCustomer.jsp">
                <div class="form-group row">
                   <div class="form-group">
                         <label for="email" class="col-xs-2 col-form-label">Customer Email: </label>
                        <div class="col-xs-10">
                            <input name="email" class="form-control" type="text" value="" id="email">
                        </div>
                  </div>
                </div>
                <input type="submit" class="btn btn-success" value="Produce Revenue Summary By Customer "/>                
            </form>            
            
         
        </div>
      
    </body>
</html>

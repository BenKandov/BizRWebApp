<%-- 
    Document   : allCompanyItems
    Created on : Dec 5, 2016, 12:45:15 PM
    Author     : benkandov
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Get Items by Company</title>
           <link href="stylesheets/bootstrap.min.css" rel="stylesheet" type="text/css">
          <script type="text/javascript" src="JS/jquery.min.js"></script>
        <script type="text/javascript" src="JS/bootstrap.min.js"></script>      
    </head>
    <body>
        <form action="allCompanyItemsResponse.jsp">
                                        
                <div class="form-group row">
                   <div class="form-group">
                         <label for="company" class="col-xs-2 col-form-label">Company Name: </label>
                        <div class="col-xs-10">
                            <input name="company" class="form-control" type="text" value="" id="company">
                        </div>
                  </div>
                </div>
                
              
                <input type="submit" class="btn btn-primary" value="Get List"/>
                
            </form>
    </body>
</html>

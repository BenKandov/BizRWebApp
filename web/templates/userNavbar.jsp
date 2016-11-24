<%-- 
    Document   : userNavbar
    Created on : Nov 23, 2016, 7:21:54 PM
    Author     : benkandov
--%>

       <nav class="navbar navbar-default navbar-static-top">
            <div class="container-fluid">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" 
                        data-toggle="collapse" data-target="#user-toolbar">
                        <span class="sr-only">Toggle navigation</span>
                     <span class="icon-bar"></span>
                     <span class="icon-bar"></span>
                     <span class="icon-bar"></span>
                  </button>
                <a class="navbar-brand" href="#"> 
                    <% out.print(  session.getAttribute("firstname") );
                       out.print(" ");
                       out.print( session.getAttribute("lastname"));
                       %> 
                </a> 
            </div>  
            <div class ="collapse navbar-collapse" id="user-toolbar">
                <ul class="nav navbar-nav">
                    <li><a href="updateInfoPage.jsp"> Update User Info</a></li>
                    <li><a href="messages.jsp"> Messages</a></li>                 
                    
                    <li>
                        <form method="get" action="index.jsp">
                        <button type="submit" id="signOut" name="signOut" type="button" class="btn btn-default navbar-btn">
                             Sign Out
                        </button> 
                        </form>
                    </li>
                </ul>

            </div>
            </div>
        </nav>
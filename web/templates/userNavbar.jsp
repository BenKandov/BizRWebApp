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
                  
                     <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"> Messages <span class="caret"></span></a>
                        <ul class="dropdown-menu">
                          <li><a href="createMessage.jsp">Create a Message</a></li>
                          <li><a href="receivedMessages.jsp">Check your received messages</a></li>
                          <li><a href="sentMessages.jsp">Review your sent messages</a></li>
                        </ul>
                      </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"> Groups <span class="caret"></span></a>
                        <ul class="dropdown-menu">
                          <li><a href="createGroup.jsp">Create a Group</a></li>

                        </ul>
                      </li>
                    
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
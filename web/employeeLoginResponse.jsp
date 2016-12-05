<%-- 
    Document   : employeeLoginResponse
    Created on : Dec 5, 2016, 12:46:37 AM
    Author     : benkandov
--%>

<%@page import="bean.DAO.EmployeeDao"%>
<%@page import="bean.Employee"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <title>Login Confirmation</title>
    </head>
    <body>
        
        <%
            String firstname = request.getParameter("firstname");
            String lastname = request.getParameter("lastname");
            String type = request.getParameter("type");
            Employee em = new Employee();
            em.setFirstName(firstname);
            em.setLastName(lastname);
            em.setEmployeeType(type);
            String status = EmployeeDao.login(em);
            
       
                session.setAttribute("firstname", em.getFirstName());
                session.setAttribute("lastname", em.getLastName());
                session.setAttribute("employeetype",em.getEmployeeType());
                session.setAttribute("ssn", status);
                response.sendRedirect("index.jsp");
            %>
                Nice. Logged in successfully.
          
    </body>
</html>

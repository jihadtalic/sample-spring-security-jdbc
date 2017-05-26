<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Welcome!</title>
    </head>
    <body>
        <h1>${ message }</h1>
        <h2>
            <a href="<%=request.getContextPath()%>/seller">Seller Page</a> | <a href="<%=request.getContextPath()%>/buyer">Buyer Page</a>
        </h2>
        <div style="max-width: 700px; text-align: justify;">
            <p>
                This application is a Spring Web application that uses Spring Security 4 for securing the application.
                It basically is a mock application that mimics a simple customer application, with SSO functionality
                through integration of Spring Security's CAS module, and is implemented to work with Apereo's CAS Server.
                Access based on permissions is handled by the CAS integration, particularly, by processing the CAS
                authentication ticket and retrieving the attributes released by the CAS Server, which includes the
                permissions/roles of the authenticated user. Data access with JDBC is also implemented for fetching and
                displaying basic user data.
            </p>
        </div>
    </body>
</html>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <link rel="stylesheet" type="text/css" href="<c:url value="/css/style.css"/>" media="screen" />
        <title>Buyer Page</title>
    </head>
    <body>
        <h1>${ title }</h1>
        <h3>${ message }</h3>
        <p><b>Username:</b> ${ userName }</p>
        <p><b>Name:</b> ${lastName}, ${firstName}</p>
        <p><b>Company:</b> ${companyName}</p>
        <p><b>Role/s:</b> ${roles}</p>
        <p><b>Active:</b> ${isActive}</p>
        <p><a href=".">Return to home</a></p>
        <div>
            <form class="left" action="<c:url value="/saml/logout"/>" method="get">
                <input type="submit" value="Global Logout" class="button"/>
            </form>
            <form class="left" action="<c:url value="/saml/logout"/>" method="get">
                <input type="hidden" name="local" value="true"/>
                <input type="submit" value="Local Logout" class="button"/>
            </form>
        </div>
    </body>
</html>

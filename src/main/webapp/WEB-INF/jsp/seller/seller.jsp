<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Seller Page</title>
    </head>
    <body>
        <h1>${ title }</h1>
        <h3>${ message }</h3>
        <p><b>Username:</b> ${ userName }</p>
        <p><b>Name:</b> ${lastName}, ${firstName}</p>
        <p><b>Company:</b> ${companyName}</p>
        <p><b>Role/s:</b> ${roles}</p>
        <p><b>Active:</b> ${isActive}</p>
        <p>You can also check the <a href="<%=request.getContextPath()%>/buyer">Buyer Page</a></p>
        <p><a href=".">Return to home</a></p>
        <p>
            <form id="logout" action="<%=request.getContextPath()%>/logout/cas" method="post" >
                <input type="submit" value="Logout" />
            </form>
        </p>
    </body>
</html>

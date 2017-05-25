<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Access Denied!</title>
</head>
<body>
<h1>Error!</h1>
<p>${ message }</p>
<span style="display: inline-flex;">
    <p>
        <form id="logout" action="<%=request.getContextPath()%>/logout/cas" method="post" >
            <input type="submit" value="Logout" />
        </form>
    </p>
    <p style="margin: 0;">&nbsp;&nbsp;&nbsp;OR&nbsp;&nbsp;&nbsp;</p>
    <a href=".">Return to home</a>
</span>
</body>
</html>

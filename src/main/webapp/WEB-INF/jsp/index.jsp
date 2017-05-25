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
    <a href="<%=request.getContextPath()%>/seller">Seller Page</a> | <a href="<%=request.getContextPath()%>/buyer">Buyer Page</a> <!-- | <a href="<%=request.getContextPath()%>/login">Login</a> -->
</h2>
<p><u>Seller login details</u></p>
<p>
    <ul>
        <li>Username: <strong>roel.sinadjan@vistracks.com</strong></li>
        <li>Password: <strong>seller</strong></li>
    </ul>
</p>
<p><u>Buyer login details</u></p>
<p>
    <ul>
        <li>Username: <strong>buyer@sample.com</strong></li>
        <li>Password: <strong>buyer</strong></li>
    </ul>
</p>
<p><u>Disabled login details</u></p>
<p>
    <ul>
        <li>Username: <strong>disabled@sample.com</strong></li>
        <li>Password: <strong>disabled</strong></li>
    </ul>
</p>
</body>
</html>

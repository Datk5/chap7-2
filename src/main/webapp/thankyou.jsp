<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head><title>Thank You</title></head>
<body>
<h2>Thank You!</h2>
<p>Your order has been placed successfully.</p>

<p>
    Name: <%= request.getParameter("fullname") %><br>
    Email: <%= request.getParameter("email") %><br>
    Address: <%= request.getParameter("address") %>
</p>

<a href="index.jsp">Back to Shopping</a>
</body>
</html>

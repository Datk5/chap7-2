<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="business.*" %>
<%@ page import="java.util.*" %>
<html>
<head>
    <title>Checkout</title>
</head>
<body>
<h2>Checkout</h2>

<%
    Cart cart = (Cart) session.getAttribute("cart");
    if (cart == null || cart.getItems().isEmpty()) {
%>
<p>Your cart is empty. <a href="index.jsp">Continue Shopping</a></p>
<%
} else {
%>

<!-- Hiển thị lại giỏ hàng -->
<table border="1">
    <tr>
        <th>Quantity</th>
        <th>Description</th>
        <th>Price</th>
        <th>Amount</th>
    </tr>
    <%
        double total = 0;
        for (LineItem item : cart.getItems()) {
            total += item.getTotal();
    %>
    <tr>
        <td><%= item.getQuantity() %></td>
        <td><%= item.getProduct().getDescription() %></td>
        <td>$<%= item.getProduct().getPrice() %></td>
        <td>$<%= item.getTotal() %></td>
    </tr>
    <%
        }
    %>
    <tr>
        <td colspan="3" align="right"><strong>Total:</strong></td>
        <td>$<%= total %></td>
    </tr>
</table>

<!-- Form nhập thông tin khách hàng -->
<h3>Customer Information</h3>
<form action="thankyou.jsp" method="post">
    <label>Full name:</label><br>
    <input type="text" name="fullname" required><br><br>

    <label>Email:</label><br>
    <input type="email" name="email" required><br><br>

    <label>Address:</label><br>
    <textarea name="address" rows="3" cols="40" required></textarea><br><br>

    <input type="submit" value="Place Order">
</form>

<%
    }
%>
</body>
</html>

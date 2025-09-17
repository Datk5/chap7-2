<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="business.*" %>
<%@ page import="java.util.*" %>
<html>
<head><title>Your Cart</title></head>
<body>
<h2>Your cart</h2>

<%
    Cart cart = (Cart) session.getAttribute("cart");
    if (cart == null) {
        cart = new Cart();
        session.setAttribute("cart", cart);
    }
%>

<table border="1">
    <tr>
        <th>Quantity</th>
        <th>Description</th>
        <th>Price</th>
        <th>Amount</th>
        <th></th>
    </tr>
    <%
        for (LineItem item : cart.getItems()) {
    %>
    <tr>
        <td>
            <form action="cart" method="post">
                <input type="hidden" name="action" value="Update">
                <input type="hidden" name="code" value="<%= item.getProduct().getCode() %>">
                <input type="text" name="quantity" value="<%= item.getQuantity() %>" size="2">
                <input type="submit" value="Update">
            </form>
        </td>
        <td><%= item.getProduct().getDescription() %></td>
        <td>$<%= item.getProduct().getPrice() %></td>
        <td>$<%= item.getTotal() %></td>
        <td>
            <form action="cart" method="post">
                <input type="hidden" name="action" value="Remove Item">
                <input type="hidden" name="code" value="<%= item.getProduct().getCode() %>">
                <input type="submit" value="Remove Item">
            </form>
        </td>
    </tr>
    <%
        }
    %>
</table>

<form action="index.jsp" method="get">
    <input type="submit" value="Continue Shopping">
</form>
<form action="checkout.jsp" method="get">
    <input type="submit" value="Checkout">
</form>
</body>
</html>

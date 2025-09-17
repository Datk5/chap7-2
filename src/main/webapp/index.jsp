<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>CD List</title>
    <link rel="stylesheet" type="text/css" href="styles/main.css">
</head>
<body>
<h2>CD list</h2>
<table class="cd-list">
    <tr>
        <th>Description</th>
        <th>Price</th>
        <th></th>
    </tr>
    <tr>
        <td>86 (the band) - True Life Songs and Pictures</td>
        <td>$14.95</td>
        <td>
            <form action="cart" method="post">
                <input type="hidden" name="action" value="Add To Cart">
                <input type="hidden" name="code" value="8601">
                <input type="hidden" name="description" value="86 (the band) - True Life Songs and Pictures">
                <input type="hidden" name="price" value="14.95">
                <input type="submit" value="Add To Cart">
            </form>
        </td>
    </tr>
    <tr>
        <td>Paddlefoot - The first CD</td>
        <td>$12.95</td>
        <td>
            <form action="cart" method="post">
                <input type="hidden" name="action" value="Add To Cart">
                <input type="hidden" name="code" value="pf01">
                <input type="hidden" name="description" value="Paddlefoot - The first CD">
                <input type="hidden" name="price" value="12.95">
                <input type="submit" value="Add To Cart">
            </form>
        </td>
    </tr>
    <tr>
        <td>Paddlefoot - The second CD</td>
        <td>$14.95</td>
        <td>
            <form action="cart" method="post">
                <input type="hidden" name="action" value="Add To Cart">
                <input type="hidden" name="code" value="pf02">
                <input type="hidden" name="description" value="Paddlefoot - The second CD">
                <input type="hidden" name="price" value="14.95">
                <input type="submit" value="Add To Cart">
            </form>
        </td>
    </tr>
    <tr>
        <td>Joe Rut - Genuine Wood Grained Finish</td>
        <td>$14.95</td>
        <td>
            <form action="cart" method="post">
                <input type="hidden" name="action" value="Add To Cart">
                <input type="hidden" name="code" value="jr01">
                <input type="hidden" name="description" value="Joe Rut - Genuine Wood Grained Finish">
                <input type="hidden" name="price" value="14.95">
                <input type="submit" value="Add To Cart">
            </form>
        </td>
    </tr>
</table>
</body>
</html>

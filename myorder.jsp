<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>My Orders</title>
</head>
<body>
    <h1>My Orders</h1>
    <table border="1">
        <tr>
            <th>EmailId</th>
            <th>Product ID</th>
            <th>Product Rate</th>
            <th>Order Quantity</th>
            <th>Address</th>
            <th>Order Value</th>
        </tr>
        <c:forEach var="order" items="${orders}">
            <tr>
                <td>${order.user_id}</td>
                <td>${order.prod_id}</td>
                <td>${order.prod_rate}</td>
                <td>${order.order_qty}</td>
                <td>${order.adress}</td>
                <td>${order.order_value}</td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>

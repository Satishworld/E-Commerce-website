<%-- <body>
    <h1>Order Details</h1>
    <p>Product ID: ${prod_id}</p>
    <p>Product Quantity: ${prod_qty}</p>
    <p>Order Quantity: ${order_qty}</p>
    <p>Product Rate: ${prod_rate}</p>
    <p>Order Value: ${order_value}</p>
</body> --%>
<jsp:include page="userheader.jsp" />

<%-- <script type="text/javascript" src="js/JQuery.js"></script>
<script type="text/javascript">
    $(document).ready(function () {
        odersucess=new URL(window.location).searchParams.get("odersucess");
         alert(odersucess);
    }
</script> --%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Order Details</title>
    <style>
        table {
            border-collapse: collapse;
            width: 100%;
        }
        th, td {
            border: 1px solid #dddddd;
            text-align: left;
            padding: 8px;
        }
        th {
            background-color: #f2f2f2;
        }
        .highlight {
            color: blue;
        }
    </style>
</head>
<body>
    <h1>Order Details</h1>
    <table>
        <tr>
            <th>Detail</th>
            <th>Value</th>
        </tr>
        <tr>
            <td>Order Quantity:</td>
            <td>${prod_qty}</td>
        </tr>
        
        <tr>
            <td>Product Rate:</td>
            <td>${prod_rate}</td>
        </tr>
        <tr>
            <td>Order Value:</td>
            <td class="highlight">${order_value}</td>
        </tr>
        <tr>
            <td>Address:</td>
            <td>${adress}</td>
        </tr>
        <tr>
            <td>Address:</td>
            <td>${user_id}</td>
        </tr>
    </table>
</body>
</html>



 <jsp:include page="footer.jsp" />
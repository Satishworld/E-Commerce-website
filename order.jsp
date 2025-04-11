<jsp:include page="adminheader.jsp" />
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<table class="table" border="1px">
      <tr>
        
        <th>Order Id</th>
        <th>Order Date</th>
        <th>Product Id</th>
        <th>Product Rate</th>
        <th>Quantity</th>
        <th>Total Price</th>
        <th>Adress</th>
        <th>Action</th>
      </tr>
      <c:forEach var="user" items="${order}">
        <tr>
          
          <td>${user.order_id}</td>
          <td>${user.oder_date}</td>
          <td>${user.prod_id}</td>
          <td>${user.prod_rate}</td>
          <td>${user.order_qty}</td>
          <td>${user.order_value}</td>
          <td>${user.adress}</td>
          
          <td class="action-buttons">
            <form action="manageorder" method="post">
              <input type="hidden" name="order_id" value="${user.order_id}">
              <input type="submit" value="Delete" name="btn">
              
            </form>
          </td>
        </tr>
      </c:forEach>
    </table>
<style>
/* Styling for the table */
.table {
    width: 100%;
    border-collapse: collapse;
}

/* Styling for table headers */
.table th {
    background-color: #007bff;
    color: white;
    padding: 10px;
    text-align: left;
}

/* Styling for table cells */
.table td {
    padding: 8px;
    border: 1px solid #dddddd;
}

/* Styling for even rows */
.table tr:nth-child(even) {
    background-color: #f2f2f2;
}

/* Styling for odd rows */
.table tr:nth-child(odd) {
    background-color: #ffffff;
}

/* Styling for action buttons */
.action-buttons input[type="submit"] {
    padding: 5px 10px;
    border: none;
    background-color: #dc3545;
    color: white;
    cursor: pointer;
    transition: background-color 0.3s ease; /* Smooth transition on hover */
}

/* Styling for action buttons on hover */
.action-buttons input[type="submit"]:hover {
    background-color: #c82333;
}
 body {
            background-color: gray;
            background: linear-gradient(to right, #808080, #448EE4);
        }

</style>

<jsp:include page="footer.jsp" />
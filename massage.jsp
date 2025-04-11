<jsp:include page="adminheader.jsp" />
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<table class="table" border="1px">
      <tr>
        
        <th>Name</th>
        <th>Email</th>
        <th>Number</th>
        <th>Massage</th>
        <th>Action</th>
      </tr>
      <c:forEach var="user" items="${contact}">
        <tr>
          
          <td>${user.name}</td>
          <td>${user.gmail}</td>
          <td>${user.number}</td>
          <td>${user.massage}</td>
          
          
          <td class="action-buttons">
            <form action="managecontactus" method="post">
              <input type="hidden" name="name" value="${user.name}">
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
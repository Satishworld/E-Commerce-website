<jsp:include page="adminheader.jsp" />

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>




<style>
  /* Styling for the table */
.table {
    width: 100%; /* Set table width to 100% */
    border-collapse: collapse; /* Collapse borders */
}

/* Styling for table headers */
.table th {
    background-color: #007bff; /* Blue background color */
    color: white; /* Text color */
    padding: 10px; /* Padding around the header text */
    text-align: left; /* Align text to the left */
}

/* Styling for table cells */
.table td {
    padding: 8px; /* Padding around the cell content */
    border: 1px solid #dddddd; /* Add border to cells */
}

/* Styling for even rows */
.table tr:nth-child(even) {
    background-color: #f2f2f2; /* Light gray background color */
}

/* Styling for odd rows */
.table tr:nth-child(odd) {
    background-color: #ffffff; /* White background color */
}

/* Styling for buttons inside table cells */
.table input[type="submit"] {
    padding: 5px 10px; /* Padding around the button text */
    border: none; /* No border */
    background-color: #dc3545; /* Red background color */
    color: white; /* Text color */
    cursor: pointer; /* Change cursor to pointer on hover */
}

/* Styling for buttons on hover */
.table input[type="submit"]:hover {
    background-color: #c82333; /* Darker red background color */
}

body {
  background-color: gray;
  background: linear-gradient(to right, #808080, #448EE4);
}

</style>


    <table class="table" border="1px">
      <tr>
        <th>Question</th>
        <th>Answer</th>
        <th>Action</th>
      </tr>
      <c:forEach var="user" items="${faq}">
        <tr>
          <td>${user.question}</td>
          <td>${user.answer}</td>
          
          <td class="action-buttons">
            <form action="show" method="post">
              <input type="hidden" name="question" value="${user.question}">
              <input type="submit" value="Delete" name="btn">
              
            </form>
          </td>
        </tr>
      </c:forEach>
    </table>



<jsp:include page="footer.jsp" />
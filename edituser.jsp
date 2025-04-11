<jsp:include page="adminheader.jsp" />

<!-- <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<form action="updateuser" method="post">
Name:<input type="text" name="name" value="${user_master[0].name}"><br>
Role:<input type="text" name="role_name" value="${user_master[0].role_name}"><br>
Status:<input type="text" name="status" value="${user_master[0].status}"><br>
<input type="hidden" name="user_id" value="${user_master[0].user_id}"><br>
<input type="submit" name="btn" value="Update">
</form> -->

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Form</title>
    <style>
        /* Apply styles to the form */
        form {
            margin: 20px auto;
            width: 300px;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
            background-color: #f9f9f9;
        }

        /* Apply styles to input fields */
        input[type="text"] {
            width: calc(100% - 10px);
            padding: 10px;
            margin: 5px 0;
            border: 1px solid #ccc;
            border-radius: 3px;
            box-sizing: border-box;
        }

        /* Apply styles to the submit button */
        input[type="submit"] {
            width: 100%;
            background-color: #4CAF50;
            color: white;
            padding: 10px 0;
            margin-top: 10px;
            border: none;
            border-radius: 3px;
            cursor: pointer;
        }

        /* Style the form heading */
        h2 {
            text-align: center;
        }
       

    </style>
</head>
<body>
    <h2>User Update Form</h2>
    <form action="updateuser" method="post">
        <label for="name">Name:</label><br>
        <input type="text" id="name" name="name" value="${user_master[0].name}"><br>
        <label for="role">Role:</label><br>
        <input type="text" id="role" name="role_name" value="${user_master[0].role_name}"><br>
        <label for="status">Status:</label><br>
        <input type="text" id="status" name="status" value="${user_master[0].status}"><br>
        <input type="hidden" name="user_id" value="${user_master[0].user_id}">
        <input type="submit" name="btn" value="Update">
    </form>
</body>
</html>



<jsp:include page="footer.jsp" />



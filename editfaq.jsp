<jsp:include page="adminheader.jsp" />

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="k">
<form action="updatefaq" method="post">
  Question:<textarea type="text-area" name="question"> </textarea><br />
  Answer:<textarea type="text-area" name="answer"> </textarea><br />
  <input type="submit" name="btn" value="Add" />
</form>
</div>

<style>
        /* Define your CSS styles here */
        form {
            margin: 20px;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
            background-color: #f9f9f9;
            width: 300px;
        }
        textarea {
            width: 100%;
            height: 100px;
            margin-bottom: 10px;
            padding: 5px;
            border: 1px solid #ccc;
            border-radius: 3px;
            box-sizing: border-box;
        }
        input[type="submit"] {
            padding: 10px 20px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 3px;
            cursor: pointer;
        }
        input[type="submit"]:hover {
            background-color: #45a049;
        }
        .k {
            margin-left: 40%;
            margin-right: 25%;
            padding-top: 10px;
        }
         body {
            background-color: gray;
            background: linear-gradient(to right, #808080, #448EE4);
        }
    </style>














 <jsp:include page="footer.jsp" />
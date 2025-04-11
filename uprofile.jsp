<%@ page import="java.util.*" %>

<% byte[] s=(byte[])request.getAttribute("imageData"); %>
 <img src="data:image/jpeg;base64, <%= Base64.getEncoder().encodeToString(s) %>" />

<form method="post" enctype="multipart/form-data" action="uprofile">
    <input type="file" name="f" />
    <br/>
    <input type="text" name="age" value="${userprofile[0].age}" />
    <input type="submit" name="btn" value="update" />
</form>
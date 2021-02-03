<%--
  Created by IntelliJ IDEA.
  User: THINKPADX240
  Date: 2/3/2021
  Time: 10:27 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>update</title>
</head>
<body>
<form method="post">
    <table>
        <tr>
            <td>Name</td>
            <td><input type="text" name="productName" value="${product.getName()}"></td>
        </tr>
        <tr>
            <td>Price</td>
            <td><input type="text" name="productPrice" value="${product.getPrice()}"></td>
        </tr>
    </table>
    <input type="submit" value="Update">
</form>

</body>
</html>

<%--
  Created by IntelliJ IDEA.
  User: THINKPADX240
  Date: 2/3/2021
  Time: 9:53 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>find by name</title>
</head>
<body>
<form method="post">
    <table>
        <tr>
            <td>Input name</td>
            <td><input type="text" name="productName"></td>
        </tr>

    </table>
    <input type="submit" value="Find">
</form>
<h1>Result:<h2>
    <p>${product.getId()}</p>
    <p>${product.getName()}</p>
    <p>${product.getPrice()}</p>

</body>
</html>

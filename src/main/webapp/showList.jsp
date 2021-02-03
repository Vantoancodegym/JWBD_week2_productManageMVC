<%--
  Created by IntelliJ IDEA.
  User: THINKPADX240
  Date: 2/3/2021
  Time: 7:50 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Show list</title>
    <style>
        table,tr,td{
            border: 1px solid black
        }
    </style>
</head>
<body>
<p><a href="/products?action=create">Create new product</a></p>
<p><a href="/products?action=findByName">Find by name</a></p>
<table>
   <tr>
       <td>Id</td>
       <td>Name</td>
       <td>Price</td>
   </tr>
    <c:forEach items="${list}" var="product">
        <tr>
            <td>${product.getId()}</td>
            <td>${product.getName()}</td>
            <td>${product.getPrice()}</td>
            <td><a href="/products?action=update&id=${product.getId()}">Update</a></td>
            <td><a href="/products?action=delete&id=${product.getId()}">Delete</a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>

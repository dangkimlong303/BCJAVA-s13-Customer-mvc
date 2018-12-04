<%--
  Created by IntelliJ IDEA.
  User: longdk
  Date: 12/4/18
  Time: 8:47 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Customer List</title>
</head>
<body>
    <h1>Customer List</h1>
    <p>
        <a href="/customers?action=create">Create new Customer</a>
    </p>

    <fieldset>
        <legend>
            List
        </legend>
        <table border="1">
            <tr>
                <td>Name</td>
                <td>Email</td>
                <td>Address</td>
                <td>Edit</td>
                <td>Delete</td>
            </tr>
            <c:forEach items='${requestScope["customerList"]}' var="customer">
                <tr>
                    <td><a href="customers?action=view&id=${customer.getId()}">${customer.getName()}</a></td>
                    <td>${customer.getEmail()}</td>
                    <td>${customer.getAddress()}</td>
                    <td><a href="customers?action=edit&id=${customer.getId()}">edit</a></td>
                    <td><a href="customers?action=delete&id=${customer.getId()}">delete</a></td>
                </tr>
            </c:forEach>

        </table>
    </fieldset>
</body>
</html>

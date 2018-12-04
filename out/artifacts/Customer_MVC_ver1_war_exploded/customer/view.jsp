<%--
  Created by IntelliJ IDEA.
  User: longdk
  Date: 12/4/18
  Time: 11:33 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>View Customer</title>
</head>
<body>
    <h1>Customer Detail</h1>
    <p>
        <a href="/customers">Back to customer</a>
    </p>
    <table>
        <tr>
            <td>Name: </td>
            <td>${requestScope["customer"].getName()}</td>
        </tr>
        <tr>
            <td>Email: </td>
            <td>${requestScope["customer"].getEmail()}</td>
        </tr>
        <tr>
            <td>Address: </td>
            <td>${requestScope["customer"].getAddress()}</td>
        </tr>
    </table>
</body>
</html>

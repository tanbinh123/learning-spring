<%--
  Created by IntelliJ IDEA.
  User: goldie
  Date: 8/16/20
  Time: 12:24 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Customer Form</title>
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css"/>
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/add-customer-style.css"/>
</head>
<body>
    <div id="wrapper">
        <div id="header">
            <h2>CRM - Customer Relationship Manager</h2>
        </div>
        <div id="container">
            <h3>Save Customer</h3>
            <form:form action="saveCustomer" modelAttribute="customer" method="post">

                <!-- need to associate the data with the customer id -->
                <form:hidden path="id"/>

                <table>
                    <tbody>
                    <tr>
                        <td>
                            <label>First Name:</label>
                        </td>
                        <td>
                            <form:input path="firstName" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label>Last Name:</label>
                        </td>
                        <td>
                            <form:input path="lastName" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label>Email Address:</label>
                        </td>
                        <td>
                            <form:input path="email" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label></label>
                        </td>
                        <td>
                            <input type="submit" vale="Save" class="save" />
                        </td>
                    </tr>
                    </tbody>
                </table>
            </form:form>
            <div style="clear; both;"></div>
            <p>
                <a href="${pageContext.request.contextPath}/customer/list">Back to list</a>
            </p>
        </div>
    </div>
</body>
</html>

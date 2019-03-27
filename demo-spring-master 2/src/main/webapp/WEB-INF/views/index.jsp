<%--
  Created by IntelliJ IDEA.
  User: jose
  Date: 25/03/2019
  Time: 11:49
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

<head>
    <title>Lourd</title>
</head>
<body>
<jsp:include page="navbar.jsp" />

<div class="container">
        <div class="row">
            <div class="col-sm">
                <ul class="list-group">
                <c:forEach items="${formationList}" var="form">
                    <li class="list-group-item">
                    <p>${form.theme}
                        <a href="delete.html?id=${form.id}">
                            <img src="images/delete.png" style="width:20px">
                        </a>
                        <a href="update.html?id=${form.id}">
                            <img src="images/update.png" style="width:20px">
                        </a>
                    </p>
                    </li>
                </c:forEach>
                </ul>
            </div>
        </div>
    </div>
</body>
</html>

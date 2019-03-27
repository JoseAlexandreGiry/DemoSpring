<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

    <title>Mon application</title>
</head>
<body>
<jsp:include page="navbar.jsp" />

<div>
    <h1 style="text-align: center">Rechercher une formation :</h1>
    <form method="post">
        <div class="container">
        <div class="form-row">
            <div class="col">
            <input placeholder="Thème" name="theme" id ="theme" class="form-control">
        </div>
        <div class="col">
        <input type="submit" class="btn btn-primary" value="Rechercher">
        </div>
        </div>
        </div>
    </form>
</div>
<div>
    <c:if test="${not empty formationList}">
        <h1>Résultat(s)</h1>
        <ul>
            <c:forEach items="${formationList}" var="form">
                <li>${form.theme.toString()}</li>
            </c:forEach>
        </ul>
    </c:if>
</div>
</body>
<%--
  Created by IntelliJ IDEA.
  User: jose
  Date: 25/03/2019
  Time: 15:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

    <title>Form</title>
</head>
<body>

<jsp:include page="navbar.jsp" />

    <h1 style="text-align: center">Nouveau thème : </h1>
    <form method="post" class="form">
        <div class="container">
        <div class="form-row">
            <div class="col">
        <input type="text" placeholder="Uniquement caractères numériques" name="id" class="form-control" value="${empty updateForm ? '' : updateForm.id}">
            </div>
            <div class="col">
        <input type ="text" placeholder ="theme" name="theme" class="form-control" value="${empty updateForm ? '' : updateForm.theme}">
            </div>
            <div class="col">
        <input type="submit" class="btn btn-primary" value="Valider">
            </div>
        </div>
        </div>
    </form>
</body>
</html>

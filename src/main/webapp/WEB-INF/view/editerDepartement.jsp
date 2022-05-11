<!--
<%@ page language="java" contentType="text/html; charset=windows-1256"
pageEncoding="windows-1256"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="windows-1256">
<title>Modifier un Produit</title>
</head>
<body>
<form action="updateDepartement" method="post">
<pre>
id : <input type="text" name="idDepartement" value="${produit.idDepartement}">
nom :<input type="text" name="nomDepartement" value="${produit.nomDepartement}">
prix :<input type="text" name="surfaceDepartement" value="${produit.surfaceDepartement}">
Date création :
<fmt:formatDate pattern="yyyy-MM-dd" value="${produit.dateCreation}"
var="formatDate" />
<input type="date" name="date" value="${formatDate}"></input>
<input type="submit" value="Modifier">
</pre>
</form>
<br/>
<br/>
<a href="listeDepartements">Liste Produits</a>
</body>
</html>
-->


    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
            <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
            <html>
            <link rel="stylesheet" type="text/css" href="webjars/bootstrap/4.3.1/css/bootstrap.min.css" />
            <c:url value="/css/main.css" var="jstlCss" />
            <link href="${jstlCss}" rel="stylesheet" />
            <script type="text/javascript" src="webjars/bootstrap/4.3.1/js/bootstrap.min.js"></script>

            <head>
                <meta http-equiv="Content-Type" content="text/html; charset=windows-1256">
                <title>Modifier un Departement</title>
            </head>

            <body>
                <div class="container mt-5">
                    <div class="card-body">
                        <form action="updateDepartement" method="post">
                            <div class="form-group">
                                <label class="control-label">ID Produit :</label>
                                <input type="text" name="idDepartement" value="${produit.idDepartement}" readonly
                                    class="form-control" />
                            </div>
                            <div class="form-group">
                                <label class="control-label">Nom Departement :</label>
                                <input type="text" name="nomDepartement" value="${produit.nomDepartement}"
                                    class="form-control" />
                            </div>
                            <div class="form-group">
                                <label class="control-label">Surface Departement :</label>
                                <input type="text" name="surfaceDepartement" value="${produit.surfaceDepartement}"
                                    class="form-control" />
                            </div>
                            <div class="form-group">
                                <label class="control-label"> Date creation :</label>
                                <fmt:formatDate pattern="yyyy-MM-dd" value="${produit.dateCreation}" var="formatDate" />

                                <input type="date" name="date" value="${formatDate}" class="form-control" />

                            </div>
                            <div>

                                <button type="submit" class="btn btn-primary">Modifier</button>
                            </div>
                        </form>
                    </div>
                    <br />
                    <br />
                    <a href="ListeDepartements">Liste Departements</a>
                </div>
            </body>

            </html>
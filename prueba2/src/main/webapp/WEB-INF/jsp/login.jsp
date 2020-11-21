<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
    <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
<link href="css/signin.css" rel="stylesheet">
<title>Insert title here</title>
</head>
<body>

<div class="container theme-showcase" role="main">
			<hr class="featurette-divider">
			<img src="img/turista.jpg" width="250" height="250" class="center">
			<form:form class="form-signin" action="login" method="post">        
				<h3 class="form-signin-heading text-center">Iniciar Sessión</h3>
				<c:if test="${param.error != null}">
				<p class="error">ERROR: Usuario y/o contraseña no válidos</p>
				  </c:if>       
				<label for="username" class="sr-only">Usuario</label>
				<input type="text" id="username" name="username" class="form-control" placeholder="Usuario" required autofocus>
				<label for="password" class="sr-only">Contraseña</label>
				<input type="password" id="password" name="password" class="form-control" placeholder="Password" required>
				<button class="btn btn-lg btn-primary btn-block" type="submit">Entrar</button>
				
				<a class="btn btn-lg btn-success btn-block"" style="padding: 8px 40px " href="/">Volver a Inicio</a>
				
                        
                   
			</form:form>

		</div> 
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
    <%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
<title>Insert title here</title>
<style>
body {
	background-image:
		url(https://c4.wallpaperflare.com/wallpaper/867/739/683/amanecer-avion-despegando-wallpaper-preview.jpg);
	background-size: cover;
}

</style>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
<img src="img/sun.png" width="150" height="120" class="center">
  <a class="navbar-brand Helvetica Neue text-capitalize " href="#"><i><b><big> V</big>iajar es vivir</b></i> </a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
    <div class="collapse navbar-collapse">
   <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
      <li class="nav-item">
       <a class="nav-link " href="/"><h5>Inicio</h5> <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="servicioTurismo"><h5>Servicio Turismo</h5></a>
      </li>
      <li class="nav-item">
        <a class="nav-link active" href="servicioPremium"><h5>Servicio Premium</h5></a>
      </li>
      
    </ul>
    <form:form  action="logout" method="post" cssClass="form-inline my-2 my-lg-0">
      <span class="navbar-brand Helvetica Neue text-capitalize ">Bienvenido usuario "<sec:authentication property="name"/>"</span>&nbsp &nbsp  &nbsp
      <button class="btn btn-danger my-2 my-sm-0" style="padding: 8px 30px" type="submit">Logout</button> &nbsp &nbsp
    </form:form>  

     </div>    
  </div>
</nav>
<section class="text-center">
			<div class="container">
				<h1 style="color:white; font-size: 70px;" class="my-4">
					 LASER Airlines <br>
				</h1>
				<div style="background-color: rgb(255, 255, 255, 0.8); border-radius: 25px;" class="px-5 py-5">
					<br>
					<h2 class="lead text" Style="color: black; 	font-size: 30px">
						Algunos de nuestros servicios de despliegan en la siguiente lista
					</h2><br>
					<table class="table">
  <thead>
    <tr>
      <th scope="col">Paquete</th>
      <th scope="col">Destino</th>
      <th scope="col">Hotel</th>
      <th scope="col">Costo</th>
	  <th scope="col">Tipo Servicio</th>
	  
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row">1</th>
      <td>Toronto</td>
      <td>Hotel Full Start</td>
      <td>$5.000.000</td>
	  <td>Premium</td>
    </tr>
    <tr>
      <th scope="row">2</th>
      <td>USA</td>
      <td>Hotel Full Start++</td>
      <td>$15.000.000</td>
	  <td>Premium</td>
    </tr>
    <tr>
      <th scope="row">3</th>
      <td>Francia</td>
      <td>Hotel Torre</td>
      <td>$20.000.000</td>
	  <td>Premium</td>
    </tr>
  </tbody>
</table>
				</div>
			</div>
		</section>
<footer class="text-center nb-5 fixed-bottom">
&copy:2020 Todos los derechos reservados
</footer>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
</body>
</html>
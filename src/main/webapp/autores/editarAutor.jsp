<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.unu.proyectoWebGB.beans.Autor"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="assets/css/bootstrap.min.css">
<script type="text/javascript" src="assets/js/bootstrap.min.js"></script>




<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>



	<%
	String url = "http://localhost:8080/proyectoWebGB/";
	Autor autor;
	if (request.getAttribute("autor") == null)
		autor = new Autor();
	else{
		autor = (Autor)request.getAttribute("autor");
		System.out.println(autor.getIdAutor());
		System.out.println(autor.getNombre());

	}	
	%>
<div class="container">
	<h3>Nuevo Autor</h3>
	<form role="form" action="<%=url%>AutoresController" method="POST">
		<div class="form-group">
		<input type="hidden" name="op" value="modificar" />
		<input type="hidden" name="id" value="<%=autor.getIdAutor()%>" />
		<label for="nombre"> Nombre del Autor </label>
		<br>
		<input type="text"	name="nombre" id="nombre" value="<%=autor.getNombre()%>" />
		<br>
		<label for="nacionalidad"> Nacionalidad </label>
		<br>
		<input type="text" name="nacionalidad" id="nacionalidad" value="<%=autor.getNacionalidad()%>" />
		<br> 
		<button type="submit" class="btn btn-success">Guardar</button>
		<a href="<%=url%>AutoresController?op=listar"><button type="button" class="btn btn-warning">Regresar</button></a>
		</div>
		</div>
	</form>
	
</body>
</html>
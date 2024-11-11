<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
	function validarFormulario(){
		
		const nombre = document.getElementById('nombre').value.trim();
		const nacionalidad = document.getElementById('nacionalidad').value.trim();
		
		if(nombre === ""){
			alert('Ingrese el nombre del autor');
			return false;			
			
		}
		
		return true;
		
	}



</script>




</head>
<body>
<%@include file="/cabeceraMenu.jsp" %>

	<%
	String url = "http://localhost:8080/proyectoWebGB/";
	%>

	<h3>Nuevo Autor</h3>
	<form role="form" action="<%=url%>AutoresController" method="POST">

		<input type="hidden" name="op" value="insertar" /> <label
			for="nombre"> Nombre del Autor </label> <br>
			<input type="text" name="nombre" id="nombre" /> <br>
			
			<label for="nacionalidad">
			Nacionalidad </label> <br>
			<input type="text" name="nacionalidad"
			id="nacionalidad" /> <br>
			
			<input type="submit" value="Guardar"
			name="Guardar"> <a href="<%=url%>AutoresController?op=listar">Retornar</a>
	</form>
</body>
</html>
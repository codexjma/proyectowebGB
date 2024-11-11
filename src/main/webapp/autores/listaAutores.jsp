<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<%@ page import="com.unu.proyectoWebGB.beans.Autor"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="assets/css/bootstrap.min.css">
<script>
	function eliminar(id){
		
		if(confirm("¿Desea eliminar eliminar el registro?") == true){
			location.href = "AutoresController?op=eliminar&id=" + id;
			
		} else{
			
		}
		
	}

</script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@include file="/cabeceraMenu.jsp" %>

	<%
	String url = "http://localhost:8080/proyectoWebGB/";
	%>
	<div class="container">
	<a href="<%=url%>AutoresController?op=nuevo"><button type="button" class="btn btn-success mt-4 mb-4">Nuevo Autor</button></a>

	<table class="table table-hover">
		<thead>

			<th>Cod Autor</th>
			<th>Nombre Autor</th>
			<th>Nacionalidad</th>
			<th>Operaciones</th>

		</thead>

		<tbody>
			<%
			List<Autor> listaAutores = (List<Autor>) request.getAttribute("listaAutores");

			if (listaAutores != null) {
				for (Autor autor : listaAutores) {
			%>

			<tr>
				<td><%=autor.getIdAutor()%></td>
				<td><%=autor.getNombre()%></td>
				<td><%=autor.getNacionalidad()%></td>
				<td>
					
				<a
				href="<%=url%>AutoresController?op=obtener&id=<%=autor.getIdAutor()%>"><button type="button" class="btn btn-warning">Modificar</button></a>
				<!-- <a href="<%=url%>AutoresController?op=eliminar&id=<%=autor.getIdAutor()%>"><button type="button" class="btn btn-danger">Eliminar</button></a> -->	
				
				 <!--  -->
				 
				 <a href="javascript:eliminar('<%=autor.getIdAutor()%>')" class="btn btn-danger">Eliminar</a>
				
				
				</td>
			</tr>


			<%
			}
			}

			else {
			%>
			<tr>
				<td>No hay datos</td>
				<td>No hay datos</td>
				<td>No hay datos</td>
				</td></td>
			</tr>
			<%
			}
			%>
		</tbody>


	</table>
</div>

</body>
</html>
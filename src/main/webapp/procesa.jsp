
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="cl.fullstackjava.model.HabitacionBussiness" %>
<%@ page import="cl.fullstackjava.model.Habitacion" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" %>

<%

	// Recepcion valores dede request
	String nombre = request.getParameter("nombre");
	String apellido = request.getParameter("apellido");
	String email = request.getParameter("email");
	String medioPago = request.getParameter("medio_pago");
	int dias = Integer.parseInt(request.getParameter("dias"));
	String fechaEntrada = request.getParameter("fecha_entrada");
	int idHabitacion = Integer.parseInt(request.getParameter("idhabitacion"));
	
	// Librerias requeridas
	HabitacionBussiness habitacionb = new HabitacionBussiness();
	// incializa Objeto Habitacion
	Habitacion habitacion = new Habitacion();
	habitacion.setId(idHabitacion);
	// Busca y recoge informacion de habitacion seleccionada
	habitacion = habitacionb.getHabitacionbyID(habitacion);
	// Obtiene el valor a pagar por la cantidad de tickets seleccionados
	int valorPagar = habitacionb.calcularValorCompra(habitacion.getPrecio(), dias);
	
	// Formatear la fecha de entrada
    SimpleDateFormat inputDateFormat = new SimpleDateFormat("yyyy-MM-dd");
    SimpleDateFormat outputDateFormat = new SimpleDateFormat("dd/MM/yyyy");
    Date date = inputDateFormat.parse(fechaEntrada);
    String fechaFormateada = outputDateFormat.format(date);

%>

<!DOCTYPE html>
<html lang="es">
<%@include file="assets/html/head.jsp"%>
<body>
	<%@include file="assets/html/header.jsp"%>
	<form method="post" action="procesa.jsp">
		<!-- Section-->
		<section class="py-5">
			<div class="container px-4 px-lg-5 mt-5">
				<div class="row justify-content-center">
					<h1>
						Detalle Solictud Habitacion: <strong><%="Habitación " + (habitacion.getId()) + ", " + habitacion.getNombre()%></strong>
					</h1>
					<hr/ >
				</div>
			</div>
			<div class="container px-4 px-lg-5 mt-5">
				<table class="table">
					<thead>
						<tr>
							<th scope="col">#</th>
							<th scope="col">Item</th>
							<th scope="col">Valor</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<th scope="row">1</th>
							<td>Nombre</td>
							<td><%=nombre%></td>
						</tr>
						<tr>
							<th scope="row">2</th>
							<td>Apellido</td>
							<td><%=apellido%></td>
						</tr>
						<tr>
							<th scope="row">3</th>
							<td>Email</td>
							<td><%=email%></td>
						</tr>
						<tr>
							<th scope="row">4</th>
							<td>Medio Pago</td>
							<td><%=medioPago%></td>
						</tr>
						<tr>
							<th scope="row">5</th>
							<td>Dias</td>
							<td><%=dias%></td>
						</tr>
						<tr>
							<th scope="row">6</th>
							<td>Fecha Entrada</td>
							<td><%=fechaFormateada%></td>
						</tr>
						<tr>
							<th scope="row">7</th>
							<td>Valor Pagar</td>
							<td><strong>CL$ <%=valorPagar%></strong></td>
						</tr>
					</tbody>
				</table>
			</div>
		</section>
		<br /> <br />
	</form>
	<%@include file="assets/html/footer.jsp"%>
</body>
</html>
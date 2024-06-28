
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.List"%>
<%@page import="cl.fullstackjava.model.HabitacionBussiness"%>
<%@page import="cl.fullstackjava.model.Habitacion"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	// Librerias Requeridas
	HabitacionBussiness habitacionesb = new HabitacionBussiness();
	// listado de Habitaciones
	List<Habitacion> listaHabitaciones = habitacionesb.getHabitaciones();
	//Obtener la fecha actual
	Date today = new Date();
	SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
	String todayStr = dateFormat.format(today);
%>

<!DOCTYPE html>
<html>
<%@include file="assets/html/head.jsp"%>
<body>
	<%@include file="assets/html/header.jsp"%>
	<form method="post" action="procesa.jsp">
		<!-- Section-->
		<section class="py-5">
			<div class="container px-4 px-lg-5 mt-5">
				<div class="row justify-content-center">
					<h1>
						Habitaciones Disponibles (<%=listaHabitaciones.size()%>)
					</h1>
					<hr>
				</div>
				<div
					class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
					<%
					for (int x = 0; x < listaHabitaciones.size(); x++) {
					%>
					<div class="col mb-5">
						<div class="card h-100">
							<!-- Product image-->
							<img class="card-img-top"
								src="<%=listaHabitaciones.get(x).getImagen()%>"
								alt="<%=listaHabitaciones.get(x).getNombre()%>" />
							<!-- Product details-->
							<div class="card-body p-4">
								<div class="text-center">
									<!-- Product name-->
									<h5 class="fw-bolder"><%= "Habitación " + listaHabitaciones.get(x).getId() + ", " + listaHabitaciones.get(x).getNombre() %></h5>
									<p><%=listaHabitaciones.get(x).getDescripcion()%></p>
									<!-- Product price-->
									CL$
									<%=listaHabitaciones.get(x).getPrecio()%>
								</div>
							</div>
							<input type="radio" id="idhabitacion" name="idhabitacion"
								value="<%=listaHabitaciones.get(x).getId()%>" checked>
							<!-- Product actions-->
							<div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
								<div class="text-center"></div>
							</div>
						</div>
					</div>
					<%
					}
					%>
				</div>
			</div>
		</section>
		<!-- Formulario -->
		<section>
			<div class="container px-4 px-lg-5 mt-5">
				<h1>Información de Reserva Habitación</h1>
				<hr />
				<div class="row g-3">
				
					<div class="col-md-6">
						<label for="nombre" class="form-label">Nombre</label>
						<input type="text" class="form-control" id="nombre"
						name="nombre" value="Arturo Erasmo">
					</div>
					<div class="col-md-6">
						<label for="apellido" class="form-label">Apellido</label>
						<input type="text" class="form-control" id="apellido"
						name="apellido" value="Vidal Pardo">
					</div>
					<div class="col-md-6">
						<label for="email" class="form-label">Email</label>
						<input type="email" class="form-control" id="email" 
						name="email" value="arturo.vidal@anfp.cl">
					</div>
					<div class="col-md-2">
				    	<label for="medio_pago" class="form-label">Medio de Pago</label>
				    	<select class="form-select" id="medio_pago" name="medio_pago">
				    		<option value="contado">Contado</option>
					        <option value="credito">Tarjeta de Crédito</option>
					        <option value="debito">Tarjeta de Débito</option>
					        <option value="paypal">PayPal</option>
					        <option value="transferencia">Transferencia Bancaria</option>
				    	</select>
				    </div>
					<div class="col-md-2">
						<label for="dias" class="form-label">Días</label>
						<select id="dias" name="dias" class="form-select">
							<%
							for (int x = 1; x < 30; x++) {
							%>
							<option value="<%=x %>"><%=x%> día(s)
							</option>
							<%
							}
							%>
						</select>
					</div>
					<div class="col-md-2">
				    	<label for="fecha_entrada" class="form-label">Fecha Entrada</label>
				    	<input type="date" class="form-control" id="fecha_entrada"
				    	name="fecha_entrada" value="<%= todayStr %>">
					</div>
					<div class="col-12">
						<hr />
						<button type="submit" class="btn btn-primary">Enviar Solicitud de Compra</button>
					</div>
					
				</div>
			</div>
		</section>
		<br /> <br />
	</form>
	<%@include file="assets/html/footer.jsp"%>
</body>
</html>
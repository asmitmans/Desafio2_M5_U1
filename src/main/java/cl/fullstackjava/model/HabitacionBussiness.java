package cl.fullstackjava.model;

import java.util.ArrayList;
import java.util.List;

public class HabitacionBussiness {
	
	public List<Habitacion> getHabitaciones() {

		// Inicializacion de lista de habitaciones
		ArrayList<Habitacion> habitaciones = new ArrayList<Habitacion>();
		
		// Habitacion 1
		Habitacion habitacion1 = new Habitacion();
		habitacion1.setId(1);
		habitacion1.setNombre("Simple");
		habitacion1.setDescripcion("Habitación Clásica con cama extragrande, vistas al océano y balcón.");
		habitacion1.setImagen("assets/img/istockphoto-1266155645-612x612.jpg");
		habitacion1.setPrecio(10000);
		habitacion1.setHabitaciones(1);
		habitacion1.setMetraje(1);
		
		// Habitacion 2
		Habitacion habitacion2 = new Habitacion();
		habitacion2.setId(2);
		habitacion2.setNombre("Doble - Simple");
		habitacion2.setDescripcion("Habitación Clásica con 2 camas grandes o dobles, vistas al océano y balcón.");
		habitacion2.setImagen("assets/img/istockphoto-1370825295-612x612.jpg");
		habitacion2.setPrecio(20000);
		habitacion2.setHabitaciones(1);
		habitacion2.setMetraje(1);
		
		// Habitacion 3
		Habitacion habitacion3 = new Habitacion();
		habitacion3.setId(3);
		habitacion3.setNombre("Doble - Normal");
		habitacion3.setDescripcion("Habitación Superior en planta alta con vistas al océano y 2 camas dobles.");
		habitacion3.setImagen("assets/img/istockphoto-627892060-612x612.jpg");
		habitacion3.setPrecio(30000);
		habitacion3.setHabitaciones(1);
		habitacion3.setMetraje(1);
		
		// Habitacion 4
		Habitacion habitacion4 = new Habitacion();
		habitacion4.setId(4);
		habitacion4.setNombre("Doble - King");
		habitacion4.setDescripcion("Suite Executive en planta superior con cama extragrande, vistas al océano.");
		habitacion4.setImagen("assets/img/istockphoto-826058468-612x612.jpg");
		habitacion4.setPrecio(40000);
		habitacion4.setHabitaciones(1);
		habitacion4.setMetraje(1);
		
		// Habitacion 5
		Habitacion habitacion5 = new Habitacion();
		habitacion5.setId(5);
		habitacion5.setNombre("Doble King");
		habitacion5.setDescripcion("Suite Executive en planta superior con cama extragrande y cistas al océano");
		habitacion5.setImagen("assets/img/istockphoto-1266155645-612x612.jpg");
		habitacion5.setPrecio(50000);
		habitacion5.setHabitaciones(1);
		habitacion5.setMetraje(1);
		
		// Habitacion 6
		Habitacion habitacion6 = new Habitacion();
		habitacion6.setId(6);
		habitacion6.setNombre("Doble - King");
		habitacion6.setDescripcion("Suite Executive en planta superior con cama extragrande y vistas al océano");
		habitacion6.setImagen("assets/img/istockphoto-1370825295-612x612.jpg");
		habitacion6.setPrecio(60000);
		habitacion6.setHabitaciones(1);
		habitacion6.setMetraje(1);
		
		// Habitacion 7
		Habitacion habitacion7 = new Habitacion();
		habitacion7.setId(7);
		habitacion7.setNombre("Doble - King");
		habitacion7.setDescripcion("Suite Executive en planta superior con cama extragrande y vistas al océano");
		habitacion7.setImagen("assets/img/istockphoto-627892060-612x612.jpg");
		habitacion7.setPrecio(70000);
		habitacion7.setHabitaciones(1);
		habitacion7.setMetraje(1);
		
		// Habitacion 8
		Habitacion habitacion8 = new Habitacion();
		habitacion8.setId(8);
		habitacion8.setNombre("Doble - King");
		habitacion8.setDescripcion("Suite Executive en planta superior con cama extragrande y vistas al océano");
		habitacion8.setImagen("assets/img/istockphoto-826058468-612x612.jpg");
		habitacion8.setPrecio(80000);
		habitacion8.setHabitaciones(1);
		habitacion8.setMetraje(1);
		
		
		// Agrega Habitaciones a Lista
		habitaciones.add(habitacion1);
		habitaciones.add(habitacion2);
		habitaciones.add(habitacion3);
		habitaciones.add(habitacion4);
		habitaciones.add(habitacion5);
		habitaciones.add(habitacion6);
		habitaciones.add(habitacion7);
		habitaciones.add(habitacion8);
		
		// Retorno de lista de habitaciones
		return habitaciones;
	}
	
	public Habitacion getHabitacionbyID(Habitacion habitacion) {

		List<Habitacion> listaHabitaciones = getHabitaciones();

		for (int x = 0; x < listaHabitaciones.size(); x++) {

			if (listaHabitaciones.get(x).getId() == habitacion.getId()) {
				habitacion = listaHabitaciones.get(x);
			}
		}

		return habitacion;
	}
	
	public int calcularValorCompra(int valorHabitacion, int cantidadDias) {
		int valor = valorHabitacion * cantidadDias;
		return valor;
	}
	
}
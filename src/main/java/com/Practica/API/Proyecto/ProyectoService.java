package com.Practica.API.Proyecto;

import java.util.HashMap;
import java.util.List;
import java.util.Optional;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;

@Service
public class ProyectoService {

	private final ProyectoRepository ProyectoRepository;

	HashMap<String, Object> datos;

	public ProyectoService(ProyectoRepository ProyectoRepository) {
		this.ProyectoRepository = ProyectoRepository;
	}

	public List<Proyecto> getProyecto() {
		return this.ProyectoRepository.findAll();
	}

	//private static String encodePassword(String plainPassword) {
		//BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
		//return passwordEncoder.encode(plainPassword);
	//}

	//private static boolean checkPassword(String plainPassword, String hashedPassword) {
	//	BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
	//	return passwordEncoder.matches(plainPassword, hashedPassword);
	//}

	public ResponseEntity<Object> newProyecto(Proyecto Proyecto) {
		Optional<Proyecto> res = ProyectoRepository.findByidProyecto(Proyecto.getIdProyecto());

		datos = new HashMap<>();

		if (res.isPresent() && Proyecto.getIdProyecto() == null) {
			datos.put("error", true);
			datos.put("message", "Ya existe un proyecto con ese nombre");

			return new ResponseEntity<>(datos, HttpStatus.CONFLICT);
		}

		

		datos.put("message", "Se guardo con exito el nuevo proyecto");

		if (Proyecto.getIdProyecto() != null) {
			datos.put("message", "Se actualizo con exito el Proyecto");
		}

		ProyectoRepository.save(Proyecto);
		datos.put("datos", Proyecto);

		return new ResponseEntity<>(datos, HttpStatus.CREATED);

	}

	public ResponseEntity<Object> deleteProyecto(String id) {
		datos = new HashMap<>();

		boolean existe = this.ProyectoRepository.existsById(id);

		if (!existe) {
			datos.put("error", true);
			datos.put("message", "No existe un Proyecto con ese id");
			return new ResponseEntity<>(datos, HttpStatus.CONFLICT);
		}

		ProyectoRepository.deleteById(id);
		datos.put("message", "Proyecto Eliminado");
		return new ResponseEntity<>(datos, HttpStatus.ACCEPTED);

	}
}

package com.Practica.API.Proyecto;

import java.util.List;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping(path="api/v1/Proyecto")
public class ProyectoController {

	private final ProyectoService ProyectoService;
	
	public ProyectoController(ProyectoService ProyectoService) {
		this.ProyectoService=ProyectoService;
	}

	@GetMapping
	public List<Proyecto> getProyecto(){
		return this.ProyectoService.getProyecto();
	}
	
	@PostMapping
	public ResponseEntity<Object> registrarProyecto(@RequestBody Proyecto Proyecto) {
		return this.ProyectoService.newProyecto(Proyecto);
	}
		
	@PutMapping
	public ResponseEntity<Object> actualizarProyecto(@RequestBody Proyecto Proyecto) {
		return this.ProyectoService.newProyecto(Proyecto);
	}
	
	@DeleteMapping(path= "{ProyectoId}")
	public ResponseEntity<Object> eliminarUsuario(@PathVariable("ProyectoId")String ProyectoId){
		return this.ProyectoService.deleteProyecto(ProyectoId);
	}
	
}

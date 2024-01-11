package com.Practica.API.EstaProye;

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
@RequestMapping(path="api/v1/EstaProyec")
public class EstaProyecController {

	private final EstaProyecService EstaProyecService;
	
	public EstaProyecController(EstaProyecService EstaProyecService) {
		this.EstaProyecService=EstaProyecService;
	}

	@GetMapping
	public List<EstaProyec> getEstaProyec(){
		return this.EstaProyecService.getEstaProyec();
	}
	
	@PostMapping
	public ResponseEntity<Object> registrarEstaProyec(@RequestBody EstaProyec EstaProyec) {
		return this.EstaProyecService.newEstaProyec(EstaProyec);
	}
		
	@PutMapping
	public ResponseEntity<Object> actualizarEstaProyec(@RequestBody EstaProyec EstaProyec) {
		return this.EstaProyecService.newEstaProyec(EstaProyec);
	}
	
	@DeleteMapping(path= "{EstaProyecId}")
	public ResponseEntity<Object> eliminarEstaProyec(@PathVariable("EstaProyecId")Long EstaProyecId){
		return this.EstaProyecService.deleteEstaProyec(EstaProyecId);
	}
	
}

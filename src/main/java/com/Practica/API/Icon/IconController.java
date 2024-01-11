package com.Practica.API.Icon;

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
@RequestMapping(path="api/v1/Icono")
public class IconController {

	private final IconService IconService;
	
	public IconController(IconService IconService) {
		this.IconService=IconService;
	}

	@GetMapping
	public List<Icon> getIcon(){
		return this.IconService.getIcon();
	}
	
	@PostMapping
	public ResponseEntity<Object> registrarIcon(@RequestBody Icon Icon) {
		return this.IconService.newIcon(Icon);
	}
		
	@PutMapping
	public ResponseEntity<Object> actualizarIcon(@RequestBody Icon Icon) {
		return this.IconService.newIcon(Icon);
	}
	
	@DeleteMapping(path= "{IconId}")
	public ResponseEntity<Object> eliminarIcon(@PathVariable("IconId")Long IconId){
		return this.IconService.deleteIcon(IconId);
	}
	
}

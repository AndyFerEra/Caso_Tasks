package com.Practica.API.Usuario;

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
@RequestMapping(path="api/v1/Usuario")
public class UsuarioController {

	private final UsuarioService UsuarioService;
	
	public UsuarioController(UsuarioService UsuarioService) {
		this.UsuarioService=UsuarioService;
	}

	@GetMapping
	public List<Usuario> getUsuario(){
		return this.UsuarioService.getUsuario();
	}
	
	@PostMapping
	public ResponseEntity<Object> registrarUsuario(@RequestBody Usuario Usuario) {
		return this.UsuarioService.newUsuario(Usuario);
	}
		
	@PutMapping
	public ResponseEntity<Object> actualizarUsuario(@RequestBody Usuario Usuario) {
		return this.UsuarioService.newUsuario(Usuario);
	}
	
	@DeleteMapping(path= "{UsuarioId}")
	public ResponseEntity<Object> eliminarUsuario(@PathVariable("UsuarioId")Long UsuarioId){
		return this.UsuarioService.deleteUsuario(UsuarioId);
	}
	
}

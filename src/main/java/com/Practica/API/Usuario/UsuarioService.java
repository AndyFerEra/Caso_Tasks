package com.Practica.API.Usuario;

import java.nio.charset.StandardCharsets;
import java.util.HashMap;
import java.util.List;
import java.util.Optional;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
//import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

@Service
public class UsuarioService {

	private final UsuarioRepository UsuarioRepository;

	HashMap<String, Object> datos;

	public UsuarioService(UsuarioRepository UsuarioRepository) {
		this.UsuarioRepository = UsuarioRepository;
	}

	public List<Usuario> getUsuario() {
		return this.UsuarioRepository.findAll();
	}

	private static byte[] obtenerDatosBinarios() {
		String datosFicticios = "Estos son datos ficticios para los bits de Imagen";
		return datosFicticios.getBytes(StandardCharsets.UTF_8);
	}

	//private static String encodePassword(String plainPassword) {
		//BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
		//return passwordEncoder.encode(plainPassword);
	//}

	//private static boolean checkPassword(String plainPassword, String hashedPassword) {
	//	BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
	//	return passwordEncoder.matches(plainPassword, hashedPassword);
	//}

	public ResponseEntity<Object> newUsuario(Usuario Usuario) {
		Optional<Usuario> res = UsuarioRepository.findBycorrUsuario(Usuario.getCorrUsuario());

		datos = new HashMap<>();

		if (res.isPresent() && Usuario.getIdUsuario() == null) {
			datos.put("error", true);
			datos.put("message", "Ya existe un usuario con ese correo");

			return new ResponseEntity<>(datos, HttpStatus.CONFLICT);
		}

		// String plainPassword = Usuario.getContUsuario();

	
	      //  String hashedPassword = encodePassword(plainPassword);
	        
	        //boolean passwordMatches = checkPassword(Usuario.getContUsuario(), hashedPassword);
	        //System.out.println("Contraseña encriptada: " + hashedPassword);

		//Usuario.setContUsuario(hashedPassword);
		byte[] datosBinarios = obtenerDatosBinarios();
		Usuario.setImagen(datosBinarios);

		datos.put("message", "Se guardo con exito la nueva Imagen");

		if (Usuario.getIdUsuario() != null) {
			datos.put("message", "Se actualizo con exito el Usuario");
		}

		UsuarioRepository.save(Usuario);
		datos.put("datos", Usuario);

		return new ResponseEntity<>(datos, HttpStatus.CREATED);

	}

	public ResponseEntity<Object> deleteUsuario(Long id) {
		datos = new HashMap<>();

		boolean existe = this.UsuarioRepository.existsById(id);

		if (!existe) {
			datos.put("error", true);
			datos.put("message", "No existe un usuario con ese id");
			return new ResponseEntity<>(datos, HttpStatus.CONFLICT);
		}

		UsuarioRepository.deleteById(id);
		datos.put("message", "Usuario Eliminado");
		return new ResponseEntity<>(datos, HttpStatus.ACCEPTED);

	}
}

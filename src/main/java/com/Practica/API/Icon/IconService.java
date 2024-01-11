package com.Practica.API.Icon;


import java.nio.charset.StandardCharsets;
import java.util.HashMap;
import java.util.List;
import java.util.Optional;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;

@Service
public class IconService {

	private final IconRepository IconRepository;
	
	HashMap<String,Object> datos;
	
	public IconService(IconRepository IconRepository) {
		this.IconRepository = IconRepository; 
	}
	
	
	public List<Icon> getIcon() {
		return this.IconRepository.findAll();
	}
	
	 private static byte[] obtenerDatosBinarios() {
	        String datosFicticios = "Estos son datos ficticios para los bits de Icono";
	        return datosFicticios.getBytes(StandardCharsets.UTF_8);
	    }
	
	public ResponseEntity<Object> newIcon(Icon Icon) {
		Optional<Icon> res= IconRepository.findBynombIcon(Icon.getNombIcon());
		
		datos= new HashMap<>();
		
		if(res.isPresent() && Icon.getIdIcon()==null) {
			datos.put("error",true);
			datos.put("message","Ya existe un icono con ese nombre");
			
			return new ResponseEntity<>(
					datos,
					HttpStatus.CONFLICT
					);
		}
		
		 byte[] datosBinarios = obtenerDatosBinarios();
		 Icon.setIcono(datosBinarios);
		
		datos.put("message","Se guardo con exito el nuevo icono");
		
		if(Icon.getIdIcon()!=null) {
			datos.put("message","Se actualizo con exito el icono");
		}
		
		IconRepository.save(Icon);
		datos.put("datos",Icon);
		
		
		return new ResponseEntity<>(
				datos,HttpStatus.CREATED
				);
		
	}
	
	public ResponseEntity<Object> deleteIcon(Long id){
		datos= new HashMap<>();
		
		boolean existe= this.IconRepository.existsById(id);
		
		if(!existe) {
			datos.put("error",true);
			datos.put("message","No existe un icono con ese id");
			return new ResponseEntity<>(datos, HttpStatus.CONFLICT);
		}
		
		IconRepository.deleteById(id);
		datos.put("message","Icono Eliminado");
		return new ResponseEntity<>(datos, HttpStatus.ACCEPTED);
	
	}
}

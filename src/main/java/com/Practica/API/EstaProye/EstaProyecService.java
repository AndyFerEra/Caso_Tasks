package com.Practica.API.EstaProye;


import java.util.HashMap;
import java.util.List;
import java.util.Optional;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;

@Service
public class EstaProyecService {

	private final EstaProyecRepository EstaProyecRepository;
	
	HashMap<String,Object> datos;
	
	public EstaProyecService(EstaProyecRepository EstaProyecRepository) {
		this.EstaProyecRepository = EstaProyecRepository; 
	}
	
	
	public List<EstaProyec> getEstaProyec() {
		return this.EstaProyecRepository.findAll();
	}
	
	public ResponseEntity<Object> newEstaProyec(EstaProyec EstaProyec) {
		Optional<EstaProyec> res= EstaProyecRepository.findEstaProyecByNombEstaProyec(EstaProyec.getNombEstaProyec());
		
		datos= new HashMap<>();
		
		if(res.isPresent() && EstaProyec.getIdEsta()==null) {
			datos.put("error",true);
			datos.put("message","Ya existe un estado con ese nombre");
			
			return new ResponseEntity<>(
					datos,
					HttpStatus.CONFLICT
					);
		}
		
		datos.put("message","Se guardo con exito el nuevo estado");
		
		if(EstaProyec.getIdEsta()!=null) {
			datos.put("message","Se actualizo con exito el estado");
		}
		
		EstaProyecRepository.save(EstaProyec);
		datos.put("datos",EstaProyec);
		
		
		return new ResponseEntity<>(
				datos,HttpStatus.CREATED
				);
		
	}
	
	public ResponseEntity<Object> deleteEstaProyec(Long id){
		datos= new HashMap<>();
		
		boolean existe= this.EstaProyecRepository.existsById(id);
		
		if(!existe) {
			datos.put("error",true);
			datos.put("message","No existe un estado con ese id");
			return new ResponseEntity<>(datos, HttpStatus.CONFLICT);
		}
		
		EstaProyecRepository.deleteById(id);
		datos.put("message","Estado Eliminado");
		return new ResponseEntity<>(datos, HttpStatus.ACCEPTED);
	
	}
}

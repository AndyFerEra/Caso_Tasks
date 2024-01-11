package com.Practica.API.Proyecto;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ProyectoRepository extends JpaRepository<Proyecto,String>{

	
	Optional<Proyecto> findByidProyecto (String idProyecto);
	
}

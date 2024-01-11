package com.Practica.API.EstaProye;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface EstaProyecRepository extends JpaRepository<EstaProyec,Long>{

	
	Optional<EstaProyec> findEstaProyecByNombEstaProyec(String nombEstaProyec);
	
}

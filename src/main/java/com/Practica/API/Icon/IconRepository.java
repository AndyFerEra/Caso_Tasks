package com.Practica.API.Icon;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface IconRepository extends JpaRepository<Icon,Long>{

	
	Optional<Icon> findBynombIcon (String nombIcon);
	
}

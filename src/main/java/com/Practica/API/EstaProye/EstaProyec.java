package com.Practica.API.EstaProye;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.annotations.BatchSize;

import com.Practica.API.Proyecto.Proyecto;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;


@Entity
@Table
public class EstaProyec {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long idEsta;
	
	@Column(unique = true)
	@BatchSize(size=30)
	private String nombEstaProyec;
	
	@OneToMany(mappedBy = "estaProyec", cascade = CascadeType.ALL, orphanRemoval = true)
	private List<Proyecto> proyectos = new ArrayList<>();

	public EstaProyec() {
	}

	public EstaProyec(Long idEsta, String nombEstaProyec) {
		this.idEsta = idEsta;
		this.nombEstaProyec = nombEstaProyec;
	}

	public EstaProyec(String nombEstaProyec) {
		this.nombEstaProyec = nombEstaProyec;
	}

	public Long getIdEsta() {
		return idEsta;
	}

	public void setIdEsta(Long idEsta) {
		this.idEsta = idEsta;
	}

	public String getNombEstaProyec() {
		return nombEstaProyec;
	}

	public void setNombEstaProyec(String nombEstaProyec) {
		this.nombEstaProyec = nombEstaProyec;
	}
	

	
}

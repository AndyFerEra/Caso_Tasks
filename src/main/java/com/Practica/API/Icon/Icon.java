package com.Practica.API.Icon;


import java.util.ArrayList;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Lob;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;
import java.util.List;

import com.Practica.API.Proyecto.Proyecto;




@Entity
@Table
public class Icon {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long idIcon;
	
	@Lob
	private byte[] icono;

	@Column(unique = true)
	private String nombIcon;
	
	@OneToMany(mappedBy = "icono", cascade = CascadeType.ALL, orphanRemoval = true)
	private List<Proyecto> proyectos = new ArrayList<>();

	public Icon() {
	}
	
	public Icon(Long idIcon, byte[] icono, String nombIcon) {
		this.idIcon = idIcon;
		this.icono = icono;
		this.nombIcon = nombIcon;
	}
	
	public Icon(byte[] icono, String nombIcon) {
		this.icono = icono;
		this.nombIcon = nombIcon;
	}

	public Long getIdIcon() {
		return idIcon;
	}

	public void setIdIcon(Long idIcon) {
		this.idIcon = idIcon;
	}

	public byte[] getIcono() {
		return icono;
	}

	public void setIcono(byte[] icono) {
		this.icono = icono;
	}

	public String getNombIcon() {
		return nombIcon;
	}

	public void setNombIcon(String nombIcon) {
		this.nombIcon = nombIcon;
	}
	
}

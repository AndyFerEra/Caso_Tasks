package com.Practica.API.Proyecto;


import java.time.LocalDate;

import com.Practica.API.EstaProye.EstaProyec;
import com.Practica.API.Icon.Icon;
import com.Practica.API.Usuario.Usuario;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;



@Entity
@Table
public class Proyecto {

	@Id
	@Column(unique = true)
	private String idProyecto;
	
	private String nombProyecto;
	
	private String descProyecto;
	
	private LocalDate fechIni;
	
	private LocalDate fechFin;
	
	private boolean switch_compa;
	
	@ManyToOne
    @JoinColumn(name = "idIcon")
    private Icon icono;
	
	@ManyToOne
    @JoinColumn(name = "idEsta")
    private EstaProyec estaProyec;
	
	@ManyToOne
    @JoinColumn(name = "idUsuario")
    private Usuario usuarios;

	public Proyecto() {
	}

	public Proyecto(String idProyecto, String nombProyecto, String descProyecto, LocalDate fechIni, LocalDate fechFin,
			boolean switch_compa, Icon icono, EstaProyec estaProyec, Usuario usuarios) {
		this.idProyecto = idProyecto;
		this.nombProyecto = nombProyecto;
		this.descProyecto = descProyecto;
		this.fechIni = fechIni;
		this.fechFin = fechFin;
		this.switch_compa = switch_compa;
		this.icono = icono;
		this.estaProyec = estaProyec;
		this.usuarios = usuarios;
	}

	public Proyecto(String nombProyecto, String descProyecto, LocalDate fechIni, LocalDate fechFin,
			boolean switch_compa, Icon icono, EstaProyec estaProyec, Usuario usuarios) {
		this.nombProyecto = nombProyecto;
		this.descProyecto = descProyecto;
		this.fechIni = fechIni;
		this.fechFin = fechFin;
		this.switch_compa = switch_compa;
		this.icono = icono;
		this.estaProyec = estaProyec;
		this.usuarios = usuarios;
	}

	public String getIdProyecto() {
		return idProyecto;
	}

	public void setIdProyecto(String idProyecto) {
		this.idProyecto = idProyecto;
	}

	public String getNombProyecto() {
		return nombProyecto;
	}

	public void setNombProyecto(String nombProyecto) {
		this.nombProyecto = nombProyecto;
	}

	public String getDescProyecto() {
		return descProyecto;
	}

	public void setDescProyecto(String descProyecto) {
		this.descProyecto = descProyecto;
	}

	public LocalDate getFechIni() {
		return fechIni;
	}

	public void setFechIni(LocalDate fechIni) {
		this.fechIni = fechIni;
	}

	public LocalDate getFechFin() {
		return fechFin;
	}

	public void setFechFin(LocalDate fechFin) {
		this.fechFin = fechFin;
	}

	public boolean isSwitch_compa() {
		return switch_compa;
	}

	public void setSwitch_compa(boolean switch_compa) {
		this.switch_compa = switch_compa;
	}

	public Icon getIcono() {
		return icono;
	}

	public void setIcono(Icon icono) {
		this.icono = icono;
	}

	public EstaProyec getEstaProyec() {
		return estaProyec;
	}

	public void setEstaProyec(EstaProyec estaProyec) {
		this.estaProyec = estaProyec;
	}

	public Usuario getUsuarios() {
		return usuarios;
	}

	public void setUsuarios(Usuario usuarios) {
		this.usuarios = usuarios;
	}
		
	
	
	
}

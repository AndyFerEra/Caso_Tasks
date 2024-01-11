package com.Practica.API.Usuario;


import java.util.ArrayList;
import java.util.List;

import com.Practica.API.Proyecto.Proyecto;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Lob;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;
import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.Size;



@Entity
@Table
public class Usuario {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long idUsuario;
	
	@Column(unique = true)
	@Email
	private String corrUsuario;
	
	@Size(min = 6)
	private String contUsuario;
	
	@NotBlank
	private String nombUsuario;
	
	@NotBlank
	private String apelUsuario;
	
	@NotBlank
	private String nombEmpr;
	
	@NotBlank
	private String cargEmpr;
	
	@NotBlank
	private String teleUsuario;
	
	@Lob
	private byte[] imagen;
	
	@OneToMany(mappedBy = "usuarios", cascade = CascadeType.ALL, orphanRemoval = true)
	private List<Proyecto> proyectos = new ArrayList<>();

	public Usuario() {
	}
	public Usuario(Long idUsuario, String corrUsuario, String contUsuario, String nombUsuario, String apelUsuario,
			String nombEmpr,String cargEmpr, String teleUsuario, byte[] imagen) {
		this.idUsuario = idUsuario;
		this.corrUsuario = corrUsuario;
		this.contUsuario = contUsuario;
		this.nombUsuario = nombUsuario;
		this.apelUsuario = apelUsuario;
		this.nombEmpr = nombEmpr;
		this.cargEmpr = cargEmpr;
		this.teleUsuario = teleUsuario;
		this.imagen = imagen;
	}
	public Usuario(String corrUsuario, String contUsuario, String nombUsuario, String apelUsuario, String nombEmpr,
			String cargEmpr,String teleUsuario, byte[] imagen) {
		this.corrUsuario = corrUsuario;
		this.contUsuario = contUsuario;
		this.nombUsuario = nombUsuario;
		this.apelUsuario = apelUsuario;
		this.nombEmpr = nombEmpr;
		this.cargEmpr = cargEmpr;
		this.teleUsuario = teleUsuario;
		this.imagen = imagen;
	}
	public Long getIdUsuario() {
		return idUsuario;
	}
	public void setIdUsuario(Long idUsuario) {
		this.idUsuario = idUsuario;
	}
	public String getCorrUsuario() {
		return corrUsuario;
	}
	public void setCorrUsuario(String corrUsuario) {
		this.corrUsuario = corrUsuario;
	}
	public String getContUsuario() {
		return contUsuario;
	}
	public void setContUsuario(String contUsuario) {
		this.contUsuario = contUsuario;
	}
	public String getNombUsuario() {
		return nombUsuario;
	}
	public void setNombUsuario(String nombUsuario) {
		this.nombUsuario = nombUsuario;
	}
	public String getApelUsuario() {
		return apelUsuario;
	}
	public void setApelUsuario(String apelUsuario) {
		this.apelUsuario = apelUsuario;
	}
	public String getNombEmpr() {
		return nombEmpr;
	}
	public void setNombEmpr(String nombEmpr) {
		this.nombEmpr = nombEmpr;
	}
	public String getCargEmpr() {
		return cargEmpr;
	}
	public void setCargEmpr(String cargEmpr) {
		this.cargEmpr = cargEmpr;
	}
	public String getTeleUsuario() {
		return teleUsuario;
	}
	public void setTeleUsuario(String teleUsuario) {
		this.teleUsuario = teleUsuario;
	}
	public byte[] getImagen() {
		return imagen;
	}
	public void setImagen(byte[] imagen) {
		this.imagen = imagen;
	}
	
	

	
	
	
}

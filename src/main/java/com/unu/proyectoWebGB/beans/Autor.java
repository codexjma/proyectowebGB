package com.unu.proyectoWebGB.beans;

public class Autor {

	public Autor(int idAutor, String nombre, String nacionalidad) {
		super();
		this.idAutor = idAutor;
		this.nacionalidad = nacionalidad;
		this.nombre = nombre;
	}

	public Autor() {
		this(0, "", "");
	}

	private int idAutor;
	private String nacionalidad;
	private String nombre;

	public int getIdAutor() {
		return idAutor;
	}

	public void setIdAutor(int idAutor) {
		this.idAutor = idAutor;
	}

	public String getNacionalidad() {
		return nacionalidad;
	}

	public void setNacionalidad(String nacionalidad) {
		this.nacionalidad = nacionalidad;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

}

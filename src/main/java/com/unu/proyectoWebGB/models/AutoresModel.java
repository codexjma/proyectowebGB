package com.unu.proyectoWebGB.models;

import java.util.ArrayList;
import java.util.List;

import com.unu.proyectoWebGB.beans.Autor;

public class AutoresModel {
	
	
	//--CREANDO EL MÉTODO PARA LISTAR AUTORES--//
	public List <Autor> listarAutores(){
	
	ArrayList<Autor> autores = new ArrayList<>();
	autores.add(new Autor(1,"Moises torres","Colombia"));
	autores.add(new Autor(2,"Borges", "Argentina"));
	autores.add(new Autor(3, "Allende", "Chilena"));
	return autores;
	}
	//-------------------------------------------
	
	

}

package com.unu.proyectoWebGB.controllers;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import com.unu.proyectoWebGB.models.AutoresModel;

/**
 * Servlet implementation class AutoresController
 */
@WebServlet("/AutoresController")
public class AutoresController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       AutoresModel modelo = new AutoresModel();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AutoresController() {
        super();
        // TODO Auto-generated constructor stub
    }

    protected void processRequest(HttpServletRequest request, HttpServletResponse response) {
    	
    	//-- CREANDO METODO PARA RESPONDER TODOS LOS EVENTOS--//
    	
    	//--LISTANDO TODOS LOS AUTORES--//
    	if(request.getParameter("op")==null) {
    		
    		//Listar
    		return;    		
    	}
    	
    	String operacion= request.getParameter("op");
    	switch(operacion) {
    	
    	case "listar":
    		//listar
    	break;
    	
    	case "nuevo":
    		//listar
    		break;
    	
    	}
    }
    
    //--CREANDO EL METODO LISTAR--//
    private void listar(HttpServletRequest request, HttpServletResponse response) {
    	request.setAttribute("listaAutores", modelo.listarAutores()); //------> primero cargamos
    	request.getRequestDispatcher("/autores/listaAutores.jsp"); //----> y disparamos
    	
    	
    	
    }
    
    
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

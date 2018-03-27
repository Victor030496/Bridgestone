/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.io.Serializable;
import java.sql.Date;

/**
 *
 * @author Luis Bogantes
 */
public class Prestamo implements Serializable, Jsonable{

    
    //------------------------ Declaracion de la clase ------------------------------------------//
    
   int id;
   String id_Persona ;
   int   id_equi ;
   String departamento ;
   Date fechaInicio ;
   Date fechaDevolucion ;
   String comentario ;
    
    
    //--------------------------- Definicion de la clase ----------------------------------//

    public Prestamo(int id, String id_Persona, int id_equi, String departamento, Date fechaInicio, Date fechaDevolucion, String comentario) {
        this.id = id;
        this.id_Persona = id_Persona;
        this.id_equi = id_equi;
        this.departamento = departamento;
        this.fechaInicio = fechaInicio;
        this.fechaDevolucion = fechaDevolucion;
        this.comentario = comentario;
    }

    public Prestamo() {
           this.id = 0;
        this.id_Persona ="";
        this.id_equi = 0;
        this.departamento = "";
        this.fechaInicio = new Date(6,10,2000);
        this.fechaDevolucion = new Date(6,10,2000);
        this.comentario = "";
    
    }

    public int getId() {
        return id;
    }

    public String getId_Persona() {
        return id_Persona;
    }

    public int getId_equi() {
        return id_equi;
    }

    public String getDepartamento() {
        return departamento;
    }

    public Date getFechaInicio() {
        return fechaInicio;
    }

    public Date getFechaDevolucion() {
        return fechaDevolucion;
    }

    public String getComentario() {
        return comentario;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setId_Persona(String id_Persona) {
        this.id_Persona = id_Persona;
    }

    public void setId_equi(int id_equi) {
        this.id_equi = id_equi;
    }

    public void setDepartamento(String departamento) {
        this.departamento = departamento;
    }

    public void setFechaInicio(Date fechaInicio) {
        this.fechaInicio = fechaInicio;
    }

    public void setFechaDevolucion(Date fechaDevolucion) {
        this.fechaDevolucion = fechaDevolucion;
    }

    public void setComentario(String comentario) {
        this.comentario = comentario;
    }
   
   
   
    
    
    
    
    
    
    
    
}

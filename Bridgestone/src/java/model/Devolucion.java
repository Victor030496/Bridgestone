/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.io.Serializable;

/**
 *
 * @author Ronald
 */
public class Devolucion implements Serializable, Jsonable {
    
  private int id; 
  private String id_Prestamo; 
  private String comentario;
  private String id_Persona ;
  private int   id_equi ;

  
 public Devolucion(int id,String id_Prestamo,String comentario,String id_Persona, int id_equi){
 
     
     this.id = id;
     this.id_Prestamo = id_Prestamo;
     this.comentario = comentario;
     this.id_Persona = id_Persona;
        this.id_equi = id_equi;
 
 }
 
 
 
 public Devolucion(){
 
     
     this.id = 0;
     this.id_Prestamo = "";
     this.comentario = "";
     this.id_Persona = "";
     this.id_equi = 0;
 
 }

    /**
     * @return the id
     */
    public int getId() {
        return id;
    }

    /**
     * @param id the id to set
     */
    public void setId(int id) {
        this.id = id;
    }

    /**
     * @return the id_Prestamo
     */
    public String getId_Prestamo() {
        return id_Prestamo;
    }

    /**
     * @param id_Prestamo the id_Prestamo to set
     */
    public void setId_Prestamo(String id_Prestamo) {
        this.id_Prestamo = id_Prestamo;
    }

    /**
     * @return the comentario
     */
    public String getComentario() {
        return comentario;
    }

    /**
     * @param comentario the comentario to set
     */
    public void setComentario(String comentario) {
        this.comentario = comentario;
    }

    /**
     * @return the id_Persona
     */
    public String getId_Persona() {
        return id_Persona;
    }

    /**
     * @param id_Persona the id_Persona to set
     */
    public void setId_Persona(String id_Persona) {
        this.id_Persona = id_Persona;
    }

    /**
     * @return the id_equi
     */
    public int getId_equi() {
        return id_equi;
    }

    /**
     * @param id_equi the id_equi to set
     */
    public void setId_equi(int id_equi) {
        this.id_equi = id_equi;
    }
  
  

  
  
  
}

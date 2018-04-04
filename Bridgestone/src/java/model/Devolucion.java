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
    
  int id; 
  String id_Prestamo; 
  String comentario;

  
 public Devolucion(int id,String id_Prestamo,String comentario){
 
     
     this.id = id;
     this.id_Prestamo = id_Prestamo;
     this.comentario = comentario;
 
 }
 
 
 
 public Devolucion(){
 
     
     this.id = 0;
     this.id_Prestamo = "";
     this.comentario = "";
 
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
  
  
  
}

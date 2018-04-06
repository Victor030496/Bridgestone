package model;


import java.io.Serializable;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Ronald
 */

public class Baja implements Serializable, Jsonable {
    
  private int id; 
  private String comentario;
  private int   id_equi ;

  
 public Baja(int id,String comentario,int id_equi){
 
     
     this.id = id;
     this.comentario = comentario;
        this.id_equi = id_equi;
 
 }
 
 
 
 public Baja(){
 
     
     this.id = 0;
     this.comentario = "";
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


/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author Ronald
 */

import java.io.Serializable;


public class Comprobante implements Jsonable, Serializable{
    
    int numeroDeComprobante;
    
    
     public Comprobante(int numeroComprobante){
    
        this.numeroDeComprobante = numeroComprobante;
     

    }
     
     public Comprobante(){
    
        this.numeroDeComprobante = 11;
    }
    
     
     public int getComprobante(){
     
         return numeroDeComprobante;
     
     }
     
     public void setComprobante(int a){
     
         numeroDeComprobante = a;
     }
    
    
     @Override
    public String toString() {
        return "Comprobante{"+ ", numeroDeComprobante=" + this.numeroDeComprobante + '}';
    }
     
}

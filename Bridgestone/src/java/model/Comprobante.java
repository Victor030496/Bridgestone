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
import java.sql.Date;


public class Comprobante implements Jsonable, Serializable{
    
    int numeroDeComprobante;
    Date garantia;
    
     public Comprobante(int numeroComprobante,Date garantia){
    
        this.numeroDeComprobante = numeroComprobante;
         this.garantia = garantia;
     

    }
     
     public Comprobante(){
    
        this.numeroDeComprobante = 11;
        this.garantia = new Date(2,03,2005);
    }
    
     
     public int getComprobante(){
     
         return numeroDeComprobante;
     
     }
     
     public void setComprobante(int a){
     
         numeroDeComprobante = a;
     }
     
     
     public Date getGarantia(){
     
         return garantia;
     
     }
     
     public void setGarantia(Date a){
     
         garantia = a;
     }
    
    
     @Override
    public String toString() {
        return "Comprobante{"+ ", numeroDeComprobante=" + this.numeroDeComprobante + '}';
    }
     
}

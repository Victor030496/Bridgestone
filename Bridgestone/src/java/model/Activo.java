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
 * @author Ronald
 */
public class Activo  implements Serializable, Jsonable {
    /*numeroDeSerie int,
	fechaDeEntrada Date,
	descripción varchar(20),
	codigoContratoLeasing varchar(10),*/
    
    String numeroDeSerie;
    Date fechaDeEntrada;
    String descripción;
    String codigoContratoLeasing;
    
    
    
    public Activo(String numeroDeSerie,Date fechaDeEntrada,String descripcion,String codigo){
        
         this.numeroDeSerie = numeroDeSerie;
         this.fechaDeEntrada= fechaDeEntrada;
         this.descripción=descripcion;
         this.codigoContratoLeasing=codigo;

    }
    
    public Activo(){
        
         this.numeroDeSerie = "";
         this.fechaDeEntrada = new Date(2,2,2);
         this.descripción="";
         this.codigoContratoLeasing="";

    }
    
    public String getNumeroDeSerie(){
    
        return numeroDeSerie;
    }
    
    public Date getFechaEntrada(){
    
        return fechaDeEntrada;
    }
    
    public String getDescripcion(){
    
        return descripción;
    }
    
    public String getCodigoContrato(){
    
        return codigoContratoLeasing;
    }
    
    public void setNumeroDeSerie(String a){
    
        numeroDeSerie = a;
    }
    
    public void setFechaEntrada(Date a){
    
        fechaDeEntrada = a;
    }
    
    public void setDescripcion(String aa){
    
        descripción = aa;
    
    }
    
    public void setCodigoDeContrato(String aaa){
    
        codigoContratoLeasing = aaa;
    
    }
    
    @Override
    public String toString() {
        return "Activo{"+ ", numeroDeSerie=" + this.numeroDeSerie + ", fechaDeEntrada=" + this.fechaDeEntrada + ", descripción=" + this.descripción + '}';
    }
    
    
    
}

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
public class Contrato implements Serializable, Jsonable {
    
    
    String codigoContrato;
    Date fechaInicio;
    Date fechaVencimiento;
    
    
    
    public Contrato(String codigoContrato,Date fechaInicio,Date fechaVencimiento){
    
        this.codigoContrato = codigoContrato;
        this.fechaInicio = fechaInicio;
        this.fechaVencimiento = fechaVencimiento;

    }
    
    
    public Contrato(){
    
        codigoContrato = "";
        fechaInicio = new Date(6,10,2000);
        fechaVencimiento = new Date(2,03,2005);

    }

    
    public String getCodigoContrato(){
    
        return codigoContrato;
    
    }
    
    public Date getFechaInicio(){
    
        return fechaInicio;
    
    }
    
    public Date getFechaVencimiento(){
    
        return fechaVencimiento;
    
    }
    
    
    public void setgetCodigoContrato(String a){
    
        this.codigoContrato = a;
    }
    
    public void setFechaInicio(Date a){
    
        this.fechaInicio = a;
    }
    
    public void setFechaVencimiento(Date a){
    
        this.fechaVencimiento = a;
    }
    
    @Override
    public String toString() {
        return "Contrato{"+ ", codigoContrato=" + this.codigoContrato + ", fechaInicio=" + this.fechaInicio + ", fechaVencimiento=" + this.fechaVencimiento + '}';
    }
    
    
    
}

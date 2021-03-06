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
    int estado;
    
    
    public Contrato(String codigoContrato,Date fechaInicio,Date fechaVencimiento, int estado){
    
        this.codigoContrato = codigoContrato;
        this.fechaInicio = fechaInicio;
        this.fechaVencimiento = fechaVencimiento;
        this.estado = estado;

    }
    
    
    public Contrato(){
    
        codigoContrato = "";
        fechaInicio = new Date(6,10,2000);
        fechaVencimiento = new Date(2,03,2005);
        estado=0;
    }

    
    public String getCodigoContrato(){
    
        return codigoContrato;
    
    }

    public void setEstado(int estado) {
        this.estado = estado;
    }

    public int getEstado() {
        return estado;
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

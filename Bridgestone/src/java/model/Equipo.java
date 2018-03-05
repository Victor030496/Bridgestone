package model;

import java.io.Serializable;

/**
 *
 * @author Luis Bogantes
 */
public class Equipo implements Serializable, Jsonable{
    
    // attributes
    
    int idEquipo;
    String contrato;
    String comprobante;
    String marca;
    String modelo;
    String memoria;
    String procesador;
    String departamento;
    String usuario;
    String descripcion;
    String estado;

    public Equipo(int idEquipo, String contrato, String comprobante, String marca, String modelo, String memoria, String procesador, String departamento, String usuario, String descripcion, String estado) {
        this.idEquipo = idEquipo;
        this.contrato = contrato;
        this.comprobante = comprobante;
        this.marca = marca;
        this.modelo = modelo;
        this.memoria = memoria;
        this.procesador = procesador;
        this.departamento = departamento;
        this.usuario = usuario;
        this.descripcion = descripcion;
        this.estado = estado;
    }
    
    
    
    
        public Equipo(String contrato, String comprobante, String marca, String modelo, String memoria, String procesador, String departamento, String usuario, String descripcion, String estado) {
        this.contrato = contrato;
        this.comprobante = comprobante;
        this.marca = marca;
        this.modelo = modelo;
        this.memoria = memoria;
        this.procesador = procesador;
        this.departamento = departamento;
        this.usuario = usuario;
        this.descripcion = descripcion;
        this.estado = estado;
    }
    
        public Equipo() {
        this.idEquipo = -1;
        this.contrato = "";
        this.comprobante = "";
        this.marca = "";
        this.modelo = "";
        this.memoria = "";
        this.procesador = "";
        this.departamento = "";
        this.usuario = "";
        this.descripcion = "";
        this.estado = "";
    }

    public int getIdEquipo() {
        return idEquipo;
    }

    public String getContrato() {
        return contrato;
    }

    public String getComprobante() {
        return comprobante;
    }

    public String getMarca() {
        return marca;
    }

    public void setIdEquipo(int idEquipo) {
        this.idEquipo = idEquipo;
    }

    public void setContrato(String contrato) {
        this.contrato = contrato;
    }

    public void setComprobante(String comprobante) {
        this.comprobante = comprobante;
    }

    public void setMarca(String marca) {
        this.marca = marca;
    }

    public void setModelo(String modelo) {
        this.modelo = modelo;
    }

    public void setMemoria(String memoria) {
        this.memoria = memoria;
    }

    public void setProcesador(String procesador) {
        this.procesador = procesador;
    }

    public void setDepartamento(String departamento) {
        this.departamento = departamento;
    }

    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    public String getModelo() {
        return modelo;
    }

    public String getMemoria() {
        return memoria;
    }

    public String getProcesador() {
        return procesador;
    }

    public String getDepartamento() {
        return departamento;
    }

    public String getUsuario() {
        return usuario;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public String getEstado() {
        return estado;
    }
    
        
    
    
    
}

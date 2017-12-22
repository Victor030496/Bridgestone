/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author Luis Bogantes
 */
import java.io.Serializable;

public class Trabajador  implements Serializable, Jsonable {
    
    String id;
    String clave;
    int tipo;
    String identificacion;
    String nombre;
    String apellido;
    String telefono;
    String correo;

    public Trabajador(String id, String clave, int tipo, String identificacion, String nombre, String apellido, String telefono, String correo) {
        this.id = id;
        this.clave = clave;
        this.tipo = tipo;
        this.identificacion = identificacion;
        this.nombre = nombre;
        this.apellido = apellido;
        this.telefono = telefono;
        this.correo = correo;
    }

    public Trabajador() {
  
         this.id = "";
        this.clave = "";
        this.tipo = 0;
        this.identificacion = "";
        this.nombre = "";
        this.apellido = "";
        this.telefono = "";
        this.correo = "";
    
    
    }

    public String getId() {
        return id;
    }

    public String getClave() {
        return clave;
    }

    public int getTipo() {
        return tipo;
    }

    public String getIdentificacion() {
        return identificacion;
    }

    public String getNombre() {
        return nombre;
    }

    public String getApellido() {
        return apellido;
    }

    public String getTelefono() {
        return telefono;
    }

    public String getCorreo() {
        return correo;
    }

    public void setId(String id) {
        this.id = id;
    }

    public void setClave(String clave) {
        this.clave = clave;
    }

    public void setTipo(int tipo) {
        this.tipo = tipo;
    }

    public void setIdentificacion(String identificacion) {
        this.identificacion = identificacion;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public void setApellido(String apellido) {
        this.apellido = apellido;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    @Override
    public String toString() {
        return "Trabajador{" + "id=" + id + ", clave=" + clave + ", tipo=" + tipo + ", identificacion=" + identificacion + ", nombre=" + nombre + ", apellido=" + apellido + ", telefono=" + telefono + ", correo=" + correo + '}';
    }
    
    
    
    
    
    
    
}

package model;

import java.io.Serializable;

public class Persona  implements Serializable, Jsonable{
    
  //------------------------ Declaracion de la clase ------------------------------------------//
    String id;
    String nombre;
    String apellido;
    String telefono;
    String correo;
    
    //--------------------------- Definicion de la clase ----------------------------------//

    public Persona(String id, String nombre, String apellido, String telefono, String correo) {
        this.id = id;
        this.nombre = nombre;
        this.apellido = apellido;
        this.telefono = telefono;
        this.correo = correo;
    }

    public Persona() {
        this.id = "";
        this.nombre = "";
        this.apellido = "";
        this.telefono = "";
        this.correo = "";
    
    
    }

    public String getId() {
        return id;
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
        return "Persona:" + "nombre=" + nombre + ", apellido=" + apellido + '.';
    }
    
    
    

    
    


}

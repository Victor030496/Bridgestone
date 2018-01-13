/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;
import database.Database;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
/**
 *
 * @author Luis Bogantes
 */
public class BridgestoneModel {
    
    
    
    
 static Database datos;
 
 
 
static {
        initDatos();
    }


    private static void initDatos(){
       datos= new Database(null, null, null);        
    }
 
 
 
    public static Usuario userLogin(Usuario usuario) throws Exception{
        try {
            String sql="select * from "+
                    "Usuario  u  "+
                    "where u.id = '%s' and u.clave='%s'";
            sql=String.format(sql,usuario.id,usuario.clave);
            
            ResultSet rs =  datos.executeQuery(sql);
            
            if (rs.next()) {
                return toUser(rs);
            }
            else{
                return new Usuario(usuario.id,usuario.clave,0);
            }
        } catch (SQLException ex) {
        }
        return null;
   }
    
          private static Usuario toUser(ResultSet rs) throws Exception{
        Usuario obj= new Usuario();
        obj.setId(rs.getString("id"));
        obj.setClave(rs.getString("clave"));
        obj.setTipo(rs.getInt("tipo"));
        return obj;
    }
          
          
          
          
             public static int guardaCliente(Trabajador c)throws Exception{
       System.out.println("Usuario que vamos a guardar"+ c.id);
       String sql="insert into Usuario(id,clave,tipo)"
                + "values('%s','%s','%s')";
       
       String sql2="insert into Trabajador(id,clave,tipo,identificacion,nombre,apellido,telefono,correo)"+
               "values('%s','%s','%s','%s','%s','%s','%s','%s')";
       
               
       sql=String.format(sql,c.id,c.clave,1);
       sql2= String.format(sql2,c.id,c.clave,1,c.identificacion  ,c.nombre,c.apellido,c.telefono,c.correo);
       int aux = datos.executeUpdate(sql);
       int aux2 = datos.executeUpdate(sql2);
       if(aux ==0 && aux2 == 0){
       
        throw new Exception("Usuario ne existe");
       
       }
 
   return 1;
   }
             
             
             
    public List<Trabajador>getTrabajadores() throws Exception{
         List<Trabajador> trabajadores;
         trabajadores= new ArrayList();
         try {
            String sql="select * "+
                    "from Trabajador  p  "; // sino sirve pasar trabajador a minuscula//
            ResultSet rs =  datos.executeQuery(sql);
             System.out.println("exitooooooooooooooooooooooooooo");
             
            while (rs.next()) {
                trabajadores.add(toTrabajador(rs));
                System.out.println("insertando");
            }
            //System.out.println("posicion" +trabajadores.get(0));
        } catch (SQLException ex) {
        }
        // System.out.println(ciudades.get(0).toString());
         
         
         return trabajadores;

}
    
    
    
    
     public List<Contrato>getContratos() throws Exception{
          System.out.println("entro al getContratos");
         List<Contrato> contratos;
         contratos= new ArrayList();
         try {
            String sql="select * "+
                    "from Contrato  p  "; // sino sirve pasar trabajador a minuscula//
            ResultSet rs =  datos.executeQuery(sql);
             System.out.println("exitoooooo");
            while (rs.next()) {
                contratos.add(toContrato(rs));
                System.out.println("insertando");
            }
        } catch (SQLException ex) {
        }
        // System.out.println(ciudades.get(0).toString());
         
         
         return contratos;

}   

    
    
    
    private static Trabajador toTrabajador(ResultSet rs) throws Exception{
        Trabajador obj= new Trabajador();
        obj.setId(rs.getString("id"));
        obj.setClave(rs.getString("clave"));
        obj.setTipo(rs.getInt("tipo"));
        obj.setIdentificacion(rs.getString("identificacion"));
        obj.setNombre(rs.getString("nombre"));
        obj.setApellido(rs.getString("apellido"));
        obj.setTelefono(rs.getString("telefono"));
        obj.setCorreo(rs.getString("correo"));
   
        System.out.println(obj.getId());
        System.out.println(obj.getClave());
        System.out.println(obj.getTipo());
        System.out.println(obj.getIdentificacion());
        System.out.println(obj.getNombre());
        System.out.println(obj.getApellido());
        System.out.println(obj.getTelefono());
        System.out.println(obj.getCorreo());
        
       
        return obj;
    }
    
    
        private static Contrato toContrato(ResultSet rs) throws Exception{
       Contrato obj= new Contrato();
        obj.setgetCodigoContrato(rs.getString("codigoContrato"));
        obj.setFechaInicio(rs.getDate("fechaInicio"));// aqui puede estar el erros//
        obj.setFechaVencimiento(rs.getDate("fechaVencimiento"));

   
        return obj;
    }
    
    
        public static int guardaContrato(Contrato c)throws Exception{
       System.out.println("Contrato que vamos a guardar"+ c.getCodigoContrato());
       String sql="insert into Contrato(codigoContrato,fechaInicio,fechaVencimiento)"
                + "values('%s','%s','%s')";

       sql=String.format(sql,c.codigoContrato,c.fechaInicio,c.fechaVencimiento);
       int aux = datos.executeUpdate(sql);
       if(aux ==0){
       
        throw new Exception("Contrato no existe");
       
       }
 
   return 1;
   }
    

        
            public static int guardaActivo(Activo c)throws Exception{
       System.out.println("Activo que vamos a guardar"+ c.getNumeroDeSerie());
       String sql="insert into Activo(numeroDeSerie,fechaDeEntrada,descripción ,codigoContratoLeasing)"
                + "values('%s','%s','%s','%s')";

       sql=String.format(sql,c.numeroDeSerie,c.fechaDeEntrada,c.descripción,c.codigoContratoLeasing);
       int aux = datos.executeUpdate(sql);
       if(aux ==0){
       
        throw new Exception("Activo no existe");
       
       }
 
   return 1;
   }      


            
            
            public static int eliminaUsuario(Usuario c)throws Exception{
       System.out.println("Usuario que vamos a eliminar"+ c.getId());
       
       
       String sql="delete from "+
                    "Trabajador "+
                    "where id = '%s'";
            
       
       
       String sql2="delete from "+
                    "Usuario  "+
                    "where id = '%s'";
            
       sql=String.format(sql,c.id);
       sql2=String.format(sql2,c.id);    
       
       int aux = datos.executeUpdate(sql);
       int aux2 = datos.executeUpdate(sql2);
       
       
       if(aux ==0 && aux2 ==0){
       
        throw new Exception("No se pudo eliminar");
       
       }
 
   return 22;
   }







}
 
 
 
    


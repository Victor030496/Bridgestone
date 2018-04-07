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
             
             
       public static int guardaEquipoContrato(Equipo c)throws Exception{
           // IMPRORTANTE RECORDAR QUE LE QUITE EL ATIBUTO ID EQUIPO
       System.out.println("Usuario que vamos a guardar"+ c.idEquipo);
       String sql="insert into Equipo(contrato,marca,modelo,memoria,procesador,departamento,descripcion,estado)"
                + "values('%s','%s','%s','%s','%s','%s','%s','%s')";
       

       
               
       sql=String.format(sql,c.contrato,c.marca,c.modelo,c.memoria,c.procesador,c.departamento,c.descripcion,c.estado);
   
       int aux = datos.executeUpdate(sql);
       if(aux ==0){
       
        throw new Exception("No se pudo guardar equipo");
       
       }
 
   return 1;
   }           
             
             
             
        
                    
       public static int guardaEquipoUsuario(Equipo c)throws Exception{
           // IMPRORTANTE RECORDAR QUE LE QUITE EL ATIBUTO ID EQUIPO
       System.out.println("Usuario que vamos a guardar"+ c.idEquipo);
       String sql="insert into Equipo(contrato,marca,modelo,memoria,procesador,departamento,usuario,descripcion,estado)"
                + "values('%s','%s','%s','%s','%s','%s','%s','%s','%s')";
       

       
               
       sql=String.format(sql,c.contrato,c.marca,c.modelo,c.memoria,c.procesador,c.departamento,c.usuario,c.descripcion,c.estado);
   
       int aux = datos.executeUpdate(sql);
       if(aux ==0){
       
        throw new Exception("No se pudo guardar equipo");
       
       }
 
   return 1;
   }           
      
       
       
             
               public static int guardaComprobante(Comprobante c)throws Exception{
       System.out.println("Prestamo que vamos a guardar"+ c.getComprobante());
       String sql="insert into Comprobante(numeroDeComprobante)"
                + "values('%s')";

       sql=String.format(sql,c.numeroDeComprobante);
       int aux = datos.executeUpdate(sql);
       if(aux ==0){
       
        throw new Exception("Comprobante no existe");
       
       }
 
   return 1;
   }
               
               
                  public static int guardaPrestamo(Prestamo c)throws Exception{

       
              System.out.println("Prestamo que vamos a guardar"+ c.getDepartamento());
       String sql="insert into Prestamo(id_Persona,id_equi,departamento,fechaInicio,fechaDevolucion,comentario)"
                + "values('%s','%s','%s','%s','%s','%s')";

       sql=String.format(sql,c.id_Persona,c.id_equi,c.departamento,c.fechaInicio,c.fechaDevolucion,c.comentario);
       int aux = datos.executeUpdate(sql);
       if(aux ==0){
       
        throw new Exception("PRESTAMO NO SE PUDO GUARDAR");
       
       }
 
   return 1;
   }
                  
                  
                  
       public static int guardaDevolucion(Devolucion c)throws Exception{

       
              System.out.println("Devolucion que vamos a guardar"+ c.getId());
       String sql="insert into Devolucion(id_Prestamo,comentario,id_Persona,id_equi)"
                + "values('%s','%s','%s','%s')";
       
       String sql2="update Equipo "+
                    "set estado  = 'disponible'" +
                    "where Equipo.idEquipo= '%s'";

       sql=String.format(sql,c.getId_Prestamo(), c.getComentario(),c.getId_Persona(),c.getId_equi());
       sql2=String.format(sql2,c.getId_equi());
       
       int aux = datos.executeUpdate(sql);
       int aux2 = datos.executeUpdate(sql2);
       if(aux ==0 && aux2 ==0 ){
          // if(aux ==0){
       
        throw new Exception("Devolucion NO SE PUDO GUARDAR");
       
       }
 
   return 1;
   }
       
       
        public static int guardaBaja(Baja c)throws Exception{

       
              System.out.println("Baja que vamos a guardar"+ c.getId());
       String sql="insert into DarDeBaja(comentario,id_equi)"
                + "values('%s','%s')";
       
       String sql2="update Equipo "+
                    "set estado  = 'baja'" +
                    "where Equipo.idEquipo= '%s'";

       sql=String.format(sql,c.getComentario(),c.getId_equi());
       sql2=String.format(sql2,c.getId_equi());
       
       int aux = datos.executeUpdate(sql);
       int aux2 = datos.executeUpdate(sql2);
       if(aux ==0 && aux2 ==0 ){
          // if(aux ==0){
       
        throw new Exception("Baja NO SE PUDO GUARDAR");
       
       }
 
   return 1;
   }
             
               
//   public static int guardaActivo(Activo c)throws Exception{
//       System.out.println("Activo que vamos a guardar"+ c.getNumeroDeSerie());
//       String sql="insert into Activo(numeroDeSerie,fechaDeEntrada,descripción ,codigoContratoLeasing)"
//                + "values('%s','%s','%s','%s')";
//
//       sql=String.format(sql,c.numeroDeSerie,c.fechaDeEntrada,c.descripción,c.codigoContratoLeasing);
//       int aux = datos.executeUpdate(sql);
//       if(aux ==0){
//       
//        throw new Exception("Activo no existe");
//       
//       }
// 
//   return 1;
//   }  
//   
   
               
           public static int guardaPersona(Persona c)throws Exception{
           // IMPRORTANTE RECORDAR QUE LE QUITE EL ATIBUTO ID EQUIPO
       System.out.println("Persona que vamos a guardar"+ c.nombre);
       String sql="insert into Persona(id,nombre,apellido,telefono,correo)"
                + "values('%s','%s','%s','%s','%s')";
       

       
               
       sql=String.format(sql,c.id,c.nombre,c.apellido,c.telefono,c.correo);
   
       int aux = datos.executeUpdate(sql);
       if(aux ==0){
       
        throw new Exception("No se pudo guardar Persona");
       
       }
 
   return 1;
   }            
   
    public static int guardaContrato(Contrato c)throws Exception{
       System.out.println("Contrato que vamos a guardar"+ c.getCodigoContrato());
       String sql="insert into Contrato(codigoContrato,fechaInicio,fechaVencimiento,estado)"
                + "values('%s','%s','%s','%s')";

       sql=String.format(sql,c.codigoContrato,c.fechaInicio,c.fechaVencimiento,c.estado);
       int aux = datos.executeUpdate(sql);
       if(aux ==0){
       
        throw new Exception("Contrato no existe");
       
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
     
     
     
     
          public List<Equipo>getEquipos() throws Exception{
          System.out.println("entro al getEquipos");
         List<Equipo> equipos;
         equipos= new ArrayList();
         try {
            String sql="select * "+
                    "from Equipo  p  "; // sino sirve pasar trabajador a minuscula//
            ResultSet rs =  datos.executeQuery(sql);
             System.out.println("exitoooooo");
            while (rs.next()) {
                equipos.add(toEquipo(rs));
                System.out.println("insertando");
            }
        } catch (SQLException ex) {
        }
        // System.out.println(ciudades.get(0).toString());        
       return equipos;

}  
          
           public List<Equipo>getEquiposDisponibles() throws Exception{
          System.out.println("entro al getEquiposDispo");
         List<Equipo> equipos;
         equipos= new ArrayList();
         try {
            String sql="select * "+
                    "from Equipo  p  "+
                    "where p.estado = 'disponible' "; // sino sirve pasar trabajador a minuscula//
            ResultSet rs =  datos.executeQuery(sql);
             System.out.println("exitoooooo");
            while (rs.next()) {
                equipos.add(toEquipo(rs));
                System.out.println("insertando");
            }
        } catch (SQLException ex) {
        }
        // System.out.println(ciudades.get(0).toString());        
       return equipos;

}
           
           
            public List<Equipo>getEquiposParaBaja() throws Exception{
          System.out.println("entro al getEquiposParaBaja");
         List<Equipo> equipos;
         equipos= new ArrayList();
         try {
            String sql="select * "+
                    "from Equipo  p  "+
                    "where p.estado = 'disponible' OR p.estado = 'asignado' "; // sino sirve pasar trabajador a minuscula//
            ResultSet rs =  datos.executeQuery(sql);
             System.out.println("exitoooooo");
            while (rs.next()) {
                equipos.add(toEquipo(rs));
                System.out.println("insertando");
            }
        } catch (SQLException ex) {
        }
        // System.out.println(ciudades.get(0).toString());        
       return equipos;

}
           
           public List<Prestamo>getPrestamosParaDevoluciones() throws Exception{
          System.out.println("entro al getPrestamosParaDevoluciones");
         List<Prestamo> prestamos;
         prestamos= new ArrayList();
         try {
             
             ////HACER CONSTRUCTOR DE PRESTAMOS CON ESTOS ATRIBUTOS
            String sql="select Prestamo.id,Prestamo.id_equi,Prestamo.id_Persona,Prestamo.departamento,Prestamo.fechaInicio,Prestamo.fechaDevolucion\n" +
                        "from Prestamo join Persona on Prestamo.id_Persona = Persona.id \n" +
                        "join Equipo on Prestamo.id_equi = Equipo.idEquipo\n" +
                         "where Equipo.estado = 'prestado'";
                        //"where Equipo.estado = 'disponible'"; /// CAMBIAR AL DE ARRIBA!!!!!!!!!!!
            
            //"where p.estado = 'asignado' AND 'prestado'"; // sino sirve pasar trabajador a minuscula//
            ResultSet rs =  datos.executeQuery(sql);
             System.out.println("exitoooooo");
            while (rs.next()) {
                prestamos.add(toPrestamoParaDevoluciones(rs));
                System.out.println("insertando");
            }
        } catch (SQLException ex) {
        }
        // System.out.println(ciudades.get(0).toString());        
       return prestamos;

} 
           
           
           public List<Equipo>getEquiposParaDevoluciones() throws Exception{
          System.out.println("entro al getEquiposParaDevoluciones");
         List<Equipo> equipos;
         equipos= new ArrayList();
         try {
             

            String sql="select Equipo.idEquipo,Equipo.marca,Equipo.modelo,Equipo.departamento,Equipo.estado\n" +
                        "from Prestamo join Persona on Prestamo.id_Persona = Persona.id \n" +
                        "join Equipo on Prestamo.id_equi = Equipo.idEquipo\n" +
                         "where Equipo.estado = 'prestado'";
                        //"where Equipo.estado = 'disponible'"; /// CAMBIAR AL DE ARRIBA!!!!!!!!!!!
            
            //"where p.estado = 'asignado' AND 'prestado'"; // sino sirve pasar trabajador a minuscula//
            ResultSet rs =  datos.executeQuery(sql);
             System.out.println("exitoooooo");
            while (rs.next()) {
                equipos.add(toEquipoParaDevoluciones(rs));
                System.out.println("insertando");
            }
        } catch (SQLException ex) {
        }
        // System.out.println(ciudades.get(0).toString());        
       return equipos;

}
           
           
           public List<Persona>getPersonasParaDevoluciones() throws Exception{
          System.out.println("entro al getPersonasParaDevoluciones");
         List<Persona> personas;
         personas= new ArrayList();
         try {
             
                   ////HACER CONSTRUCTOR DE PERSONA CON ESTOS ATRIBUTOS
            String sql="select Persona.id,Persona.nombre,Persona.apellido\n" +
                         "from Prestamo join Persona on Prestamo.id_Persona = Persona.id \n" +
                        "join Equipo on Prestamo.id_equi = Equipo.idEquipo\n" +
                         "where Equipo.estado = 'prestado'";
                        //"where Equipo.estado = 'disponible'"; /// CAMBIAR AL DE ARRIBA!!!!!!!!!!!
            
            //"where p.estado = 'asignado' AND 'prestado'"; // sino sirve pasar trabajador a minuscula//
            ResultSet rs =  datos.executeQuery(sql);
             System.out.println("exitoooooo");
            while (rs.next()) {
                personas.add(toPersonaParaDevoluciones(rs));
                System.out.println("insertando");
            }
        } catch (SQLException ex) {
        }
        // System.out.println(ciudades.get(0).toString());        
       return personas;

}
            
     
     
     
     public List<Comprobante>getComprobantes() throws Exception{
          System.out.println("entro al getComprobantes");
         List<Comprobante> comprobantes;
         List<Comprobante> comprobantes2;
         comprobantes= new ArrayList();
         comprobantes2= new ArrayList();
         try {
            String sql="select * "+
                    "from Comprobante  p  "; // sino sirve pasar trabajador a minuscula//
            ResultSet rs =  datos.executeQuery(sql);
             System.out.println("exitiooo");
            while (rs.next()) {
                comprobantes2.add(toComprobante(rs));
                System.out.println("insertando");
            }
            System.out.println("Si inserto");
            
        } catch (SQLException ex) {
        }
        // System.out.println(ciudades.get(0).toString());
         
         
         return comprobantes2;

}  

     
     
     private static Usuario toUser(ResultSet rs) throws Exception{
        Usuario obj= new Usuario();
        obj.setId(rs.getString("id"));
        obj.setClave(rs.getString("clave"));
        obj.setTipo(rs.getInt("tipo"));
        return obj;
    }
     
     
          private static Equipo toEquipo(ResultSet rs) throws Exception{
        Equipo obj= new Equipo();
        obj.setIdEquipo(rs.getInt("idEquipo"));
        obj.setContrato(rs.getString("contrato"));
        obj.setComprobante(rs.getString("comprobante"));
        obj.setMarca(rs.getString("marca"));
        obj.setModelo(rs.getString("modelo"));
        obj.setMemoria(rs.getString("memoria"));
        obj.setProcesador(rs.getString("procesador"));
        obj.setDepartamento(rs.getString("departamento"));
        obj.setUsuario(rs.getString("usuario"));
        obj.setDescripcion(rs.getString("descripcion"));
        obj.setEstado(rs.getString("estado"));
        return obj;
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
        obj.setEstado(rs.getInt("estado"));
   
        return obj;
    }
        
        
        private static Prestamo toPrestamoParaDevoluciones(ResultSet rs) throws Exception{
       Prestamo obj= new Prestamo();
        obj.setId_Persona(rs.getString("id_Persona"));
        obj.setId(rs.getInt("id"));
        obj.setId_equi(rs.getInt("id_equi"));
        obj.setDepartamento(rs.getString("departamento"));
        obj.setFechaDevolucion(rs.getDate("fechaDevolucion"));
        obj.setFechaInicio(rs.getDate("fechaInicio"));

        return obj;
    }
        
        private static Equipo toEquipoParaDevoluciones(ResultSet rs) throws Exception{
       Equipo obj= new Equipo();
        obj.setIdEquipo(rs.getInt("idEquipo"));
        obj.setMarca(rs.getString("marca"));
        obj.setModelo(rs.getString("modelo"));
        obj.setDepartamento(rs.getString("departamento"));
        obj.setEstado(rs.getString("estado"));
        return obj;
    }
       
        private static Persona toPersonaParaDevoluciones(ResultSet rs) throws Exception{
       Persona obj= new Persona();
        obj.setId(rs.getString("id"));
        obj.setNombre(rs.getString("nombre"));
        obj.setApellido(rs.getString("apellido"));
        return obj;
    }
        
        
        private static Persona toPersona(ResultSet rs) throws Exception{
       Persona obj= new Persona();
        obj.setApellido(rs.getString("apellido"));
        obj.setCorreo(rs.getString("correo"));
        obj.setId(rs.getString("id"));
        obj.setNombre(rs.getString("nombre"));
        obj.setTelefono(rs.getString("telefono"));
        

        return obj;
    }
        
        
        
//           private static Equipo toEquipo(ResultSet rs) throws Exception{
//        Equipo obj= new Equipo();
//        obj.setIdEquipo(rs.getInt("idEquipo"));
//        obj.setContrato(rs.getString("contrato"));// aqui puede estar el erros//
//        obj.setComprobante(rs.getString("comprobante"));
//        obj.setMarca(rs.getString("marca"));
//        obj.setModelo(rs.getString("modelo"));
//        obj.setMemoria(rs.getString("memoria"));
//        obj.setProcesador(rs.getString("procesador"));
//        obj.setDepartamento(rs.getString("departamento"));
//        obj.setUsuario(rs.getString("usuario"));
//        obj.setDescripcion(rs.getString("descripcion"));
//        obj.setEstado(rs.getString("estado"));
//   
//        return obj;
//    } 
        
        
        private static Comprobante toComprobante(ResultSet rs) throws Exception{
       Comprobante obj= new Comprobante();
        obj.setComprobante(rs.getInt("numeroDeComprobante"));
        return obj;
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
       
       
       
       
        public static int eliminaComprobante(Comprobante c)throws Exception{
       
           System.out.println("Comprobante que vamos a eliminar"+ c.getComprobante());
           
       String sql="delete from "+
                    "Equipo "+
                    "where comprobante = '%s'";
       String sql2="delete from "+
                    "Comprobante  "+
                    "where numeroDeComprobante = '%s'";
            
     
       sql=String.format(sql,c.numeroDeComprobante);
       sql2=String.format(sql2,c.numeroDeComprobante);    
       
       int aux = datos.executeUpdate(sql);
       int aux2 = datos.executeUpdate(sql2);
       
       
       if(aux ==0 && aux2 ==0){
       
        throw new Exception("No se pudo eliminar");
       
       }
 
   return 22;
   }
        
        
        
        
        public static int eliminaContrato(Contrato c)throws Exception{
       
           System.out.println("Contrato que vamos a eliminar"+ c.getCodigoContrato());
           
       String sql="delete from "+
                    "Equipo "+
                    "where contrato = '%s'";
       String sql2="delete from "+
                    "Contrato  "+
                    "where codigoContrato = '%s'";
            
     
       sql=String.format(sql,c.codigoContrato);
       sql2=String.format(sql2,c.codigoContrato);    
       
       int aux = datos.executeUpdate(sql);
       int aux2 = datos.executeUpdate(sql2);
       
       
       if(aux ==0 && aux2 ==0){
       
        throw new Exception("No se pudo eliminar");
       
       }
 
   return 22;
   }



       public static int modificaComprobante(Comprobante actual, Comprobante aModificar)throws Exception{
       System.out.println("Comprobante actual y el que vamos a modificar "+ actual.numeroDeComprobante + aModificar.numeroDeComprobante);
       String sql="update Comprobante "+
                    "set numeroDeComprobante  = '%s'"+
                    "where numeroDeComprobante = '%s'";

       //update Profesor set cedula = '1' where cedula = '123412'; 
       
       sql=String.format(sql,aModificar.numeroDeComprobante,actual.numeroDeComprobante);
       int aux = datos.executeUpdate(sql);
       if(aux ==0){
       
        throw new Exception("Comprobante no actualizado");
       
       }
 
   return 1;
   }
       
       
       
       
       public static int modificaContrato(Contrato actual, Contrato aModificar)throws Exception{
       System.out.println("Contrato actual y el que vamos a modificar "+ actual.toString() + aModificar.toString());
       String sql="update Contrato "+
                    "set codigoContrato  = '%s' ,fechaInicio  = '%s' , fechaVencimiento  = '%s' , estado  = '%s'" +
                    "where codigoContrato = '%s'";

       //update Profesor set cedula = '1' where cedula = '123412'; 
       
       sql=String.format(sql,aModificar.codigoContrato,aModificar.fechaInicio,aModificar.fechaVencimiento,aModificar.estado,actual.codigoContrato);
       int aux = datos.executeUpdate(sql);
       if(aux ==0){
       
        throw new Exception("Contrato no actualizado");
       
       }
 
   return 1;
   }
       
       
    public static int modificaUsuario(Usuario actual, Usuario aModificar)throws Exception{
       System.out.println("Usuario actual "+ actual.id +actual.clave+actual.tipo);
       System.out.println("Usuario actual vamos a modificar " +aModificar.id +aModificar.clave+aModificar.tipo);
       
        String sql="update Usuario "+
                   "set id  = '%s' ,clave  = '%s' , tipo  = '%s'"+
                    "where id = '%s'";
       
       
       String sql2="update Trabajador "+
                   "set id  = '%s' ,clave  = '%s' , tipo  = '%s'"+
                    "where id = '%s'";
       
      

       sql=String.format(sql,aModificar.id,aModificar.clave,aModificar.tipo,actual.id);
       sql2 = String.format(sql2,aModificar.id,aModificar.clave,aModificar.tipo,actual.id);
      
       int aux = datos.executeUpdate(sql);
       int aux2 = datos.executeUpdate(sql2);
       
       if(aux ==0 && aux2 == 0){
       
        throw new Exception("Usuario no actualizado");
       
       }
 
   return 1;
   }
    
    
    
    
    
     public static int modificaTrabajador(Trabajador actual, Trabajador aModificar)throws Exception{
       System.out.println("Usuario actual y el que vamos a modificar "+ actual.identificacion+ aModificar.identificacion);
       
//        String sql="update Usuario "+
//                   "set id  = '%s' ,clave  = '%s' , tipo  = '%s'"+
//                    "where id = '%s'";
       
       
       String sql2="update Trabajador "+
                    "set identificacion  = '%s'" +
                     ",nombre  = '%s' , apellido  = '%s' , telefono  = '%s', correo  = '%s'" +
               
                    "where correo= '%s'";
       
      

     //  sql2=String.format(sql2,aModificar.id,aModificar.clave,aModificar.tipo,actual.id);
       sql2 = String.format(sql2,aModificar.identificacion,aModificar.nombre,aModificar.apellido,aModificar.telefono,aModificar.correo,actual.correo);
      
   //    int aux = datos.executeUpdate(sql2);
       int aux2 = datos.executeUpdate(sql2);
       
       if(aux2 ==0){
       
        throw new Exception("Trabajador no actualizado");
       
       }
 
   return 1;
   }




     public static int setPresta(Equipo actual, Equipo aModificar)throws Exception{
       System.out.println("Equipo actual y el que vamos a modificar "+ actual.estado+ aModificar.estado);
       
//        String sql="update Usuario "+
//                   "set id  = '%s' ,clave  = '%s' , tipo  = '%s'"+
//                    "where id = '%s'";
       
       
       String sql2="update Equipo "+
                    "set estado  = '%s'" +
                    
               
                    "where idEquipo= '%s'";
       
      

     //  sql2=String.format(sql2,aModificar.id,aModificar.clave,aModificar.tipo,actual.id);
       sql2 = String.format(sql2,aModificar.estado,actual.idEquipo);
      
   //    int aux = datos.executeUpdate(sql2);
       int aux2 = datos.executeUpdate(sql2);
       
       if(aux2 ==0){
       
        throw new Exception("Estado del equipo no actualizado");
       
       }
 
   return 1;
   }





     public static int setEstPresta(Equipo aModificar)throws Exception{
       System.out.println("Equipo  que vamos a modificar "+  aModificar.estado);
       aModificar.setEstado("prestado");
              
       String sql2="update Equipo "+
                    "set estado  = '%s'" +
                    
              
               
                    "where idEquipo= '%s'";
       
      

       sql2 = String.format(sql2,aModificar.estado,aModificar.idEquipo);
      
   
       int aux2 = datos.executeUpdate(sql2);
       
       if(aux2 ==0){
       
        throw new Exception("Estado del equipo no actualizado");
       
       }
 
   return 1;
   }



}
 



 
 
    


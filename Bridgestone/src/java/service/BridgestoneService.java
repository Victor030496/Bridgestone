
package service;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.typeadapters.RuntimeTypeAdapterFactory;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.BridgestoneModel;
import model.Comprobante;
import model.Contrato;
import model.Devolucion;
import model.Equipo;
import model.Jsonable;
import model.Persona;
import model.Prestamo;
import model.Trabajador;
import model.Usuario;
import model.Baja;
import org.json.JSONObject;
import org.json.JSONArray;
/**
 *
 * @author Luis Bogantes
 */

@WebServlet(name = "BridgestoneService", urlPatterns = {"/BridgestoneService"})

public class BridgestoneService  extends  HttpServlet {
    
         /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */   
    
    
    BridgestoneModel model;


protected void processRequest(HttpServletRequest request, HttpServletResponse response)
         throws ServletException, IOException{
    
        response.setContentType("text/html;charset=UTF-8");
        try(PrintWriter out = response.getWriter()){
        response.setContentType("text/xml");
            RuntimeTypeAdapterFactory<Jsonable> rta = RuntimeTypeAdapterFactory.of(Jsonable.class,"_class")
            .registerSubtype(Trabajador.class,"Trabajador") 
            .registerSubtype(Contrato.class,"Contrato")
             .registerSubtype(Comprobante.class,"Comprobante") 
             .registerSubtype(Equipo.class,"Equipo")  
             .registerSubtype(Persona.class,"Persona") 
            .registerSubtype(Prestamo.class,"Prestamo")  
            .registerSubtype(Devolucion.class,"Devolucion") 
            .registerSubtype(Baja.class,"Baja") 
            .registerSubtype(Usuario.class,"Usuario");//IMPORTANTE HACER CAMBIOS CUANDO META CLASE USUARIO , TIQUETE ECT....//
            
        Gson gson = new GsonBuilder().registerTypeAdapterFactory(rta).setDateFormat("dd/MM/yyyy").create();
        
        String json;
        String json2;
        String accion = request.getParameter("action");
        System.out.println(accion);
        List<Trabajador> trabajadores = new ArrayList();
        List<Contrato> contratos = new ArrayList();
        List<Comprobante> comprobantes = new ArrayList();
        List<Usuario> usuarios = new ArrayList();
        List<Equipo> equipos = new ArrayList(); 
        List<Equipo> disponibles = new ArrayList();
        List<Prestamo> prestamosParaDevoluciones = new ArrayList();
        List<Persona> personasParaDevoluciones = new ArrayList();
        List<Equipo> equiposParaDevoluciones = new ArrayList();
        switch(accion){
         
             case "trabajadorListAll":
                trabajadores = model.getTrabajadores();
                //System.out.println(trabajadores.get(0));
                json = gson.toJson(trabajadores);
                System.out.println("enviando datoooos");
               // System.out.println(model.getTrabajadores().get(0).toString());
                out.write(json);
                System.out.println("enviadosssss");
                break;
                       
             case "contratosListAll":
                contratos = model.getContratos();
                json = gson.toJson(contratos);
                System.out.println("enviando datoooos");
                 //System.out.println(model.getContratos().get(0).toString());
                out.write(json);
                System.out.println("enviadosssss");
                break; 
                
                
             case "comprobantesListAll":
                comprobantes = model.getComprobantes();
                json = gson.toJson(comprobantes);
                System.out.println("enviando datoooos");
                 //System.out.println(model.getComprobantes().get(0).toString());
                out.write(json);
                System.out.println("enviadosssss");
                break; 
        
             case "EquiposListAll":
                equipos = model.getEquipos();
                json = gson.toJson(equipos);
                System.out.println("enviando datoooos equipos");
                 //System.out.println(model.getEquipos().get(0).getMarca());
                out.write(json);
                System.out.println("enviadosssss");
                break;  
                 
                
             case "EquiposDispoListAll":
                disponibles = model.getEquiposDisponibles();
                json = gson.toJson(disponibles);
                System.out.println("enviando datoooos equipos dispo");
                 //System.out.println(model.getEquiposDisponibles().get(0).getMarca());
                out.write(json);
                System.out.println("enviadosssss");
                break; 
                
                
              case "prestamosParaDevolucionesListAll":
                prestamosParaDevoluciones = model.getPrestamosParaDevoluciones();
                json = gson.toJson(prestamosParaDevoluciones);
                System.out.println("enviando datoooos prestamos Para Devoluciones");
                 //System.out.println(model.getPrestamosParaDevoluciones().get(0).getFechaDevolucion());
                out.write(json);
                System.out.println("enviadosssss");
                break;
                
                
             case "personasParaDevolucionesListAll":
                personasParaDevoluciones = model.getPersonasParaDevoluciones();
                json = gson.toJson(personasParaDevoluciones);
                System.out.println("enviando datoooos personas Para Devoluciones");
                 //System.out.println(model.getPersonasParaDevoluciones().get(0).getNombre());
                out.write(json);
                System.out.println("enviadosssss");
                break;
                
                
            case "equiposParaDevolucionesListAll":
                equiposParaDevoluciones = model.getEquiposParaDevoluciones();
                json = gson.toJson(equiposParaDevoluciones);
                System.out.println("enviando datoooos equipos Para Devoluciones");
                 //System.out.println(model.getEquiposParaDevoluciones().get(0).getMarca());
                out.write(json);
                System.out.println("enviadosssss");
                break;
                
             
                 
             case "userLogin":
                    Usuario usua;
                    json = request.getParameter("user");
                    Usuario user= gson.fromJson(json, Usuario.class);
                    user= model.userLogin(user);
                    if (user.getTipo()!=0){
                        request.getSession().setAttribute("user", user);
                        switch(user.getTipo()){
                            case 1: // client
                             //   client = model.clientGet(user.getId());
                               // request.getSession().setAttribute("client", client);
                              // break;
                            case 2: // manager
                                 user= model.userLogin(user);
                                 request.getSession().setAttribute("admi", user);
                                break;
                        }
                    }
                    json = gson.toJson(user); 
                    System.out.println("login listooooo");
                    out.write(json);
                    break;
                 
                 case "registrarTrabajador":
                    json = request.getParameter("client");
                    Trabajador cl = gson.fromJson(json, Trabajador.class);
                    //System.out.println("Registrando Trabajador" + cl.getNombre() );
                    int aux = model.guardaCliente(cl);
                    System.out.println("retorno "+aux);
                break; 
                 
                     case "registrarContrato":
                    json = request.getParameter("contrat");
                    Contrato c = gson.fromJson(json, Contrato.class);
                    //System.out.println("Registrando Contrato" + c.getCodigoContrato());
                    int aux2 = model.guardaContrato(c);
                    System.out.println("retorno "+aux2);
                break;
                         
  
                
                    case "registrarComprobante":
                    json = request.getParameter("comprobant");
                    System.out.println(json);
                    Comprobante co = gson.fromJson(json, Comprobante.class);
                    //System.out.println("Registrando Comprobante" + co.getComprobante() );
                    int aux11 = model.guardaComprobante(co);
                    System.out.println("retorno "+aux11);
                break;
                        
                        
                     case "registrarEquipoContrato":
                    System.out.println("Estamos registarando un equipo");
                    json = request.getParameter("equipo");
                    Equipo eq = gson.fromJson(json, Equipo.class);
                    //System.out.println("Registando equipo : " + eq.getMarca() );
                    int aux109 = model.guardaEquipoContrato(eq);
                    System.out.println("retorno "+aux109);
                break;     
                         
                         
                        case "registrarEquipoUsuario":
                    System.out.println("Estamos registarando un equipo");
                    json = request.getParameter("equipoUsu");
                    Equipo eq2 = gson.fromJson(json, Equipo.class);
                    //System.out.println("Registando equipo : " + eq2.getMarca() );
                    int aux1002 = model.guardaEquipoUsuario(eq2);
                    System.out.println("retorno "+aux1002);
                break;       
                         
                      case "registrarPersona":
                    System.out.println("Estamos registarando una Persona");
                    json = request.getParameter("persona");
                    Persona eq1 = gson.fromJson(json, Persona.class);
                    //System.out.println("Registando persona : " + eq1.getNombre() );
                    int aux1001 = model.guardaPersona(eq1);
                    System.out.println("retorno "+aux1001);
                break;  
                          
                           case "registrarPrestamo":
                    json = request.getParameter("presta");
                    Prestamo pre = gson.fromJson(json, Prestamo.class);
                    //System.out.println("Registrando Contrato" + pre.getDepartamento());
                    int aux23232 = model.guardaPrestamo(pre);
                    System.out.println("retorno "+aux23232);
                break; 
                
                
                       case "registrarDevolucion":
                    json = request.getParameter("devo");
                    Devolucion dev = gson.fromJson(json, Devolucion.class);
                    //System.out.println("Registrando Devo  " + dev.getId() + " " + dev.getId_Prestamo()+ "  "+ dev.getId_equi());
                    int aux1234 = model.guardaDevolucion(dev);
                    System.out.println("retorno "+aux1234);
                break; 
                
                       case "registrarBaja":
                    json = request.getParameter("baja");
                    JSONObject  jaax = new JSONObject(json);
                     
                    Baja ba = new Baja();
                    ba.setId(jaax.getInt("id"));
                    ba.setComentario(jaax.getString("comentario"));
                    ba.setId_equi(jaax.getInt("id_equi"));
                    
                    //System.out.println("Registrando Devo  " + dev.getId() + " " + dev.getId_Prestamo()+ "  "+ dev.getId_equi());
                    int aux14 = model.guardaBaja(ba);
                    System.out.println("retorno "+aux14);
                    
                    
                    
                    /*  json = request.getParameter("user");
                    System.out.println(json);
                    JSONObject  jaa = new JSONObject(json);
                    JSONArray jii = new JSONArray();
                    jii = jaa.getJSONArray("usuarios");
                    System.out.println(jii);

                    for (int i = 0; i < jii.length(); i++) {
                    
                        Usuario usu = new Usuario();
                        usu.setId(jii.getJSONObject(i).getString("id"));
                        usu.setClave(jii.getJSONObject(i).getString("clave"));
                        usu.setTipo(jii.getJSONObject(i).getInt("tipo"));
                        usuarios.add(usu);
                  }           

                    System.out.println(usuarios.get(0));
                    System.out.println(usuarios.get(1));
                    int aux222 = model.modificaUsuario(usuarios.get(0), usuarios.get(1));*/
                break; 
                
                    case "eliminarUsuario":
                    json = request.getParameter("user");
                    System.out.println(json);
                    Usuario u = gson.fromJson(json, Usuario.class);
                    //System.out.println("Eliminando usuario" + u.getId()+ u.getClave());
                    int aux4 = model.eliminaUsuario(u);
                    System.out.println("retorno "+aux4);
                break; 
                
                case "eliminarComprobante":
                    json = request.getParameter("comprobant");
                    System.out.println(json);
                    Comprobante cb = gson.fromJson(json, Comprobante.class);
                    //System.out.println("Eliminando comprobante" + cb.getComprobante());
                    int aux5 = model.eliminaComprobante(cb);
                    System.out.println("retorno "+aux5);
                break;
                
                case "eliminarContrato":
                    json = request.getParameter("contrat");
                    System.out.println(json);
                    Contrato ce = gson.fromJson(json, Contrato.class);
                    //System.out.println("Eliminando Contrato" + ce.getCodigoContrato());
                    int aux43 = model.eliminaContrato(ce);
                    System.out.println("retorno "+aux43);
                break;
                
                
                case "modificarComprobante":
                    json = request.getParameter("comprobant");
                    System.out.println(json);
                    JSONObject  ja = new JSONObject(json);
                    JSONArray ji = new JSONArray();
                    ji = ja.getJSONArray("comprobantes");
                    System.out.println(ji);

                    for (int i = 0; i < ji.length(); i++) {
                    
                        Comprobante compro = new Comprobante();
                        compro.setComprobante(ji.getJSONObject(i).getInt("numeroDeComprobante"));
                        comprobantes.add(compro);
                  }           

                    System.out.println(comprobantes);
                    int aux22 = model.modificaComprobante(comprobantes.get(0), comprobantes.get(1));
                    
                break;
                
                
                case "modificarContrato":
                    json = request.getParameter("contrat");
                    System.out.println(json);
                    JSONObject  jo = new JSONObject(json);
                    JSONArray ju = new JSONArray();
                    ju = jo.getJSONArray("contratos");
                    System.out.println(ju);

                    for (int i = 0; i < ju.length(); i++) {
                    
                        Contrato contra = new Contrato();
                        contra.setgetCodigoContrato(ju.getJSONObject(i).getString("codigoContrato"));
                        

                        
                        SimpleDateFormat format = new SimpleDateFormat("MM/dd/yyyy");
                        Date parsed = (Date) format.parse(ju.getJSONObject(i).getString("fechaInicio"));
                        java.sql.Date sql = new java.sql.Date(parsed.getTime());
                        
                        contra.setFechaInicio(sql);
                         System.out.println(sql);
                        
                        
                        
                        SimpleDateFormat format2 = new SimpleDateFormat("MM/dd/yyyy");
                        Date parsedd = (Date) format2.parse(ju.getJSONObject(i).getString("fechaVencimiento"));
                        java.sql.Date sqll = new java.sql.Date(parsedd.getTime());
                        
                        contra.setFechaVencimiento(sqll);
//                        Date fechaVenci = new Date(lo);
//                        contra.setFechaVencimiento(fechaVenci);
                        
                        System.out.println(sqll);
                        
                        
                        contra.setEstado(ju.getJSONObject(i).getInt("estado"));
                        
                        contratos.add(contra);
                  }           

                    System.out.println(contratos);
                    int aux23 = model.modificaContrato(contratos.get(0), contratos.get(1));
                    
                break;
                
                
                
                case "modificarUsuario":
                    json = request.getParameter("user");
                    System.out.println(json);
                    JSONObject  jaa = new JSONObject(json);
                    JSONArray jii = new JSONArray();
                    jii = jaa.getJSONArray("usuarios");
                    System.out.println(jii);

                    for (int i = 0; i < jii.length(); i++) {
                    
                        Usuario usu = new Usuario();
                        usu.setId(jii.getJSONObject(i).getString("id"));
                        usu.setClave(jii.getJSONObject(i).getString("clave"));
                        usu.setTipo(jii.getJSONObject(i).getInt("tipo"));
                        usuarios.add(usu);
                  }           

                    System.out.println(usuarios.get(0));
                    System.out.println(usuarios.get(1));
                    int aux222 = model.modificaUsuario(usuarios.get(0), usuarios.get(1));
                    
                break;
                
                
                case "modificarTrabajador":
                    json = request.getParameter("user");
                    System.out.println(json);
                    JSONObject  jaaa = new JSONObject(json);
                    JSONArray jiii = new JSONArray();
                    jiii = jaaa.getJSONArray("usuarios");
                    System.out.println(jiii);

                    for (int i = 0; i < jiii.length(); i++) {
                    
                        Trabajador usu = new Trabajador();
//                        usu.setId(jiii.getJSONObject(i).getString("id"));
//                        usu.setClave(jiii.getJSONObject(i).getString("clave"));
//                        usu.setTipo(jiii.getJSONObject(i).getInt("tipo"));
                        usu.setIdentificacion(jiii.getJSONObject(i).getString("identificacion"));
                        usu.setNombre(jiii.getJSONObject(i).getString("nombre"));
                        usu.setApellido(jiii.getJSONObject(i).getString("apellido"));
                        usu.setCorreo(jiii.getJSONObject(i).getString("correo"));
                        usu.setTelefono(jiii.getJSONObject(i).getString("telefono"));
                        
                        trabajadores.add(usu);
                  }           

                    System.out.println(trabajadores);
                    int aux2222 = model.modificaTrabajador(trabajadores.get(0), trabajadores.get(1));
                    
                break;
                
             // Setea estadooo
                    
                   
                      case "setPrestado":
//                    json = request.getParameter("equipoPres");
//                    System.out.println(json);
//                    JSONObject  jaaa1 = new JSONObject(json);
//                    JSONArray jiii1 = new JSONArray();
//                    jiii = jaaa.getJSONArray("usuarios");
//                    System.out.println(jiii);
//
//                    for (int i = 0; i < jiii.length(); i++) {
//                    
//                        Trabajador usu = new Trabajador();
//
//                        usu.setIdentificacion(jiii.getJSONObject(i).getString("identificacion"));
//                        usu.setNombre(jiii.getJSONObject(i).getString("nombre"));
//                        usu.setApellido(jiii.getJSONObject(i).getString("apellido"));
//                        usu.setCorreo(jiii.getJSONObject(i).getString("correo"));
//                        usu.setTelefono(jiii.getJSONObject(i).getString("telefono"));
//                        
//                        trabajadores.add(usu);
//                  }           
//
//                    System.out.println(trabajadores);
//                    int aux2222 = model.modificaTrabajador(trabajadores.get(0), trabajadores.get(1));
                    
                break;
                    
               
                    
                    
        }
        
        }
        catch(Exception e){ System.out.println(e); }
 
 }















@Override
public void init() throws ServletException{
   
   super.init();
   model = new BridgestoneModel();

}


@Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
              processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>


}

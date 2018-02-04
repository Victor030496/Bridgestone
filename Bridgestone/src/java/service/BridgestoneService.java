
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
import model.Activo;
import model.BridgestoneModel;
import model.Comprobante;
import model.Contrato;
import model.Jsonable;
import model.Trabajador;
import model.Usuario;
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
            .registerSubtype(Activo.class,"Activo")
            .registerSubtype(Comprobante.class,"Comprobante") 
            .registerSubtype(Usuario.class,"Usuario");//IMPORTANTE HACER CAMBIOS CUANDO META CLASE USUARIO , TIQUETE ECT....//
            
        Gson gson = new GsonBuilder().registerTypeAdapterFactory(rta).setDateFormat("dd/MM/yyyy").create();
        
        String json;
        String json2;
        String accion = request.getParameter("action");
        System.out.println(accion);
        List<Trabajador> trabajadores;
        List<Contrato> contratos = new ArrayList();;
        List<Comprobante> comprobantes = new ArrayList();

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
                 System.out.println(model.getContratos().get(0).toString());
                out.write(json);
                System.out.println("enviadosssss");
                break; 
                
                
             case "comprobantesListAll":
                comprobantes = model.getComprobantes();
                json = gson.toJson(comprobantes);
                System.out.println("enviando datoooos");
                 System.out.println(model.getComprobantes().get(0).toString());
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
                    System.out.println("Registrando Trabajador" + cl.getNombre() );
                    int aux = model.guardaCliente(cl);
                    System.out.println("retorno "+aux);
                break; 
                 
                     case "registrarContrato":
                    json = request.getParameter("contrat");
                    Contrato c = gson.fromJson(json, Contrato.class);
                    System.out.println("Registrando Contrato" + c.getCodigoContrato());
                    int aux2 = model.guardaContrato(c);
                    System.out.println("retorno "+aux2);
                break;
                         
                         
                        case "registrarActivo":
                    json = request.getParameter("active");
                    Activo cc = gson.fromJson(json, Activo.class);
                    System.out.println("Registrando activo" + cc.getNumeroDeSerie()+ cc.getDescripcion());
                    int aux3 = model.guardaActivo(cc);
                    System.out.println("retorno "+aux3);
                break; 
                 
                
                    case "registrarComprobante":
                    json = request.getParameter("comprobant");
                    System.out.println(json);
                    Comprobante co = gson.fromJson(json, Comprobante.class);
                    System.out.println("Registrando Comprobante" + co.getComprobante() );
                    int aux11 = model.guardaComprobante(co);
                    System.out.println("retorno "+aux11);
                break;
                
                    case "eliminarUsuario":
                    json = request.getParameter("user");
                    System.out.println(json);
                    Usuario u = gson.fromJson(json, Usuario.class);
                    System.out.println("Eliminando usuario" + u.getId()+ u.getClave());
                    int aux4 = model.eliminaUsuario(u);
                    System.out.println("retorno "+aux4);
                break; 
                
                case "eliminarComprobante":
                    json = request.getParameter("comprobant");
                    System.out.println(json);
                    Comprobante cb = gson.fromJson(json, Comprobante.class);
                    System.out.println("Eliminando comprobante" + cb.getComprobante());
                    int aux5 = model.eliminaComprobante(cb);
                    System.out.println("retorno "+aux5);
                break;
                
                case "eliminarContrato":
                    json = request.getParameter("contrat");
                    System.out.println(json);
                    Contrato ce = gson.fromJson(json, Contrato.class);
                    System.out.println("Eliminando Contrato" + ce.getCodigoContrato());
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
                        
//                        long lg = 0;
//                        String Str = ju.getJSONObject(i).getString("fechaInicio");
//                        System.out.println(Str);
//                        lg = Long.parseLong(Str);
                        
                        SimpleDateFormat format = new SimpleDateFormat("MM/dd/yyyy");
                        Date parsed = (Date) format.parse(ju.getJSONObject(i).getString("fechaInicio"));
                        java.sql.Date sql = new java.sql.Date(parsed.getTime());
                        
                        contra.setFechaInicio(sql);
                        //Date fechaIni = new Date(lg);
                        //contra.setFechaInicio(fechaIni);
                     System.out.println(sql);
                        
                        
//                        long lo = 0;
//                        String Stri = ju.getJSONObject(i).getString("fechaVencimiento");
//                        System.out.println(Stri);
//                        lo = Long.parseLong(Stri);
                        
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

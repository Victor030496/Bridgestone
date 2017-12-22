
package service;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.typeadapters.RuntimeTypeAdapterFactory;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Activo;
import model.BridgestoneModel;
import model.Contrato;
import model.Jsonable;
import model.Trabajador;
import model.Usuario;

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
            .registerSubtype(Usuario.class,"Usuario");//IMPORTANTE HACER CAMBIOS CUANDO META CLASE USUARIO , TIQUETE ECT....//
            
        Gson gson = new GsonBuilder().registerTypeAdapterFactory(rta).setDateFormat("dd/MM/yyyy").create();
        String json;
        String accion = request.getParameter("action");
        System.out.println(accion);
        List<Trabajador> trabajadores;
        List<Contrato> contratos;

        switch(accion){
         
             case "trabajadorListAll":
                trabajadores = model.getTrabajadores();
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

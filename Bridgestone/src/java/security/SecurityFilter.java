
package security;

/**
 *
 * @author Luis Bogantes
 */
import java.io.IOException;
import java.util.Arrays;
import java.util.List;
import javax.servlet.DispatcherType;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Usuario;


/**
 *
 * @author jsanchez
 */
@WebFilter(filterName = "PurchaseFilter", urlPatterns = {"/*"}, dispatcherTypes = {DispatcherType.REQUEST}, initParams = {
    @WebInitParam(name = "TipoUsuario", value = "1")})
public class SecurityFilter implements Filter {

    List<String> clientActions = Arrays.asList("/Principal.jsp");
    List<String> managerActions = Arrays.asList("/Principal.jsp","/RegistrarContratoLeasing.jsp","/RegistrarComprobante.jsp","/AreaDarDeBaja.jsp");
    List<String>[] userActions;
    
    public SecurityFilter() {
        userActions = (List<String>[]) new List[3];
        userActions[1]=clientActions; 
        userActions[2]=managerActions;
    }    
    
    public void doFilter(ServletRequest request, ServletResponse response,
            FilterChain chain)
            throws IOException, ServletException {
        
        HttpServletRequest req = (HttpServletRequest) request;
        HttpServletResponse resp = (HttpServletResponse) response;
        HttpSession ses = req.getSession();
        String LOGIN= "/Bridgestone/index.jsp";
        String SEGURIDAD = "/Bridgestone/ErrorSeguridad.jsp";
        String uri= req.getRequestURI().substring(req.getContextPath().length());
        if (uri.equals("/BridgestoneService")){ // si le falta la accion//
            String action = request.getParameter("action");
            if (action==null){
                resp.sendRedirect(SEGURIDAD);
            }
            uri = uri+"_"+action;
        }
        if (!(userActions[1].contains(uri) || userActions[2].contains(uri) )){ // open access
            chain.doFilter(request,response);
        }
        else {  // restricted access
             Usuario user = (Usuario)ses.getAttribute("user"); // se fija en la sesion hay algun usuario//
             if(user==null){
                 resp.sendRedirect(LOGIN);// lo redirreciona
             }
             else{
                 if (userActions[user.getTipo()].contains(uri)){ // busca el tipo para saber que tipo de usuario usar y para ver si usa el array de administradores o usuarios//
                     chain.doFilter(request,response);// lo deja pasar/
                 }
                 else{
                     resp.sendRedirect(SEGURIDAD);
                 }
            }
        }
    }

    public void destroy() {        
    }

    public void init(FilterConfig filterConfig) {        
    }

}

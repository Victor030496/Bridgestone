<%-- 
    Document   : prue
    Created on : 23/10/2017, 01:36:34 AM
    Author     : Luis Bogantes
--%>

<%@page import="model.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@ include file="Imports 2.jspf" %>  
        <title>Registrar Comprobante</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" title="Bridgestone" type="text/css" href="CSS/bootstrap.min.css">
        <link rel="stylesheet" title="Bridgestone" type="text/css" href="CSS/estilos.css">
        <link rel="stylesheet" title="Bridgestone" type="text/css" href="CSS/registrarse.css">
        <script type="text/javascript" src="JS/bootstrap.min.js"></script>
        <script type="text/javascript" src="JS/jquery-3.2.0.min.js"></script>
        <script type="text/javascript" src="JS/jquery.nivo.slider.js"></script>
        <script type="text/javascript" src="JS/Trabajador.js"></script>
   
        
          <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.7.1/css/bootstrap-datepicker.css" rel="stylesheet">
         <link rel="stylesheet" title="Bridgestone" type="text/css" href="CSS/jquery-ui.min.css">
    </head>
    
    
    
    <body>
  
        
         <header>
       <div class = "container-fluid">     
          <div id="links" style="height:125px;  margin-right: 10px; margin-left: 1px; display: inline-flex; align-items: center; justify-content: end; float:left;">    

                 <div style="width: 400px; height:75px; background-image: url(imagenes/logo.jpg); background-repeat: no-repeat; background-size:cover;">              </div>  
  
   <% Usuario user = (Usuario) request.getSession().getAttribute("user"); %>
    
     <% if (user==null){%> 
 
        <%}%> 
        
         <div id="links" style="height:60px;  margin-right: 10px; display: inline-flex; align-items: center; justify-content: end; float:right;">    
    <%   if (user!=null){%>
     
           <% if(user.getTipo()==1){ // client %>
             
            <%}%>
        
               <% if(user.getTipo()!=1){ // admi %>
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <h3 id = "letraUs">     <%=(     (Usuario) request.getSession().getAttribute("user")).getId()%> </h3>&nbsp;&nbsp;
                 <div style="       width: 45px; height:45px; background-image: url(imagenes/male.png); background-repeat: no-repeat; background-size:contain;" onclick="redirect();"></div>
                                  <script>
                          function redirect(){
                         
                         document.location = "/Bridgestone/Principal.jsp";
                     }
                  </script>
                 <%}%>
            
         <%}%> 
     </div>
                 
                 
                 
   </div > 
 </div >             
        </header>
        
        
        
        
        
         <div class="container-fluid" style="width: 1360px; height:550px; background-image: url(imagenes/prin2.jpg); background-repeat: no-repeat; background-size:cover;">
        
                  <div class = "">
         <nav class = " navbar navbar-default   navbar-static-top   ">
             <div class = "container-fluid">
                 <div class = "navbar-header">
                     <button type="button" class = "navbar-toggle collapse"  data-toggle="collapse" data-target = "#navbar-1">
                         <span class = "sr-only" >Menu</span>
                         <span class = "icon-bar" ></span>
                         <span class = "icon-bar"></span>
                         <span class = "icon-bar"></span>
                     </button>
                     <a href="Principal.jsp" class = "navbar-brand">Ir a Inicio</a>
                     
                 </div>
                 
                 <div class = "collapse navbar-collapse" id = "navbar-1">
                     
                     <ul class="nav navbar-nav">
                         
                        <li class = "dropdown"><a href=" " class = "dropdown-toggle" data-toggle="dropdown" role = "button">Inventarios
                                 <span class = "caret"></span>
                                 <ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu1">
    <li role="presentation">
      <a role="menuitem" tabindex="-1" href="RegistrarContratoLeasing.jsp">Registrar Contrato de Leasing</a>
    </li>
    <li role="presentation">
      <a role="menuitem" tabindex="-1" href="RegistrarComprobante.jsp">Registrar Comprobante de compra</a>
    </li>    
     <li role="presentation" class="divider"></li>
    <li role="presentation">
      <a role="menuitem" tabindex="-1" href="ListadoContratos.jsp">Contratos de Leasing Registrados</a>
    </li>
    <li role="presentation">
      <a role="menuitem" tabindex="-1" href="ListadoComprobantes.jsp">Comprobantes de compra registrados</a>
    </li>    
  <li role="presentation">
      <a role="menuitem" tabindex="-1" href="RegistrarEquipos.jsp">Registrar Equipos nuevos</a>
    </li>
    <li role="presentation">
      <a role="menuitem" tabindex="-1" href="ListadoEquipos.jsp">Equipos nuevos registrados</a>
    </li>

    
  </ul>
                             </a></li>
                         
                           <li class = "dropdown"><a href=" " class = "dropdown-toggle" data-toggle="dropdown" role = "button">Prestamo
                                 <span class = "caret"></span>
                                 <ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu1">
    <li role="presentation">
<a role="menuitem" tabindex="-1" href="AreaPrestamos.jsp">Nuevo Prestamo</a>
    </li>
     <li role="presentation" class="divider"></li>
    <li role="presentation">
      <a role="menuitem" tabindex="-1" href="#">Prestamos Registrados</a>
    </li>
  </ul>
                             </a></li>
                             
                               <li class = "dropdown"><a href=" " class = "dropdown-toggle" data-toggle="dropdown" role = "button">Devolucion
                                 <span class = "caret"></span>
                                 <ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu1">
    <li role="presentation">
      <a role="menuitem" tabindex="-1" href="#">Registrar Devolucion</a>
    </li>
     <li role="presentation" class="divider"></li>
    <li role="presentation">
      <a role="menuitem" tabindex="-1" href="#">Devoluciones Registradas</a>
    </li>
  </ul>
                             </a></li>
                             
                           <li class = "dropdown"><a href=" " class = "dropdown-toggle" data-toggle="dropdown" role = "button">Usuarios
                                 <span class = "caret"></span>
                                 <ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu1">
    <li role="presentation">
      <a role="menuitem" tabindex="-1" href="RegistrarUsuario.jsp">Registrar Usuarios</a>
    </li>
     <li role="presentation" class="divider"></li>
    <li role="presentation">
      <a role="menuitem" tabindex="-1" href="ListadoUsuarios.jsp">Usuarios Registrados</a>
    </li>
    
  </ul>
                             </a></li>
                     </ul> 
                     
                     <ul class="nav navbar-nav  navbar-right" >
                         <li><a href="index.jsp "><img src="imagenes/cerrar.png" alt="" width="20" height="20"/>Cerrar Sesion </a></li>
                         
                     </ul>
                 </div>
                 
                 
                 
                 
             </div>
         
         </nav>
         </div> 
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
              <h2>Registro de Comprobantes</h2>
  <br> <br>
        
  <div class = "col-md-2 text-justify"  "col-lg-9 text-justify"  "col-sm-8 text-justify"  "col-xs-6 text-justify" align = "center" >

     <br>
    
 <table class="table table-bordered" >
    <thead>
      <tr>
        <th class="" id ="accesoP">ACCESOS DIRECTOS</th>
      </tr>
    </thead>
    <tbody >
    
     <tr>
      <th class="" id ="accesoP"> <a href="RegistrarComprobante.jsp">Registrar de nuevo <span class="glyphicon glyphicon-pencil"></span></a></th>
    </tr>  
    
     <tr>
         <th class="" id ="accesoP" ><a href="ListadoComprobantes.jsp">Ver Comprobantes <span class="glyphicon glyphicon-list-alt"></span></a></th>
    </tr>  
        
     <tr>
         <th class=""  id ="accesoP"><a href="Principal.jsp">Pagina Principal <span class="glyphicon glyphicon-arrow-left"></span></a></th>
    </tr>   
    
    </tbody>
    <tfoot>
        

        
    </tfoot>
    
    
    
  </table>
     
     
     

     
 </div>
        
        
        
        <form role="form" onsubmit="return false;" id="userForm" class="form-horizontal">
                <div class="tab-content">
                    <div class="tab-pane active" id="usuario-tab">
                       
                        
                    <div class="form-group">

                            <label class="control-label col-xs-3 col-sm-4 col-md-3" id="acceso2"> <span class="glyphicon glyphicon-barcode"></span>&nbsp Numero de Comprobante</label>
                          
                            
                        <div class="col-xs-7 col-sm-5 col-md-5"  data-toggle="tooltip" title="Numero de Comprobante">

                                  <input type="text" class="form-control" id="numComprobante" name="numComprobante" maxlength="12"/>

                        </div>
                         
                            </br> </br> </br> </br>
                            
                       <label class="control-label col-xs-3 col-sm-4 col-md-3" id="acceso2"><span class="glyphicon glyphicon-calendar"></span>&nbsp Fecha de garantía</label>
                             <div class="col-xs-4 col-sm-3 col-md-3" >
                                  <input type="text" class="form-control" id="datepicker">
                                
               
                                  
                      </div>
                                  
                      </div>
               </div>
                       
                        
                        
                        
                        
                       
                       <br>
                     
                        
                        <div class="form-group btnMargin">
                            <div class="col-xs-3 col-sm-4 col-md-3"></div>
                            <div class="col-xs-7 col-sm-5 col-md-5">
                                  <div style=" display: inline-flex; align-items: center; justify-content: end; float:left;">
                                <button type="button" class="btn  btn-primary" id="siguiente1" onclick="controller.loginn();">Guardar</button>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          
          
                                  </div>
                                
                                
                             <div style=" display: inline-flex; align-items: center; justify-content: end; float:left;">
                             
                                <button type="submit" class="btn btn-success" id="enviarTab" onclick="irTabla();">Ver Comprobantes &nbsp;</button>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            </div>
                            
                                    <div style=" display: inline-flex; align-items: center; justify-content: end; float:left;">
                             
                                <button type="submit" class="btn btn-danger" id="enviarTab" onclick="salir();">Salir &nbsp;</button>
                            </div>
                            </div>
                        </div>
                    </div>

             
             
                </div>
            </form>
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
     </div>   
        
        
<script type="text/javascript" src="JS/jquery.js"></script>     
<script type="text/javascript" src="JS/jquery-ui.min.js"></script>  





<script>
    
    $("#datepicker").datepicker({ dateFormat: 'dd/mm/yy' });
</script>

   
          <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
    <script src="JS/bootbox.min.js" type="text/javascript"></script>
    <script src="http://momentjs.com/downloads/moment.min.js"></script>
    
    </body>
    
    
    
    
    
    
    
    
    
 <script> // Model
  function Model() {
    this.Model();
  }
  
  Model.prototype={
	Model: function(){
        }
  };
</script>

<script> // Controller
  function Controller(model,view) {
    this.Controller(model,view);
  }
  
  Controller.prototype={
	Controller: function(model,view){
		this.model=model;
		this.view=view;
	},
        loginn: function(){
            
        var view = this.view;
       
            //usuario = new Usuario(document.getElementById("usuario").value, document.getElementById("contrasena").value, 0); 
        comprobante = new Comprobante(document.getElementById("numComprobante").value,document.getElementById("datepicker").value);

        //comprobante = new Comprobante(document.getElementById("numComprobante").value,document.getElementById("datepicker").value);
        window.alert("com : "+ comprobante);
        
        Proxy.registrarCompro(comprobante,
                function(comprobant){
                    if(comprobant == 33){
                       bootbox.alert("Comprobante Registrado Con Exito!",function(){ document.location = "/Bridgestone/RegistrarComprobante.jsp" });
                  }else{
                      
                      bootbox.alert("No se pudo registrar!",function(){ document.location = "/Bridgestone/RegistrarComprobante.jsp" });
                  } 
    
                });

        }
  };
</script>
<script> // View
  var model;
  var controller;
	function pageLoad(event){ 
 
		model=new Model();  
		controller = new Controller(model,window);
                 var fo = document.getElementById("siguiente1");
                fo.addEventListener("click",doValidate);
	}
        function showErrorMessage(){
            window.alert("Contrato incorrecto...");
        }
        
        
        
     function doValidate(event){

  var usu = document.getElementById("numComprobante");
  var error = false;


	usu.classList.remove("invalid");
        
   if(usu.value == null  || usu.value.length == 0){
       usu.classList.add("invalid");
	 error = true;
}


	if (error){
	event.preventDefault();
        //window.alert("Hay espacios en blanco");
        document.location = "/Bridgestone/RegistrarComprobante.jsp";
	}else{
            //window.alert("Registro exitoso");
        }

}
        
        
                function salir(){
       document.location = "/Bridgestone/Principal.jsp";
       
        
     }
     
          function irTabla(){
       document.location = "/Bridgestone/ListadoComprobantes.jsp";
        
     } 
        
        
     /*   
        
        
         function siguiente(){
      document.location = "/Bridgestone/Registrar2.jsp";
  }*/
	document.addEventListener("DOMContentLoaded",pageLoad);
</script>
    
    
    
</html>



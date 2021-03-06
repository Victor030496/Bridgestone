<%-- 
    Document   : RegistrarUsuario
    Created on : 02/10/2017, 08:58:22 PM
    Author     : Luis Bogantes
--%>

<%@page import="model.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
    <head>
        <%@ include file="Imports 2.jspf" %>  
        <title>Inventario de activos</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" title="Bridgestone" type="text/css" href="CSS/bootstrap.min.css">
        <link rel="stylesheet" title="Bridgestone" type="text/css" href="CSS/estilos.css">
        <link rel="stylesheet" title="Bridgestone" type="text/css" href="CSS/registrarse.css">
        <script type="text/javascript" src="JS/bootstrap.min.js"></script>
        <script type="text/javascript" src="JS/jquery-3.2.0.min.js"></script>
        <script type="text/javascript" src="JS/jquery.nivo.slider.js"></script>
   
        
          <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

        <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.7.1/css/bootstrap-datepicker.css" rel="stylesheet">

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
        
                     <div class="container-fluid" style="width: 1380px; height:530px; background-image: url(imagenes/prin2.jpg); background-repeat: no-repeat; background-size:cover;">

        
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
    
                     <% if(user.getTipo()==2){ // client %>
             
                
          <li role="presentation">
      <a role="menuitem" tabindex="-1" href="RegistrarContratoLeasing.jsp">Registrar Contrato de Leasing</a>
    </li>
    <li role="presentation">
      <a role="menuitem" tabindex="-1" href="RegistrarComprobante.jsp">Registrar Comprobante de compra</a>
    </li>
             <%}%>              
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
     <li role="presentation" class="divider"></li>
        <% if(user.getTipo()==2){ // client %>
     <li role="presentation">
      <a role="menuitem" tabindex="-1" href="AreaDarDeBaja.jsp">Dar De Baja a Equipos</a>
    </li>
    
     <li role="presentation">
      <a role="menuitem" tabindex="-1" href="ListadoEquiposDeBaja.jsp">Equipos dados de baja</a>
    </li>
    <% } %>
  </ul>
                             </a></li>
                         
                           <li class = "dropdown"><a href=" " class = "dropdown-toggle" data-toggle="dropdown" role = "button">Prestamo
                                 <span class = "caret"></span>
                                 <ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu1">
    <li role="presentation">
      <a role="menuitem" tabindex="-1" href="AreaPrestamos.jsp">Nuevo Prestamo</a>
    </li>
  </ul>
                             </a></li>
                             
                               <li class = "dropdown"><a href=" " class = "dropdown-toggle" data-toggle="dropdown" role = "button">Devolucion
                                 <span class = "caret"></span>
                                 <ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu1">
    <li role="presentation">
      <a role="menuitem" tabindex="-1" href="AreaDevoluciones.jsp">Registrar Devolucion</a>
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
                         <li><a href="index.jsp"><img src="imagenes/cerrar.png" alt="" width="20" height="20"/>Cerrar Sesion </a></li>
                         
                     </ul>
                 </div>
                 
                 
                 
                 
             </div>
         
         </nav>
         </div> 
        
                         
                         
                         
          
                         
                         
        
              <h2>Registro de Usuarios</h2>
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
      <th class="" id ="accesoP"> <a href="RegistrarUsuario.jsp">Registrar de nuevo <span class="glyphicon glyphicon-pencil"></span></a></th>
    </tr>  
    
     <tr>
         <th class="" id ="accesoP" ><a href="ListadoUsuarios.jsp">Ver Usuarios <span class="glyphicon glyphicon-list-alt"></span></a></th>
    </tr>  
        
     <tr>
         <th class=""  id ="accesoP"><a href="Principal.jsp">Pagina Principal <span class="glyphicon glyphicon-arrow-left"></span></a></th>
    </tr>   
    
    </tbody>
    <tfoot>
        

        
    </tfoot>
    
    
    
  </table>
     
     
     

     
 </div>
        
        
        
            
        <div class = "col-md-10 text-justify"  "col-lg-3 text-justify"  "col-sm-4 text-justify"  "col-xs-6 text-justify"  align = "center">


            <form role="form" onsubmit="return false;" id="userForm" class="form-horizontal">
                <div class="tab-content">
                    <div class="tab-pane active" id="usuario-tab">
                        <div class="form-group">

                            <label class="control-label col-xs-3 col-sm-4 col-md-3" id="acceso2"> <span class="glyphicon glyphicon-user"></span>&nbsp Usuario</label>
                             
                            <div class="col-xs-7 col-sm-5 col-md-5"  data-toggle="tooltip" title="El usuario debe tener entre 6 - 16 caracteres!">
                                  <input type="text" class="form-control" id="usuario" name="usuarioTab"  maxlength="16" />
                                    <span style="color: black ; font-size: 12pt ;font-family:Impact"  id="usuariook"></span>
                                  
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="control-label col-xs-3 col-sm-4 col-md-3" id="acceso2"><span class="glyphicon glyphicon-lock"></span>&nbsp Contraseña</label>
                             <div class="col-xs-7 col-sm-5 col-md-5" data-toggle="tooltip" title="La contrasena debe tener minimo 8 carcteres mayusculas y numeros!">
                                <input type="password" class="form-control" id="contrasena" name="contrasena" size="20" maxlength="20" />
                            </div> 
                        </div>
                        
                        
                           <div class="form-group">
                            <label class="control-label col-xs-3 col-sm-4 col-md-3 " id="acceso2"><span class="glyphicon glyphicon-lock"></span>&nbsp Confirmar contraseña</label>
                             <div class="col-xs-7 col-sm-5 col-md-5">
                                <input type="password" class="form-control" id="confirmacion" name="confirmacion" size="20" maxlength="20"/>
                            </div>
                        </div>
                        
                          <div class="form-group">
                            <label class="control-label col-xs-3 col-sm-4 col-md-3" id="acceso2"><span class="glyphicon glyphicon-list"></span>&nbsp Tipo</label>
                            <div class="col-xs-7 col-sm-5 col-md-5">
                              <select class="selectpicker">
                                <option>Soportista</option>
                                <option>Administrador</option>
                                </select>
                            </div>
                        </div>
                       <br>
                     
                        
                        <div class="form-group btnMargin">
                            <div class="col-xs-3 col-sm-4 col-md-3"></div>
                            <div class="col-xs-7 col-sm-5 col-md-5">
                                  <div style=" display: inline-flex; align-items: center; justify-content: end; float:left;">
                                <button type="button" class="btn  btn-primary" id="siguiente1" onclick="controller.login();">Siguiente</button>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                             
                                
                                  </div>
                            
                                    <div style=" display: inline-flex; align-items: center; justify-content: end; float:left;">
                             
                                <button type="submit" class="btn btn-danger" id="enviarTab" onclick="salir();">Salir &nbsp;</button>
                            </div>
                            </div>
                        </div>
                    </div>

             
             
                </div>
            </form>
             <div>
        </div>
        
        
        
        
        
        
        
          <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
    </body>
    
    
    
    
      
  
    
    <script>
$(document).ready(function(){
    $('[data-toggle="tooltip"]').tooltip(); 
});
</script>

   
    
    
    
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
        login: function(){
            
            var view = this.view;

            usuario = new Usuario(document.getElementById("usuario").value, document.getElementById("contrasena").value, 0);
            sessionStorage.setItem("Usuario", JSON.stringify(usuario,"Usuario"));
             document.location = "/Bridgestone/Registrar2.jsp";

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
                 var fo2 = document.getElementById("usuario");        
        fo.addEventListener("click",doValidate);
     
      // fo2.addEventListener("click",valida);
	}
        function showErrorMessage(){
            window.alert("Usuario incorrecto...");
        }
        
        
        
     function doValidate(event){

  var usu = document.getElementById("usuario");
  var pas = document.getElementById("contrasena");
  var pas2 = document.getElementById("confirmacion"); 
  var error = false;


	usu.classList.remove("invalid");
        pas.classList.remove("invalid");
        pas2.classList.remove("invalid");
    if(usu.value == null  || usu.value.length == 0 || usu.value.length <= 8 ){    
       usu.classList.add("invalid");
	 error = true;
         if(usu.value == null  || usu.value.length == 0){
         window.alert("El espacio de usuario esta vacio");
     }
    else if(usu.value.length <= 6){
         window.alert("El usuarios debe de tener al menos 6 caracteres");
     }
             
             
         
}

  else if(pas.value == null  || pas.value.length == 0 ||  pas.value != pas2.value ||pas2.value == null  || pas2.value.length == 0 || pas.value.length < 8){
     pas.classList.add("invalid");
	 error = true;
        if(pas.value == null  || pas.value.length == 0 ){
              window.alert("El espacio de contraseña esta vacio!");
             
         }
        else if(pas.value.length < 8){
         window.alert("Por motivos de seguridad la contraseña debe tener 8 caracteres minino");
        window.alert("Utilice letras Mayusculas y Numeros. Ej HF4jfd4j");
        } 
         
         
        else if(pas2.value == null  || pas2.value.length == 0 ){
              window.alert("El espacio de confirmacio de contraseña esta vacio!");
             
         }
        else if(pas.value != pas2.value){
              window.alert("Las contrasenas no coinciden!");
             
         }
  
}




	if (error){
	event.preventDefault();
        document.location = "/Bridgestone/RegistrarUsuario.jsp";
	}
       

}
        
        
                function salir(){
       document.location = "/Bridgestone/Principal.jsp";
       
        
     }
     
     
     function contrasenasIguales(){
          var pas = document.getElementById("contrasena");
           var pas2 = document.getElementById("confirmacion"); 
             var error = false;


	
        pas.classList.remove("invalid");
        pas2.classList.remove("invalid");
        if(pas.value == pas2.value ){
         pas.classList.add("invalid");
         pas2.classList.add("invalid");
	 error = true;
            
            
        }
        
        
        	if (error){
	event.preventDefault();
        document.location = "/Bridgestone/RegistrarUsuario.jsp";
	}
        
         
     }
        
 
        
        
        
         function siguiente(){
      document.location = "/Bridgestone/Registrar2.jsp";
  }
	document.addEventListener("DOMContentLoaded",pageLoad);
</script>
    
    
</html>

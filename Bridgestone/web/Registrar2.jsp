<%-- 
    Document   : Registrar2
    Created on : 02/10/2017, 08:59:42 PM
    Author     : Luis Bogantes
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
  
   </div > 
 </div >            
           
         
        </header>
        
        
        
                     <div class="container-fluid" style="width: 1360px; height:600px; background-image: url(imagenes/prin2.jpg); background-repeat: no-repeat; background-size:cover;">

        
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
      <a role="menuitem" tabindex="-1" href="prue.jsp">Registrar Comprobante de compra</a>
    </li>    
     <li role="presentation" class="divider"></li>
    <li role="presentation">
      <a role="menuitem" tabindex="-1" href="ListadoContratos.jsp">Contratos de Leasing Registrados</a>
    </li>
    <li role="presentation">
      <a role="menuitem" tabindex="-1" href="ListadoContratos.jsp">Comprobantes de compra registrados</a>
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
      <a role="menuitem" tabindex="-1" href="prue.jsp">Nuevo Prestamo</a>
    </li>
     <li role="presentation" class="divider"></li>
    <li role="presentation">
      <a role="menuitem" tabindex="-1" href="ListadoContratos.jsp">Prestamos Registrados</a>
    </li>
  </ul>
                             </a></li>
                             
                               <li class = "dropdown"><a href=" " class = "dropdown-toggle" data-toggle="dropdown" role = "button">Devolucion
                                 <span class = "caret"></span>
                                 <ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu1">
    <li role="presentation">
      <a role="menuitem" tabindex="-1" href="prue.jsp">Registrar Devolucion</a>
    </li>
     <li role="presentation" class="divider"></li>
    <li role="presentation">
      <a role="menuitem" tabindex="-1" href="ListadoContratos.jsp">Devoluciones Registradas</a>
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
                            <label class="control-label col-xs-3 col-sm-4 col-md-3" id="acceso2"><span class="glyphicon glyphicon-user"></span>&nbsp Identificacion</label>
                            <div class="col-xs-7 col-sm-5 col-md-5" title="Este espacio solo acepta 12 digitos numericos maximo">
                                <input type="text" class="form-control input_ced" id="identificacion" name="usuarioTab" maxlength="12" placeholder="ej:1125565445"/>
                                <span style="color: black ; font-size: 12pt ;font-family:Impact"  id="num2"></span>
                            </div>
                        </div>
                        
                         <div class="form-group">
                            <label class="control-label col-xs-3 col-sm-4 col-md-3" id="acceso2"><span class="glyphicon glyphicon-user"></span>&nbsp Nombre</label>
                            <div class="col-xs-7 col-sm-5 col-md-5">
                                <input type="text" class="form-control input_nombre" id="nombre" name="usuarioTab" maxlength="12"/>
                                 <span style="color: black ; font-size: 12pt ;font-family:Impact"  id="nombre1"></span>
                            </div>
                        </div>

                        
                         <div class="form-group">
                            <label class="control-label col-xs-3 col-sm-4 col-md-3" id="acceso2"><span class="glyphicon glyphicon-user"></span>&nbsp Apellido</label>
                            <div class="col-xs-7 col-sm-5 col-md-5">
                                <input type="text" class="form-control input_apellido" id="apellido" name="usuarioTab" maxlength="15"/>
                                <span style="color: black ; font-size: 12pt ;font-family:Impact"  id="nombre2"></span>
                            </div>
                        </div>
                        
                        
                           <div class="form-group">
                            <label class="control-label col-xs-3 col-sm-4 col-md-3" id="acceso2"><span class="glyphicon glyphicon-phone-alt"></span>&nbsp Telefono</label>
                            <div class="col-xs-7 col-sm-5 col-md-5" title="Este espacio solo acepta 15 digitos numericos maximo">
                                <input type="text" class="form-control input_tel" id="telefono" name="usuarioTab" size="15" maxlength="15" placeholder="ej:87458956"/>
                                 <span style="color: black ; font-size: 12pt ;font-family:Impact"  id="num1"></span>
                            </div>
                        </div>
                        
                          <div class="form-group">
                            <label class="control-label col-xs-3 col-sm-4 col-md-3" id="acceso2"><span class="glyphicon glyphicon-envelope"></span>&nbsp Correo electronico</label>
                            <div class="col-xs-7 col-sm-5 col-md-5">
                               
                                <input type="email" class="form-control" id="correo" aria-describedby="emailHelp" placeholder="Ejemplo@mail.com">
                                 <span style="color: black ; font-size: 12pt ;font-family:Impact"  id="emailOK"></span>
  </div>
                            </div>
                        </div>
      
                        <div class="form-group btnMargin">
                            <div class="col-xs-3 col-sm-4 col-md-3"></div>
                               <div class="col-xs-7 col-sm-5 col-md-5">
                               <div style=" display: inline-flex; align-items: center; justify-content: end; float:left;">
                                <button type="submit" class="btn btn btn-primary" id="enviarTab" onclick="">Finalizar</button>
                                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                
                               
                          
                               </div>
                                   
                                         <div style=" display: inline-flex; align-items: center; justify-content: end; float:left;">
                             
                                <button type="submit" class="btn btn-success" id="enviarTab" onclick="irTabla();">Ver usuarios &nbsp;</button>
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
    <script src="JS/bootbox.min.js" type="text/javascript"></script>
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
  function Controller(model,view){
    this.Controller(model,view);
  }
  
  Controller.prototype={
	Controller: function(model,view){
		this.model=model;
		this.view=view;
	},
        login: function(){
            
            var view = this.view;
              var id = document.getElementById("identificacion");
              if(id.value != null  || id.value.length != 0){
        //usuario = new Usuario(document.getElementById("usuario").value, document.getElementById("contrasena").value, 0);
         this.model.usua = JSON.parse( sessionStorage.getItem("Usuario"),JsonUtils.revive);
      ///   window.alert("usuario registrado como : "+ this.model.usua.id);
       trabajador = new Trabajador(this.model.usua.id, this.model.usua.clave, 0,document.getElementById("identificacion").value,document.getElementById("nombre").value,document.getElementById("apellido").value,
       document.getElementById("telefono").value,document.getElementById("correo").value
                );
            Proxy.registrarCliente(trabajador,
                function(resultado){
                    switch(resultado){
                        case 0: // usuario no existe
                            document.location = "/Bridgestone/Principal.jsp";
                            break;
                        case 1: // cliente
                            bootbox.alert("Usuario registrado como : "+ this.model.usua.id,function(){ document.location = "/Bridgestone/RegistrarUsuario.jsp"; });
                            break;
                        case 2: // manager
                            //         var tabla = document.getElementById("tab");

                          //  document.location = "/Bridgestone/Principal.jsp";
                            break;
                    }
                });
                
        }
        }
  };
</script>
<script> // View
  var model;
  var controller;
	function pageLoad(event){ 
 
		model=new Model();  
		controller = new Controller(model,window);
                var fo = document.getElementById("enviarTab");
                fo.addEventListener("click",doValidate);               
                
	}
     //valida el numero de telefono 
        jQuery(document).ready(function() {
    jQuery('.input_tel').keypress(function(tecla) {
         valido = document.getElementById('num1');
        if(tecla.charCode < 48 || tecla.charCode > 57){
            
             valido.innerText = "Solo puede ingresar numeros!!";
             //valido.innerText = "";
            return false;}
        else  valido.innerText = "";
        
    });
    
    
    
    
    //valida la identificacion
});
      jQuery(document).ready(function() {
    jQuery('.input_ced').keypress(function(tecla) {
        valido = document.getElementById('num2');
        if((tecla.charCode < 48 || tecla.charCode > 57)){ 
            
             valido.innerText = "Solo puede ingresar numeros!!";
            // valido.innerText = "";
            return false;}
        else  valido.innerText = "";
    });
});
//valida el correo
document.getElementById('correo').addEventListener('input', function() {
    campo = event.target;
    valido = document.getElementById('emailOK');
        
    emailRegex = /^[-\w.%+]{1,64}@(?:[A-Z0-9-]{1,63}\.){1,125}[A-Z]{2,63}$/i;
    //Se muestra un texto a modo de ejemplo, luego va a ser un icono
    if (emailRegex.test(campo.value)) {
      
      valido.innerText = "Valido";
    } else {
        valido.innerText = "Formato incorrecto! ej:Raul@mail.com";
        //alert("La dirección de email es incorrecta!.");
    }
});

//valida nombre
 jQuery(document).ready(function() {
    jQuery('.input_nombre').keypress(function(tecla) {
        valido = document.getElementById('nombre1');
        if((tecla.charCode < 65 || tecla.charCode > 90) && (tecla.charCode < 97 || tecla.charCode > 122)){ 
            
             valido.innerText = "Solo puede ingresar Letras!!";
            // valido.innerText = "";
            return false;}
        else  valido.innerText = "";
    });
});

//valida apellidos
 jQuery(document).ready(function() {
    jQuery('.input_apellido').keypress(function(tecla) {
        valido = document.getElementById('nombre2');
        if((tecla.charCode < 65 || tecla.charCode > 90) && (tecla.charCode < 97 || tecla.charCode > 122)){ 
            
             valido.innerText = "Solo puede ingresar Letras!!";
            // valido.innerText = "";
            return false;}
        else  valido.innerText = "";
    });
});



      function doValidate(event){

  var id = document.getElementById("identificacion");
  var nom = document.getElementById("nombre");
  var ap = document.getElementById("apellido"); 
  var tel = document.getElementById("telefono");
  var cor = document.getElementById("correo");   
  var emailRegex = /^[-\w.%+]{1,64}@(?:[A-Z0-9-]{1,63}\.){1,125}[A-Z]{2,63}$/i; 
  var error = false;


	id.classList.remove("invalid");
        nom.classList.remove("invalid");
        ap.classList.remove("invalid");
        tel.classList.remove("invalid");
        cor.classList.remove("invalid");
      
   if(id.value == null  || id.value.length == 0|| id.value.length < 9 ){
         id.classList.add("invalid");
	 error = true;
         if(id.value == null  || id.value.length == 0){
          alert("El espacio de cedula esta vacio");
         
     }
            
          else if(id.value.length < 9){
         alert("La identificacion debe de tener al menos 9 caracteres para cedula nacional");
         
           } 
}

else if(nom.value == null  || nom.value.length == 0){
     nom.classList.add("invalid");
	 error = true;
        if(nom.value == null  || nom.value.length == 0){
         alert("El espacio de nombre esta vacio");
     }    
         
}


 else if(ap.value == null  || ap.value.length == 0){
     ap.classList.add("invalid");
	 error = true;
          if(ap.value == null  || ap.value.length == 0){
         alert("El espacio de apellido esta vacio");
     }    
}


else if(tel.value == null  || tel.value.length == 0||tel.value.length < 8){
     tel.classList.add("invalid");
	 error = true;
         if(tel.value == null  || tel.value.length == 0){
         alert("El espacio de telefono esta vacio");
     } 
      else if(tel.value.length < 8){
         alert("El telefono tiene 8 digitos");
         
           } 
}


 else if(cor.value == null  || cor.value.length == 0 || !emailRegex.test(cor.value) ){
    
     cor.classList.add("invalid");
	 error = true;
         if(cor.value == null  || cor.value.length == 0){
         alert("El espacio de correo esta vacio");
     } 
   
     else if(!emailRegex.test(cor.value)){
         alert("Formato incorrecto! ej:Raul@mail.com");
        
           }
}




        


	if (error){
	event.preventDefault();
        //window.alert("Faltan campos que rellenar! ");
        document.location = "/Bridgestone/Registrar2.jsp";
	}else{
            
            
            controller.login();
        }

}
        
        
        
        
        
        function showErrorMessage(){
            window.alert("Usuario incorrecto...");
        }
        
        
        
        
        
        
        
        
        function salir(){
       document.location = "/Bridgestone/Principal.jsp";
        
     }
     
     
        function irTabla(){
       document.location = "/Bridgestone/ListadoUsuarios.jsp";
        
     }   
        
        
        
	document.addEventListener("DOMContentLoaded",pageLoad);
</script>        
</html>

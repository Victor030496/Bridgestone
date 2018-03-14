
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@ include file="Imports 2.jspf" %>  
        <title>Registrar Contrato por Leasing</title>
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
   </div > 
 </div >               
        </header>  
        
        
     <div class="container-fluid" style="width: 1360px; height:560px; background-image: url(imagenes/prin2.jpg); background-repeat: no-repeat; background-size:cover;">

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
         
         
         
         
  <div class = "main row" class = "columna1" id = "divPrincipal">
            <h2>Registro de contratos por Leasing</h2>
<br>

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
      <th class="" id ="accesoP"> <a href="RegistrarContratoLeasing.jsp">Registrar de nuevo <span class="glyphicon glyphicon-pencil"></span></a></th>
    </tr>  
    
     <tr>
         <th class="" id ="accesoP" ><a href="ListadoContratosLeasing.jsp">Ver Contratos <span class="glyphicon glyphicon-list-alt"></span></a></th>
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

                            <label class="control-label col-xs-3 col-sm-4 col-md-3" id="acceso2"> <span class="glyphicon glyphicon-barcode"></span>&nbsp Codigo de Contrato</label>
                           <div class="col-xs-7 col-sm-5 col-md-5"  data-toggle="tooltip" title="El codigo de contrato es alfanumerico con no mas de 12 caracteres">

                                  <input type="text" class="form-control" id="codContrato" name="usuarioTab" maxlength="12"/>
                        </div>
                             </div>
                        
                        <div class="form-group">

                            <label class="control-label col-xs-3 col-sm-4 col-md-3"id="acceso2"> <span class="glyphicon glyphicon-calendar"></span>&nbsp Fecha de inicio del contrato</label>
                             
                            <div class="col-xs-7 col-sm-5 col-md-5">
                                  <input type="text" id="datepicker">
                                
               
                                  
                    </div>
                        </div>

                     
                        
                        <div class="form-group">

                            <label class="control-label col-xs-3 col-sm-4 col-md-3" id="acceso2"> <span class="glyphicon glyphicon-calendar"></span>&nbsp Fecha de vencimiento del contrato</label>
                             <div class="col-xs-7 col-sm-5 col-md-5">
                                  <input type="text" id="datepicker2">
                                
               
                                  
                      </div>
                        </div>       
                
                        
                        
                          <div class="form-group">

                            <label class="control-label col-xs-3 col-sm-4 col-md-3" id="acceso2"> <span class="glyphicon glyphicon-check"></span>&nbsp Estado</label>
                             <div class="col-xs-7 col-sm-5 col-md-5">
                                 <label class="radio-inline" id="acceso2"><input type="radio" name="optradio" id = "activee">Activo</label>
                               <label class="radio-inline" id="acceso2"><input type="radio" name="optradio">Cerrado</label>  
                                
               
                                  
                      </div>
                        </div>       
                
                       <br>
                     
                        
                        <div class="form-group btnMargin">
                            <div class="col-xs-3 col-sm-4 col-md-3"></div>
                            <div class="col-xs-7 col-sm-5 col-md-5">
                                  <div style=" display: inline-flex; align-items: center; justify-content: end; float:left;">
                                <button type="button" class="btn  btn-primary" id="siguiente1" onclick="controller.login();">Guardar</button>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                
                          
          
                                  </div>
                                
                                
                                                            <div style=" display: inline-flex; align-items: center; justify-content: end; float:left;">
                             
                                <button type="submit" class="btn btn-success" id="enviarTab" onclick="irTabla();">Ver Contratos &nbsp;</button>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                               
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
</div>
         
         
         
         
         
         
         
         
         
        
        
        
  
        
        
        
     </div>   
 <script type="text/javascript" src="JS/jquery.js"></script>     
<script type="text/javascript" src="JS/jquery-ui.min.js"></script>  
<script>
    
    $("#datepicker").datepicker();
</script>
<script>
    
    $("#datepicker2").datepicker();
</script>

  
   
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
       
             var act = document.getElementById("activee");
             if(act.checked){
             contrato = new Contrato(document.getElementById("codContrato").value,document.getElementById("datepicker").value,document.getElementById("datepicker2").value,1);
             }else{
                 contrato = new Contrato(document.getElementById("codContrato").value,document.getElementById("datepicker").value,document.getElementById("datepicker2").value,0);
             }
            Proxy.registrarContrato(contrato,
                function(contrat){
                    if(contrat == 1){
                      bootbox.alert("Contrato Registrado Con Exito!",function(){ document.location = "/Bridgestone/RegistrarContratoLeasing.jsp" });
                  }else{
                      
                      bootbox.alert("No se pudo registrar!",function(){ document.location = "/Bridgestone/RegistrarContratoLeasing.jsp" });
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
            window.alert("Contrato mal ingresado...");
        }
        
        
        
     function doValidate(event){

  var usu = document.getElementById("codContrato");
  var pas = document.getElementById("datepicker");
  var pas2 = document.getElementById("datepicker2"); 
  var string1=pas.value.toString();
  var string2=pas2.value.toString();
  var dia1=string1.substring(0, 2);
  var mes1=string1.substring(3, 5);
  var ano1=string1.substring(6, 10);
  var dia2=string2.substring(0, 2);
  var mes2=string2.substring(3, 5);
  var ano2=string2.substring(6, 10);
  var error = false;


	usu.classList.remove("invalid");
        pas.classList.remove("invalid");
        pas2.classList.remove("invalid");
   if(usu.value == null  || usu.value.length == 0){
       usu.classList.add("invalid");
	 error = true;
            if(usu.value == null  || usu.value.length == 0){
         window.alert("El espacio de contrato esta vacio");
     }
}

  else if(pas.value == null  || pas.value.length == 0 || pas2.value == null  || pas2.value.length == 0  ){
     pas.classList.add("invalid");
	 error = true;
        if(pas.value == null  || pas.value.length == 0 ){
              window.alert("El espacio de fecha de inicio de contrato esta vacio!");
             
         }
        else if(pas2.value == null  || pas2.value.length == 0 ){
              window.alert("El espacio de fecha de vencimiento del contrato esta vacio!");
             
         } 
}

else if (string1==string2){
    pas.classList.add("invalid");
    error = true;
    if(string1==string2){
              window.alert("Las fechas son iguales!");
             
         }  
}






	if (error){
	event.preventDefault();
        //window.alert("Hay espacios en blanco");
        document.location = "/Bridgestone/RegistrarContratoLeasing.jsp";
	}else{
            window.alert("Registro exitoso");
        }

}
        
        
                function salir(){
       document.location = "/Bridgestone/Principal.jsp";
       
        
     }
     
          function irTabla(){
       document.location = "/Bridgestone/ListadoContratos.jsp";
        
     } 
        
        
        
        
        

	document.addEventListener("DOMContentLoaded",pageLoad);
</script>  
    
    
    
</html>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@ include file="Imports.jspf" %>  
        <title>Registrar Contrato por Leasing</title>
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
                     <a href="index.html" class = "navbar-brand">Activos de IT</a>
                     
                 </div>
                 
                 <div class = "collapse navbar-collapse" id = "navbar-1">
                     
                     <ul class="nav navbar-nav">
                         <li><a href="Inventario.jsp ">Inventario </a></li>
                         <li><a href=" "> prestamo </a></li>
                          <li><a href=" ">devolucion  </a></li>
                          <li><a href="RegistrarUsuario.jsp">Registrar Usuarios  </a></li>
                    
                     </ul> 
                     
                     <ul class="nav navbar-nav  navbar-right" >
                         <li><a href=" Login.jsp ">Cerrar Sesion  </a></li>
                         
                     </ul>
                 </div>
                 
                 
                 
                 
             </div>
         
         </nav>
         </div>
        
        
        
             <h2>Registro de Activos</h2>
            
              <form role="form" onsubmit="return false;" id="userForm" class="form-horizontal">
                <div class="tab-content">
                    <div class="tab-pane active" id="usuario-tab">
                       
                        
                    <div class="form-group">

                            <label class="control-label col-xs-3 col-sm-4 col-md-3"> <span class="glyphicon glyphicon-barcode"></span>&nbsp Numero de serie del activo</label>
                                 <div class="col-xs-7 col-sm-5 col-md-5"  data-toggle="tooltip" title="El codigo de contrato es alfanumerico con no mas de 12 caracteres">

                                  <input type="text" class="form-control" id="serie" name="usuarioTab"/>

                        </div>
                             </div>
                        
                        <div class="form-group">

                            <label class="control-label col-xs-3 col-sm-4 col-md-3"> <span class="glyphicon glyphicon-calendar"></span>&nbsp Fecha de entrada del equipo</label>
                             
                         <div class="col-xs-7 col-sm-5 col-md-5"  data-toggle="tooltip" title="El codigo de contrato es alfanumerico con no mas de 12 caracteres">

                                  <input type="text" id="datepicker">
                                
               
                                  
                    </div>
                        </div>

                              <div class="form-group">

                            <label class="control-label col-xs-3 col-sm-4 col-md-3"> <span class="glyphicon glyphicon-list-alt"></span>&nbsp Contrato de Leasing</label>
                 <div class="col-xs-7 col-sm-5 col-md-5"  data-toggle="tooltip" title="Este numero representa el codigo del contrato por Leasing">

                                <select class="selectpicker" id="contrats">
                                <option>Prueba</option>
                                </select>

                        </div>
                             </div>
                        
                        <div class="form-group">

                            <label class="control-label col-xs-3 col-sm-4 col-md-3"> <span class="glyphicon glyphicon-pencil"></span>&nbsp Descripcion del equipo</label>
                             <div class="col-xs-7 col-sm-5 col-md-5">
                                 <input type="text" class="form-control"  id="des">
               
                                  
                      </div>
                        </div>       
                       
                        
                
                       <br>
                     
                        
                        <div class="form-group btnMargin">
                            <div class="col-xs-3 col-sm-4 col-md-3"></div>
                            <div class="col-xs-7 col-sm-5 col-md-5">
                                  <div style=" display: inline-flex; align-items: center; justify-content: end; float:left;">
                                <button type="button" class="btn  btn-primary" id="siguiente1" onclick="controller.login();">Finalizar</button>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                       
                                  </div>
                                
                                                 <div style=" display: inline-flex; align-items: center; justify-content: end; float:left;">
                             
                                <button type="submit" class="btn btn-success" id="enviarTab" onclick="irTabla();">Ver activos &nbsp;</button>
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
        
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
         </div>   
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
 <script type="text/javascript" src="JS/jquery.js"></script>     
<script type="text/javascript" src="JS/jquery-ui.min.js"></script>  

<script>
    
    $("#datepicker").datepicker();
</script>
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
                
          
        Proxy.getContratos(function(result){
          
          model.contratos = result;
          console.log(result[0]);
          view.showContratos();
        
       }      
      ); 
                
                
	},
        login: function(){
            activo = new Activo(document.getElementById("serie").value,document.getElementById("datepicker").value,document.getElementById("des").value,document.getElementById("contrats").value);
        window.alert("Activo registrado como : "+ document.getElementById("des").value);
       
        Proxy.registrarActivo(activo,
                function(contrat){
                    if(contrat === 1){
                       window.alert("Registro exitoso");
                  }
                     
                     document.location = "/Bridgestone/RegistrarActivoLeasing.jsp";
                            
                    
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
            window.alert("Usuario incorrecto...");
        }
        
        
        
     function doValidate(event){

  var usu = document.getElementById("serie");
  var pas = document.getElementById("datepicker");
  var pas2 = document.getElementById("des"); 
  var error = false;


	usu.classList.remove("invalid");
        pas.classList.remove("invalid");
        pas2.classList.remove("invalid");
   if(usu.value == null  || usu.value.length == 0){
       usu.classList.add("invalid");
	 error = true;
}

   if(pas.value == null  || pas.value.length == 0){
     pas.classList.add("invalid");
	 error = true;
}


   if(pas2.value == null  || pas2.value.length == 0){
     pas2.classList.add("invalid");
	 error = true;
}



	if (error){
	event.preventDefault();
        document.location = "/Bridgestone/RegistrarActivoLeasing.jsp";
	}

}
        
        
                function salir(){
 document.location = "/Bridgestone/Inventario.jsp";
        
     }
     
     function showContratos(){
         
        var combo = document.getElementById("contrats");
        for (i = 0; i < model.contratos.length; i++){
        combo.options[i] = new Option(model.contratos[i].codigoContrato);
         
         
     }
 }
 
         function irTabla(){
       document.location = "/Bridgestone/ListadoActivosLeasing.jsp";
        
     } 
        
        
        
        
        
         function siguiente(){
      document.location = "/Bridgestone/Registrar2.jsp";
  }
	document.addEventListener("DOMContentLoaded",pageLoad);
</script>
        
</html>

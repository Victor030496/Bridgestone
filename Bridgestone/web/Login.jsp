<%-- 
    Document   : Login
    Created on : 02/10/2017, 08:57:12 PM
    Author     : Luis Bogantes
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
      <head>
        <%@ include file="Imports.jspf" %>   
        <title>Inventario de activos</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
         <link rel="stylesheet" title="Bridgestone" type="text/css" href="CSS/bootstrap.css">
        <link rel="stylesheet" title="Bridgestone" type="text/css" href="CSS/bootstrap.min.css">
        <link rel="stylesheet" title="Bridgestone" type="text/css" href="CSS/estilos.css">
        <link rel="stylesheet" title="Bridgestone" type="text/css" href="CSS/estiloAdmin.css">
        <script type="text/javascript" src="JS/bootstrap.js"></script>
        <script type="text/javascript" src="JS/bootstrap.min.js"></script>
        <script type="text/javascript" src="JS/jquery-3.2.1.js"></script>
        <script type="text/javascript" src="JS/jquery-3.2.0.min.js"></script>
        <script type="text/javascript" src="JS/jquery.nivo.slider.js"></script>
        <script src = "http://code.jquery.com/jquery-latest.js"></script>
        
    </head>
    <body>

        
          <header>
           
        <div class = "container-fluid">     
          <div id="links" style="height:125px;  margin-right: 10px; margin-left: 1px; display: inline-flex; align-items: center; justify-content: end; float:left;">    

                 <div style="width: 400px; height:75px; background-image: url(imagenes/logo.jpg); background-repeat: no-repeat; background-size:cover;">              </div>  
  
   </div > 
 </div >            
           
         
        </header>
    

             <div class="container-fluid" style="width: 1360px; height:530px; background-image: url(imagenes/prin2.jpg); background-repeat: no-repeat; background-size:cover;">
            <div class="wrapper">
                <form class="form-signin" id="formLogin">
                    <h3 class="form-signin-heading">
                        <b style="color:#c7c7c7 !important">Bienvenido</b>
                    </h3>


 

                    
                    <input type="text" class="form-control" name="u_name" placeholder="Username" required="" autofocus="" id="usuario" data-toggle="tooltip" data-placement="right" title="Ingrese su usuario eje : Juanxx39" /><br />
                    <input type="password" class="form-control" name="u_pass" placeholder="Password" required="" id="password" placeholder="Pon tu nombre"/>

                    <button class="btn btn-lg btn-primary btn-block" name="Submit" value="Login" type="button" id="enviar" onclick="controller.login();">Login</button>
                    <button class="btn btn-lg btn-primary btn-block" name="Submit" value="Login" type="button" id="cancelar">Cancelar</button>
                     
                   
                    <br><br>
                     <center>
                     </center>
                    <div class="form-group" >
                        <div class="alert alert-success hidden" id="mesajeResult">
                            <strong id="mesajeResultNeg">Info!</strong> 
                            <span id="mesajeResultText">This alerta box could indicate a neutral informative change or action.</span>
                        </div>
                    </div>
                </form>
            </div>
        </div>
        
     
        
        
        
        

        
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
            
            usuario = new Usuario(document.getElementById("usuario").value, document.getElementById("password").value, 0);
            Proxy.userLogin(usuario,
                function(usuario){
                    switch(usuario.tipo){
                        case 0: // usuario no existe
                          window.alert("El usuario ingresado no exsiste");
                            break;
                        case 1: // cliente
                            window.alert(usuario.tipo);
                            document.location = "/Bridgestone/Principal2.jsp";
                            
                            break;
                        case 2: // manager
                            window.alert(usuario.tipo);
                            document.location = "/Bridgestone/Principal.jsp";
                            break;
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
                var fo = document.getElementById("enviar");
                fo.addEventListener("click",doValidate);
	}
        function showErrorMessage(){
            window.alert("Usuario incorrecto...");
        }
        
        function doValidate(event){

  var nom = document.getElementById("usuario");
  var pas = document.getElementById("password");
  var error = false;

	nom.classList.remove("invalid");
        pas.classList.remove("invalid");
   if(nom.value == null  || nom.value.length == 0){
     nom.classList.add("invalid");
	 error = true;
}

   if(pas.value == null  || pas.value.length == 0){
     pas.classList.add("invalid");
	 error = true;
}






	if (error){
	event.preventDefault();
	}
       



}
        
        
        
	document.addEventListener("DOMContentLoaded",pageLoad);
</script>      
    
    
    
    
    
    
    
    
    
</html>


<%-- prueba
    Document   : ListadoComrpobantes
    Created on : Oct 24, 2017, 4:08:07 PM
    Author     : victo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
           <%@ include file="Imports.jspf" %>  
        <title>Listado de Comprobantes</title>
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
                         <li><a href=" "> Prestamo </a></li>
                          <li><a href=" ">Devolucion  </a></li>
                          <li><a href="RegistrarUsuario.jsp">Registrar Usuarios  </a></li>
                         <li class = "dropdown"><a href=" " class = "dropdown-toggle" data-toggle="dropdown" role = "button">algo que ocupe desplegarse 
                                 <span class = "caret"></span>
                             </a></li>
                     </ul> 
                     
                     <ul class="nav navbar-nav  navbar-right" >
                         <li><a href=" Login.jsp ">Cerrar Sesion  </a></li>
                         
                     </ul>
                 </div>
                 
                 
                 
                 
             </div>
         
         </nav>
         </div>
        
        
        
        
        
        
        
        
        
        
        
        
        
        
                 <div class="container-fluid" style="width: 1360px; height:530px; background-image: url(imagenes/prin2.jpg); background-repeat: no-repeat; background-size:cover;">

                    <div class="container">
  <h2>Comprobantes</h2>
    <br> <br>
        
     <table class="table" id="tabUsuarios">
    <thead>
      <tr>
        <th class="success">Numero De Comprobante</th>
         <th class="success">Editar</th>
        <th class="success">Eliminar</th>
      </tr>
    </thead>
    <br><br>
  
    <tbody id="listado">
    
       
        
        
    </tbody>
  </table>   
    
    
    
    
    
    
        
        </div>
       <a href="Inventario.jsp "><button type="button" class="btn btn-default" >Atras</button></a>                 
        </div>
        
   <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>        
                    
        
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
                
         Proxy.getComprobantes(function(result){
          
          model.comprobantes = result;
          console.log(result[0].numeroDeComprobante);
          console.log(result[1].numeroDeComprobante);
          view.showTabla(); 
       } 
); 
        
	},
        login: function(){
            
          
        }
  };
</script>
<script> // View
  var model;
  var controller;
	function pageLoad(event){ 
 
		model=new Model();  
		controller = new Controller(model,window);
                showTabla();
  
	}
        
        
                      function salir(){
 document.location = "/Bridgestone/Inventario.jsp";
        
     }
     
     
   
        
        function showTabla(){
            
            var listado = document.getElementById("listado");
              
        for (i=0;i<model.comprobantes.length;i++){
        var tr =document.createElement("tr");
        tr.classList.add("warning");
	var td;
	td=document.createElement("td");
	td.appendChild(document.createTextNode(model.comprobantes[i].numeroDeComprobante));
	tr.appendChild(td);

        td= document.createElement("td");
       img= document.createElement("img");
       img.src="imagenes/edit.png";
       img.title="Editar";
       img.addEventListener("click", function(e){doQuery(per);});
       td.appendChild(img);
       tr.appendChild(td);
       td= document.createElement("td");
       img= document.createElement("img");
       img.src="imagenes/delete.png";
       img.title="Eliminar";
       img.addEventListener("click", function(e){doDelete(per);});
       td.appendChild(img);
       tr.appendChild(td);
	
         
         
         listado.appendChild(tr);
         
        
     }
            
        }
      
     
        
        
        
	document.addEventListener("DOMContentLoaded",pageLoad);
</script>       
    
    
    
    
</html>


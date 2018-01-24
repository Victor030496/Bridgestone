
<%-- 
    Document   : Inventario
    Created on : 21/10/2017, 06:17:43 AM
    Author     : Luis Bogantes
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <%@ include file="Imports.jspf" %>  
        <title>Inventario</title>
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
        
        
        <div class="container-fluid" style="width: 1360px; height:530px; background-image: url(imagenes/bla.jpg); background-repeat: no-repeat; background-size:cover;">

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
        

               
  <h2>Area de inventario</h2>
  <br> <br>
      <div class="container-fluid">
      
             <button type="button" class="btn btn-primary btn-lg btn-block" onclick="irRegistrarLeasing();">Registrar contratos de Leasing</button>


 <button type="button" class="btn btn-success btn-lg btn-block"  onclick="irRegistrarComprobanteCompra();">Registrar comprobante de compra</button>
  
 <button type="button" class="btn btn-warning btn-lg btn-block" onclick="irRegistrarActivoLeasing();">Registrar Activos con contrato Leasing</button>

 <button type="button" class="btn btn-info btn-lg btn-block">Registrar Activos con comprobante de compra</button>
  
 <button type="button" class="btn btn-danger btn-lg btn-block" onclick="irListadoActivoLeasing(); ">Listado de Activos</button>
 
  <button type="button" class="btn btn-lg btn-lg btn-block" onclick="irListadoComprobante(); ">Listado de Comprobantes</button>
 
  <button type="button" class="btn btn-success btn-lg btn-block" onclick="irListadoContratos(); ">Listado de Contratos</button>
 
  
  
  <br><br>
  <a href="Principal.jsp "><button type="button" class="btn btn-default" >Atras</button></a>   
    </div>
  
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
                </div>
 <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>               
    </body>
    
    
    
    
    
    
    
   
    
<script> // View
 // var model;
 // var controller;
	function pageLoad(event){ 
 

	}
        
 
      
     function irRegistrarLeasing(){
         
         document.location = "/Bridgestone/prue.jsp";
         
         
     }
     
     
      function irRegistrarActivoLeasing(){
         
         document.location = "/Bridgestone/RegistrarActivoLeasing.jsp";
         
         
     }    
        
            function irListadoActivoLeasing(){
         
         document.location = "/Bridgestone/ListadoActivosLeasing.jsp";
         
         
     }  
     
     function irRegistrarComprobanteCompra(){
         
         document.location = "/Bridgestone/RegistrarComprobante.jsp";
         
         
     } 
     
     function irListadoComprobante(){
         
         document.location = "/Bridgestone/ListadoComprobantes.jsp";
         
         
     } 
     
     function irListadoContratos(){
         
         document.location = "/Bridgestone/ListadoContratos.jsp";
         
         
     } 
        
        
	document.addEventListener("DOMContentLoaded",pageLoad);
</script>          
    
    
    
    
    
    
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
                     <a href="Principal.jsp" class = "navbar-brand">Activos de IT</a>
                     
                 </div>
                 
                 <div class = "collapse navbar-collapse" id = "navbar-1">
                     
                     <ul class="nav navbar-nav">
                         <li><a href="Principal.jsp ">Home</a></li>
                         <li><a href="#"> Prestamo </a></li>
                          <li><a href="#">Devolucion  </a></li>
                          <!--<li><a href="RegistrarUsuario.jsp">Registrar Usuarios  </a></li>-->
                         <!--<li class = "dropdown"><a href=" " class = "dropdown-toggle" data-toggle="dropdown" role = "button">algo que ocupe desplegarse 
                                 <span class = "caret"></span>
                             </a></li>-->
                     </ul> 
                     
                     <ul class="nav navbar-nav  navbar-right" >
                         <li><a href=" Login.jsp ">Cerrar Sesion  </a></li>
                         
                     </ul>
                 </div>
                 
                 
                 
                 
             </div>
         
         </nav>
         </div>
        
        
              <!--------------------------------------------------------------------------------------->
        
                            
        <div class="modal fade" id="myModalFormulario" role="dialog">
    <div class="row-fluid" >
        <div class="modal-dialog modal-lg">
                <div class="modal-content">
        
        <div class="col-md-offset-4 col-md-4" id="boxy">
            <br><br><br><br><br><br><br><br>
            <h2 id='Contact' style="font-weight: bold;">Comprobante a editar</h2>
            <hr>
            <form role="form" onsubmit="return false;" id="formComprobantes">
                <fieldset>
                     <div class="col-md-12">
                         
                         <div class="leftcontact">
                    <div class="form-group" id="groupIDVehiculo">
                       
                            <div class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-align-left"></i></span>
                                <input maxlength="10" name="numComprobante" id="numComprobante" placeholder="Numero del Comprobante" class="form-control" type="text">
                            </div>
                        
                    </div>
                         </div>
                  
        </div>
                    
                    <div class="form-group"  style="margin-left: 38%">
                                <input type="hidden" value="agregarComprobante" id="commprobanteAction"/>
                                <button type="submit" class="btn btn-primary" id="enviar"  onclick="controller.editar()">Guardar</button>
                                <button type="reset" class="btn btn-danger" id="cancelar">Cancelar</button>
                            </div>

                
                </fieldset>
            </form>
        </div>    
      </div>
     </div> 
   </div>
</div>
        
        <!--------------------------------------------------------------------------------------->
        
        
        
        
        
        
        
        
        
        
        
        
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
       <a href="Principal.jsp "><button type="button" class="btn btn-default" >Atras</button></a>                 
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
          //console.log(result[0].numeroDeComprobante);
          //console.log(result[1].numeroDeComprobante);
          view.showTabla(); 
       } 
); 
        
	},
        login: function(num){
 
             comprobante = new Comprobante(num);
        //window.alert("Activo registrado como : "+ document.getElementById("des").value);
       
        //console.log("Se va a meter al proxy eliminar Comrpobante" + comprobante);
       
        Proxy.eliminarComprobante(comprobante,
                function(contrat){
                    if(contrat === 19){
                       window.alert("Eliminado exitoso");
                  }
                     
                     document.location = "/Bridgestone/ListadoComprobantes.jsp";
                            
                    
                });
        ///alert(id); */
          
        },
        mostrarModal: function(num){
  
        $("#myModalFormulario").modal();
        
        var nume = document.getElementById("enviar");
        nume.value = num;

    },
        editar: function(){
  
  
         var numero = document.getElementById("enviar").value;
         var numero2 = document.getElementById("numComprobante").value;
        
         //alert("El que está" + numero);
         //alert("El que quiero modificar " + numero2);
         
        
        comprobanteActual = new Comprobante(numero);
        comprobanteAModificar = new Comprobante(numero2);
        //var numero = document.getElementById("groupIDVehiculo");
        
        
        var comprobantes = [];
        comprobantes[0] = comprobanteActual;
        comprobantes[1] = comprobanteAModificar;
        
         Proxy.modificarCompro(comprobantes,
                function(comprobant){
                    if(comprobant == 1){
                       window.alert("Cambio exitoso");
                  }
                   
                     //window.alert("Contrato registrado como : "+ document.getElementById("codContrato").value);
                     document.location = "/Bridgestone/ListadoComprobantes.jsp";
    
    }

        );
        
    
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
       //var num2 = model.comprobantes[i].numeroDeComprobante;
       //console.log(num2);
       //img.addEventListener("click", function(e){doQuery(num2);});
       img.id = model.comprobantes[i].numeroDeComprobante;
       img.addEventListener("click", doQuery);
       td.appendChild(img);
       tr.appendChild(td);
       
       td= document.createElement("td");
       img= document.createElement("img");
       img.src="imagenes/delete.png";
       img.title="Eliminar";
       //var num = model.comprobantes[i].numeroDeComprobante;
       //console.log(num);
       //img.addEventListener("click", function(e){doDelete(num);});
       img.id = model.comprobantes[i].numeroDeComprobante;
       img.addEventListener("click", doDelete);
       td.appendChild(img);
       tr.appendChild(td);
       
         listado.appendChild(tr);
         
        
     }
            
        }
      
      
      function doDelete(event){
            
        //var persona = model.usuarios.find(function(x){return x.id==per.id; });
        
        //if(persona.value == null  ){//|| persona.value.length == 0
        
        var aux = event.target.id;
        
        
            controller.login(aux);
            
            console.log("En el do delete" + num);
            
        }
        
        
         function doQuery(event){
            
        //var persona = model.usuarios.find(function(x){return x.id==per.id; });
        
        //if(persona.value == null  ){//|| persona.value.length == 0
        
            //controller.mostrarModal(num);
            
             var aux = event.target.id;
        
        
            controller.mostrarModal(aux);
            
            
        }
        
        
        
	document.addEventListener("DOMContentLoaded",pageLoad);
</script>       
    
    
    
    
</html>


<%-- 
    Document   : AreaPrestamos
    Created on : 13/03/2018, 03:30:39 PM
    Author     : Luis Bogantes
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <%@ include file="Imports 2.jspf" %> 
        <title>Area de Prestamos</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" title="Bridgestone" type="text/css" href="CSS/bootstrap.min.css">
        <link rel="stylesheet" title="Bridgestone" type="text/css" href="CSS/estilos.css">
       <link rel="stylesheet" title="Bridgestone" type="text/css" href="CSS/estiloAdmin.css">
        <link rel="stylesheet" title="Bridgestone" type="text/css" href="CSS/registrarse.css">
        <script type="text/javascript" src="JS/bootstrap.min.js"></script>
        <script type="text/javascript" src="JS/jquery-3.2.0.min.js"></script>
        <script type="text/javascript" src="JS/jquery.nivo.slider.js"></script>
   
        
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
        

                
          <div  id= "mainDiv" class="container-fluid" style="width: 1360px; height:1200px; background-image: url(imagenes/prin22.jpg); background-repeat: no-repeat; background-size:cover; ba">

              
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
          <!------------------------------------------------------------------------------------------>
            
            <div class="container">
  <h2>Area de presatmos de equipos</h2>
    <br>  <br>
    
    
    
    <div class="col-sm-12 , cuadro" >
  
  

     </div>
    
    
    
  

     
</div>
            <div class="col-sm-12 " >
<!---------------------------------------------------------------------------------->   

        <div class = "col-md-6 text-justify"  "col-lg-9 text-justify"  "col-sm-8 text-justify"  "col-xs-6 text-justify" align = "center" >

           <div class="col-sm-3" style="text-align: right; vertical-align: middle;" >
                                    <p><b>Buscar Equipo:</b></p>
                                </div>
                                <div class="col-sm-8 ,buscador">
      <input type="email" class="form-control" id="searchTerm" placeholder="Busque un equipo por cualquier filtro" onkeyup="doSearch()">
       
                                </div>         
     <br>
    
  <table class="table" id="tabUsuarios">
        <br>  <br>
    <thead>
      <tr>
        <th class="success">Marca</th>
        <th class="success">Modelo </th>
        <th class="success">Memoria</th>
        <th class="success">Seleccione</th>

      </tr>
    </thead>
    <tbody id="listado">
    
        
        
          
    </tbody>
    <tfoot>
        

        
    </tfoot>
    
    
    
  </table>
     
 
 </div> 




<!---------------------------------------------------------------------------------------------->



      <div class = "col-md-6 text-justify"  "col-lg-9 text-justify"  "col-sm-8 text-justify"  "col-xs-6 text-justify" align = "center" >


               
                <form class="form-signin" id="formLogin">
                    <h3 class="form-signin-heading">
                        <b style="color:#c7c7c7 !important">Registro de Prestamo</b>
                    </h3>


 

                    <input type="text" class="form-control" name="u_name" placeholder="Cedula del prestario" required="" autofocus="" id="identificacion" data-toggle="tooltip" data-placement="right" title="Ingrese su usuario eje : Juanxx39" /><br />
                    <input type="text" class="form-control" name="u_name" placeholder="Nombre del prestario" required="" autofocus="" id="nombre" data-toggle="tooltip" data-placement="right" title="Ingrese su usuario eje : Juanxx39" /><br />
                    <input type="text" class="form-control" name="u_name" placeholder="Apellido del prestario" required="" autofocus="" id="apellido" data-toggle="tooltip" data-placement="right" title="Ingrese su usuario eje : Juanxx39" /><br />
                    <input type="text" class="form-control" name="u_name" placeholder="Numero telefonico" required="" autofocus="" id="telefono" data-toggle="tooltip" data-placement="right" title="Ingrese su usuario eje : Juanxx39" /><br />
                    <input type="text" class="form-control" name="u_name" placeholder="Correo electronico" required="" autofocus="" id="correo" data-toggle="tooltip" data-placement="right" title="Ingrese su usuario eje : Juanxx39" /><br />
                    <input type="text" class="form-control" name="u_name" placeholder="Departamento " required="" autofocus="" id="depa" data-toggle="tooltip" data-placement="right" title="Ingrese su usuario eje : Juanxx39" /><br />
                    <input type="text" id="datepicker" class="form-control" placeholder="Fecha de inicio del prestamo"><br />
                    <input type="text" id="datepicker2" class="form-control" placeholder="Fecha de devolucion"><br />
                    <textarea  class="form-control" name="comentarios" rows="3" cols="85" id="comentario" placeholder="comentario"></textarea><br />

                    <button class="btn btn-lg btn-primary btn-block" name="Submit" value="Login" type="button" id="enviar" onclick="controller.guardaPrestamo();">Guardar</button>
                    <button class="btn btn-lg btn-primary btn-block" name="Submit" value="Login" type="button" id="cancelar">Cancelar</button>
                     
                   
                    <br><br>
                     <center>
                     </center>
                    <div class="form-group" >
                        <div class="alert alert-success hidden" id="mesajeResult">
                            <strong id="mesajeResultNeg">Info!</strong> 
                            <span id="mesajeResultText">This alert box could indicate a neutral informative change or action.</span>
                        </div>
                    </div>
                </form>
           
     
     
     
</div>
















 <!-------------------------------------------------------->   
            </div>
          </div>  
   <script type="text/javascript" src="JS/jquery.js"></script>     
<script type="text/javascript" src="JS/jquery-ui.min.js"></script>  
<script>
    
    $("#datepicker").datepicker({ dateFormat: 'dd/mm/yy' });
</script>
<script>
    
    $("#datepicker2").datepicker({ dateFormat: 'dd/mm/yy' });
</script>

  
   
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
                
          Proxy.getEquiposDispo(function(result){
          
          model.equipos = result;
          console.log(result[0].id);
          view.showTabla();
        
       }      
      ); 
	},
        
        guardaPrestamo: function(){
        
         for (i=0;i< model.equipos.length ;i++){  
            var cheki = document.getElementById(i);
            if(cheki.checked){
          persona = new Persona(document.getElementById("identificacion").value,document.getElementById("nombre").value,document.getElementById("apellido").value,document.getElementById("telefono").value,document.getElementById("correo").value);   

                Proxy.registrarPersona(persona,
                function(contrat){
                    if(contrat === 1){
                       //window.alert("Registro exitoso");
                  }
                     
                   //  document.location = "/Bridgestone/RegistraeEquipos.jsp";
                            
                    
                }); 
                
              //  prestamo = new Prestamo
              
              prestamo = new Prestamo(1,document.getElementById("identificacion").value,
              model.equipos[i].idEquipo,
              document.getElementById("depa").value,
              document.getElementById("datepicker").value,
              document.getElementById("datepicker2").value,document.getElementById("comentario").value);
             
                Proxy.registrarPrestamo(prestamo,
                function(contrat){
                    if(contrat === 1){
                   window.alert("Prestamo exitoso...");
                   document.location = "/Bridgestone/AreaPrestamos.jsp";
                  }
                     
                   //  document.location = "/Bridgestone/RegistraeEquipos.jsp";
                            
                    
                }); 
                
                // aca vamos a setear el estado a prestado
                
                
                 equiAModificar = new Equipo(model.equipos[i].idEquipo,null,null,null,null,null,null,null,null,null,model.equipos[i].estado);
                  equiActual = new Equipo(model.equipos[i].idEquipo,null,null,null,null,null,null,null,null,null,"prestado");
  
        
        
             var trabajadores = [];
             trabajadores[0] = userActual;
             trabajadores[1] = userAModificar;

            }
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
                showTabla();
  
	}
        
              function cerrar(){
 
        document.location = "/Bridgestone/ListadoUsuarios.jsp";
        
     }
        
        function showTabla(){
            var listado = document.getElementById("listado");
              for (i=0;i<model.equipos.length;i++){
        var tr =document.createElement("tr");
        tr.classList.add("active");
	var td;
        var textoNom;
	td=document.createElement("td");
        textoNom = document.createTextNode(model.equipos[i].marca);
        textoNom.id = "marca";
	td.appendChild(textoNom);
	tr.appendChild(td);
       
       
        td=document.createElement("td");
	td.appendChild(document.createTextNode(model.equipos[i].modelo));
	tr.appendChild(td);
        
        td=document.createElement("td");
	td.appendChild(document.createTextNode(model.equipos[i].memoria));
	tr.appendChild(td);
	

 
        var check;
	
         td= document.createElement("td");
         check = document.createElement("input");
         check.type = "radio";
         check.id =i;

       td.appendChild(check);
       tr.appendChild(td);
       
 

 
         
         listado.appendChild(tr);
         
        
     }
            
        }
        
 function doSearch(){
    var tableReg = document.getElementById('tabUsuarios');
    var searchText = document.getElementById('searchTerm').value.toLowerCase();
    var cellsOfRow = "";
    var found = false;
    var compareWith = "";

    // Recorremos todas las filas con contenido de la tabla
    for (var i = 1; i < tableReg.rows.length; i++)
    {
        cellsOfRow = tableReg.rows[i].getElementsByTagName('td');
        found = false;
        // Recorremos todas las celdas
        for (var j = 0; j < cellsOfRow.length && !found; j++)
        {
            compareWith = cellsOfRow[j].innerHTML.toLowerCase();
            // Buscamos el texto en el contenido de la celda
            if (searchText.length == 0 || (compareWith.indexOf(searchText) > -1))
            {
                found = true;
            }
        }
        if (found)
        {
            tableReg.rows[i].style.display = '';
        } else {
            // si no ha encontrado ninguna coincidencia, esconde la
            // fila de la tabla
            tableReg.rows[i].style.display = 'none';
        }
    }
}
        
        
           function salir(){
       document.location = "/Bridgestone/Registrar2.jsp";
        
     }
    
        function doQueryTrabajador(event){
            
        //var persona = model.usuarios.find(function(x){return x.id==per.id; });
        
        //if(persona.value == null  ){//|| persona.value.length == 0
        
            //controller.login2(id);
            var aux = event.target.id;
        
        
            controller.mostrarModalTrabajador(aux);
            
        }
        
        
        
	document.addEventListener("DOMContentLoaded",pageLoad);
</script>      
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
</html>

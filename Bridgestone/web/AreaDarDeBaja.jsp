<%-- 
    Document   : AreaDarDeBaja
    Created on : 06-abr-2018, 14:59:45
    Author     : Ronald
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
           <%@ include file="Imports 2.jspf" %>  
        <title>Area Dar De Baja A Activos</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" title="Bridgestone" type="text/css" href="CSS/bootstrap.min.css">
        <link rel="stylesheet" title="Bridgestone" type="text/css" href="CSS/estilos.css">
        <link rel="stylesheet" title="Bridgestone" type="text/css" href="CSS/registrarse.css">
        <script type="text/javascript" src="JS/bootstrap.min.js"></script>
        <script type="text/javascript" src="JS/jquery-3.2.0.min.js"></script>
        <script type="text/javascript" src="JS/jquery.nivo.slider.js"></script>
        
        <script type="text/javascript" src="JS/jquery.js"></script>     
        <script type="text/javascript" src="JS/jquery-ui.min.js"></script> 
        
        
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
      <a role="menuitem" tabindex="-1" href="#">Nuevo Prestamo</a>
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
        
        <!------------------------------------------------------------------------------------------------>                   
                             
        
        
        <div class="modal fade" id="myModalFormularioDarDeBaja" role="dialog">
    <div class="row-fluid" >
        <div class="modal-dialog modal-lg">
                <div class="modal-content">
        
        <div class="col-md-offset-4 col-md-4" id="boxy">
            <br><br><br><br><br><br><br><br>
            <h2 id='Contact' style="font-weight: bold;">Dar De Baja</h2>
            <hr>
          <form role="form" onsubmit="return false;" id="formDarDeBaja">
                         <fieldset>
                             <div class="col-md-12">
                                 
                                  <div class="leftcontact">
                                 
                            <div class="form-group" id="groupcomentario">
                                <div class="input-group">
                               <span class="input-group-addon"><i class="glyphicon glyphicon-paperclip"></i></span>    
                                <textarea  class="form-control" name="comentarioTab" rows="3" cols="85" id="comentario" placeholder="Comentario Del Porque Se Da De Baja" maxlength="40"></textarea><br />
                                </div>
                            </div>
           
                            </div>
                                 
                                 
                             <!--<div class="rightcontact">
                        
                             <div class="form-group" id="groupEstado">
                                 <div class="input-group">
                              <span class="input-group-sm"><i class="glyphicon glyphicon-check"></i></span>
                             
                              <label class="radio-inline" id="acceso2"> &nbsp  <input type="radio" name="optRadio" class="form-control" id = "disponible" name="disponible" maxlength="12"/>Disponible</label>
 
                              <label class="radio-inline" id="acceso2">  &nbsp  <input type="radio" name="optRadio" class="form-control" id = "prestado" name="prestado" maxlength="12"/>Prestado</label>  
                            </div>
                                </div>
                                      
                            </div>-->
                                 
                             
                                 </div>
                           
                             &nbsp
                             &nbsp
                            <div class="form-group"  style="margin-left: 38%">
                                <input type="hidden" value="agregarContrato" id="contratoAction"/>
                                <button type="submit" class="btn btn-primary" id="enviar" onclick="controller.editar()">Guardar</button>
                                <button type="reset" class="btn btn-danger" id="cancelar">Cancelar</button>
                            </div>


                              </fieldset>
                        </form>
        </div>  
       </div>
      </div> 
    </div>
</div>
  
<!----------------------------------------------------------------------------------->
        
                 <div class="container-fluid" style="width: 1360px; height:530px; background-image: url(imagenes/prin2.jpg); background-repeat: no-repeat; background-size:cover;">

                    <div class="container">
  <h2>Area de Dar De Baja A Equipos</h2>
      <br>  <br>
    <div class="col-sm-10 , cuadro" >
         <div class="col-sm-4" style="text-align: right; vertical-align: middle;" >
                                    <p><b>Buscar Equipo</b></p>
                                </div>
                                <div class="col-sm-6 ,buscador">
      <input type="email" class="form-control" id="searchTerm" placeholder="Digite cualquier dato del Equipo que desea encontrar" onkeyup="doSearch()">
        </div>
     </div>
    <br>
    <br>
       
        
     <table class="table" id="tabUsuarios">
    <thead>
      <tr>
        <th class="success">Identificador de Equipo</th>
        <th class="success">No.Contrato</th>
        <th class="success">No.Comprobante</th>
        <th class="success">Marca</th>
        <th class="success">Modelo</th>
        <th class="success">Memoria</th>
        <th class="success">Procesador</th>
        <th class="success">Departamento</th>
        <th class="success">Usuario</th>
        <th class="success">Dar De Baja</th>
      </tr>
    </thead>
    <br><br>
  
    <tbody id="listado">
    
    </tbody>

  </table>  

    
        
        </div>
       <a href="Principal.jsp "><button type="button" class="btn btn-default" >Atras</button></a>                 
        </div>
     
  

  <script>
    
    $("#datepickerr").datepicker();
</script>
<script>
    
    $("#datepickerr2").datepicker();
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
          
        

        Proxy.getEquiposParaBaja(function(result){
          
          model.equipos = result;
          //model.conjunto += result;
          //console.log(result[0].departamento);
          ////view.showTabla();
            //view.showTabla2();
            console.log(result[0].marca);
          console.log(result[0].modelo);
          console.log(result[0].departamento);
           view.showTabla();
       }      
      );
      

      
	},
        mostrarModal: function(num){
  
        $("#myModalFormularioDarDeBaja").modal();
        
        //var a = parseInt(num);
        var nume = document.getElementById("enviar");
        nume.value = num;
        //alert(num);
         
         
        /* 
         prestamo = model.prestamos.find(function(x){return x.id=== a; });
         equipo = model.equipos.find(function(x){return x.idEquipo === prestamo.id_equi; });
         persona = model.personas.find(function(x){return x.id === prestamo.id_Persona; });
        
        alert(prestamo.id);
        alert(prestamo.id_equi);
        alert(equipo.idEquipo);
        alert(prestamo.id_Persona);
        alert(persona.id);
        
        if(equipo.estado === "disponible"){

          document.getElementById("disponible").checked = true;    
        }
        else{
     
          document.getElementById("prestado").checked = true;
          
        }*/
        
        
    },
        editar: function(){
 
 
         var numero = document.getElementById("enviar").value;
         var a = parseInt(numero);
         
         equipo = model.equipos.find(function(x){return x.idEquipo === a ; });


         baja = new Baja(1,document.getElementById("comentario").value,equipo.idEquipo);
        
        
         Proxy.registrarBaja(baja,
                function(devo){
                    if(devo == 33){
                       bootbox.alert("Dado De Baja Con Exito!",function(){ document.location = "/Bridgestone/AreaDarDeBaja.jsp" });
                  }else{
                      
                      bootbox.alert("No Se Pudo Dar De Baja!",function(){ document.location = "/Bridgestone/AreaDarDeBaja.jsp" });
                  } 
    
                }); 
         
        //}
   }
  };
</script>
<script> // View
  var model;
  var controller;
  
  
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
	function pageLoad(event){ 
 
		model=new Model();  
		controller = new Controller(model,window);
                showTabla();

	}
        
        
                      function salir(){
 document.location = "/Bridgestone/Principal.jsp";
        
     }
        
        function showTabla(){
               var listado = document.getElementById("listado");
              for (i=0;i<model.equipos.length;i++){
        var tr =document.createElement("tr");
        tr.classList.add("warning");
	var td;
	td=document.createElement("td");
	td.appendChild(document.createTextNode(model.equipos[i].idEquipo));
	tr.appendChild(td);
       
       
        td=document.createElement("td");
        
        if(model.equipos[i].contrato === undefined){
            td.appendChild(document.createTextNode("No Posee"));
        }else{
           td.appendChild(document.createTextNode(model.equipos[i].contrato));
        }
	
	tr.appendChild(td);
        
        td=document.createElement("td");
        
        if(model.equipos[i].comprobante === undefined){
            td.appendChild(document.createTextNode("No Posee"));
        }else{
	td.appendChild(document.createTextNode(model.equipos[i].comprobante));
        }
    
    
	tr.appendChild(td);
        
         td=document.createElement("td");
	td.appendChild(document.createTextNode(model.equipos[i].marca));
	tr.appendChild(td);
        
         td=document.createElement("td");
	td.appendChild(document.createTextNode(model.equipos[i].modelo));
	tr.appendChild(td);
        
        
         td=document.createElement("td");
	td.appendChild(document.createTextNode(model.equipos[i].memoria));
	tr.appendChild(td);
        
        
         td=document.createElement("td");
	td.appendChild(document.createTextNode(model.equipos[i].procesador));
	tr.appendChild(td);
        
        
         td=document.createElement("td");
	td.appendChild(document.createTextNode(model.equipos[i].departamento));
	tr.appendChild(td);
        
        td=document.createElement("td");
        
        if(model.equipos[i].usuario === undefined){
            td.appendChild(document.createTextNode("No Posee"));
        }else{
	td.appendChild(document.createTextNode(model.equipos[i].usuario));
        }
        
	tr.appendChild(td);
        
        
	td= document.createElement("td");
       img= document.createElement("img");
       img.src="imagenes/edit.png";
       //img.title="Editar";
       //var num2 = model.comprobantes[i].numeroDeComprobante;
       //console.log(num2);
       //img.addEventListener("click", function(e){doQuery(num2);});
       img.id = model.equipos[i].idEquipo;
       img.addEventListener("click", doQuery);
       td.appendChild(img);
       tr.appendChild(td); 
  
       
       
         
         listado.appendChild(tr);
         
        
     }
   
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


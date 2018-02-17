<%-- 
    Document   : ListadoUsuarios
    Created on : 20/10/2017, 05:17:15 AM
    Author     : Luis Bogantes
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
          <%@ include file="Imports 2.jspf" %>  
        <title>Listado de usuarios</title>
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
        
        <!------------------------------------------------------------------------------------------>
        
        
                            
        <div class="modal fade" id="myModalFormularioTrabajador" role="dialog">
    <div class="row-fluid" >
        <div class="modal-dialog modal-lg">
                <div class="modal-content">
        
        <div class="col-md-offset-4 col-md-4" id="boxy">
            <br><br><br><br><br><br><br><br>
            <h2 id='Contact' style="font-weight: bold;">Trabajador a editar</h2>
            <hr>
            <form role="form" onsubmit="return false;" id="formTrabajadores">
                <fieldset>
                     <div class="col-md-12">
             
                <div class="leftcontact">
                    <div class="form-group" id="groupIdentificacion">
                       
                            <div class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-align-left"></i></span>
                                <input maxlength="10" name="identificacion" id="identificacion" placeholder="Identificacion" class="form-control" type="text">
                            </div>
                        
                    </div>
                    
                             
                    <div class="form-group" id="groupNombre">
                       
                            <div class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-align-center"></i></span>
                                <input maxlength="10" name="nombre" id="nombre" placeholder="Nombre" class="form-control" type="text">
                            </div>
                        
                    </div>
                             
                    <div class="form-group" id="groupApellido">
                       
                            <div class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-align-left"></i></span>
                                <input maxlength="10" name="apellido" id="apellido" placeholder="Apellido" class="form-control" type="text">
                            </div>
                        
                    </div>
                              
                   <div class="form-group" id="groupTelefono">
                       
                            <div class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-align-left"></i></span>
                                <input maxlength="10" name="telefono" id="telefono" placeholder="Telefono" class="form-control" type="text">
                            </div>
                        
                    </div>
                              
                    <div class="form-group" id="groupCorreo">
                       
                            <div class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-align-left"></i></span>
                                <input maxlength="10" name="correo" id="correo" placeholder="Correo" class="form-control" type="email">
                            </div>
                        
                    </div>
                     
                     
                     
                         </div>-->
                  
        </div>
                    
                    <div class="form-group"  style="margin-left: 38%">
                                <input type="hidden" value="agregarTrabajador" id="trabajadorAction"/>
                                <button type="submit" class="btn btn-primary" id="enviarTrabajador"  onclick="controller.editarTrabajador()">Guardar</button>
                                <button type="reset" class="btn btn-danger" id="cancelar">Cancelar</button>
                            </div>

                
                </fieldset>
            </form>
        </div>    
      </div>
     </div> 
   </div>
</div>
        
        <!------------------------------------------------------------------------------------------>
        
         <div class="modal fade" id="myModalFormularioUsuario" role="dialog">
    <div class="row-fluid" >
        <div class="modal-dialog modal-lg">
                <div class="modal-content">
        
        <div class="col-md-offset-4 col-md-4" id="boxy">
            <br><br><br><br><br><br><br><br>
            <h2 id='Contact' style="font-weight: bold;">Usuario a editar</h2>
            <hr>
            <form role="form" onsubmit="return false;" id="formUsuarios">
                <fieldset>
                     <div class="col-md-12">
                         
                 <div class="leftcontact">
                  <div class="form-group" id="groupIdUsuario">
                       
                            <div class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-align-left"></i></span>
                                <input maxlength="10" name="idUsuario" id="idUsuario" placeholder="Usuario" class="form-control" type="text">
                            </div>
                        
                    </div>
                    
                             
                    <div class="form-group" id="groupContraseña">
                       
                            <div class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-align-center"></i></span>
                                <input maxlength="10" name="contraseña" id="contraseña" placeholder="Contraseña" class="form-control" type="password">
                            </div>
                        
                    </div>
                             
                    <div class="form-group" id="groupConfirmacion">
                       
                            <div class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-align-left"></i></span>
                                <input maxlength="10" name="confirmacion" id="confirmacion" placeholder="Confirmar contraseña" class="form-control" type="password">
                            </div>
                        
                    </div>
                     
                     
                     <div class="form-group" id="groupTipo">
                       
                            <div class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-align-left"></i></span>
                                  <select class="selectpicker" id = "tipo" style ="color: black;">
                                    <option style ="color: black;" >Soportista</option>
                                    <option style ="color: black;" >Administrador</option>
                                  </select>
                            </div>
                        
                    </div>
                         </div>
 
                  
        </div>
                    
                    <div class="form-group"  style="margin-left: 38%">
                                <input type="hidden" value="agregarUsuario" id="usuarioAction"/>
                                <button type="submit" class="btn btn-primary" id="enviarUsuario"  onclick="controller.editarUsuario()">Guardar</button>
                                 <button type="reset" class="btn btn-danger" id="cancelar">Cancelar</button>
                            </div>

                
                </fieldset>
            </form>
        </div>    
      </div>
     </div> 
   </div>
</div>
        
   <!------------------------------------------------------------------------------------------------------------>     
        <div class="container-fluid" style="width: 1380px; height:550px; background-image: url(imagenes/prin2.jpg); background-repeat: no-repeat; background-size:cover;">
                        
            
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
            
            
            
            <div class="container">
  <h2>Usuarios registrados en el sistema</h2>
    <br>  <br>
    <div class="col-sm-10 , cuadro" >
         <div class="col-sm-4" style="text-align: right; vertical-align: middle;" >
                                    <p><b>Buscar Usuario:</b></p>
                                </div>
                                <div class="col-sm-6 ,buscador">
      <input type="email" class="form-control" id="searchTerm" placeholder="Digite cualquier dato del usuario que desea encontrar" onkeyup="doSearch()">
        </div>
     </div>
    <br>
    <br>
        
  <table class="table" id="tabUsuarios">
    <thead>
      <tr>
        <th class="success">Identificacion</th>
        <th class="success">Nombre</th>
        <th class="success">Apellido</th>
        <th class="success">Telefono</th>
        <th class="success">Correo</th>
        <th class="success">Usuario</th>
        <th class="success">Editar usuario</th>
        <th class="success">Editar información personal</th>
        <th class="success">Eliminar</th>
      </tr>
    </thead>
    <tbody id="listado">
    
        
        
          
    </tbody>
    <tfoot>
        

        
    </tfoot>
    
    
    
  </table>
  <br>
          <div style=" display: inline-flex; align-items: center; justify-content: end; float:left;">
     <button type="submit" class="btn btn-danger" id="enviarTab" onclick="salir();">Salir &nbsp;</button>
                           
          
          </div> 
     
</div>

            
            
            
            
            
            
     
            
            
            
            
            
            
            
            
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
                
          Proxy.getUsuarios(function(result){
          
          model.usuarios = result;
          console.log(result[0].id);
          view.showTabla();
        
       }      
      ); 
	},
        login: function(id){
        ///   hacer metodo con el proxy para eliminar
     
        user = new Usuario(id,"hello",1);
        //window.alert("Activo registrado como : "+ document.getElementById("des").value);
       
        Proxy.eliminarUsuario(user,
                function(contrat){
                    if(contrat === 222){
                       window.alert("Eliminado exitoso");
                  }
                     
                     document.location = "/Bridgestone/ListadoUsuarios.jsp";
                            
                    
                });
        ///alert(id);
         
        },
        
        mostrarModalUsuario: function(num){
  
        $("#myModalFormularioUsuario").modal();
        
        var nume = document.getElementById("enviarUsuario");
        nume.value = num;
        
        usuario = model.usuarios.find(function(x){return x.id === num; });

        //alert(num + "Mostarar modal Usuario");
        
        document.getElementById("idUsuario").value = usuario.id;
        document.getElementById("contraseña").value = usuario.clave;
        document.getElementById("confirmacion").value = usuario.clave;
        //document.getElementById("sopor").selected = true;
        //document.getElementById("traba").selected = true;
        
        if(usuario.tipo === 1){
            //alert(document.getElementById("traba").selected);
            //document.getElementById("traba").selected === false;
            //alert(document.getElementById("traba").selected);
            document.getElementById("tipo").value = "Soportista";
            
        }else{
            //alert(document.getElementById("sopor").selected);
            //document.getElementById("sopor").selected === false;
            //alert(document.getElementById("sopor").selected);
            document.getElementById("tipo").value = "Administrador";
            
            
        }
        
    },
       
        
        
        
        
        
        
        
        mostrarModalTrabajador: function(num){
  
        $("#myModalFormularioTrabajador").modal();
        
        var nume = document.getElementById("enviarTrabajador");
        nume.value = num;
        
      
        trabajador = model.usuarios.find(function(x){return x.correo === num; });
    
        document.getElementById("identificacion").value = trabajador.identificacion;
        document.getElementById("nombre").value = trabajador.nombre;
        document.getElementById("apellido").value = trabajador.apellido;
        document.getElementById("telefono").value = trabajador.telefono;
        document.getElementById("correo").value = trabajador.correo;
    },
    
        
        editarUsuario: function(){
  
    
        //alert("Editaraaaaaaaaaaaar Usuario");
  
         var numero = document.getElementById("enviarUsuario").value;
         
        
        var idUsuari = document.getElementById("idUsuario").value;
        var contrasen = document.getElementById("contraseña").value;
        var confirmacio = document.getElementById("confirmacion").value;
        var tip = document.getElementById("tipo").value;
         
        
        userActual = new Usuario(numero,"",1);
        
        
        if(tip === "Soportista"){
            
        userAModificar = new Usuario(idUsuari,contrasen,1);
    }else{
        
        userAModificar = new Usuario(idUsuari,contrasen,2);
    }
        
        //trabajaActual = new Trabajador();
        //trabajaAModificar = new Trabajador();
        
        alert(userActual.toString());
        alert(userAModificar.toString());
        
        var trabajadores = [];
        trabajadores[0] = userActual;
        trabajadores[1] = userAModificar;
        
        
        
         Proxy.modificarUsu(trabajadores,
                function(user){
                    if(user == 1){
                       window.alert("Cambio exitoso");
                  }
                   
                     //window.alert("Contrato registrado como : "+ document.getElementById("codContrato").value);
                     document.location = "/Bridgestone/ListadoUsuarios.jsp";
    
    }

        );

    },
    
   editarTrabajador: function(){

         var numero = document.getElementById("enviarTrabajador").value;

        var identificacio = document.getElementById("identificacion").value;
        var nombr = document.getElementById("nombre").value;
        var apellid = document.getElementById("apellido").value;
        var telefon = document.getElementById("telefono").value;
        var corre = document.getElementById("correo").value;
    
        userActual = new Trabajador("","",1,"","","","",numero);
        userAModificar = new Trabajador("","",1,identificacio,nombr,apellid,telefon,corre);

        var trabajadores = [];
        trabajadores[0] = userActual;
        trabajadores[1] = userAModificar;
        
        
        
         Proxy.modificarTraba(trabajadores,
                function(user){
                    if(user == 1){
                       window.alert("Cambio exitoso");
                  }
                   
                     //window.alert("Contrato registrado como : "+ document.getElementById("codContrato").value);
                     document.location = "/Bridgestone/ListadoUsuarios.jsp";
    
    }

        );
       
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
              for (i=0;i<model.usuarios.length;i++){
        var tr =document.createElement("tr");
        tr.classList.add("warning");
	var td;
	td=document.createElement("td");
	td.appendChild(document.createTextNode(model.usuarios[i].identificacion));
	tr.appendChild(td);
       
       
        td=document.createElement("td");
	td.appendChild(document.createTextNode(model.usuarios[i].nombre));
	tr.appendChild(td);
        
        td=document.createElement("td");
	td.appendChild(document.createTextNode(model.usuarios[i].apellido));
	tr.appendChild(td);
	
        td=document.createElement("td");
	td.appendChild(document.createTextNode(model.usuarios[i].telefono));
	tr.appendChild(td);
        
        td=document.createElement("td");
	td.appendChild(document.createTextNode(model.usuarios[i].correo));
	tr.appendChild(td);
        
        
        td=document.createElement("td");
	td.appendChild(document.createTextNode(model.usuarios[i].id));
	tr.appendChild(td);
	
         td= document.createElement("td");
       img= document.createElement("img");
       img.src="imagenes/edit.png";
       img.title="Editar";
       //var ide2 = model.usuarios[i].id;
       //img.addEventListener("click", function(e){doQueryTrabajador(ide2);});
       img.id = model.usuarios[i].id;
       img.addEventListener("click", doQueryUsuario);
       td.appendChild(img);
       tr.appendChild(td);
       
       td= document.createElement("td");
       img= document.createElement("img");
       img.src="imagenes/edit.png";
       img.title="Editar";
       //var ide2 = model.usuarios[i].id;
       //img.addEventListener("click", function(e){doQueryTrabajador(ide2);});
       img.id = model.usuarios[i].correo;
       img.addEventListener("click", doQueryTrabajador);
       td.appendChild(img);
       tr.appendChild(td);
       
       td= document.createElement("td");
       img= document.createElement("img");
       img.src="imagenes/delete.png";
       img.title="Eliminar";
       //var ide = model.usuarios[i].id;
       //img.addEventListener("click", function(e){doDelete(ide);});
       img.id = model.usuarios[i].id;
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
        
        
         function doQueryUsuario(event){
            
        //var persona = model.usuarios.find(function(x){return x.id==per.id; });
        
        //if(persona.value == null  ){//|| persona.value.length == 0
        
            //controller.login2(id);
            var aux = event.target.id;
        
        
            controller.mostrarModalUsuario(aux);
            
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

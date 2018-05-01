<%-- 
    Document   : ListadoUsuarios
    Created on : 20/10/2017, 05:17:15 AM
    Author     : Luis Bogantes
--%>

<%@page import="model.Usuario"%>
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
  
   <% Usuario user = (Usuario) request.getSession().getAttribute("user"); %>
    
     <% if (user==null){%> 
 
        <%}%> 
        
         <div id="links" style="height:60px;  margin-right: 10px; display: inline-flex; align-items: center; justify-content: end; float:right;">    
    <%   if (user!=null){%>
     
           <% if(user.getTipo()==1){ // client %>
             
            <%}%>
        
               <% if(user.getTipo()!=1){ // admi %>
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <h3 id = "letraUs">     <%=(     (Usuario) request.getSession().getAttribute("user")).getId()%> </h3>&nbsp;&nbsp;
                 <div style="       width: 45px; height:45px; background-image: url(imagenes/male.png); background-repeat: no-repeat; background-size:contain;" onclick="redirect();"></div>
                                  <script>
                          function redirect(){
                         
                         document.location = "/Bridgestone/Principal.jsp";
                     }
                  </script>
                 <%}%>
            
         <%}%> 
     </div>
                 
                 
                 
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
                                <input maxlength="12" name="identificacion" id="identificacion" placeholder="Identificacion" class="form-control input_ced" type="text" >
                            </div><span style="color: white ; font-size: 12pt ;font-family:Impact"  id="num2"></span>
                        
                    </div>
                    
                             
                    <div class="form-group" id="groupNombre">
                       
                            <div class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-align-center"></i></span>
                                <input maxlength="10" name="nombre" id="nombre" placeholder="Nombre" class="form-control input_nombre" type="text" >
                            </div><span style="color: white ; font-size: 12pt ;font-family:Impact"  id="nombre1"></span>
                        
                    </div>
                             
                    <div class="form-group" id="groupApellido">
                       
                            <div class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-align-left"></i></span>
                                <input maxlength="10" name="apellido" id="apellido" placeholder="Apellido" class="form-control input_apellido" type="text">
                            </div><span style="color: white ; font-size: 12pt ;font-family:Impact"  id="nombre2"></span>
                        
                    </div>
                              
                   <div class="form-group" id="groupTelefono">
                       
                            <div class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-align-left"></i></span>
                                <input maxlength="8" name="telefono" id="telefono" placeholder="Telefono" class="form-control input_tel" type="text" >
                                
                            </div><span style="color: white ; font-size: 12pt ;font-family:Impact"  id="num1"></span>
                        
                    </div>
                              
                    <div class="form-group" id="groupCorreo">
                       
                            <div class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-align-left"></i></span>
                                <input  name="correo" id="correo" placeholder="Correo" class="form-control" type="email">
                            </div><span style="color: white ; font-size: 12pt ;font-family:Impact"  id="emailOK"></span>
                        
                    </div>
                     
                     
                     
                         </div>-->
                  
        </div>
                    
                    <div class="form-group"  style="margin-left: 38%">
                                <input type="hidden" value="agregarTrabajador" id="trabajadorAction"/>
                                <button type="submit" class="btn btn-primary" id="enviarTrabajador"  onclick="controller.editarTrabajador()">Guardar</button>
                                <button type="reset" class="btn btn-danger" id="cancelar" onclick="cerrar();">Cancelar</button>
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
                                <input maxlength="10" name="idUsuario" id="idUsuario" placeholder="Usuario" class="form-control" type="text"  size="8" maxlength="16">
                            </div>
                        
                    </div>
                    
                             
                    <div class="form-group" id="groupContraseña">
                       
                            <div class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-align-center"></i></span>
                                <input maxlength="10" name="contraseña" id="contraseña" placeholder="Contraseña" class="form-control" type="password" size="8" maxlength="8">
                            </div>
                        
                    </div>
                             
                    <div class="form-group" id="groupConfirmacion">
                       
                            <div class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-align-left"></i></span>
                                <input maxlength="10" name="confirmacion" id="confirmacion" placeholder="Confirmar contraseña" class="form-control" type="password" size="8" maxlength="8">
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
                                 <button type="reset" class="btn btn-danger" id="cancelar" onclick="cerrar();">Cancelar</button>
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
    
                     <% if(user.getTipo()==2){ // client %>
             
                
          <li role="presentation">
      <a role="menuitem" tabindex="-1" href="RegistrarContratoLeasing.jsp">Registrar Contrato de Leasing</a>
    </li>
    <li role="presentation">
      <a role="menuitem" tabindex="-1" href="RegistrarComprobante.jsp">Registrar Comprobante de compra</a>
    </li>
             <%}%>              
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
     <li role="presentation" class="divider"></li>
        <% if(user.getTipo()==2){ // client %>
     <li role="presentation">
      <a role="menuitem" tabindex="-1" href="AreaDarDeBaja.jsp">Dar De Baja a Equipos</a>
    </li>
    
     <li role="presentation">
      <a role="menuitem" tabindex="-1" href="ListadoEquiposDeBaja.jsp">Equipos dados de baja</a>
    </li>
    <% } %>
  </ul>
                             </a></li>
                         
                           <li class = "dropdown"><a href=" " class = "dropdown-toggle" data-toggle="dropdown" role = "button">Prestamo
                                 <span class = "caret"></span>
                                 <ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu1">
    <li role="presentation">
      <a role="menuitem" tabindex="-1" href="AreaPrestamos.jsp">Nuevo Prestamo</a>
    </li>
  </ul>
                             </a></li>
                             
                               <li class = "dropdown"><a href=" " class = "dropdown-toggle" data-toggle="dropdown" role = "button">Devolucion
                                 <span class = "caret"></span>
                                 <ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu1">
    <li role="presentation">
      <a role="menuitem" tabindex="-1" href="AreaDevoluciones.jsp">Registrar Devolucion</a>
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
                         <li><a href="index.jsp"><img src="imagenes/cerrar.png" alt="" width="20" height="20"/>Cerrar Sesion </a></li>
                         
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
       
        bootbox.confirm({
             title: "Eliminar Usuarios",
             message: "¿Desea eliminar este usuario?",
                buttons: {
                    cancel: {
                             label: '<i class="fa fa-times"></i> Cancelar'
                            },
                    confirm: {
                             label: '<i class="fa fa-check"></i> Confirmar'
                              }
                        },
                            callback: function (result) {
                         
                                    if(result == true){
                                          Proxy.eliminarUsuario(user,
              
                                    function(contrat){
                                        if(contrat === 222){
                                             bootbox.alert("Usuario Eliminado Con Exito!",function(){ document.location = "/Bridgestone/ListadoUsuarios.jsp" });
                                        }else{
                      
                                            bootbox.alert("No se pudo eliminar!",function(){ document.location = "/Bridgestone/ListadoUsuarios.jsp" });
                                            }    
                    
                                            });

                                    }
                                    else{
                                        return; 
                                    }      
                         }
                        
                
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
        var error=true;
        userActual = new Usuario(numero,"",1);
        do{
      if(idUsuari == null  || idUsuari.length == 0 || idUsuari.length <= 8 ){    
        if(idUsuari.length ==0){
         alert("El espacio de usuario esta vacio");
         error=false;break;
     }
            
           else if(idUsuari.length <= 8){
         alert("El usuarios debe de tener al menos 8 caracteres");
         error=false;break;
           }
        }
        
        
       if (contrasen != confirmacio || contrasen=="" || confirmacio=="") {
             if (contrasen=="") {
                alert("El espacio de la contraseña esta vacio.");
                error=false; break;
        }
            else if (confirmacio=="") {
                alert("El espacio de validacion de contraseña esta vacio.");
                 error=false;break;
        }   
            else
            alert("Las Contraseñas no coinciden."); error=false;break;
             
        }
        else{error=true;}
    } while(error==false);
        if(error!=false){
        if(tip === "Soportista"){
            
        userAModificar = new Usuario(idUsuari,contrasen,1);
    }else{
        
        userAModificar = new Usuario(idUsuari,contrasen,2);
    }
        
        //trabajaActual = new Trabajador();
        //trabajaAModificar = new Trabajador();
        
       // alert(userActual.toString());
       // alert(userAModificar.toString());
        
        var trabajadores = [];
        trabajadores[0] = userActual;
        trabajadores[1] = userAModificar;
        
        
        
         Proxy.modificarUsu(trabajadores,
                function(user){
                 //  if (error){  
                    if(user == 1){
                       bootbox.alert("Usuario Modificado Con Exito!",function(){ document.location = "/Bridgestone/ListadoUsuarios.jsp" });
                  }else{
                      
                      bootbox.alert("No se pudo modificar!",function(){ document.location = "/Bridgestone/ListadoUsuarios.jsp" });
                  } 
   // }
    }

        );}

    },
    
   editarTrabajador: function(){

         var numero = document.getElementById("enviarTrabajador").value;

        var identificacio = document.getElementById("identificacion").value;
        var nombr = document.getElementById("nombre").value;
        var apellid = document.getElementById("apellido").value;
        var telefon = document.getElementById("telefono").value;
        var corre = document.getElementById("correo").value;
        var error=true;
        userActual = new Trabajador("","",1,"","","","",numero);
           do{
      if(identificacio == null  || identificacio.length == 0 || identificacio.length < 9 ){    
        if(identificacio.length ==0){
         alert("El espacio de cedula esta vacio");
         error=false;break;
     }
            
           else if(identificacio.length < 9){
         alert("La identificacion debe de tener al menos 9 caracteres para cedula nacional");
         error=false;break;
           }
        }
        
         if(nombr == null  || nombr.length == 0  ){    
        if(nombr.length ==0){
         alert("El espacio de nombre esta vacio");
         error=false;break;
     }}
    if(apellid == null  || apellid.length == 0  ){    
        if(apellid.length ==0){
         alert("El espacio de apellido esta vacio");
         error=false;break;
     }}
 
  if(telefon == null  || telefon.length == 0  ||telefon.length < 8){    
        if(telefon.length ==0){
         alert("El espacio de telefono esta vacio");
         error=false;break;
     }
  else if(telefon.length < 8){
         alert("El numero de telefono debe tener 8 digitos");
         error=false;break;
           }
    
            }
  if(corre == null  || corre.length == 0 ){    
        if(corre.length ==0){
         alert("El espacio de Correo esta vacio");
         error=false;break;
     }}
 var emailRegex = /^[-\w.%+]{1,64}@(?:[A-Z0-9-]{1,63}\.){1,125}[A-Z]{2,63}$/i;
 if(!emailRegex.test(corre)){
         alert("Formato incorrecto! ej:Raul@mail.com");
         error=false;break;
           }
          
           
        else{error=true;}
    } while(error==false);
        
         if(error!=false){
        userAModificar = new Trabajador("","",1,identificacio,nombr,apellid,telefon,corre);


        var trabajadores = [];
        trabajadores[0] = userActual;
        trabajadores[1] = userAModificar;
        
        
        
         Proxy.modificarTraba(trabajadores,
                function(user){
                    if(user == 1){
                       bootbox.alert("Datos Personales Modificados Con Exito!",function(){ document.location = "/Bridgestone/ListadoUsuarios.jsp" });
                  }else{
                      
                      bootbox.alert("No Se Pudieron Modificar Los Datos Personales!",function(){ document.location = "/Bridgestone/ListadoUsuarios.jsp" });
                  } 
    
    }

        );
   }
    }
  };
</script>
<script> // View
  var model;
  var controller;
  
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
        
              function cerrar(){
 
        document.location = "/Bridgestone/ListadoUsuarios.jsp";
        
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

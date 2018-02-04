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
          <%@ include file="Imports.jspf" %>  
        <title>Listado de usuarios</title>
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
        
        <!------------------------------------------------------------------------------------------>
        
        
                            
        <div class="modal fade" id="myModalFormulario" role="dialog">
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
                                  <select class="selectpicker">
                                    <option>Soportista</option>
                                    <option>Administrador</option>
                                  </select>
                            </div>
                        
                    </div>
                         </div>
                         
                         
                         
                         
                         
                          <div class="rightcontact">
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
                                <input maxlength="10" name="correo" id="telefono" placeholder="Correo" class="form-control" type="email">
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
        
        <!------------------------------------------------------------------------------------------>
        
        
        
        <div class="container-fluid" style="width: 1380px; height:550px; background-image: url(imagenes/prin2.jpg); background-repeat: no-repeat; background-size:cover;">
            
            
            
            
            <div class="container">
  <h2>Usuarios registrados en el sistema</h2>
    <br>  <br>
  <table class="table" id="tabUsuarios">
    <thead>
      <tr>
        <th class="success">Identificacion</th>
        <th class="success">Nombre</th>
        <th class="success">Apellido</th>
        <th class="success">Telefono</th>
        <th class="success">Correo</th>
        <th class="success">Usuario</th>
        <th class="success">Editar</th>
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
         mostrarModal: function(num){
  
        $("#myModalFormulario").modal();
        
       // alert(num);
        //var nume = document.getElementById("enviar");
        //nume.value = num;

    },
    
        
        editar: function(){
  
    
        alert("Holaaaa");
  
         //var numero = document.getElementById("enviar").value;
         //var numero2 = document.getElementById("numComprobante").value;
        
         //alert("El que está" + numero);
         //alert("El que quiero modificar " + numero2);

    }
        
        
        /*,
        login2: function(id){
     
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
         
        }
        */
        
        
        
        
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
       //img.addEventListener("click", function(e){doQuery(ide2);});
       img.id = model.usuarios[i].id;
       img.addEventListener("click", doQuery);
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
        
        
        function doQuery(event){
            
        //var persona = model.usuarios.find(function(x){return x.id==per.id; });
        
        //if(persona.value == null  ){//|| persona.value.length == 0
        
            //controller.login2(id);
            var aux = event.target.id;
        
        
            controller.mostrarModal(aux);
            
        }
        
        
        
	document.addEventListener("DOMContentLoaded",pageLoad);
</script>      
    



    
    
    
    
</html>

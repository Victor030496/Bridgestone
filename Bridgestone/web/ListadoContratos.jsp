
<%-- prueba
    Document   : ListadoContratos
    Created on : Oct 24, 2017, 4:08:07 PM
    Author     : victo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
           <%@ include file="Imports.jspf" %>  
        <title>Listado de Contratos</title>
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
                     <a href="Principal.jsp" class = "navbar-brand">Activos de IT</a>
                     
                 </div>
                 
                 <div class = "collapse navbar-collapse" id = "navbar-1">
                     
                     <ul class="nav navbar-nav">
                         <li><a href="Principal.jsp">Home </a></li>
                         <li><a href="#"> Prestamo </a></li>
                          <li><a href="#">Devolucion  </a></li>
                       <!--   <li><a href="RegistrarUsuario.jsp">Registrar Usuarios  </a></li>
                         <li class = "dropdown"><a href=" " class = "dropdown-toggle" data-toggle="dropdown" role = "button">algo que ocupe desplegarse 
                                 <span class = "caret"></span>
                             </a></li>  -->
                     </ul> 
                     
                     <ul class="nav navbar-nav  navbar-right" >
                         <li><a href=" Login.jsp ">Cerrar Sesion  </a></li>
                         
                     </ul>
                 </div>
                 
                 
                 
                 
             </div>
         
         </nav>
         </div>
        
        <!------------------------------------------------------------------------------------------------>                   
                             
        
        
        <div class="modal fade" id="myModalFormulario" role="dialog">
    <div class="row-fluid" >
        <div class="modal-dialog modal-lg">
                <div class="modal-content">
        
        <div class="col-md-offset-4 col-md-4" id="boxy">
            <br><br><br><br><br><br><br><br>
            <h2 id='Contact' style="font-weight: bold;">Contrato a editar</h2>
            <hr>
          <form role="form" onsubmit="return false;" id="formContratos">
                         <fieldset>
                             <div class="col-md-12">
                                 
                                  <div class="leftcontact">
                                 
                            <div class="form-group" id="groupcodContrato">
                                <div class="input-group">
                               <span class="input-group-addon"><i class="glyphicon glyphicon-paperclip"></i></span>
                                <input type="text" class="form-control" id="codContrato" name="codContratoTab" placeholder="Codigo del Contrato" maxlength="12"/>
                                 </div>
                            </div>

                            <div class="form-group" id="groupInicio">
                                 <div class="input-group">
                              <span class="input-group-lg"><i class="glyphicon glyphicon-calendar"></i></span>
                                <input type="text"  id="datepickerr">
                            </div>
                                </div>
           
                            </div>
                                 <div class="rightcontact">
                                 
                            <div class="form-group" id="groupVencimiento">
                                <div class="input-group">
                               <span class="input-group-lg"><i class="glyphicon glyphicon-calendar"></i></span>
                                <input type="text" id="datepickerr2">
                                 </div>
                            </div>

                            <div class="form-group" id="groupModalidad">
                                 <div class="input-group">
                              <span class="input-group-sm"><i class="glyphicon glyphicon-check"></i></span>
                             
                              <label class="radio-inline" id="acceso2"> &nbsp  <input type="radio" name="optRadio" class="form-control" id = "activee" name="codContratoTab" maxlength="12"/>Activo</label>
                              &nbsp &nbsp &nbsp &nbsp 
                              <label class="radio-inline" id="acceso2">  &nbsp  <input type="radio" name="optRadio" class="form-control" id = "cerrado" name="codContratoTab" maxlength="12"/>Cerrado</label>  
                            </div>
                                </div>
                                      
                            </div>
                                 
                             
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
  <h2>Contratos</h2>
      <br>  <br>
    <div class="col-sm-10 , cuadro" >
         <div class="col-sm-4" style="text-align: right; vertical-align: middle;" >
                                    <p><b>Buscar Contrato:</b></p>
                                </div>
                                <div class="col-sm-6 ,buscador">
      <input type="email" class="form-control" id="searchTerm" placeholder="Digite cualquier dato del contrato que desea encontrar" onkeyup="doSearch()">
        </div>
     </div>
    <br>
    <br>
       
        
     <table class="table" id="tabUsuarios">
    <thead>
      <tr>
        <th class="success">Codigo de Contrato</th>
        <th class="success">Fecha De Inicio del Contrato</th>
        <th class="success">Fecha De Vencimiento del Contrato</th>
        <th class="success">Estado</th>
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
     
  

  <script>
    
    $("#datepickerr").datepicker();
</script>
<script>
    
    $("#datepickerr2").datepicker();
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
                
          Proxy.getContratos(function(result){
          
          model.contratos = result;
          //console.log(result[0].id);
          view.showTabla();
        
       }      
      ); 
	},
        login: function(cod){
              ///   hacer metodo con el proxy para eliminar
      
        
        contrat = new Contrato(cod,new Date(),new Date(),0);
        //window.alert("Activo registrado como : "+ document.getElementById("des").value);
       
        Proxy.eliminarContrato(contrat,
                function(contrats){
                    if(contrats === 10){
                       window.alert("Eliminado exitoso");
                  }
                     
                     document.location = "/Bridgestone/ListadoContratos.jsp";
                            
                    
                });
        ///alert(id);
       
          
        },
        mostrarModal: function(num){
  
        $("#myModalFormulario").modal();
        
        var nume = document.getElementById("enviar");
        nume.value = num;


        contrato = model.contratos.find(function(x){return x.codigoContrato === num; });
        
        //alert(contrato);
       
        document.getElementById("codContrato").value = contrato.codigoContrato;
        document.getElementById("datepickerr").value = contrato.fechaInicio;
        document.getElementById("datepickerr2").value = contrato.fechaVencimiento;
        
        if(contrato.estado === 1){

          document.getElementById("activee").checked = true;    
        }
        else{
     
          document.getElementById("cerrado").checked === true;
          
        }
        
        
    },
        editar: function(){
 
 
         var numero = document.getElementById("enviar").value;
         var numero2 = document.getElementById("codContrato").value;
         //alert("El que está" + numero);
         //alert("El que quiero modificar " + numero2);
         
             var act = document.getElementById("activee");
             if(act.checked){
             contratoAModificar  = new Contrato(numero2,document.getElementById("datepickerr").value,document.getElementById("datepickerr2").value,1);
             }else{
                 contratoAModificar  = new Contrato(numero2,document.getElementById("datepickerr").value,document.getElementById("datepickerr2").value,0);
             }

             contratoActual = new Contrato(numero,"02/01/2018","01/01/2018",0);
             
             var contratos = [];
             contratos[0] = contratoActual;
             contratos[1] = contratoAModificar;
          
             //alert(contratos);
             //alert(contratos[0].toString());
             //alert(contratos[1].toString());
        
            Proxy.modificarContrato(contratos,
                function(contrat){
                    if(contrat == 1){
                      window.alert("Modificación exitosa");
                  }
                   
                     //window.alert("Contrato registrado como : "+ document.getElementById("codContrato").value);
                     document.location = "/Bridgestone/ListadoContratos.jsp";
                            
                    
                });
       
    
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
 document.location = "/Bridgestone/prue.jsp";
        
     }
        
        function showTabla(){
            var listado = document.getElementById("listado");
              for (i=0;i<model.contratos.length;i++){
        var tr =document.createElement("tr");
        tr.classList.add("warning");
	var td;
	td=document.createElement("td");
	td.appendChild(document.createTextNode(model.contratos[i].codigoContrato));
	tr.appendChild(td);
       
       
        td=document.createElement("td");
	td.appendChild(document.createTextNode(model.contratos[i].fechaInicio));
	tr.appendChild(td);
        
        td=document.createElement("td");
	td.appendChild(document.createTextNode(model.contratos[i].fechaVencimiento));
	tr.appendChild(td);
        
        td=document.createElement("td");
        var est = model.contratos[i].estado;
        
        if(est === 1){
	td.appendChild(document.createTextNode("Abierto"));
    }
    else{
        td.appendChild(document.createTextNode("Cerrado"));
    }
	tr.appendChild(td);
	
        td= document.createElement("td");
       img= document.createElement("img");
       img.src="imagenes/edit.png";
       img.title="Editar";
       //img.addEventListener("click", function(e){doQuery(per);});
       img.id = model.contratos[i].codigoContrato;
       img.addEventListener("click", doQuery);
       td.appendChild(img);
       tr.appendChild(td);
       td= document.createElement("td");
       img= document.createElement("img");
       img.src="imagenes/delete.png";
       img.title="Eliminar";
       //var con = model.contratos[i].codigoContrato;
       //img.addEventListener("click", function(e){doDelete(con);});
       img.id = model.contratos[i].codigoContrato;
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
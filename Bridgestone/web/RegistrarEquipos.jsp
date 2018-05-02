<%-- 
    Document   : RegistrarEquipos
    Created on : 17/02/2018, 01:57:43 PM
    Author     : Luis Bogantes
--%>
<%@page import="model.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
 <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@ include file="Imports 2.jspf" %>  
        <title>Registro de equipos</title>
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
            <br><br><br><br>
            <h2 id='Contact' style="font-weight: bold;">Ingresar datos del usuario del equipo</h2>
            <hr>
            <form role="form" onsubmit="return false;" id="formTrabajadores">
                <fieldset>
                     <div class="col-md-12">
             
                <div class="leftcontact">
                    <div class="form-group" id="groupIdentificacion">
                       
                            <div class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-align-left"></i></span>
                                <input maxlength="10" name="identificacion" id="identificacion" placeholder="Identificacion" class="form-control input_ced" type="text" size="15" maxlength="15">
                            </div><span style="color: white ; font-size: 12pt ;font-family:Impact"  id="num2"></span>
                        
                    </div>
                    
                             
                    <div class="form-group" id="groupNombre">
                       
                            <div class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-align-center"></i></span>
                                <input maxlength="20" name="nombre" id="nombre" placeholder="Nombre" class="form-control input_nombre" type="text">
                            </div><span style="color: white ; font-size: 12pt ;font-family:Impact"  id="nombre1"></span>
                        
                    </div>
                             
                    <div class="form-group" id="groupApellido">
                       
                            <div class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-align-left"></i></span>
                                <input maxlength="25" name="apellido" id="apellido" placeholder="Apellido" class="form-control input_apellido" type="text">
                            </div><span style="color: white ; font-size: 12pt ;font-family:Impact"  id="nombre2"></span>
                        
                    </div>
                              
                   <div class="form-group" id="groupTelefono">
                       
                            <div class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-align-left"></i></span>
                                <input maxlength="10" name="telefono" id="telefono" placeholder="Telefono" class="form-control input_tel" type="text" size="15" maxlength="15">
                                
                            </div><span style="color: white ; font-size: 12pt ;font-family:Impact"  id="num1"></span>
                        
                    </div>
                              
                    <div class="form-group" id="groupCorreo">
                       
                            <div class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-align-left"></i></span>
                                <input  name="correo" id="correo" placeholder="Correo" class="form-control" type="email">
                            </div> <span style="color: white ; font-size: 12pt ;font-family:Impact"  id="emailOK"></span>
                        
                    </div>
                     
                     
                     
                         </div>
                  
        </div>
                    
                    <div class="form-group"  style="margin-left: 38%">
                                <input type="hidden" value="agregarTrabajador" id="trabajadorAction"/>
                                <button type="submit" class="btn btn-primary" id="enviarTrabajador"  onclick="controller.almacenar()">Almacenar</button>
                                <button type="reset" class="btn btn-danger" id="cancelar" onclick="controller.salirfor()">Cancelar</button>
                            </div>

                
                </fieldset>
            </form>
        </div>    
      </div>
     </div> 
   </div>
</div>
        
        <!------------------------------------------------------------------------------------------>
        
        
        
        
       <div  id= "mainDiv" class="container-fluid" style="width: 1360px; height:860px; background-image: url(imagenes/prin22.jpg); background-repeat: no-repeat; background-size:cover; ba">
     
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
                     <a href="Principal.jsp" class = "navbar-brand">Home</a>
                     
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
        
          <!------------------------------------------------------------------------------------------>
      
        
        <div class = "main row" class = "columna1" id = "divPrincipal">
        
      &nbsp;&nbsp;&nbsp;   <h2>  Registrar equipos nuevos</h2>
      <br>   
        <div class = "col-md-2 text-justify"  "col-lg-9 text-justify"  "col-sm-8 text-justify"  "col-xs-6 text-justify" align = "center" >

     <br>
    
    <table class="table table-bordered" >
    <thead>
      <tr>
        <th class="" id ="accesoP">ACCESOS DIRECTOS</th>
      </tr>
    </thead>
    <tbody >
    
     <tr>
      <th class="" id ="accesoP"> <a href="RegistrarEquipos.jsp">Registrar de nuevo <span class="glyphicon glyphicon-pencil"></span></a></th>
    </tr>  
    
     <tr>
         <th class="" id ="accesoP" ><a href="ListadoEquipos.jsp">Ver todos Los equipos <span class="glyphicon glyphicon-list-alt"></span></a></th>
    </tr>  
        
     <tr>
         <th class=""  id ="accesoP"><a href="Principal.jsp">Pagina Principal <span class="glyphicon glyphicon-arrow-left"></span></a></th>
    </tr>   
    
    </tbody>
    <tfoot>     
    </tfoot>
 
  </table>
     
 
 </div>  
      
      
           <!------------------------------------------------------------------------------------------>
   
      <div class = "col-md-10 text-justify"  "col-lg-3 text-justify"  "col-sm-4 text-justify"  "col-xs-6 text-justify"  align = "center">


    <form role="form" onsubmit="return false;" id="userForm" class="form-horizontal">
                <div class="tab-content">
                    <div class="tab-pane active" id="usuario-tab">
                     
                        
                   <div class="form-group">

                  <label class="control-label col-xs-3 col-sm-4 col-md-3" id = "acceso2"> <span class="glyphicon glyphicon-list-alt"></span>&nbsp Tipo de activo</label>                                <div class="col-xs-7 col-sm-5 col-md-5"  data-toggle="tooltip" title="Este numero representa el codigo del contrato por Leasing">
                           <span class=" help-block"id="">
                                 <button type="submit" class="btn btn-primary" id="btnLeasing" onclick="switchea();">Contrato Leasing &nbsp;</button>
                              <span class=" help-block"id="acceso22">CONTRATO POR LEASING &nbsp 
                               <select class="selectpicker" id="selee1">
                                <option>Prueba</option>
                                  </select></span>
                               </span>
                      
                      <span class=" help-block"id="">
                  <button type="submit" class="btn btn-primary" id="btnLeasing" onclick="switchea2();">Comprobante Compra &nbsp;</button>

                      <span class=" help-block"id="acceso23">COMPROBANTE DE COMPRA &nbsp <select class="selectpicker" id="selee2">
                                <option>Prueba</option>
                           </select></span>
                      </span>
                        </div>
                             </div>   
                        
                    <div class="form-group">

                            <label class="control-label col-xs-3 col-sm-4 col-md-3" id="acceso2"> <span class="	glyphicon glyphicon-pencil"></span>&nbsp Marca del equipo</label>
                           <div class="col-xs-7 col-sm-5 col-md-5"  data-toggle="tooltip" title="eje: Lenovo, HP, DEL">

                                 <select class="selectpicker" id="marca">
                                      <option>Seleccione una opción </option>
                                <option>Lenovo</option>
                                <option>Dell</option>
                                <option>Hp</option>
                                <option>Toshiba</option>
                                 <option>Agregar una nueva opcion...</option>
                           </select>
                        </div>
                             </div>
                        

                    <div class="form-group">

                            <label class="control-label col-xs-3 col-sm-4 col-md-3" id="acceso2"> <span class="	glyphicon glyphicon-pencil"></span>&nbsp Modelo</label>
                           <div class="col-xs-7 col-sm-5 col-md-5"  data-toggle="tooltip" title="110-440, C845-SP4143SL">

                                                                   <select class="selectpicker" id="modelo">
                                      <option>Seleccione una opción </option>
                                <option>110-440(Del)</option>
                                <option>Compaq(Hp)</option>
                                <option>HP ProBook</option>
                                <option>C845-SP4143SL(Toshiba)</option>
                                 <option>Agregar una nueva opcion...</option>
                           </select>
                        </div>
                             </div>
                     
                      <div class="form-group">

                            <label class="control-label col-xs-3 col-sm-4 col-md-3" id="acceso2"> <span class="	glyphicon glyphicon-pencil"></span>&nbsp Memoria</label>
                           <div class="col-xs-7 col-sm-5 col-md-5"  data-toggle="tooltip" title="500 GB,  1 TB">

                              <select class="selectpicker" id="memoria">
                                <option>Seleccione una opción </option>
                                <option>4GB</option>
                                <option>6GB</option>
                                <option>8GB</option>
                                <option>16GB</option>
                                 <option>Agregar una nueva opcion...</option>
                           </select> 
                        </div>
                             </div>
                
      
                       

  
                   <div class="form-group">

                            <label class="control-label col-xs-3 col-sm-4 col-md-3" id="acceso2"> <span class="	glyphicon glyphicon-pencil"></span>&nbsp Procesador</label>
                           <div class="col-xs-7 col-sm-5 col-md-5"  data-toggle="tooltip" title="i3,i5,Athlon x4(AMD)">

                         <select class="selectpicker" id="procesador">
                              <option>Seleccione una opción </option>
                                <option>i3</option>
                                <option>i5</option>
                                <option>i7</option>
                                <option>i9</option>
                                <option>x4(AMD)</option>
                                 <option>Agregar una nueva opcion...</option>
                           </select> 
                        </div>
                             </div>                        
                        
                       <div class="form-group">

                            <label class="control-label col-xs-3 col-sm-4 col-md-3" id="acceso2"> <span class="	glyphicon glyphicon-pencil"></span>&nbsp Departamento</label>
                           <div class="col-xs-7 col-sm-5 col-md-5"  data-toggle="tooltip" title="Recursos Humanos , recepcion, o bien en INVENTARIO ">

                             <select class="selectpicker" id="departamento">
                                <option>Seleccione una opción </option>
                                <option>Recursos Humanos</option>
                                <option>TI</option>
                                <option>Administracion</option>
                                <option>Marketing</option>
                                <option>Financiero</option>
                                <option>Gerencia</option>
                                <option>Agregar una nueva opcion...</option>
                           </select> 
                        </div>
                             </div>
                        
                        
                        
                        

                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                                               <div class="form-group">
                            <label class="control-label col-xs-3 col-sm-4 col-md-3" id="acceso2"> <span class=" glyphicon glyphicon-pencil"></span>&nbsp Usuario asignado</label>
                           <div class="col-xs-7 col-sm-5 col-md-5"  data-toggle="tooltip" title="Recursos Humanos , recepcion, o bien en INVENTARIO ">
                                
 
                            
                           <button type="button" class="btn" id="proban" >Ingresar Usuario</button>   
                                            
                                   
                        </div>
                             </div> 
                        

                        
                        
                                 <div class="form-group">

                            <label class="control-label col-xs-3 col-sm-4 col-md-3" id="acceso2"> <span class="glyphicon glyphicon-pencil"></span>&nbsp Descripcion del equipo</label>
                             <div class="col-xs-7 col-sm-5 col-md-5">
                                 <textarea name="comentarios" rows="3" cols="85" id="descripcion"></textarea>
               
                                  
                      </div>
                        </div>             
                        
                        
                        
                        <div class="form-group btnMargin">
                            <div class="col-xs-3 col-sm-4 col-md-3"></div>
                            <div class="col-xs-7 col-sm-5 col-md-5">
                                  <div style=" display: inline-flex; align-items: center; justify-content: end; float:left;">
                                <button type="button" class="btn  btn-primary" id="siguiente1" onclick="controller.guardaEquipo();">Guardar</button>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                
                          
          
                                  </div>
                                
                                
                                                            <div style=" display: inline-flex; align-items: center; justify-content: end; float:left;">
                             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                               
                            </div>
                            
                                    <div style=" display: inline-flex; align-items: center; justify-content: end; float:left;">
                             
                                <button type="submit" class="btn btn-danger" id="enviarTab" onclick="salir();">Salir &nbsp;</button>
                            </div>
                            </div>
                        </div>
                    </div>

             
             
                </div>
            </form>   
     
     
     
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
                
          
        Proxy.getContratos(function(result){
          
          model.contratos = result;
          console.log(result[0]);
          view.showContratos();
        
       }      
      ); 
      
      
      
              Proxy.getComprobantes(function(result){
          
          model.comprobantes = result;
          console.log(result[0]);
          view.showComprobantes();
        
       }      
      ); 
                
                
	},
        guardaEquipo: function(){
        
        
        var id = document.getElementById("identificacion").value;
        //var serie =document.getElementById("selee1").value;
        var marca =document.getElementById("marca").value;
        var modelo =document.getElementById("modelo").value;
        var memoria =document.getElementById("memoria").value;
        var proce =document.getElementById("procesador").value;
        var depar =document.getElementById("departamento").value;
        var des =document.getElementById("descripcion").value;
        var error = false;
                    
  

        if(marca == null  || marca.length == 0 ){
        // id.classList.add("invalid");
	 error = true;
         if(marca == null  || marca.length == 0){
          alert("El espacio de marca esta vacio");
         
     }
}

      else if(modelo == null  || modelo.length == 0 ){
        // id.classList.add("invalid");
	 error = true;
         if(modelo == null  || modelo.length == 0){
          alert("El espacio de modelo esta vacio");
         
     }
}

   else if(memoria == null  || memoria.length == 0 ){
        // id.classList.add("invalid");
	 error = true;
         if(memoria == null  || memoria.length == 0){
          alert("El espacio de memoria esta vacio");
         
     }
}

 else if(proce == null  || proce.length == 0 ){
        // id.classList.add("invalid");
	 error = true;
         if(proce == null  || proce.length == 0){
          alert("El espacio de procesador esta vacio");
         
     }
}

 else if(depar == null  || depar.length == 0 ){
        // id.classList.add("invalid");
	 error = true;
         if(depar == null  || depar.length == 0){
          alert("El espacio de departamento esta vacio");
         
     }
}

 else if(des == null  || des.length == 0 ){
        // id.classList.add("invalid");
	 error = true;
         if(des == null  || des.length == 0){
          alert("El espacio de descripcion esta vacio");
         
     }
}


          
        
       if (error==false){
            var spa =document.getElementById("acceso3"); 
            if(spa == null){
        if(id === ""){
            
            
            
            
            
        
            
        equipo = new Equipo(1,document.getElementById("selee1").value,null,document.getElementById("marca").value,document.getElementById("modelo").value,
                  document.getElementById("memoria").value,document.getElementById("procesador").value,document.getElementById("departamento").value,
                      null,document.getElementById("descripcion").value,"disponible");
                
                Proxy.registrarEquipoContrato(equipo,
                function(contrat){
                    if(contrat === 1){

                       bootbox.alert("Equipo Registrado Con Exito!",function(){ document.location = "/Bridgestone/RegistrarEquipos.jsp" });
                  }else{
                      
                      bootbox.alert("No se pudo registrar!",function(){ document.location = "/Bridgestone/RegistrarEquipos.jsp" });
                  }  
                            
                    
                });
                
                
            
     //-----------------------------------------------------------------------------------           
 
                
                
                
                
            }            
       
         else{
          persona = new Persona(document.getElementById("identificacion").value,document.getElementById("nombre").value,document.getElementById("apellido").value,document.getElementById("telefono").value,document.getElementById("correo").value);   
      
             
          equipo = new Equipo(1,document.getElementById("selee1").value,null,document.getElementById("marca").value,document.getElementById("modelo").value,
                  document.getElementById("memoria").value,document.getElementById("procesador").value,document.getElementById("departamento").value,
                      document.getElementById("identificacion").value,document.getElementById("descripcion").value,"asignado");           
         
          Proxy.registrarPersona(persona,
                function(contrat){
                    if(contrat === 1){
                       //window.alert("Registro exitoso");
                  }
                     
                   //  document.location = "/Bridgestone/RegistraeEquipos.jsp";
                            
                    
                });
            
            
            
            
            
                    Proxy.registrarEquipoUsuario(equipo,
                function(contrat){
                    if(contrat === 1){
                        bootbox.alert("Equipo Y Usuario Del Mismo Registrado Con Exito!",function(){ document.location = "/Bridgestone/RegistrarEquipos.jsp" });
                  }else{
                      
                      bootbox.alert("No se pudo registrar!",function(){ document.location = "/Bridgestone/RegistrarEquipos.jsp" });
                  }        
                    
                });  
            
            
            
            
            
             
         }
         
            }
            
            
            
            
            
                          
              else{
                  
                  
                  
                    if(id === ""){
                  
                    equipo = new Equipo(1,null,document.getElementById("selee2").value,document.getElementById("marca").value,document.getElementById("modelo").value,
                  document.getElementById("memoria").value,document.getElementById("procesador").value,document.getElementById("departamento").value,
                      null,document.getElementById("descripcion").value,"disponible");
                
                Proxy.registrarEquipoComprobante(equipo,
                function(contrat){
                    if(contrat === 1){

                       bootbox.alert("Equipo Registrado Con Exito!",function(){ document.location = "/Bridgestone/RegistrarEquipos.jsp" });
                  }else{
                      
                      bootbox.alert("No se pudo registrar!",function(){ document.location = "/Bridgestone/RegistrarEquipos.jsp" });
                  }  
                            
                    
                });  
                
                
                
                } else{
                    
                    
                    
        persona = new Persona(document.getElementById("identificacion").value,document.getElementById("nombre").value,document.getElementById("apellido").value,document.getElementById("telefono").value,document.getElementById("correo").value);   
      
             
          equipo = new Equipo(1,null,document.getElementById("selee2").value,document.getElementById("marca").value,document.getElementById("modelo").value,
                  document.getElementById("memoria").value,document.getElementById("procesador").value,document.getElementById("departamento").value,
                      document.getElementById("identificacion").value,document.getElementById("descripcion").value,"asignado");           
         
          Proxy.registrarPersona(persona,
                function(contrat){
                    if(contrat === 1){
                       //window.alert("Registro exitoso");
                  }
                     
                   //  document.location = "/Bridgestone/RegistraeEquipos.jsp";
                            
                    
                });
            
            
            
            
            
                    Proxy.registrarEquipoComprobanteUsu(equipo,
                function(contrat){
                    if(contrat === 1){
                        bootbox.alert("Equipo Y Usuario Del Mismo Registrado Con Exito!",function(){ document.location = "/Bridgestone/RegistrarEquipos.jsp" });
                  }else{
                      
                      bootbox.alert("No se pudo registrar!",function(){ document.location = "/Bridgestone/RegistrarEquipos.jsp" });
                  }        
                    
                });           
     
                }
                        
            }  
                 
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
    
   salirfor: function(){
      $("#myModalFormularioTrabajador").modal('hide');},  
    
    
     almacenar: function(){
         
        var id = document.getElementById("identificacion").value;
        var nombre =document.getElementById("nombre").value;
        var apellido =document.getElementById("apellido").value;
        var telefono =document.getElementById("telefono").value;
        var correo =document.getElementById("correo").value;  
        var emailRegex = /^[-\w.%+]{1,64}@(?:[A-Z0-9-]{1,63}\.){1,125}[A-Z]{2,63}$/i; 
        var error = false;
        
        if(id.length == 0 || id==null){
            
          error = false;   
        // id.classList.add("invalid"); 
         alert("El equipo ocupa la informacion completa del usuario para asignarle uno"); 
         }
         //Validar al usuario si se mete alguno
        if(id.length >= 1 && id.length <9 ){
            
          error = true;   
        // id.classList.add("invalid"); 
         alert("La identificacion debe de tener al menos 9 caracteres para cedula nacional"); 
         }
 //----------------------------nombre---------------------------------        
         else if(id==null || id.length == 0 && nombre.length>=1){
             
	 error = true;
         alert("El espacio de identificacion esta esta vacio");           
}

 else if(id.length >=1 && nombre.length==0 || nombre==null){
     error = true; 
     
         alert("El espacio de nombre esta esta vacio");    
         }
//----------------------------apellido-------------------------------
 else if(id==null || id.length == 0 && apellido.length>=1){
   
	 error = true;
         alert("El espacio de identificacion esta esta vacio");          
}

 else if(id.length >=1 && apellido.length==0 || apellido==null){
   
     error = true; 
         alert("El espacio de apellido esta esta vacio");   
         }
 //---------------------------telefono------------------------------
  else if(id==null || id.length == 0 && telefono.length>=1){
     
	 error = true;
         alert("El espacio de identificacion esta esta vacio");           
}

 else if(id.length >=1 && telefono.length==0 || telefono==null){
     
     error = true; 
         alert("El espacio de telefono esta esta vacio");   
         }
 //----------------------------correo------------------------------
  else if(id==null || id.length == 0 && correo.length>=1){
      
	 error = true;
         if(id==null || id.length == 0 && correo.length>=1 ){
         alert("El espacio de identificacion esta esta vacio");  }  
 
}

 else if(id.length >=1 && correo.length==0 || correo==null){
     
     error = true; 
         alert("El espacio de correo esta esta vacio");    
         }
    
  else if(id.length >=1 && !emailRegex.test(correo)){
     
         error = true;  
         alert("Formato incorrecto! ej:Raul@mail.com");
        
           }     
   if (error==false){
       if(id.length == 0 || id==null){
         
          $("#myModalFormularioTrabajador").modal('hide'); 
       }
       else{   
        alert("La informacion del usuario ha sido guardada");  
       $("#myModalFormularioTrabajador").modal('hide');
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
        var fo = document.getElementById("siguiente1");
       // fo.addEventListener("click",doValidate);
        var accCue2 =  document.getElementById("proban"); 
	accCue2.addEventListener("click",doQueryTrabajador);
	}
        function showErrorMessage(){
            window.alert("Usuario incorrecto...");
        }
        
        function mjs(){

     var  o = document.getElementById('o').style.display='block';
     var  p = document.getElementById('p').style.display='block';


}//valida el correo
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
        if((tecla.charCode < 31 || tecla.charCode > 33) &&(tecla.charCode < 65 || tecla.charCode > 90) && (tecla.charCode < 97 || tecla.charCode > 122)){ 
            
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
        if((tecla.charCode < 31 || tecla.charCode > 33) &&(tecla.charCode < 65 || tecla.charCode > 90) && (tecla.charCode < 97 || tecla.charCode > 122)){ 
            
             valido.innerText = "Solo puede ingresar Letras!!";
            // valido.innerText = "";
            return false;}
        else  valido.innerText = "";
    });
});  
        
        
                function salir(){
 document.location = "/Bridgestone/Principal.jsp";
        
     }
     
                    function switchea(){
            var spa = document.getElementById("acceso22");
            if(spa == null){
                var spa = document.getElementById("acceso2V");
                 spa.id = "acceso22"; 
            }else{
               spa.id = "acceso2V";  
           }
  
     }
     
     
                         function switchea2(){
            var spa = document.getElementById("acceso23");
            if(spa == null){
                var spa = document.getElementById("acceso3");
                 spa.id = "acceso23"; 
            }else{
               spa.id = "acceso3";  
           }
  
     }
     
     function showContratos(){
         
        var combo = document.getElementById("selee1");
        for (i = 0; i < model.contratos.length; i++){
        combo.options[i] = new Option(model.contratos[i].codigoContrato);
         
         
     }
 }
 
 
 
      function showComprobantes(){
         
        var combo = document.getElementById("selee2");
        for (i = 0; i < model.comprobantes.length; i++){
        combo.options[i] = new Option(model.comprobantes[i].numeroDeComprobante);
         
         
     }
 }
 
         function irTabla(){
       document.location = "/Bridgestone/ListadoActivosLeasing.jsp";
        
     } 
     
       function doQueryTrabajador(event){
            
     
            var aux = event.target.id;
           controller.mostrarModalTrabajador(aux);
            
        }
     
        
        
        
         function siguiente(){
      document.location = "/Bridgestone/Registrar2.jsp";
  }
	document.addEventListener("DOMContentLoaded",pageLoad);
</script>
        
</html>
  
    
    
    
    
    
    
    
    
    
    
    
    
    
    
</html>

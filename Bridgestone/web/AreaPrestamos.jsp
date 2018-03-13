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
                            </div><span style="color: black ; font-size: 12pt ;font-family:Impact"  id="num2"></span>
                        
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
                                <input maxlength="10" name="telefono" id="telefono" placeholder="Telefono" class="form-control input_tel" type="text" size="15" maxlength="15">
                                
                            </div><span style="color: black ; font-size: 12pt ;font-family:Impact"  id="num1"></span>
                        
                    </div>
                              
                    <div class="form-group" id="groupCorreo">
                       
                            <div class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-align-left"></i></span>
                                <input  name="correo" id="correo" placeholder="Correo" class="form-control" type="email">
                            </div><span style="color: black ; font-size: 12pt ;font-family:Impact"  id="emailOK"></span>
                        
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
      <a role="menuitem" tabindex="-1" href="ListadoContratos.jsp">Comprobantes de compra registrados</a>
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
<a role="menuitem" tabindex="-1" href="AreaPrestamos.jsp">Nuevo Prestamo</a>
    </li>
     <li role="presentation" class="divider"></li>
    <li role="presentation">
      <a role="menuitem" tabindex="-1" href="ListadoContratos.jsp">Prestamos Registrados</a>
    </li>
  </ul>
                             </a></li>
                             
                               <li class = "dropdown"><a href=" " class = "dropdown-toggle" data-toggle="dropdown" role = "button">Devolucion
                                 <span class = "caret"></span>
                                 <ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu1">
    <li role="presentation">
      <a role="menuitem" tabindex="-1" href="prue.jsp">Registrar Devolucion</a>
    </li>
     <li role="presentation" class="divider"></li>
    <li role="presentation">
      <a role="menuitem" tabindex="-1" href="ListadoContratos.jsp">Devoluciones Registradas</a>
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
  
         <div class="col-sm-3" style="text-align: right; vertical-align: middle;" >
                                    <p><b>Buscar Equipo:</b></p>
                                </div>
                                <div class="col-sm-9 ,buscador">
      <input type="email" class="form-control" id="searchTerm" placeholder="Digite cualquier dato del equipo para hacer una busqueda" onkeyup="doSearch()">
       
                                </div>

     </div>
    
    
    
  

     
</div>
<!---------------------------------------------------------------------------------->   

        <div class = "col-md-6 text-justify"  "col-lg-9 text-justify"  "col-sm-8 text-justify"  "col-xs-6 text-justify" align = "center" >

     <br>
    
  <table class="table" id="tabUsuarios">
    <thead>
      <tr>
        <th class="active">Marca</th>
        <th class="active">Modelo </th>
        <th class="active">Memoria</th>
        <th class="active">Seleccione</th>

      </tr>
    </thead>
    <tbody id="listado">
    
        
        
          
    </tbody>
    <tfoot>
        

        
    </tfoot>
    
    
    
  </table>
     
 
 </div> 




<!---------------------------------------------------------------------------------------------->



      <div class = "col-md-6 text-justify"  "col-lg-3 text-justify"  "col-sm-4 text-justify"  "col-xs-6 text-justify"  align = "center">


               <div class="wrapper">
                <form class="form-signin" id="formLogin">
                    <h3 class="form-signin-heading">
                        <b style="color:#c7c7c7 !important">Registro de Prestamo</b>
                    </h3>


 

                    <input type="text" class="form-control" name="u_name" placeholder="Cedula del prestario" required="" autofocus="" id="usuario" data-toggle="tooltip" data-placement="right" title="Ingrese su usuario eje : Juanxx39" /><br />
                    <input type="text" class="form-control" name="u_name" placeholder="Nombre del prestario" required="" autofocus="" id="usuario" data-toggle="tooltip" data-placement="right" title="Ingrese su usuario eje : Juanxx39" /><br />
                    <input type="text" class="form-control" name="u_name" placeholder="Apellido del prestario" required="" autofocus="" id="usuario" data-toggle="tooltip" data-placement="right" title="Ingrese su usuario eje : Juanxx39" /><br />
                    <input type="text" class="form-control" name="u_name" placeholder="Numero telefonico" required="" autofocus="" id="usuario" data-toggle="tooltip" data-placement="right" title="Ingrese su usuario eje : Juanxx39" /><br />
                    <input type="text" class="form-control" name="u_name" placeholder="Correo electronico" required="" autofocus="" id="usuario" data-toggle="tooltip" data-placement="right" title="Ingrese su usuario eje : Juanxx39" /><br />
                    <input type="text" class="form-control" name="u_name" placeholder="Departamento " required="" autofocus="" id="usuario" data-toggle="tooltip" data-placement="right" title="Ingrese su usuario eje : Juanxx39" /><br />
                    <button class="btn btn-lg btn-primary btn-block" name="Submit" value="Login" type="button" id="enviar" onclick="controller.login();">Guardar</button>
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
     
     
     
</div>
















 <!-------------------------------------------------------->   
          </div>  
    <script type="text/javascript" src="JS/jquery.js"></script>     
    <script type="text/javascript" src="JS/jquery-ui.min.js"></script>  
    <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>                      
    </body>
</html>

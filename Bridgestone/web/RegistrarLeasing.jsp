<%-- 
    Document   : RegistrarLeasing
    Created on : 21/10/2017, 11:59:38 PM
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
        <link rel="stylesheet" title="Bridgestone" type="text/css" href="CSS/jquery-ui.min.css">
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
     
          <h2>Registro de contratos por Leasing</h2>
  <br> <br>
       
                   <form role="form" onsubmit="return false;" id="userForm" class="form-horizontal">
                <div class="tab-content">
                    <div class="tab-pane active" id="usuario-tab">
                        <div class="form-group">

                            <label class="control-label col-xs-3 col-sm-4 col-md-3"> <span class="glyphicon glyphicon-barcode"></span>&nbsp Codigo de Contrato</label>
                             
                            <div class="col-xs-7 col-sm-5 col-md-5"  data-toggle="tooltip" title="El usuario debe tener minimo 8 carcteres mayusculas y numeros!">
                                  <input type="text" class="form-control" id="codContrato" name="usuarioTab"/>
               
                                  
                            </div>
                        </div>

                        <div class="form-group">

                            <label class="control-label col-xs-3 col-sm-4 col-md-3"><span class="glyphicon glyphicon-calendar"></span>&nbsp Fecha de inicio del contrato</label>
                             <div class="col-xs-7 col-sm-5 col-md-5" data-toggle="tooltip" title="La contrasena debe tener minimo 8 carcteres mayusculas y numeros!">
                                <input type="text" class="form-control" id="datepicker" name="" />
                            </div>
                            

                        </div>
                        
                        
                           <div class="form-group">
                            <label class="control-label col-xs-3 col-sm-4 col-md-3 "><span class="glyphicon glyphicon-lock"></span>&nbsp Confirmar contraseña</label>
                             <div class="col-xs-7 col-sm-5 col-md-5">
                                <input type="password" class="form-control" id="confirmacion" name="confirmacion" />
                            </div>
                        </div>
                        
                          <div class="form-group">
                            <label class="control-label col-xs-3 col-sm-4 col-md-3"><span class="glyphicon glyphicon-list"></span>&nbsp Tipo</label>
                            <div class="col-xs-7 col-sm-5 col-md-5">
                              <select class="selectpicker">
                                <option>Soportista</option>
                                <option>Administrador</option>
                                </select>
                            </div>
                        </div>
                       <br>
                     
                        
                        <div class="form-group btnMargin">
                            <div class="col-xs-3 col-sm-4 col-md-3"></div>
                            <div class="col-xs-7 col-sm-5 col-md-5">
                                  <div style=" display: inline-flex; align-items: center; justify-content: end; float:left;">
                                <button type="button" class="btn  btn-primary" id="siguiente1" onclick="controller.login();">Siguiente</button>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
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
        
<script type="text/javascript" src="JS/jquery.js"></script>     
<script type="text/javascript" src="JS/jquery-ui.min.js"></script>  
<script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>                       
  
    <script>
    
    $("#datepicker").datepicker();
</script>
    </body>
    
    
    
   
    
 
    
    
    
    
    
    
</html>

var Proxy = Proxy || {};


    
  Proxy.userLogin = function(user,callBack){
      console.log("entramoooooos");
    jsonText = JSON.stringify(user,JsonUtils.replacer);
    console.log("entramoooooos 222222");
    var AJAX_req = new XMLHttpRequest();
    url="/Bridgestone/BridgestoneService?action=userLogin";
    AJAX_req.open( "POST", url, true );
    AJAX_req.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    AJAX_req.onreadystatechange = function(){
        if( AJAX_req.readyState === 4 && AJAX_req.status === 200 ){
            jsonText=AJAX_req.responseText;
            console.log("vamo a ver si es ahi");
            var object = JSON.parse( jsonText,JsonUtils.revive );
            console.log("fue ahi");
            callBack(object);
        }
    };
    console.log("salimos");
    AJAX_req.send("user="+jsonText);   
};  



  Proxy.registrarCliente = function(user,callBack){
     console.log("entramos al registrar cliente");
     console.log(user);
    jsonText = JSON.stringify(user,JsonUtils.replacer);
    console.log("se parseo el cliente a json");
    var AJAX_req = new XMLHttpRequest();
    url="/Bridgestone/BridgestoneService?action=registrarTrabajador";
    AJAX_req.open( "POST", url, true );
    AJAX_req.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    AJAX_req.onreadystatechange = function(){
        if( AJAX_req.readyState === 4 && AJAX_req.status === 200 ){
     
            var object = 1;
            console.log("El servlet ahora retorno un "+object);
            callBack(object);
        }
    };
    console.log("salimos del registrar usuario");
    AJAX_req.send("client="+jsonText);   
};



Proxy.getUsuarios = function(callBack){
    var AJAX_req = new XMLHttpRequest();
    url = "/Bridgestone/BridgestoneService?action=trabajadorListAll";
    AJAX_req.open("GET",url,true);
    AJAX_req.setRequestHeader("Content-type","application/x-www-form-urlencoded");
    AJAX_req.onreadystatechange = function (){
        if(AJAX_req.readyState === 4 && AJAX_req.status === 200){ // Si se recibieron los datos de forma correcta //
             console.log("parseando...");
            var object = JSON.parse(AJAX_req.responseText,JsonUtils.revive);
            console.log("parseando bienn...");
            console.log(object[0]);
            callBack(object);
        }
         };
        
        AJAX_req.send();
       
    
    
    };
    
    
    Proxy.getEquipos = function(callBack){
    var AJAX_req = new XMLHttpRequest();
    url = "/Bridgestone/BridgestoneService?action=EquiposListAll";
    AJAX_req.open("GET",url,true);
    AJAX_req.setRequestHeader("Content-type","application/x-www-form-urlencoded");
    AJAX_req.onreadystatechange = function (){
        if(AJAX_req.readyState === 4 && AJAX_req.status === 200){ // Si se recibieron los datos de forma correcta //
             console.log("parseando...");
            var object = JSON.parse(AJAX_req.responseText,JsonUtils.revive);
            console.log("parseando bienn...");
            console.log(object[0]);
            callBack(object);
        }
         };
        
        AJAX_req.send();
       
    
    
    };
    
     Proxy.getEquiposDeBaja = function(callBack){
    var AJAX_req = new XMLHttpRequest();
    url = "/Bridgestone/BridgestoneService?action=EquiposBajaListAll";
    AJAX_req.open("GET",url,true);
    AJAX_req.setRequestHeader("Content-type","application/x-www-form-urlencoded");
    AJAX_req.onreadystatechange = function (){
        if(AJAX_req.readyState === 4 && AJAX_req.status === 200){ // Si se recibieron los datos de forma correcta //
             console.log("parseando...");
            var object = JSON.parse(AJAX_req.responseText,JsonUtils.revive);
            console.log("parseando bienn...");
            console.log(object[0]);
            callBack(object);
        }
         };
        
        AJAX_req.send();
       
    
    
    };

    
    
        Proxy.getEquiposDispo = function(callBack){
    var AJAX_req = new XMLHttpRequest();
    url = "/Bridgestone/BridgestoneService?action=EquiposDispoListAll";
    AJAX_req.open("GET",url,true);
    AJAX_req.setRequestHeader("Content-type","application/x-www-form-urlencoded");
    AJAX_req.onreadystatechange = function (){
        if(AJAX_req.readyState === 4 && AJAX_req.status === 200){ // Si se recibieron los datos de forma correcta //
             console.log("parseando...");
            var object = JSON.parse(AJAX_req.responseText,JsonUtils.revive);
            console.log("parseando bienn...");
            console.log(object[0]);
            callBack(object);
        }
         };
        
        AJAX_req.send();
       
    
    
    };
    
    
    
     Proxy.getEquiposParaBaja = function(callBack){
    var AJAX_req = new XMLHttpRequest();
    url = "/Bridgestone/BridgestoneService?action=EquiposParaBajaListAll";
    AJAX_req.open("GET",url,true);
    AJAX_req.setRequestHeader("Content-type","application/x-www-form-urlencoded");
    AJAX_req.onreadystatechange = function (){
        if(AJAX_req.readyState === 4 && AJAX_req.status === 200){ // Si se recibieron los datos de forma correcta //
             console.log("parseando...");
            var object = JSON.parse(AJAX_req.responseText,JsonUtils.revive);
            console.log("parseando bienn...");
            console.log(object[0]);
            callBack(object);
        }
         };
        
        AJAX_req.send();
       
    
    
    };
    
    
    
 Proxy.getContratos = function(callBack){
    var AJAX_req = new XMLHttpRequest();
    url = "/Bridgestone/BridgestoneService?action=contratosListAll";
    AJAX_req.open("GET",url,true);
    AJAX_req.setRequestHeader("Content-type","application/x-www-form-urlencoded");
    AJAX_req.onreadystatechange = function (){
        if(AJAX_req.readyState === 4 && AJAX_req.status === 200){ // Si se recibieron los datos de forma correcta //
             console.log("parseando...");
            var object = JSON.parse(AJAX_req.responseText,JsonUtils.revive);
            console.log("parseando bienn...");
            console.log(object[0]);
            callBack(object);
        }
         };
        
        AJAX_req.send();
       
    
    
    }; 
    
    
    Proxy.getComprobantes = function(callBack){
    var AJAX_req = new XMLHttpRequest();
    url = "/Bridgestone/BridgestoneService?action=comprobantesListAll";
    AJAX_req.open("GET",url,true);
    AJAX_req.setRequestHeader("Content-type","application/x-www-form-urlencoded");
    AJAX_req.onreadystatechange = function (){
        if(AJAX_req.readyState === 4 && AJAX_req.status === 200){ // Si se recibieron los datos de forma correcta //
             console.log("parseando...");
            var object = JSON.parse(AJAX_req.responseText,JsonUtils.revive);
            console.log("parseando bienn...");
            console.log(object[0]);
            callBack(object);
        }
         };
        
        AJAX_req.send();
       
    
    
    };
    
    
    Proxy.getPrestamosParaDevoluciones = function(callBack){
    var AJAX_req = new XMLHttpRequest();
    url = "/Bridgestone/BridgestoneService?action=prestamosParaDevolucionesListAll";
    AJAX_req.open("GET",url,true);
    AJAX_req.setRequestHeader("Content-type","application/x-www-form-urlencoded");
    AJAX_req.onreadystatechange = function (){
        if(AJAX_req.readyState === 4 && AJAX_req.status === 200){ // Si se recibieron los datos de forma correcta //
             console.log("parseando...");
            var object = JSON.parse(AJAX_req.responseText,JsonUtils.revive);
            console.log("parseando bienn...");
            console.log(object[0]);
            console.log(object[1]);
            callBack(object);
        }
         };
        
        AJAX_req.send();
       
    
    
    };
    
        Proxy.getPrestamosParaDevoluciones2 = function(callBack){
    var AJAX_req = new XMLHttpRequest();
    url = "/Bridgestone/BridgestoneService?action=prestamosParaDevolucionesListAll2";
    AJAX_req.open("GET",url,true);
    AJAX_req.setRequestHeader("Content-type","application/x-www-form-urlencoded");
    AJAX_req.onreadystatechange = function (){
        if(AJAX_req.readyState === 4 && AJAX_req.status === 200){ // Si se recibieron los datos de forma correcta //
             console.log("parseando...");
            var object = JSON.parse(AJAX_req.responseText,JsonUtils.revive);
            console.log("parseando bienn...");
            console.log(object[0]);
            console.log(object[1]);
            callBack(object);
        }
         };
        
        AJAX_req.send();
       
    
    
    };
    
         Proxy.getPersonasParaDevoluciones = function(callBack){
    var AJAX_req = new XMLHttpRequest();
    url = "/Bridgestone/BridgestoneService?action=personasParaDevolucionesListAll";
    AJAX_req.open("GET",url,true);
    AJAX_req.setRequestHeader("Content-type","application/x-www-form-urlencoded");
    AJAX_req.onreadystatechange = function (){
        if(AJAX_req.readyState === 4 && AJAX_req.status === 200){ // Si se recibieron los datos de forma correcta //
             console.log("parseando...");
            var object = JSON.parse(AJAX_req.responseText,JsonUtils.revive);
            console.log("parseando bienn...");
            console.log(object[0]);
           
            callBack(object);
        }
         };
        
        AJAX_req.send();
       
    
    
    };
    
    
    
     Proxy.getPersonasParaDevoluciones2 = function(callBack){
    var AJAX_req = new XMLHttpRequest();
    url = "/Bridgestone/BridgestoneService?action=personasParaDevolucionesListAll2";
    AJAX_req.open("GET",url,true);
    AJAX_req.setRequestHeader("Content-type","application/x-www-form-urlencoded");
    AJAX_req.onreadystatechange = function (){
        if(AJAX_req.readyState === 4 && AJAX_req.status === 200){ // Si se recibieron los datos de forma correcta //
             console.log("parseando...");
            var object = JSON.parse(AJAX_req.responseText,JsonUtils.revive);
            console.log("parseando bienn...");
            console.log(object[0]);
           
            callBack(object);
        }
         };
        
        AJAX_req.send();
       
    
    
    };
    
    
    Proxy.getEquiposParaDevoluciones = function(callBack){
    var AJAX_req = new XMLHttpRequest();
    url = "/Bridgestone/BridgestoneService?action=equiposParaDevolucionesListAll";
    AJAX_req.open("GET",url,true);
    AJAX_req.setRequestHeader("Content-type","application/x-www-form-urlencoded");
    AJAX_req.onreadystatechange = function (){
        if(AJAX_req.readyState === 4 && AJAX_req.status === 200){ // Si se recibieron los datos de forma correcta //
             console.log("parseando...");
            var object = JSON.parse(AJAX_req.responseText,JsonUtils.revive);
            console.log("parseando bienn...");
            console.log(object[0]);
            callBack(object);
        }
         };
        
        AJAX_req.send();
       
    
    
    };
    
    
    
        Proxy.getEquiposParaDevoluciones2 = function(callBack){
    var AJAX_req = new XMLHttpRequest();
    url = "/Bridgestone/BridgestoneService?action=equiposParaDevolucionesListAll2";
    AJAX_req.open("GET",url,true);
    AJAX_req.setRequestHeader("Content-type","application/x-www-form-urlencoded");
    AJAX_req.onreadystatechange = function (){
        if(AJAX_req.readyState === 4 && AJAX_req.status === 200){ // Si se recibieron los datos de forma correcta //
             console.log("parseando...");
            var object = JSON.parse(AJAX_req.responseText,JsonUtils.revive);
            console.log("parseando bienn...");
            console.log(object[0]);
            callBack(object);
        }
         };
        
        AJAX_req.send();
       
    
    
    };
    
      Proxy.registrarPersona= function(contrat,callBack){
     console.log("entramos al registrar persona");
     console.log(contrat);
    jsonText = JSON.stringify(contrat,JsonUtils.replacer);
    console.log("se parseo la persona a json");
    var AJAX_req = new XMLHttpRequest();
    url="/Bridgestone/BridgestoneService?action=registrarPersona";
    AJAX_req.open( "POST", url, true );
    AJAX_req.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    AJAX_req.onreadystatechange = function(){
        if( AJAX_req.readyState === 4 && AJAX_req.status === 200 ){
     
            var object = 1;
            console.log("El servlet ahora retorno un "+object);
            callBack(object);
        }
    };
    console.log("salimos del registrar contrato");
    AJAX_req.send("persona="+jsonText);   
};





      Proxy.registrarPrestamo= function(contrat,callBack){
     console.log("entramos al registrar pprstamo");
     console.log(contrat);
    jsonText = JSON.stringify(contrat,JsonUtils.replacer);
    console.log("se parseo la presta a json");
    var AJAX_req = new XMLHttpRequest();
    url="/Bridgestone/BridgestoneService?action=registrarPrestamo";
    AJAX_req.open( "POST", url, true );
    AJAX_req.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    AJAX_req.onreadystatechange = function(){
        if( AJAX_req.readyState === 4 && AJAX_req.status === 200 ){
     
            var object = 1;
            console.log("El servlet ahora retorno un "+object);
            callBack(object);
        }
    };
    console.log("salimos del registrar prests");
    AJAX_req.send("presta="+jsonText);   
};
    
    
    Proxy.registrarDevo= function(devo,callBack){
     console.log("entramos al registrar devo");
     console.log(devo);
    jsonText = JSON.stringify(devo,JsonUtils.replacer);
    console.log("se parseo la devo a json");
    var AJAX_req = new XMLHttpRequest();
    url="/Bridgestone/BridgestoneService?action=registrarDevolucion";
    AJAX_req.open( "POST", url, true );
    AJAX_req.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    AJAX_req.onreadystatechange = function(){
        if( AJAX_req.readyState === 4 && AJAX_req.status === 200 ){
     
            var object = 33;
            console.log("El servlet ahora retorno un "+object);
            callBack(object);
        }
    };
    console.log("salimos del registrar devo");
    AJAX_req.send("devo="+jsonText);   
};


  Proxy.registrarBaja= function(perro,callBack){
     console.log("entramos al registrar baja");
     console.log(perro);
    jsonText = JSON.stringify(perro);
    console.log("se parseo la baja a json");
    console.log(jsonText);
    var AJAX_req = new XMLHttpRequest();
    url="/Bridgestone/BridgestoneService?action=registrarBaja";
    AJAX_req.open( "POST", url, true );
    AJAX_req.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    AJAX_req.onreadystatechange = function(){
        if( AJAX_req.readyState === 4 && AJAX_req.status === 200 ){
     
            var object = 33;
            console.log("El servlet ahora retorno un "+object);
            callBack(object);
        }
    };
    console.log("salimos del registrar baja");
    AJAX_req.send("baja="+jsonText);   
};
    
    
    
    
    
        Proxy.registrarContrato= function(contrat,callBack){
     console.log("entramos al registrar contrato");
     console.log(contrat);
    jsonText = JSON.stringify(contrat,JsonUtils.replacer);
    console.log("se parseo el contrato a json");
    var AJAX_req = new XMLHttpRequest();
    url="/Bridgestone/BridgestoneService?action=registrarContrato";
    AJAX_req.open( "POST", url, true );
    AJAX_req.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    AJAX_req.onreadystatechange = function(){
        if( AJAX_req.readyState === 4 && AJAX_req.status === 200 ){
     
            var object = 1;
            console.log("El servlet ahora retorno un "+object);
            callBack(object);
        }
    };
    console.log("salimos del registrar contrato");
    AJAX_req.send("contrat="+jsonText);   
};
    
    
     Proxy.registrarCompro= function(comprobante,callBack){
     
     console.log("entramos al registrar comprobante");
     console.log(comprobante);
    jsonText = JSON.stringify(comprobante,JsonUtils.replacer);
    console.log(jsonText);
    console.log("se parseo el comprobante a json");
    var AJAX_req = new XMLHttpRequest();
    url="/Bridgestone/BridgestoneService?action=registrarComprobante";
    AJAX_req.open( "POST", url, true );
    AJAX_req.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    AJAX_req.onreadystatechange = function(){
        if( AJAX_req.readyState === 4 && AJAX_req.status === 200 ){
     
            var object = 33;
            console.log("El servlet ahora retorno un "+object);
            callBack(object);
        }
    };
    console.log("salimos del registrar comprobante");
    AJAX_req.send("comprobant="+jsonText);   
};

        Proxy.registrarEquipoContrato= function(contrat,callBack){
     console.log("entramos al registrar equipo");
     console.log(contrat);
    jsonText = JSON.stringify(contrat,JsonUtils.replacer);
    console.log("se parseo el equipo a json");
    var AJAX_req = new XMLHttpRequest();
    url="/Bridgestone/BridgestoneService?action=registrarEquipoContrato";
    AJAX_req.open( "POST", url, true );
    AJAX_req.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    AJAX_req.onreadystatechange = function(){
        if( AJAX_req.readyState === 4 && AJAX_req.status === 200 ){
     
            var object = 1;
            console.log("El servlet ahora retorno un "+object);
            callBack(object);
        }
    };
    console.log("salimos del registrar contrato");
    AJAX_req.send("equipo="+jsonText);   
};



        Proxy.registrarEquipoComprobante= function(contrat,callBack){
     console.log("entramos al registrar equipo compro");
     console.log(contrat);
    jsonText = JSON.stringify(contrat,JsonUtils.replacer);
    console.log("se parseo el equipo a json");
    var AJAX_req = new XMLHttpRequest();
    url="/Bridgestone/BridgestoneService?action=registrarEquipoComprobante";
    AJAX_req.open( "POST", url, true );
    AJAX_req.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    AJAX_req.onreadystatechange = function(){
        if( AJAX_req.readyState === 4 && AJAX_req.status === 200 ){
     
            var object = 1;
            console.log("El servlet ahora retorno un "+object);
            callBack(object);
        }
    };
    console.log("salimos del registrar contrato");
    AJAX_req.send("equipoCompro="+jsonText);   
};



        Proxy.registrarEquipoComprobanteUsu= function(contrat,callBack){
     console.log("entramos al registrar equipo comprousu");
     console.log(contrat);
    jsonText = JSON.stringify(contrat,JsonUtils.replacer);
    console.log("se parseo el equipo a json");
    var AJAX_req = new XMLHttpRequest();
    url="/Bridgestone/BridgestoneService?action=registrarEquipoComprobanteUsu";
    AJAX_req.open( "POST", url, true );
    AJAX_req.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    AJAX_req.onreadystatechange = function(){
        if( AJAX_req.readyState === 4 && AJAX_req.status === 200 ){
     
            var object = 1;
            console.log("El servlet ahora retorno un "+object);
            callBack(object);
        }
    };
    console.log("salimos del registrar contrato");
    AJAX_req.send("equipoComproUsu="+jsonText);   
};






  Proxy.registrarEquipoUsuario= function(contrat,callBack){
     console.log("entramos al registrar equipousuario");
     console.log(contrat);
    jsonText = JSON.stringify(contrat,JsonUtils.replacer);
    console.log("se parseo el equipo a json");
    var AJAX_req = new XMLHttpRequest();
    url="/Bridgestone/BridgestoneService?action=registrarEquipoUsuario";
    AJAX_req.open( "POST", url, true );
    AJAX_req.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    AJAX_req.onreadystatechange = function(){
        if( AJAX_req.readyState === 4 && AJAX_req.status === 200 ){
     
            var object = 1;
            console.log("El servlet ahora retorno un "+object);
            callBack(object);
        }
    };
    console.log("salimos del registrar contrato");
    AJAX_req.send("equipoUsu="+jsonText);   
};


  Proxy.setEstPresta= function(contrat,callBack){
     console.log("entramos al set estado");
     console.log(contrat);
    jsonText = JSON.stringify(contrat,JsonUtils.replacer);
    console.log("se parseo el equipo a json");
    var AJAX_req = new XMLHttpRequest();
    url="/Bridgestone/BridgestoneService?action=setEstPresta";
    AJAX_req.open( "POST", url, true );
    AJAX_req.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    AJAX_req.onreadystatechange = function(){
        if( AJAX_req.readyState === 4 && AJAX_req.status === 200 ){
     
            var object = 1;
            console.log("El servlet ahora retorno un "+object);
            callBack(object);
        }
    };
    console.log("salimos del setear estado");
    AJAX_req.send("equipoPresta="+jsonText);   
};



    Proxy.eliminarUsuario= function(user,callBack){
     console.log("entramos al eliminar usuario");
     console.log(user);
    jsonText = JSON.stringify(user,JsonUtils.replacer);
    console.log("se parseo el Usuario a json");
    var AJAX_req = new XMLHttpRequest();
    url="/Bridgestone/BridgestoneService?action=eliminarUsuario";
    AJAX_req.open( "POST", url, true );
    AJAX_req.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    AJAX_req.onreadystatechange = function(){
        if( AJAX_req.readyState === 4 && AJAX_req.status === 200 ){
     
            var object = 222;
            console.log("El servlet ahora retorno un "+object);
            callBack(object);
        }
    };
    console.log("salimos del eliminar Usuario");
    AJAX_req.send("user="+jsonText);   
};


    Proxy.eliminarComprobante= function(comprobant,callBack){
     console.log("entramos al eliminar comprobante");
     console.log(comprobant);
    jsonText = JSON.stringify(comprobant,JsonUtils.replacer);
    console.log("se parseo el Comprobante a json");
    var AJAX_req = new XMLHttpRequest();
    url="/Bridgestone/BridgestoneService?action=eliminarComprobante";
    AJAX_req.open( "POST", url, true );
    AJAX_req.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    AJAX_req.onreadystatechange = function(){
        if( AJAX_req.readyState === 4 && AJAX_req.status === 200 ){
     
            var object = 19;
            console.log("El servlet ahora retorno un "+object);
            callBack(object);
        }
    };
    console.log("salimos del eliminar Comprobante");
    AJAX_req.send("comprobant="+jsonText);   
};


   Proxy.eliminarContrato= function(contrat,callBack){
     console.log("entramos al eliminar contrato");
     console.log(contrat);
    jsonText = JSON.stringify(contrat,JsonUtils.replacer);
    console.log("se parseo el contrato a json");
    var AJAX_req = new XMLHttpRequest();
    url="/Bridgestone/BridgestoneService?action=eliminarContrato";
    AJAX_req.open( "POST", url, true );
    AJAX_req.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    AJAX_req.onreadystatechange = function(){
        if( AJAX_req.readyState === 4 && AJAX_req.status === 200 ){
     
            var object = 10;
            console.log("El servlet ahora retorno un "+object);
            callBack(object);
        }
    };
    console.log("salimos del eliminar contrato");
    AJAX_req.send("contrat="+jsonText);   
};




Proxy.modificarCompro= function(comprobantes,callBack){
     
     console.log("entramos al modificar comprobante");
     console.log(comprobantes);
     
    var comprobants =  {     
        nombre : 'Compro',
        comprobantes:comprobantes
    };
    jsonText = JSON.stringify(comprobants);
    console.log("se parseo el comprobante a json");
    var AJAX_req = new XMLHttpRequest();
    url="/Bridgestone/BridgestoneService?action=modificarComprobante";
    AJAX_req.open( "POST", url, true );
    AJAX_req.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    AJAX_req.onreadystatechange = function(){
        if( AJAX_req.readyState === 4 && AJAX_req.status === 200 ){
     
            var object = 33;
            console.log("El servlet ahora retorno un "+object);
            callBack(object);
        }
    };
    console.log("salimos del modificar comprobante");
    AJAX_req.send("comprobant="+jsonText);   
};



Proxy.modificarContrato= function(contratos,callBack){
     
     console.log("entramos al modificar contrato");
     console.log(contratos);
     
    var contrats =  {     
        nombre : 'Contrat',
        contratos:contratos
    };
    jsonText = JSON.stringify(contrats);
    console.log("se parseo el contrato a json");
    var AJAX_req = new XMLHttpRequest();
    url="/Bridgestone/BridgestoneService?action=modificarContrato";
    AJAX_req.open( "POST", url, true );
    AJAX_req.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    AJAX_req.onreadystatechange = function(){
        if( AJAX_req.readyState === 4 && AJAX_req.status === 200 ){
     
            var object = 33;
            console.log("El servlet ahora retorno un "+object);
            callBack(object);
        }
    };
    console.log("salimos del modificar contrato");
    AJAX_req.send("contrat="+jsonText);   
};




Proxy.modificarUsu= function(usuarios,callBack){
     
     console.log("entramos al modificar usuario");
     console.log(usuarios);
     
    var users =  {     
        nombre : 'Usuario',
        usuarios:usuarios
    };
    jsonText = JSON.stringify(users);
    console.log("se parseo el usuario a json");
    var AJAX_req = new XMLHttpRequest();
    url="/Bridgestone/BridgestoneService?action=modificarUsuario";
    AJAX_req.open( "POST", url, true );
    AJAX_req.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    AJAX_req.onreadystatechange = function(){
        if( AJAX_req.readyState === 4 && AJAX_req.status === 200 ){
     
            var object = 1;
            console.log("El servlet ahora retorno un "+object);
            callBack(object);
        }
    };
    console.log("salimos del modificar usuario");
    AJAX_req.send("user="+jsonText);   
};



Proxy.modificarTraba= function(usuarios,callBack){
     
     console.log("entramos al modificar usuario");
     console.log(usuarios);
     
    var users =  {     
        nombre : 'Usuario',
        usuarios:usuarios
    };
    jsonText = JSON.stringify(users);
    console.log("se parseo el usuario a json");
    var AJAX_req = new XMLHttpRequest();
    url="/Bridgestone/BridgestoneService?action=modificarTrabajador";
    AJAX_req.open( "POST", url, true );
    AJAX_req.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    AJAX_req.onreadystatechange = function(){
        if( AJAX_req.readyState === 4 && AJAX_req.status === 200 ){
     
            var object = 1;
            console.log("El servlet ahora retorno un "+object);
            callBack(object);
        }
    };
    console.log("salimos del modificar usuario");
    AJAX_req.send("user="+jsonText);   
};


Proxy.setPrestado= function(equipos,callBack){
     
     console.log("entramos al setPrestado");
     console.log(usuarios);
     
    var equips =  {     
        nombre : 'Equipo',
        equipos:equipos
    };
    jsonText = JSON.stringify(equips);
    console.log("se parseo el usuario a json");
    var AJAX_req = new XMLHttpRequest();
    url="/Bridgestone/BridgestoneService?action=setPrestado";
    AJAX_req.open( "POST", url, true );
    AJAX_req.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    AJAX_req.onreadystatechange = function(){
        if( AJAX_req.readyState === 4 && AJAX_req.status === 200 ){
     
            var object = 1;
            console.log("El servlet ahora retorno un "+object);
            callBack(object);
        }
    };
    console.log("salimos del setPrestado");
    AJAX_req.send("equipoPres="+jsonText);   
};

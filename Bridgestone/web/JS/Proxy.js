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

        Proxy.registrarActivo= function(contrat,callBack){
     console.log("entramos al registrar activo");
     console.log(contrat);
    jsonText = JSON.stringify(contrat,JsonUtils.replacer);
    console.log("se parseo el contrato a json");
    var AJAX_req = new XMLHttpRequest();
    url="/Bridgestone/BridgestoneService?action=registrarActivo";
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
    AJAX_req.send("active="+jsonText);   
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

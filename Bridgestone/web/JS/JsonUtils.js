var JsonUtils = JsonUtils || {};

JsonUtils.revive = function(k,v){
	if (v instanceof Object && v._class == 'Usuario') {
		return Usuario.from(v);
	}
        
        if (v instanceof Object && v._class == 'Trabajador') {
		return Trabajador.from(v);
	} 
	   
        if (v instanceof Object && v._class == 'Contrato') {
		return Contrato.from(v);
	} 
        
        
          if (v instanceof Object && v._class == 'Activo') {
		return Activo.from(v);
	} 
        
        if (v instanceof Object && v._class == 'Comprobante') {
		return Comprobante.from(v);
	} 
	  
            if (v instanceof Object && v._class == 'Persona') {
		return Persona.from(v);
	}
	  return v;
	
	
	
};

JsonUtils.replacer = function(k,v){
      if (v instanceof Usuario) {
		return Usuario.to(v);
	}
	
        
        if (v instanceof Trabajador) {
		return Trabajador.to(v);
	}

        if (v instanceof Contrato) {
		return Contrato.to(v);
	}
        
         if (v instanceof Activo) {
		return Activo.to(v);
	}
        
         if (v instanceof Comprobante) {
		return Comprobante.to(v);
	}
       
        
         if (v instanceof Persona) {
		return Persona.to(v);
	} 
        

	
	return v;
	
};

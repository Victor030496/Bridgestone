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
        
        

        
        if (v instanceof Object && v._class == 'Comprobante') {
		return Comprobante.from(v);
	} 
	  
        if (v instanceof Object && v._class == 'Persona') {
		return Persona.from(v);
	}
        
        if (v instanceof Object && v._class == 'Equipo') {
		return Equipo.from(v);
	}
            if (v instanceof Object && v._class == 'Prestamo') {
		return Prestamo.from(v);
	}
        
        if (v instanceof Object && v._class == 'Devolucion') {
		return Devolucion.from(v);
	}
        
        if (v instanceof Object && v._class == 'Baja') {
		return Baja.from(v);
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
        

        
         if (v instanceof Comprobante) {
		return Comprobante.to(v);
	}
       
        
         if (v instanceof Persona) {
		return Persona.to(v);
	} 
        
            if (v instanceof Equipo) {
		return Equipo.to(v);
	} 
	 
    
          if (v instanceof Baja) {
		return Baja.to(v);
	
    
          } 
        
        
             if (v instanceof Prestamo) {
		return Prestamo.to(v);
	} 
        
        
        if (v instanceof Devolucion) {
		return Devolucion.to(v);
	} 
        
       
        
        
	return v;
	
};
